// typeは後で定義する
import { ApiContext, User } from "types";
import { fetcher } from "utils";

export type SigninParams = {
  /**
   * ユーザー名
   * サンプルユーザーのユーザー名は"user"
   */
  username: string;

  /**
   * パスワード
   * サンプルユーザーのパスワードは"password"
   */
  password: string;
};

/**
 * 認証API(サインイン)
 * @param context APIコンテキスト
 * @param params パラメーター
 * @returns ログインユーザー
 * リクエスト成功時:レスポンスヘッダーのSet-Cookieに設定されるトークンを利用して認証
 */
const signin = async (
  context: ApiContext,
  params: SigninParams,
): Promise<User> => {
  return await fetcher(
    `${context.apiRootUrl.replace(/\/$/g, "")}/auth/signin`,
    {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Context-Type": "application/json",
      },
      body: JSON.stringify(params),
    },
  );
};

export default signin;
