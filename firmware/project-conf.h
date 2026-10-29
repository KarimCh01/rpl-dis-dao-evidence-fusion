#ifndef PROJECT_CONF_H_
#define PROJECT_CONF_H_

#define RPL_CONF_DIS_INPUT_HOOK     defense_dis_input
#define RPL_CONF_DAO_INPUT_HOOK     defense_dao_input
#define UIP_CONF_FORWARD_HOOK       defense_forward
#define RPL_CALLBACK_PARENT_SWITCH  defense_parent_switch

#ifndef APP_RPL_DIS_INTERVAL_SEC
#define APP_RPL_DIS_INTERVAL_SEC 10
#endif
#define RPL_CONF_DIS_INTERVAL       (APP_RPL_DIS_INTERVAL_SEC * CLOCK_SECOND)

#ifdef ROOT_ROUTES
#define NETSTACK_MAX_ROUTE_ENTRIES  ROOT_ROUTES
#endif
#ifdef BIG_NET
#define SICSLOWPAN_CONF_REASS_CONTEXTS     8
#define SICSLOWPAN_CONF_FRAGMENT_BUFFERS   64
/* This bounds rank increase relative to the node's lowest observed rank;
 * it is not an absolute DODAG hop limit. Preserve the normal 30-node value. */
#define RPL_CONF_MAX_RANKINC               (20 * RPL_MIN_HOPRANKINC)
#endif
#ifdef ROOT_QUEUEBUF
#define QUEUEBUF_CONF_NUM           ROOT_QUEUEBUF
#endif

/* Opt-in scale transport settings. Apply identically to all roles in a
 * comparison. Keep the original 30-node and archived scale builds unchanged. */
#ifdef APP_CSMA_NEIGHBOR_QUEUES
#define CSMA_CONF_MAX_NEIGHBOR_QUEUES APP_CSMA_NEIGHBOR_QUEUES
#endif
#ifdef APP_COMPRESS_EXT_HDR
/* With 0, IPv6 IPHC remains enabled, but extension headers are payload for
 * 6LoWPAN fragmentation rather than part of the first-fragment NHC chain. */
#define SICSLOWPAN_CONF_COMPRESS_EXT_HDR APP_COMPRESS_EXT_HDR
#endif
#ifdef APP_DAO_RTX_SEC
#define RPL_CONF_DAO_RETRANSMISSION_TIMEOUT (APP_DAO_RTX_SEC * CLOCK_SECOND)
#endif
#ifdef APP_DAO_MAX_RTX
#define RPL_CONF_DAO_MAX_RETRANSMISSIONS APP_DAO_MAX_RTX
#endif

#define ENERGEST_CONF_ON            1
#define UIP_CONF_STATISTICS         1

#ifdef APP_RPL_LOG_LEVEL
#define LOG_CONF_LEVEL_RPL          APP_RPL_LOG_LEVEL
#else
#define LOG_CONF_LEVEL_RPL          LOG_LEVEL_WARN
#endif
#define LOG_CONF_LEVEL_IPV6         LOG_LEVEL_WARN
#define LOG_CONF_LEVEL_6LOWPAN      LOG_LEVEL_WARN
#ifdef APP_MAC_LOG_LEVEL
#define LOG_CONF_LEVEL_MAC          APP_MAC_LOG_LEVEL
#else
#define LOG_CONF_LEVEL_MAC          LOG_LEVEL_WARN
#endif
#define LOG_CONF_LEVEL_TCPIP        LOG_LEVEL_WARN
#define LOG_CONF_LEVEL_MAIN         LOG_LEVEL_WARN

#if MAC_CONF_WITH_TSCH
#define TSCH_CONF_AUTOSTART         0
#define LOG_CONF_LEVEL_FRAMER       LOG_LEVEL_WARN
#endif

#endif
