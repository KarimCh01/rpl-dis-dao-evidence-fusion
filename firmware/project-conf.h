#ifndef PROJECT_CONF_H_
#define PROJECT_CONF_H_

#define RPL_CONF_DIS_INPUT_HOOK     defense_dis_input
#define RPL_CONF_DAO_INPUT_HOOK     defense_dao_input
#define UIP_CONF_FORWARD_HOOK       defense_forward
#define RPL_CALLBACK_PARENT_SWITCH  defense_parent_switch

#define RPL_CONF_DIS_INTERVAL       (10 * CLOCK_SECOND)

#define ENERGEST_CONF_ON            1
#define UIP_CONF_STATISTICS         1

#define LOG_CONF_LEVEL_RPL          LOG_LEVEL_WARN
#define LOG_CONF_LEVEL_IPV6         LOG_LEVEL_WARN
#define LOG_CONF_LEVEL_6LOWPAN      LOG_LEVEL_WARN
#define LOG_CONF_LEVEL_MAC          LOG_LEVEL_WARN
#define LOG_CONF_LEVEL_TCPIP        LOG_LEVEL_WARN
#define LOG_CONF_LEVEL_MAIN         LOG_LEVEL_WARN

#if MAC_CONF_WITH_TSCH
#define TSCH_CONF_AUTOSTART         0
#define LOG_CONF_LEVEL_FRAMER       LOG_LEVEL_WARN
#endif

#endif
