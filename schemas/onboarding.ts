import { z } from "zod";

export const emailValidationSchema = z.object({
  email: z
    .string()
    .email("Digite um email válido")
    .min(1, "O email é obrigatório"),
  password: z
    .string()
    .min(8, "A senha deve ter pelo menos 8 caracteres")
    .regex(/[A-Z]/, "A senha deve conter pelo menos 1 letra maiúscula")
    .regex(/[a-z]/, "A senha deve conter pelo menos 1 letra minúscula")
    .regex(/[0-9]/, "A senha deve conter pelo menos 1 número")
    .regex(
      /[^A-Za-z0-9]/,
      "A senha deve conter pelo menos 1 caractere especial"
    ),
});

export const forgotPasswordStep1Schema = z.object({
  email: z.string().email("Digite um email válido").min(1, "O email é obrigatório"),
});

export const forgotPasswordStep2Schema = z
  .object({
    token: z.string().length(6, "O código deve ter 6 dígitos"),
    password: z
      .string()
      .min(8, "A senha deve ter pelo menos 8 caracteres")
      .regex(/[A-Z]/, "A senha deve conter pelo menos 1 letra maiúscula")
      .regex(/[a-z]/, "A senha deve conter pelo menos 1 letra minúscula")
      .regex(/[0-9]/, "A senha deve conter pelo menos 1 número")
      .regex(/[^A-Za-z0-9]/, "A senha deve conter pelo menos 1 caractere especial"),
    confirmPassword: z.string().min(1, "A confirmação de senha é obrigatória"),
  })
  .refine((data) => data.password === data.confirmPassword, {
    message: "As senhas não coincidem",
    path: ["confirmPassword"],
  });

export type OnboardingFormData = z.infer<typeof emailValidationSchema>;
export type ForgotPasswordStep1Data = z.infer<typeof forgotPasswordStep1Schema>;
export type ForgotPasswordStep2Data = z.infer<typeof forgotPasswordStep2Schema>;
