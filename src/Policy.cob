       class-id. Policy.

       factory.
       procedure division.

       method-id. InsertPolicy static.
           procedure division using by value pid as binary-long
                                      by value eff as string
                                      by value oid as binary-long
                                      by value oname as string
                                      by value obirth as string
                                      by value iid as binary-long
                                      by value iname as string
                                      by value ibirth as string
                                      by value st as string
                                      by value prod as string
                                      by value bill as string
                                      by value issue as string
                                      by value paid as string
                                      by value overloan as string
                                      by value amt as binary-long
                                      by value suf as binary-long
                                      by value pmode as string
                                      by value sundry as binary-long
                                      by value true as binary-long
                                      by value last as binary-long
                                      by value curr as string
                                      by value oleast as binary-long
                                      by value apa as binary-long.

           declare conn type NpgsqlConnection
               = new NpgsqlConnection("Host=localhost;Username=postgres;Password=postgres;Database=insurance").
           invoke conn "Open".

           declare sqlIns as string =
             "INSERT INTO policy (policy_id,eff_date,owner_id,owner_name,owner_birth,insured_id,insured_name,insured_birth,status,product,billing,issue_date,paid_to,overloan_exp,amt_billed,suffix,prem_mode,sundry_amt,true_prem,last_prem,curr,overloan_least,apa_least) " &
             "VALUES (@pid,@eff,@oid,@oname,@obirth,@iid,@iname,@ibirth,@st,@prod,@bill,@issue,@paid,@overloan,@amt,@suf,@pmode,@sundry,@true,@last,@curr,@oleast,@apa)".

           declare cmd type NpgsqlCommand = new NpgsqlCommand(sqlIns, conn).

           invoke cmd "Parameters.AddWithValue" using "pid", pid.
           invoke cmd "Parameters.AddWithValue" using "eff", eff.
           invoke cmd "Parameters.AddWithValue" using "oid", oid.
           invoke cmd "Parameters.AddWithValue" using "oname", oname.
           invoke cmd "Parameters.AddWithValue" using "obirth", obirth.
           invoke cmd "Parameters.AddWithValue" using "iid", iid.
           invoke cmd "Parameters.AddWithValue" using "iname", iname.
           invoke cmd "Parameters.AddWithValue" using "ibirth", ibirth.
           invoke cmd "Parameters.AddWithValue" using "st", st.
           invoke cmd "Parameters.AddWithValue" using "prod", prod.
           invoke cmd "Parameters.AddWithValue" using "bill", bill.
           invoke cmd "Parameters.AddWithValue" using "issue", issue.
           invoke cmd "Parameters.AddWithValue" using "paid", paid.
           invoke cmd "Parameters.AddWithValue" using "overloan", overloan.
           invoke cmd "Parameters.AddWithValue" using "amt", amt.
           invoke cmd "Parameters.AddWithValue" using "suf", suf.
           invoke cmd "Parameters.AddWithValue" using "pmode", pmode.
           invoke cmd "Parameters.AddWithValue" using "sundry", sundry.
           invoke cmd "Parameters.AddWithValue" using "true", true.
           invoke cmd "Parameters.AddWithValue" using "last", last.
           invoke cmd "Parameters.AddWithValue" using "curr", curr.
           invoke cmd "Parameters.AddWithValue" using "oleast", oleast.
           invoke cmd "Parameters.AddWithValue" using "apa", apa.

           invoke cmd "ExecuteNonQuery".
       end method InsertPolicy.

       end factory.

       end class Policy.
