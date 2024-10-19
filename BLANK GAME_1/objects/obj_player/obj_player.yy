{
  "$GMObject":"",
  "%Name":"obj_player",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_bow","path":"objects/obj_bow/obj_bow.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_slime","path":"objects/obj_slime/obj_slime.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_exit","path":"objects/obj_exit/obj_exit.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":4,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":2,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":3,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_player",
  "overriddenProperties":[],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":null,
  "persistent":true,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"holding_bow","filters":[],"listItems":[],"multiselect":false,"name":"holding_bow","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"movespd","filters":[],"listItems":[],"multiselect":false,"name":"movespd","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"can_shoot","filters":[],"listItems":[],"multiselect":false,"name":"can_shoot","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"true","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"shoot_speed","filters":[],"listItems":[],"multiselect":false,"name":"shoot_speed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"30","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"walk_sound","filters":[],"listItems":[],"multiselect":false,"name":"walk_sound","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"snd_walking","path":"sounds/snd_walking/snd_walking.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"snd_walking","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"bow_sound","filters":[],"listItems":[],"multiselect":false,"name":"bow_sound","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"snd_bow_shoot","path":"sounds/snd_bow_shoot/snd_bow_shoot.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"snd_bow_shoot","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"sword_sound","filters":[],"listItems":[],"multiselect":false,"name":"sword_sound","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"snd_sword_slash","path":"sounds/snd_sword_slash/snd_sword_slash.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"snd_sword_slash","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"damaged_now","filters":[],"listItems":[],"multiselect":false,"name":"damaged_now","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_green_idle_down",
    "path":"sprites/spr_green_idle_down/spr_green_idle_down.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}