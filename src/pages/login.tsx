import { LoginForm } from "../ui/organisms/loginForm";
import { useHandleLogin } from "../features/auth/useHandleLogin";

export const LoginPage = () => {
  const { handleLogin } = useHandleLogin();

  return (
    <div className="grid place-content-center h-full">
      <LoginForm {...{ handleLogin }} />
    </div>
  );
};
