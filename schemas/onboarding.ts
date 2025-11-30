import { z } from "zod";

export const onboardingSchema = z.object({
  name: z
    .string()
    .min(2, "O nome deve ter pelo menos 2 caracteres")
    .max(50, "O nome deve ter no máximo 50 caracteres"),
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
