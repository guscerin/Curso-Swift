//: Playground - noun: a place where people can play

// Protocol Types
protocol TipoDeEstabilizador{
    var estabilizador : String {get set}
}

class CamaraIPhone : TipoDeEstabilizador{
    var estabilizador: String = "Digital"
}

class CamaraIPhonePlus : TipoDeEstabilizador{
    var estabilizador: String = "Fisico"
}
class FanBoy{
    var nombre : String
    var celularConEstabilizador : TipoDeEstabilizador

    init(nombre : String, celularConEstabilizador : TipoDeEstabilizador){
        self.nombre = nombre
        self.celularConEstabilizador = celularConEstabilizador
    }

    func especificacionesDeCamara() -> String{
        return "tiene un estabilizador \(celularConEstabilizador.estabilizador)"
    }
}

// ahora creamos un iPhone
var iPhone = CamaraIPhonePlus()

var fanboy = FanBoy(nombre: "pablo", celularConEstabilizador: iPhone)
print(fanboy.especificacionesDeCamara())

