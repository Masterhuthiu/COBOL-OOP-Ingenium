       class-id. Policy.

       factory.
       procedure division.

       *> Insert Policy
       method-id. InsertPolicy static.
           procedure division using by value policyId as binary-long
                                      by value effectiveDate as string
                                      by value ownerId as binary-long
                                      by value ownerName as string
                                      by value ownerBirth as string
                                      by value insuredId as binary-long
                                      by value insuredName as string
                                      by value insuredBirth as string
                                      by value status as string
                                      by value product as string
                                      by value billing as string
                                      by value issueDate as string
                                      by value paidToDate as string
                                      by value overloanExpiry as string
                                      by value amountBilled as binary-long
                                      by value suffix as binary-long
                                      by value premiumMode as string
                                      by value sundryAmount as binary-long
                                      by value truePremium as binary-long
                                      by value lastModePremium as binary-long
                                      by value currency as string
                                      by value overloanLeast as binary-long
                                      by value fullApaLeast as binary-long.
           declare conn type NpgsqlConnection
               = new NpgsqlConnection("Host=localhost;Username=postgres;Password=postgres;Database=insurance").
           invoke conn "Open".

           declare cmd type NpgsqlCommand
               = new NpgsqlCommand(
                 "INSERT INTO policy (policy_id,effective_date,owner_id,owner_name,owner_birth_date,insured_id,insured_name,insured_birth_date,current_status,product_name,billing_type,issue_date,paid_to_date,overloan_expiry_date,amount_billed,suffix,premium_mode,sundry_amount,true_premium,last_mode_premium,currency,overloan_least_amount,full_apa_least_amount) 
                  VALUES (@pid,@eff,@oid,@oname,@obirth,@iid,@iname,@ibirth,@st,@prod,@bill,@issue,@paid,@overloan,@amt,@suf,@pmode,@sundry,@true,@last,@curr,@oleast,@apa)", conn).

           *> mapping parameters
           invoke cmd "Parameters.AddWithValue" using "pid", policyId.
           invoke cmd "Parameters.AddWithValue" using "eff", effectiveDate.
           invoke cmd "Parameters.AddWithValue" using "oid", ownerId.
           invoke cmd "Parameters.AddWithValue" using "oname", ownerName.
           invoke cmd "Parameters.AddWithValue" using "obirth", ownerBirth.
           invoke cmd "Parameters.AddWithValue" using "iid", insuredId.
           invoke cmd "Parameters.AddWithValue" using "iname", insuredName.
           invoke cmd "Parameters.AddWithValue" using "ibirth", insuredBirth.
           invoke cmd "Parameters.AddWithValue" using "st", status.
           invoke cmd "Parameters.AddWithValue" using "prod", product.
           invoke cmd "Parameters.AddWithValue" using "bill", billing.
           invoke cmd "Parameters.AddWithValue" using "issue", issueDate.
           invoke cmd "Parameters.AddWithValue" using "paid", paidToDate.
           invoke cmd "Parameters.AddWithValue" using "overloan", overloanExpiry.
           invoke cmd "Parameters.AddWithValue" using "amt", amountBilled.
           invoke cmd "Parameters.AddWithValue" using "suf", suffix.
           invoke cmd "Parameters.AddWithValue" using "pmode", premiumMode.
           invoke cmd "Parameters.AddWithValue" using "sundry", sundryAmount.
           invoke cmd "Parameters.AddWithValue" using "true", truePremium.
           invoke cmd "Parameters.AddWithValue" using "last", lastModePremium.
           invoke cmd "Parameters.AddWithValue" using "curr", currency.
           invoke cmd "Parameters.AddWithValue" using "oleast", overloanLeast.
           invoke cmd "Parameters.AddWithValue" using "apa", fullApaLeast.
           invoke cmd "ExecuteNonQuery".
       end method InsertPolicy.

       *> Update, Delete, Search tương tự (UpdatePolicy, DeletePolicy, SearchPolicy)
       end factory.

       end class Policy.
