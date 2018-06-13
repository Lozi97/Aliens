import React from 'react'

export const Aliens = (props) => {
    return(
        <div className="Aliens-List">
        <div>
          {props.aliens.map(x => <Person key={x.id} {...x}/>)}
        </div>

        </div>
    )
}