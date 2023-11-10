import { useContext } from "react"
import { EmailContext } from "../context/EmailContext"


const EmailLabel = () => {
    const { email } = useContext(EmailContext)

    return <label>{email}</label>
}

export default EmailLabel