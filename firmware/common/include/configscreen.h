#pragma once

#include <stdint.h>

void configscreen_show();

extern Screen configScreen;

extern uint8_t ui8_g_configuration_display_reset_to_defaults;
extern uint8_t ui8_g_configuration_trip_a_reset;
extern uint8_t ui8_g_configuration_trip_b_reset;
extern uint32_t ui32_g_configuration_wh_100_percent;
extern uint8_t ui8_g_configuration_display_reset_bluetooth_peers;
