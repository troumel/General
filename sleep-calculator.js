function getSleepHours(day) {
    switch (day.toLowerCase()) {
        case 'monday':
            return 8;
            break;
        case 'tuesday':
            return 6;
            break;
        case 'wednesday':
            return 8;
            break;
        case 'thirsday':
            return 6;
            break;
        case 'friday':
            return 7;
            break;
        case 'saturday':
            return 8;
            break;
        case 'sunday':
            return 9;
            break;
        default:
            return 'please enter the name of a day!'
    }
}

const getActualSleepHours = () => {
    getSleepHours('monday') + getSleepHours('tuesday') + getSleepHours('wednesday') + getSleepHours('thirsday') +
        getSleepHours('friday') + getSleepHours('saturday') + getSleepHours('sunday');
}

const getIdealSleepHours = () => {
    const idealHours = 8.5;
    return idealHours * 7;
  };

console.log(getActualSleepHours());