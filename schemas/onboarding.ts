import { z } from "zod";

export const onboardingSchema = z.object({
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

export type OnboardingFormData = z.infer<typeof onboardingSchema>;
