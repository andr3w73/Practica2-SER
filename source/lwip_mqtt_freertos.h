#ifndef LWIP_MQTT_FREERTOS_H
#define LWIP_MQTT_FREERTOS_H

#include "FreeRTOS.h"
#include "queue.h"

/**
 * @brief   Inicializa LWIP + DHCP + cliente MQTT + tarea de publicación.
 *          Debe llamarse una vez antes de arrancar el scheduler.
 */
void mqtt_initialize(void);

/**
 * @brief   Encola un mensaje para publicar en MQTT.
 * @param   topic   Cadena NUL-terminated con el topic (p.ej. "lwip_topic/vladimir")
 * @param   payload Cadena NUL-terminated con el mensaje a enviar
 */
void mqtt_publish_async(const char *topic, const char *payload);

#endif // LWIP_MQTT_FREERTOS_H
