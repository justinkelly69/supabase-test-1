import { redirect } from "next/navigation";

import { createClient } from "@/lib/supabase/server";
import { InfoIcon } from "lucide-react";
import { FetchDataSteps } from "@/components/tutorial/fetch-data-steps";
import Link from "next/link";

export default async function ProtectedPage() {
  const supabase = await createClient();

  const { data, error } = await supabase.auth.getClaims();
  if (error || !data?.claims) {
    redirect("/auth/login");
  }

  return (
    <div className="flex-1 w-full flex flex-col gap-12">
          <InfoIcon size="16" strokeWidth={2} />
          <nav>
            <ul>
              <li><Link href='/protected/countries'>Countries</Link></li>
            </ul>
          </nav>
          This is a protected page that you can only see as an authenticated
          user
    </div>
  );
}
