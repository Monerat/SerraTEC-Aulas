import { EmailContext } from "../context/EmailContext"
import { useContext } from "react"

const EmailInput = () => {
    const { email, setEmail } = useContext(EmailContext)

    return (
        <input value={email} onChange={(e) => { setEmail(e.target.value) }}/>
    )
}

export default EmailInput