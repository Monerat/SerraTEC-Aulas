import { useContext, useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import EmailInput from './components/EmailInput'
import EmailLabel from './components/EmailLabel'
import { EmailProvider } from './context/EmailContext'

function App() {

  return (
    <>
      <div>
        <EmailProvider>
          <EmailInput />
          <p />
          <EmailLabel />
        </EmailProvider>
      </div>
    </>
  )
}

export default App
