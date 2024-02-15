export type month = 'enero'| 'febrero'|'marzo'|'abril'|'mayo'|'junio'|'julio'|'agosto'|'septiembre'|'octubre'|'noviembre'|'diciembre'
export type day = '1-30'

export interface alarmEntry {
    id: number,
    date: string,
    month: month,
    day: day,
    comment: string
}
