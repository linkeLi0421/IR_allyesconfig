; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl1251/acx.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl1251/acx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.acx_fw_gen_frame_rates = type { %struct.acx_header, i8, i8, i8, i8 }
%struct.acx_header = type { %struct.wl1251_cmd_header, i16, i16 }
%struct.wl1251_cmd_header = type { i16, i16, [0 x i8] }
%struct.wl1251 = type { ptr, i8, ptr, ptr, i32, i32, i8, ptr, %struct.spinlock, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.boot_attr, ptr, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, i32, i8, i8, ptr, ptr, i32, %struct.sk_buff_head, i8, %struct.work_struct, [16 x ptr], i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, [2 x i32], i8, i32, i32, i32, i32, i32, i8, %struct.delayed_work, i32, i8, i8, i16, i8, i32, i32, %struct.wl1251_stats, %struct.wl1251_debugfs, i32, i32, [8 x i8], ptr, ptr, i32, [21 x i8], i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.boot_attr = type { i32, i8, i8, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wl1251_stats = type { ptr, i32, i32, i32 }
%struct.wl1251_debugfs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acx_dot11_station_id = type { %struct.acx_header, [6 x i8], [2 x i8] }
%struct.acx_dot11_default_key = type { %struct.acx_header, i8, [3 x i8] }
%struct.acx_wake_up_condition = type { %struct.acx_header, i8, i8, [2 x i8] }
%struct.acx_sleep_auth = type { %struct.acx_header, i8, [3 x i8] }
%struct.acx_revision = type { %struct.acx_header, [20 x i8], i32 }
%struct.acx_current_tx_power = type { %struct.acx_header, i8, [3 x i8] }
%struct.acx_feature_config = type { %struct.acx_header, i32, i32 }
%struct.acx_data_path_params = type { %struct.acx_header, i16, i16, i8, i8, i8, i8, i32 }
%struct.acx_rx_msdu_lifetime = type { %struct.acx_header, i32 }
%struct.acx_rx_config = type { %struct.acx_header, i32, i32 }
%struct.acx_slot = type { %struct.acx_header, i8, i8, [6 x i8] }
%struct.acx_dot11_grp_addr_tbl = type { %struct.acx_header, i8, i8, [2 x i8], [48 x i8] }
%struct.acx_rx_timeout = type { %struct.acx_header, i16, i16 }
%struct.acx_rts_threshold = type { %struct.acx_header, i16, [2 x i8] }
%struct.acx_beacon_filter_option = type { %struct.acx_header, i8, i8, [2 x i8] }
%struct.acx_beacon_filter_ie_table = type { %struct.acx_header, i8, [3 x i8], [100 x i8] }
%struct.acx_conn_monit_params = type { %struct.acx_header, i32, i32 }
%struct.acx_bt_wlan_coex = type { %struct.acx_header, i8, [3 x i8] }
%struct.acx_bt_wlan_coex_param = type { %struct.acx_header, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.acx_energy_detection = type { %struct.acx_header, i16, i8, i8 }
%struct.acx_beacon_broadcast = type { %struct.acx_header, i16, i16, i8, i8, [2 x i8] }
%struct.acx_aid = type { %struct.acx_header, i16, [2 x i8] }
%struct.acx_event_mask = type { %struct.acx_header, i32, i32 }
%struct.acx_low_rssi = type { %struct.acx_header, i8, i8, i8, i8 }
%struct.acx_preamble = type { %struct.acx_header, i8, [3 x i8] }
%struct.acx_ctsprotect = type { %struct.acx_header, i8, [3 x i8] }
%struct.acx_tsf_info = type { %struct.acx_header, i32, i32, i32, i32, i8, [3 x i8] }
%struct.acx_rate_policy = type { %struct.acx_header, i32, [8 x %struct.acx_rate_class] }
%struct.acx_rate_class = type { i32, i8, i8, i8, i8 }
%struct.wl1251_acx_config_memory = type { %struct.acx_header, %struct.wl1251_acx_memory, %struct.wl1251_acx_rx_queue_config, [5 x %struct.wl1251_acx_tx_queue_config] }
%struct.wl1251_acx_memory = type { i16, i16, i8, i8, i8, i8, i8, i8, i16 }
%struct.wl1251_acx_rx_queue_config = type { i8, i8, i8, i8, i32 }
%struct.wl1251_acx_tx_queue_config = type { i8, [2 x i8], i8 }
%struct.wl1251_acx_wr_tbtt_and_dtim = type { %struct.acx_header, i16, i8, i8 }
%struct.wl1251_acx_bet_enable = type { %struct.acx_header, i8, i8, [2 x i8] }
%struct.wl1251_acx_arp_filter = type { %struct.acx_header, i8, i8, [2 x i8], [16 x i8] }
%struct.wl1251_acx_ac_cfg = type { %struct.acx_header, i8, i8, i16, i8, i8, i16 }
%struct.wl1251_acx_tid_cfg = type { %struct.acx_header, i8, i8, i8, i8, i8, [3 x i8], [2 x i32] }

@wl1251_acx_frame_rates._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013wl1251: ERROR Failed to set FW rates and modulation\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1251_acx_frame_rates\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ti/wl1251/acx.c\00", [59 x i8] zeroinitializer }, align 32
@wl1251_acx_frame_rates._entry_ptr = internal global ptr @wl1251_acx_frame_rates._entry, section ".printk_index", align 4
@wl1251_acx_default_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013wl1251: ERROR Couldn't set default key\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1251_acx_default_key\00", [41 x i8] zeroinitializer }, align 32
@wl1251_acx_default_key._entry_ptr = internal global ptr @wl1251_acx_default_key._entry, section ".printk_index", align 4
@wl1251_acx_wake_up_conditions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014wl1251: WARNING could not set wake up conditions: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wl1251_acx_wake_up_conditions\00", [34 x i8] zeroinitializer }, align 32
@wl1251_acx_wake_up_conditions._entry_ptr = internal global ptr @wl1251_acx_wake_up_conditions._entry, section ".printk_index", align 4
@wl1251_acx_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014wl1251: WARNING ACX_FW_REV interrogate failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wl1251_acx_fw_version\00", [42 x i8] zeroinitializer }, align 32
@wl1251_acx_fw_version._entry_ptr = internal global ptr @wl1251_acx_fw_version._entry, section ".printk_index", align 4
@wl1251_acx_tx_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wl1251: WARNING configure of tx power failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wl1251_acx_tx_power\00", [44 x i8] zeroinitializer }, align 32
@wl1251_acx_tx_power._entry_ptr = internal global ptr @wl1251_acx_tx_power._entry, section ".printk_index", align 4
@wl1251_acx_feature_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013wl1251: ERROR Couldn't set HW encryption\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1251_acx_feature_cfg\00", [41 x i8] zeroinitializer }, align 32
@wl1251_acx_feature_cfg._entry_ptr = internal global ptr @wl1251_acx_feature_cfg._entry, section ".printk_index", align 4
@wl1251_acx_data_path_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014wl1251: WARNING failed to read data path parameters: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl1251_acx_data_path_params\00", [36 x i8] zeroinitializer }, align 32
@wl1251_acx_data_path_params._entry_ptr = internal global ptr @wl1251_acx_data_path_params._entry, section ".printk_index", align 4
@wl1251_acx_data_path_params._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014wl1251: WARNING data path parameter acx status failed\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1251_acx_data_path_params._entry_ptr.17 = internal global ptr @wl1251_acx_data_path_params._entry.15, section ".printk_index", align 4
@wl1251_acx_rx_msdu_life_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wl1251: WARNING failed to set rx msdu life time: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1251_acx_rx_msdu_life_time\00", [35 x i8] zeroinitializer }, align 32
@wl1251_acx_rx_msdu_life_time._entry_ptr = internal global ptr @wl1251_acx_rx_msdu_life_time._entry, section ".printk_index", align 4
@wl1251_acx_rx_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014wl1251: WARNING failed to set rx config: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl1251_acx_rx_config\00", [43 x i8] zeroinitializer }, align 32
@wl1251_acx_rx_config._entry_ptr = internal global ptr @wl1251_acx_rx_config._entry, section ".printk_index", align 4
@wl1251_acx_pd_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014wl1251: WARNING failed to set pd threshold: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl1251_acx_pd_threshold\00", [40 x i8] zeroinitializer }, align 32
@wl1251_acx_pd_threshold._entry_ptr = internal global ptr @wl1251_acx_pd_threshold._entry, section ".printk_index", align 4
@wl1251_acx_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014wl1251: WARNING failed to set slot time: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl1251_acx_slot\00", [16 x i8] zeroinitializer }, align 32
@wl1251_acx_slot._entry_ptr = internal global ptr @wl1251_acx_slot._entry, section ".printk_index", align 4
@wl1251_acx_group_address_tbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014wl1251: WARNING failed to set group addr table: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1251_acx_group_address_tbl\00", [35 x i8] zeroinitializer }, align 32
@wl1251_acx_group_address_tbl._entry_ptr = internal global ptr @wl1251_acx_group_address_tbl._entry, section ".printk_index", align 4
@wl1251_acx_service_period_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014wl1251: WARNING failed to set service period timeout: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wl1251_acx_service_period_timeout\00", [62 x i8] zeroinitializer }, align 32
@wl1251_acx_service_period_timeout._entry_ptr = internal global ptr @wl1251_acx_service_period_timeout._entry, section ".printk_index", align 4
@wl1251_acx_rts_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wl1251: WARNING failed to set rts threshold: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1251_acx_rts_threshold\00", [39 x i8] zeroinitializer }, align 32
@wl1251_acx_rts_threshold._entry_ptr = internal global ptr @wl1251_acx_rts_threshold._entry, section ".printk_index", align 4
@wl1251_acx_beacon_filter_opt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wl1251: WARNING failed to set beacon filter opt: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1251_acx_beacon_filter_opt\00", [35 x i8] zeroinitializer }, align 32
@wl1251_acx_beacon_filter_opt._entry_ptr = internal global ptr @wl1251_acx_beacon_filter_opt._entry, section ".printk_index", align 4
@wl1251_acx_beacon_filter_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014wl1251: WARNING failed to set beacon filter table: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wl1251_acx_beacon_filter_table\00", [33 x i8] zeroinitializer }, align 32
@wl1251_acx_beacon_filter_table._entry_ptr = internal global ptr @wl1251_acx_beacon_filter_table._entry, section ".printk_index", align 4
@wl1251_acx_conn_monit_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014wl1251: WARNING failed to set connection monitor parameters: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1251_acx_conn_monit_params\00", [35 x i8] zeroinitializer }, align 32
@wl1251_acx_conn_monit_params._entry_ptr = internal global ptr @wl1251_acx_conn_monit_params._entry, section ".printk_index", align 4
@wl1251_acx_sg_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wl1251: WARNING failed to set softgemini enable: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl1251_acx_sg_enable\00", [43 x i8] zeroinitializer }, align 32
@wl1251_acx_sg_enable._entry_ptr = internal global ptr @wl1251_acx_sg_enable._entry, section ".printk_index", align 4
@wl1251_acx_sg_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014wl1251: WARNING failed to set sg config: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wl1251_acx_sg_cfg\00", [46 x i8] zeroinitializer }, align 32
@wl1251_acx_sg_cfg._entry_ptr = internal global ptr @wl1251_acx_sg_cfg._entry, section ".printk_index", align 4
@wl1251_acx_cca_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wl1251: WARNING failed to set cca threshold: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1251_acx_cca_threshold\00", [39 x i8] zeroinitializer }, align 32
@wl1251_acx_cca_threshold._entry_ptr = internal global ptr @wl1251_acx_cca_threshold._entry, section ".printk_index", align 4
@wl1251_acx_bcn_dtim_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.44, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl1251_acx_bcn_dtim_options\00", [36 x i8] zeroinitializer }, align 32
@wl1251_acx_bcn_dtim_options._entry_ptr = internal global ptr @wl1251_acx_bcn_dtim_options._entry, section ".printk_index", align 4
@wl1251_acx_aid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014wl1251: WARNING failed to set aid: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wl1251_acx_aid\00", [17 x i8] zeroinitializer }, align 32
@wl1251_acx_aid._entry_ptr = internal global ptr @wl1251_acx_aid._entry, section ".printk_index", align 4
@wl1251_acx_event_mbox_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014wl1251: WARNING failed to set acx_event_mbox_mask: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wl1251_acx_event_mbox_mask\00", [37 x i8] zeroinitializer }, align 32
@wl1251_acx_event_mbox_mask._entry_ptr = internal global ptr @wl1251_acx_event_mbox_mask._entry, section ".printk_index", align 4
@wl1251_acx_low_rssi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014wl1251: WARNING failed to set low rssi threshold: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wl1251_acx_low_rssi\00", [44 x i8] zeroinitializer }, align 32
@wl1251_acx_low_rssi._entry_ptr = internal global ptr @wl1251_acx_low_rssi._entry, section ".printk_index", align 4
@wl1251_acx_set_preamble._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014wl1251: WARNING Setting of preamble failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl1251_acx_set_preamble\00", [40 x i8] zeroinitializer }, align 32
@wl1251_acx_set_preamble._entry_ptr = internal global ptr @wl1251_acx_set_preamble._entry, section ".printk_index", align 4
@wl1251_acx_cts_protect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wl1251: WARNING Setting of ctsprotect failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1251_acx_cts_protect\00", [41 x i8] zeroinitializer }, align 32
@wl1251_acx_cts_protect._entry_ptr = internal global ptr @wl1251_acx_cts_protect._entry, section ".printk_index", align 4
@wl1251_acx_tsf_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.55, ptr @.str.2, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wl1251_acx_tsf_info\00", [44 x i8] zeroinitializer }, align 32
@wl1251_acx_tsf_info._entry_ptr = internal global ptr @wl1251_acx_tsf_info._entry, section ".printk_index", align 4
@wl1251_acx_statistics._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014wl1251: WARNING acx statistics failed: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wl1251_acx_statistics\00", [42 x i8] zeroinitializer }, align 32
@wl1251_acx_statistics._entry_ptr = internal global ptr @wl1251_acx_statistics._entry, section ".printk_index", align 4
@wl1251_acx_rate_policies._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wl1251: WARNING Setting of rate policies failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1251_acx_rate_policies\00", [39 x i8] zeroinitializer }, align 32
@wl1251_acx_rate_policies._entry_ptr = internal global ptr @wl1251_acx_rate_policies._entry, section ".printk_index", align 4
@wl1251_acx_mem_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014wl1251: WARNING wl1251 mem config failed: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1251_acx_mem_cfg\00", [45 x i8] zeroinitializer }, align 32
@wl1251_acx_mem_cfg._entry_ptr = internal global ptr @wl1251_acx_mem_cfg._entry, section ".printk_index", align 4
@wl1251_acx_wr_tbtt_and_dtim._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wl1251: WARNING failed to set tbtt and dtim: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl1251_acx_wr_tbtt_and_dtim\00", [36 x i8] zeroinitializer }, align 32
@wl1251_acx_wr_tbtt_and_dtim._entry_ptr = internal global ptr @wl1251_acx_wr_tbtt_and_dtim._entry, section ".printk_index", align 4
@wl1251_acx_bet_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wl1251: WARNING wl1251 acx bet enable failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wl1251_acx_bet_enable\00", [42 x i8] zeroinitializer }, align 32
@wl1251_acx_bet_enable._entry_ptr = internal global ptr @wl1251_acx_bet_enable._entry, section ".printk_index", align 4
@wl1251_acx_arp_ip_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wl1251: WARNING failed to set arp ip filter: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1251_acx_arp_ip_filter\00", [39 x i8] zeroinitializer }, align 32
@wl1251_acx_arp_ip_filter._entry_ptr = internal global ptr @wl1251_acx_arp_ip_filter._entry, section ".printk_index", align 4
@wl1251_acx_ac_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014wl1251: WARNING acx ac cfg failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wl1251_acx_ac_cfg\00", [46 x i8] zeroinitializer }, align 32
@wl1251_acx_ac_cfg._entry_ptr = internal global ptr @wl1251_acx_ac_cfg._entry, section ".printk_index", align 4
@wl1251_acx_tid_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014wl1251: WARNING acx tid cfg failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1251_acx_tid_cfg\00", [45 x i8] zeroinitializer }, align 32
@wl1251_acx_tid_cfg._entry_ptr = internal global ptr @wl1251_acx_tid_cfg._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 32, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 78, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 107, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 148, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 185, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 212, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 269, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 272, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 297, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 323, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 347, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 372, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 401, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 427, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 452, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 478, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 507, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 533, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 558, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 610, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 636, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 660, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 684, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 712, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 740, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 761, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 786, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 807, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 828, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 861, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 906, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 932, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 958, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 987, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1014, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.388 = private constant [40 x i8] c"../drivers/net/wireless/ti/wl1251/acx.c\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1047, i32 3 }
@llvm.compiler.used = appending global [142 x ptr] [ptr @wl1251_acx_ac_cfg._entry, ptr @wl1251_acx_ac_cfg._entry_ptr, ptr @wl1251_acx_aid._entry, ptr @wl1251_acx_aid._entry_ptr, ptr @wl1251_acx_arp_ip_filter._entry, ptr @wl1251_acx_arp_ip_filter._entry_ptr, ptr @wl1251_acx_bcn_dtim_options._entry, ptr @wl1251_acx_bcn_dtim_options._entry_ptr, ptr @wl1251_acx_beacon_filter_opt._entry, ptr @wl1251_acx_beacon_filter_opt._entry_ptr, ptr @wl1251_acx_beacon_filter_table._entry, ptr @wl1251_acx_beacon_filter_table._entry_ptr, ptr @wl1251_acx_bet_enable._entry, ptr @wl1251_acx_bet_enable._entry_ptr, ptr @wl1251_acx_cca_threshold._entry, ptr @wl1251_acx_cca_threshold._entry_ptr, ptr @wl1251_acx_conn_monit_params._entry, ptr @wl1251_acx_conn_monit_params._entry_ptr, ptr @wl1251_acx_cts_protect._entry, ptr @wl1251_acx_cts_protect._entry_ptr, ptr @wl1251_acx_data_path_params._entry, ptr @wl1251_acx_data_path_params._entry.15, ptr @wl1251_acx_data_path_params._entry_ptr, ptr @wl1251_acx_data_path_params._entry_ptr.17, ptr @wl1251_acx_default_key._entry, ptr @wl1251_acx_default_key._entry_ptr, ptr @wl1251_acx_event_mbox_mask._entry, ptr @wl1251_acx_event_mbox_mask._entry_ptr, ptr @wl1251_acx_feature_cfg._entry, ptr @wl1251_acx_feature_cfg._entry_ptr, ptr @wl1251_acx_frame_rates._entry, ptr @wl1251_acx_frame_rates._entry_ptr, ptr @wl1251_acx_fw_version._entry, ptr @wl1251_acx_fw_version._entry_ptr, ptr @wl1251_acx_group_address_tbl._entry, ptr @wl1251_acx_group_address_tbl._entry_ptr, ptr @wl1251_acx_low_rssi._entry, ptr @wl1251_acx_low_rssi._entry_ptr, ptr @wl1251_acx_mem_cfg._entry, ptr @wl1251_acx_mem_cfg._entry_ptr, ptr @wl1251_acx_pd_threshold._entry, ptr @wl1251_acx_pd_threshold._entry_ptr, ptr @wl1251_acx_rate_policies._entry, ptr @wl1251_acx_rate_policies._entry_ptr, ptr @wl1251_acx_rts_threshold._entry, ptr @wl1251_acx_rts_threshold._entry_ptr, ptr @wl1251_acx_rx_config._entry, ptr @wl1251_acx_rx_config._entry_ptr, ptr @wl1251_acx_rx_msdu_life_time._entry, ptr @wl1251_acx_rx_msdu_life_time._entry_ptr, ptr @wl1251_acx_service_period_timeout._entry, ptr @wl1251_acx_service_period_timeout._entry_ptr, ptr @wl1251_acx_set_preamble._entry, ptr @wl1251_acx_set_preamble._entry_ptr, ptr @wl1251_acx_sg_cfg._entry, ptr @wl1251_acx_sg_cfg._entry_ptr, ptr @wl1251_acx_sg_enable._entry, ptr @wl1251_acx_sg_enable._entry_ptr, ptr @wl1251_acx_slot._entry, ptr @wl1251_acx_slot._entry_ptr, ptr @wl1251_acx_statistics._entry, ptr @wl1251_acx_statistics._entry_ptr, ptr @wl1251_acx_tid_cfg._entry, ptr @wl1251_acx_tid_cfg._entry_ptr, ptr @wl1251_acx_tsf_info._entry, ptr @wl1251_acx_tsf_info._entry_ptr, ptr @wl1251_acx_tx_power._entry, ptr @wl1251_acx_tx_power._entry_ptr, ptr @wl1251_acx_wake_up_conditions._entry, ptr @wl1251_acx_wake_up_conditions._entry_ptr, ptr @wl1251_acx_wr_tbtt_and_dtim._entry, ptr @wl1251_acx_wr_tbtt_and_dtim._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_frame_rates._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_default_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_wake_up_conditions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_tx_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_feature_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_data_path_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_data_path_params._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_rx_msdu_life_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_rx_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_pd_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_group_address_tbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_service_period_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_rts_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_beacon_filter_opt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_beacon_filter_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_conn_monit_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_sg_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_sg_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_cca_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_bcn_dtim_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_aid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_event_mbox_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_low_rssi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_set_preamble._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_cts_protect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_tsf_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_statistics._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_rate_policies._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_mem_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_wr_tbtt_and_dtim._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_bet_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_arp_ip_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_ac_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_acx_tid_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_frame_rates(ptr noundef %wl, i8 noundef zeroext %ctrl_rate, i8 noundef zeroext %ctrl_mod, i8 noundef zeroext %mgt_rate, i8 noundef zeroext %mgt_mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_ctrl_frame_rate = getelementptr inbounds %struct.acx_fw_gen_frame_rates, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %tx_ctrl_frame_rate to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %ctrl_rate, ptr %tx_ctrl_frame_rate, align 8
  %tx_ctrl_frame_mod = getelementptr inbounds %struct.acx_fw_gen_frame_rates, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %tx_ctrl_frame_mod to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %ctrl_mod, ptr %tx_ctrl_frame_mod, align 1
  %tx_mgt_frame_rate = getelementptr inbounds %struct.acx_fw_gen_frame_rates, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %tx_mgt_frame_rate to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %mgt_rate, ptr %tx_mgt_frame_rate, align 2
  %tx_mgt_frame_mod = getelementptr inbounds %struct.acx_fw_gen_frame_rates, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %tx_mgt_frame_mod to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %mgt_mod, ptr %tx_mgt_frame_mod, align 1
  %call1 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 66, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %out

out:                                              ; preds = %do.end5, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_configure(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_station_id(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 5
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr %struct.acx_dot11_station_id, ptr %call7.i.i, i32 0, i32 1, i32 0
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %arrayidx2, align 8
  %arrayidx.1 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 4
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %arrayidx2.1 = getelementptr %struct.acx_dot11_station_id, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx2.1, align 1
  %arrayidx.2 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 3
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.2, align 1
  %arrayidx2.2 = getelementptr %struct.acx_dot11_station_id, ptr %call7.i.i, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx2.2, align 2
  %arrayidx.3 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 2
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.3, align 1
  %arrayidx2.3 = getelementptr %struct.acx_dot11_station_id, ptr %call7.i.i, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx2.3, align 1
  %arrayidx.4 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 1
  %13 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.4, align 1
  %arrayidx2.4 = getelementptr %struct.acx_dot11_station_id, ptr %call7.i.i, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx2.4, align 4
  %arrayidx.5 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 0
  %16 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.5, align 1
  %arrayidx2.5 = getelementptr %struct.acx_dot11_station_id, ptr %call7.i.i, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx2.5, align 1
  %call3 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 4097, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %for.body.preheader ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_default_key(ptr noundef %wl, i8 noundef zeroext %key_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.acx_dot11_default_key, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %key_id, ptr %id, align 8
  %call1 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 4112, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %out

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %key_id to i32
  %default_key8 = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 46
  %2 = ptrtoint ptr %default_key8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %default_key8, align 4
  br label %out

out:                                              ; preds = %if.end7, %do.end5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_wake_up_conditions(ptr noundef %wl, i8 noundef zeroext %wake_up_event, i8 noundef zeroext %listen_interval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %wake_up_event1 = getelementptr inbounds %struct.acx_wake_up_condition, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %wake_up_event1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %wake_up_event, ptr %wake_up_event1, align 8
  %listen_interval2 = getelementptr inbounds %struct.acx_wake_up_condition, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %listen_interval2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %listen_interval, ptr %listen_interval2, align 1
  %call3 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 2, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call3) #10
  br label %out

out:                                              ; preds = %do.end7, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_sleep_auth(ptr noundef %wl, i8 noundef zeroext %sleep_auth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sleep_auth1 = getelementptr inbounds %struct.acx_sleep_auth, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %sleep_auth1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %sleep_auth, ptr %sleep_auth1, align 8
  %call2 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 63, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_fw_version(ptr noundef %wl, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @wl1251_cmd_interrogate(ptr noundef %wl, i16 noundef zeroext 13, ptr noundef nonnull %call7.i.i, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %out

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %fw_version = getelementptr inbounds %struct.acx_revision, ptr %call7.i.i, i32 0, i32 1
  %1 = tail call i32 @llvm.umin.i32(i32 %len, i32 20)
  %call10 = tail call ptr @strncpy(ptr noundef %buf, ptr noundef %fw_version, i32 noundef %1)
  %phi.bo = add i32 %len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %len)
  %cmp9.inv = icmp ugt i32 %len, 19
  %cond16 = select i1 %cmp9.inv, i32 19, i32 %phi.bo
  %arrayidx = getelementptr i8, ptr %buf, i32 %cond16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  br label %out

out:                                              ; preds = %if.end7, %do.end5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_interrogate(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_tx_power(ptr noundef %wl, i32 noundef %power) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %power)
  %0 = icmp ugt i32 %power, 25
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = trunc i32 %power to i8
  %conv = mul nuw i8 %2, 10
  %current_tx_power = getelementptr inbounds %struct.acx_current_tx_power, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %current_tx_power to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %current_tx_power, align 8
  %call4 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 4109, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end10, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call4) #10
  br label %out

out:                                              ; preds = %do.end10, %if.end3.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_feature_cfg(ptr noundef %wl, i32 noundef %data_flow_options) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_flow_options1 = getelementptr inbounds %struct.acx_feature_config, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %data_flow_options1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %data_flow_options, ptr %data_flow_options1, align 4
  %options = getelementptr inbounds %struct.acx_feature_config, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %options, align 8
  %call2 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 21, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %out

out:                                              ; preds = %do.end6, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_mem_map(ptr noundef %wl, ptr noundef %mem_map, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1251_cmd_interrogate(ptr noundef %wl, i16 noundef zeroext 8, ptr noundef %mem_map, i32 noundef %len) #6
  %0 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_data_path_params(ptr noundef %wl, ptr noundef %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_packet_ring_chunk_size = getelementptr inbounds %struct.acx_data_path_params, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %rx_packet_ring_chunk_size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1600, ptr %rx_packet_ring_chunk_size, align 8
  %tx_packet_ring_chunk_size = getelementptr inbounds %struct.acx_data_path_params, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %tx_packet_ring_chunk_size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1600, ptr %tx_packet_ring_chunk_size, align 2
  %rx_packet_ring_chunk_num = getelementptr inbounds %struct.acx_data_path_params, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %rx_packet_ring_chunk_num to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %rx_packet_ring_chunk_num, align 4
  %tx_packet_ring_chunk_num = getelementptr inbounds %struct.acx_data_path_params, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %tx_packet_ring_chunk_num to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %tx_packet_ring_chunk_num, align 1
  %tx_complete_threshold = getelementptr inbounds %struct.acx_data_path_params, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %tx_complete_threshold to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %tx_complete_threshold, align 2
  %tx_complete_ring_depth = getelementptr inbounds %struct.acx_data_path_params, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %tx_complete_ring_depth to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %tx_complete_ring_depth, align 1
  %tx_complete_timeout = getelementptr inbounds %struct.acx_data_path_params, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %tx_complete_timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %tx_complete_timeout, align 8
  %call1 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 36, ptr noundef nonnull %call7.i.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @wl1251_cmd_interrogate(ptr noundef %wl, i16 noundef zeroext 36, ptr noundef %resp, i32 noundef 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.else

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call4) #10
  br label %out

if.else:                                          ; preds = %if.end3
  %status = getelementptr inbounds %struct.wl1251_cmd_header, ptr %resp, i32 0, i32 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp11.not = icmp eq i16 %9, 1
  br i1 %cmp11.not, label %if.else.out_crit_edge, label %do.end16

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %out

out:                                              ; preds = %do.end16, %if.else.out_crit_edge, %do.end9, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ %call4, %do.end9 ], [ -5, %do.end16 ], [ %call4, %if.else.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_rx_msdu_life_time(ptr noundef %wl, i32 noundef %life_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lifetime = getelementptr inbounds %struct.acx_rx_msdu_lifetime, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %lifetime to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %life_time, ptr %lifetime, align 8
  %call1 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 4100, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call1) #10
  br label %out

out:                                              ; preds = %do.end5, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_rx_config(ptr noundef %wl, i32 noundef %config, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %config_options = getelementptr inbounds %struct.acx_rx_config, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config_options to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %config, ptr %config_options, align 8
  %filter_options = getelementptr inbounds %struct.acx_rx_config, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %filter_options to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %filter, ptr %filter_options, align 4
  %call1 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 16, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call1) #10
  br label %out

out:                                              ; preds = %do.end5, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_pd_threshold(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 35, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call1) #10
  br label %out

out:                                              ; preds = %do.end5, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_slot(ptr noundef %wl, i32 noundef %slot_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %wone_index = getelementptr inbounds %struct.acx_slot, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %wone_index to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %wone_index, align 8
  %conv = trunc i32 %slot_time to i8
  %slot_time1 = getelementptr inbounds %struct.acx_slot, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %slot_time1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %slot_time1, align 1
  %call2 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 4, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call2) #10
  br label %out

out:                                              ; preds = %do.end7, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_group_address_tbl(ptr noundef %wl, i1 noundef zeroext %enable, ptr nocapture noundef readonly %mc_list, i32 noundef %mc_list_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %enable to i8
  %enabled = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %enabled, align 8
  %conv2 = trunc i32 %mc_list_len to i8
  %num_groups = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %num_groups to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv2, ptr %num_groups, align 1
  %mac_table = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, ptr %call7.i.i, i32 0, i32 4
  %mul = mul i32 %mc_list_len, 6
  %3 = call ptr @memcpy(ptr %mac_table, ptr %mc_list, i32 %mul)
  %call3 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 4116, ptr noundef nonnull %call7.i.i, i32 noundef 60) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call3) #10
  br label %out

out:                                              ; preds = %do.end8, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_service_period_timeout(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %ps_poll_timeout = getelementptr inbounds %struct.acx_rx_timeout, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ps_poll_timeout to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 15, ptr %ps_poll_timeout, align 8
  %upsd_timeout = getelementptr inbounds %struct.acx_rx_timeout, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %upsd_timeout to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 15, ptr %upsd_timeout, align 2
  %call1 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 69, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call1) #10
  br label %out

out:                                              ; preds = %do.end5, %do.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_rts_threshold(ptr noundef %wl, i16 noundef zeroext %rts_threshold) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %threshold = getelementptr inbounds %struct.acx_rts_threshold, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %threshold to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %rts_threshold, ptr %threshold, align 8
  %call1 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 4115, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %call1) #10
  br label %out

out:                                              ; preds = %do.end5, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_beacon_filter_opt(ptr noundef %wl, i1 noundef zeroext %enable_filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %enable_filter to i8
  %enable = getelementptr inbounds %struct.acx_beacon_filter_option, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %enable, align 8
  %max_num_beacons = getelementptr inbounds %struct.acx_beacon_filter_option, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %max_num_beacons to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %max_num_beacons, align 1
  %call2 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 31, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %call2) #10
  br label %out

out:                                              ; preds = %do.end7, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_beacon_filter_table(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 112) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_ie = getelementptr inbounds %struct.acx_beacon_filter_ie_table, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %num_ie to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %num_ie, align 8
  %table = getelementptr inbounds %struct.acx_beacon_filter_ie_table, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %table to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 37, ptr %table, align 4
  %arrayidx3 = getelementptr %struct.acx_beacon_filter_ie_table, ptr %call7.i.i, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %arrayidx3, align 1
  %call4 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 56, ptr noundef nonnull %call7.i.i, i32 noundef 112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %call4) #10
  br label %out

out:                                              ; preds = %do.end8, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_conn_monit_params(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %synch_fail_thold = getelementptr inbounds %struct.acx_conn_monit_params, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %synch_fail_thold to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10, ptr %synch_fail_thold, align 8
  %bss_lose_timeout = getelementptr inbounds %struct.acx_conn_monit_params, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %bss_lose_timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 500, ptr %bss_lose_timeout, align 4
  %call1 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 45, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %call1) #10
  br label %out

out:                                              ; preds = %do.end5, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_sg_enable(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable = getelementptr inbounds %struct.acx_bt_wlan_coex, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %enable, align 8
  %call1 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 50, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %call1) #10
  br label %out

out:                                              ; preds = %do.end5, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_sg_cfg(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 52) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %min_rate = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 9, ptr %min_rate, align 8
  %bt_hp_max_time = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %bt_hp_max_time to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 2000, ptr %bt_hp_max_time, align 4
  %wlan_hp_max_time = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %wlan_hp_max_time to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 5000, ptr %wlan_hp_max_time, align 2
  %sense_disable_timer = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %sense_disable_timer to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1350, ptr %sense_disable_timer, align 8
  %rx_time_bt_hp = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %rx_time_bt_hp to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1500, ptr %rx_time_bt_hp, align 2
  %tx_time_bt_hp = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %tx_time_bt_hp to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1500, ptr %tx_time_bt_hp, align 4
  %rx_time_bt_hp_fast = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %rx_time_bt_hp_fast to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1500, ptr %rx_time_bt_hp_fast, align 2
  %tx_time_bt_hp_fast = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %tx_time_bt_hp_fast to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 3000, ptr %tx_time_bt_hp_fast, align 8
  %wlan_cycle_fast = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %wlan_cycle_fast to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 8700, ptr %wlan_cycle_fast, align 2
  %bt_anti_starvation_period = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %bt_anti_starvation_period to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 500, ptr %bt_anti_starvation_period, align 4
  %next_bt_lp_packet = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 11
  %11 = ptrtoint ptr %next_bt_lp_packet to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 3000, ptr %next_bt_lp_packet, align 2
  %wake_up_beacon = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %wake_up_beacon to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 6300, ptr %wake_up_beacon, align 8
  %hp_dm_max_guard_time = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 13
  %13 = ptrtoint ptr %hp_dm_max_guard_time to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1600, ptr %hp_dm_max_guard_time, align 2
  %next_wlan_packet = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 14
  %14 = ptrtoint ptr %next_wlan_packet to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2550, ptr %next_wlan_packet, align 4
  %antenna_type = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 15
  %15 = ptrtoint ptr %antenna_type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %antenna_type, align 2
  %signal_type = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %signal_type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %signal_type, align 1
  %afh_leverage_on = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 17
  %17 = ptrtoint ptr %afh_leverage_on to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %afh_leverage_on, align 8
  %quiet_cycle_num = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 18
  %18 = ptrtoint ptr %quiet_cycle_num to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %quiet_cycle_num, align 1
  %max_cts = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 19
  %19 = ptrtoint ptr %max_cts to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %max_cts, align 2
  %wlan_packets_num = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 20
  %20 = ptrtoint ptr %wlan_packets_num to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %wlan_packets_num, align 1
  %bt_packets_num = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 21
  %21 = ptrtoint ptr %bt_packets_num to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %bt_packets_num, align 4
  %missed_rx_avalanche = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 22
  %22 = ptrtoint ptr %missed_rx_avalanche to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 5, ptr %missed_rx_avalanche, align 1
  %wlan_elp_hp = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 23
  %23 = ptrtoint ptr %wlan_elp_hp to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %wlan_elp_hp, align 2
  %bt_anti_starvation_cycles = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 24
  %24 = ptrtoint ptr %bt_anti_starvation_cycles to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %bt_anti_starvation_cycles, align 1
  %ack_mode_dual_ant = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 25
  %25 = ptrtoint ptr %ack_mode_dual_ant to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %ack_mode_dual_ant, align 8
  %pa_sd_enable = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 26
  %26 = ptrtoint ptr %pa_sd_enable to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %pa_sd_enable, align 1
  %pta_auto_mode_enable = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 27
  %27 = ptrtoint ptr %pta_auto_mode_enable to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %pta_auto_mode_enable, align 2
  %bt_hp_respected_num = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 28
  %28 = ptrtoint ptr %bt_hp_respected_num to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %bt_hp_respected_num, align 1
  %call1 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 51, ptr noundef nonnull %call7.i.i, i32 noundef 52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %call1) #10
  br label %out

out:                                              ; preds = %do.end5, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_cca_threshold(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_cca_threshold = getelementptr inbounds %struct.acx_energy_detection, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %rx_cca_threshold to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -17, ptr %rx_cca_threshold, align 8
  %tx_energy_detection = getelementptr inbounds %struct.acx_energy_detection, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %tx_energy_detection to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %tx_energy_detection, align 2
  %call1 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 37, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %call1) #10
  br label %if.end7

if.end7:                                          ; preds = %do.end5, %if.end.if.end7_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_bcn_dtim_options(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %beacon_rx_timeout = getelementptr inbounds %struct.acx_beacon_broadcast, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %beacon_rx_timeout to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 10000, ptr %beacon_rx_timeout, align 8
  %broadcast_timeout = getelementptr inbounds %struct.acx_beacon_broadcast, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %broadcast_timeout to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 20000, ptr %broadcast_timeout, align 2
  %rx_broadcast_in_ps = getelementptr inbounds %struct.acx_beacon_broadcast, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %rx_broadcast_in_ps to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %rx_broadcast_in_ps, align 4
  %ps_poll_threshold = getelementptr inbounds %struct.acx_beacon_broadcast, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %ps_poll_threshold to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %ps_poll_threshold, align 1
  %call1 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 49, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call1) #10
  br label %out

out:                                              ; preds = %do.end5, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_aid(ptr noundef %wl, i16 noundef zeroext %aid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %aid1 = getelementptr inbounds %struct.acx_aid, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %aid1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %aid, ptr %aid1, align 8
  %call2 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 10, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %call2) #10
  br label %out

out:                                              ; preds = %do.end6, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_event_mbox_mask(ptr noundef %wl, i32 noundef %event_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %high_event_mask = getelementptr inbounds %struct.acx_event_mask, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %high_event_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %high_event_mask, align 4
  %event_mask1 = getelementptr inbounds %struct.acx_event_mask, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %event_mask1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %event_mask, ptr %event_mask1, align 8
  %call2 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 38, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %call2) #10
  br label %out

out:                                              ; preds = %do.end6, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_low_rssi(ptr noundef %wl, i8 noundef signext %threshold, i8 noundef zeroext %weight, i8 noundef zeroext %depth, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %threshold1 = getelementptr inbounds %struct.acx_low_rssi, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %threshold1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %threshold, ptr %threshold1, align 8
  %weight2 = getelementptr inbounds %struct.acx_low_rssi, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %weight2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %weight, ptr %weight2, align 1
  %depth3 = getelementptr inbounds %struct.acx_low_rssi, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %depth3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %depth, ptr %depth3, align 2
  %conv = trunc i32 %type to i8
  %type4 = getelementptr inbounds %struct.acx_low_rssi, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %type4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %type4, align 1
  %call5 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 32, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %call5) #10
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.end.if.end12_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_set_preamble(ptr noundef %wl, i32 noundef %preamble) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %preamble to i8
  %preamble1 = getelementptr inbounds %struct.acx_preamble, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %preamble1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %preamble1, align 8
  %call2 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 64, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %call2) #10
  br label %out

out:                                              ; preds = %do.end7, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_cts_protect(ptr noundef %wl, i32 noundef %ctsprotect) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %ctsprotect to i8
  %ctsprotect1 = getelementptr inbounds %struct.acx_ctsprotect, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ctsprotect1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %ctsprotect1, align 8
  %call2 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 62, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %call2) #10
  br label %out

out:                                              ; preds = %do.end7, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_tsf_info(ptr noundef %wl, ptr nocapture noundef writeonly %mactime) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @wl1251_cmd_interrogate(ptr noundef %wl, i16 noundef zeroext 70, ptr noundef nonnull %call7.i.i, i32 noundef 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %current_tsf_lsb = getelementptr inbounds %struct.acx_tsf_info, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %current_tsf_lsb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %current_tsf_lsb, align 4
  %conv = zext i32 %2 to i64
  %current_tsf_msb = getelementptr inbounds %struct.acx_tsf_info, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %current_tsf_msb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %current_tsf_msb, align 8
  %conv5 = zext i32 %4 to i64
  %shl = shl nuw i64 %conv5, 32
  %or = or i64 %shl, %conv
  %5 = ptrtoint ptr %mactime to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %or, ptr %mactime, align 8
  br label %out

out:                                              ; preds = %if.end4, %do.end
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_statistics(ptr noundef %wl, ptr noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1251_cmd_interrogate(ptr noundef %wl, i16 noundef zeroext 19, ptr noundef %stats, i32 noundef 364) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end3 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_rate_policies(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rate_class_cnt = getelementptr inbounds %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %rate_class_cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %rate_class_cnt, align 8
  %rate_class = getelementptr inbounds %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %rate_class to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rate_class, align 4
  %short_retry_limit = getelementptr inbounds %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %short_retry_limit to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %short_retry_limit, align 8
  %long_retry_limit = getelementptr inbounds %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %long_retry_limit to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %long_retry_limit, align 1
  %aflags = getelementptr inbounds %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  %5 = ptrtoint ptr %aflags to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %aflags, align 2
  %arrayidx8 = getelementptr %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 2, i32 1
  %6 = call ptr @memset(ptr %arrayidx8, i32 0, i32 7)
  %call19 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 61, ptr noundef nonnull %call7.i.i, i32 noundef 76) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end23, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %call19) #10
  br label %out

out:                                              ; preds = %do.end23, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_mem_cfg(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mem_config = getelementptr inbounds %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %mem_config to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 256, ptr %mem_config, align 8
  %rx_mem_block_num = getelementptr inbounds %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %rx_mem_block_num to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 35, ptr %rx_mem_block_num, align 4
  %tx_min_mem_block_num = getelementptr inbounds %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 1, i32 6
  %3 = ptrtoint ptr %tx_min_mem_block_num to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 64, ptr %tx_min_mem_block_num, align 8
  %num_tx_queues = getelementptr inbounds %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %num_tx_queues, align 2
  %host_if_options = getelementptr inbounds %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 1, i32 5
  %5 = ptrtoint ptr %host_if_options to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %host_if_options, align 1
  %num_ssid_profiles = getelementptr inbounds %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %num_ssid_profiles to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %num_ssid_profiles, align 1
  %debug_buffer_size = getelementptr inbounds %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 1, i32 8
  %7 = ptrtoint ptr %debug_buffer_size to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %debug_buffer_size, align 2
  %rx_queue_config = getelementptr inbounds %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 2
  %dma_address = getelementptr inbounds %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dma_address, align 8
  %9 = ptrtoint ptr %rx_queue_config to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %rx_queue_config, align 4
  %priority = getelementptr inbounds %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %priority, align 1
  %type = getelementptr inbounds %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 7, ptr %type, align 2
  %arrayidx = getelementptr %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 3, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %arrayidx, align 4
  %attributes = getelementptr %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 2
  %13 = ptrtoint ptr %attributes to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %attributes, align 1
  %arrayidx.1 = getelementptr %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %arrayidx.1, align 8
  %attributes.1 = getelementptr %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 2
  %15 = ptrtoint ptr %attributes.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %attributes.1, align 1
  %arrayidx.2 = getelementptr %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 16, ptr %arrayidx.2, align 4
  %attributes.2 = getelementptr %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 3, i32 2, i32 2
  %17 = ptrtoint ptr %attributes.2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %attributes.2, align 1
  %arrayidx.3 = getelementptr %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 16, ptr %arrayidx.3, align 8
  %attributes.3 = getelementptr %struct.wl1251_acx_config_memory, ptr %call7.i.i, i32 0, i32 3, i32 3, i32 2
  %19 = ptrtoint ptr %attributes.3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %attributes.3, align 1
  %call13 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 3, ptr noundef nonnull %call7.i.i, i32 noundef 48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end19, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %call13) #10
  br label %out

out:                                              ; preds = %do.end19, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_wr_tbtt_and_dtim(ptr noundef %wl, i16 noundef zeroext %tbtt, i8 noundef zeroext %dtim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tbtt1 = getelementptr inbounds %struct.wl1251_acx_wr_tbtt_and_dtim, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %tbtt1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %tbtt, ptr %tbtt1, align 8
  %dtim2 = getelementptr inbounds %struct.wl1251_acx_wr_tbtt_and_dtim, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %dtim2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %dtim, ptr %dtim2, align 2
  %call3 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 39, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %call3) #10
  br label %out

out:                                              ; preds = %do.end7, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_bet_enable(ptr noundef %wl, i32 noundef %mode, i8 noundef zeroext %max_consecutive) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %mode to i8
  %enable = getelementptr inbounds %struct.wl1251_acx_bet_enable, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %enable, align 8
  %max_consecutive1 = getelementptr inbounds %struct.wl1251_acx_bet_enable, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %max_consecutive1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %max_consecutive, ptr %max_consecutive1, align 1
  %call2 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 80, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call2) #10
  br label %out

out:                                              ; preds = %do.end7, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_arp_ip_filter(ptr noundef %wl, i1 noundef zeroext %enable, i32 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %enable to i8
  %version = getelementptr inbounds %struct.wl1251_acx_arp_filter, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %version, align 8
  %enable2 = getelementptr inbounds %struct.wl1251_acx_arp_filter, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %enable2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %enable2, align 1
  br i1 %enable, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %address5 = getelementptr inbounds %struct.wl1251_acx_arp_filter, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %address5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %address, ptr %address5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 57, ptr noundef nonnull %call7.i.i, i32 noundef 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end12, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %call7) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %if.end6.if.end14_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_ac_cfg(ptr noundef %wl, i8 noundef zeroext %ac, i8 noundef zeroext %cw_min, i16 noundef zeroext %cw_max, i8 noundef zeroext %aifs, i16 noundef zeroext %txop) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ac1 = getelementptr inbounds %struct.wl1251_acx_ac_cfg, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ac1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %ac, ptr %ac1, align 8
  %cw_min2 = getelementptr inbounds %struct.wl1251_acx_ac_cfg, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %cw_min2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %cw_min, ptr %cw_min2, align 1
  %cw_max3 = getelementptr inbounds %struct.wl1251_acx_ac_cfg, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %cw_max3 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %cw_max, ptr %cw_max3, align 2
  %aifsn = getelementptr inbounds %struct.wl1251_acx_ac_cfg, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %aifsn to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %aifs, ptr %aifsn, align 4
  %txop_limit = getelementptr inbounds %struct.wl1251_acx_ac_cfg, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %txop_limit to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %txop, ptr %txop_limit, align 2
  %call4 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 7, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %call4) #10
  br label %out

out:                                              ; preds = %do.end8, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_acx_tid_cfg(ptr noundef %wl, i8 noundef zeroext %queue, i32 noundef %type, i8 noundef zeroext %tsid, i32 noundef %ps_scheme, i32 noundef %ack_policy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue1 = getelementptr inbounds %struct.wl1251_acx_tid_cfg, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %queue1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %queue, ptr %queue1, align 8
  %conv = trunc i32 %type to i8
  %type2 = getelementptr inbounds %struct.wl1251_acx_tid_cfg, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %type2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %type2, align 1
  %tsid3 = getelementptr inbounds %struct.wl1251_acx_tid_cfg, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %tsid3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %tsid, ptr %tsid3, align 2
  %conv4 = trunc i32 %ps_scheme to i8
  %ps_scheme5 = getelementptr inbounds %struct.wl1251_acx_tid_cfg, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %ps_scheme5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv4, ptr %ps_scheme5, align 1
  %conv6 = trunc i32 %ack_policy to i8
  %ack_policy7 = getelementptr inbounds %struct.wl1251_acx_tid_cfg, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %ack_policy7 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv6, ptr %ack_policy7, align 4
  %call8 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 26, ptr noundef nonnull %call7.i.i, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end13, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %call8) #10
  br label %out

out:                                              ; preds = %do.end13, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 32, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @wl1251_acx_frame_rates._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @wl1251_acx_frame_rates._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 78, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @wl1251_acx_default_key._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @wl1251_acx_default_key._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 107, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @wl1251_acx_wake_up_conditions._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @wl1251_acx_wake_up_conditions._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 148, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @wl1251_acx_fw_version._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @wl1251_acx_fw_version._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 185, i32 3}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @wl1251_acx_tx_power._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @wl1251_acx_tx_power._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 212, i32 3}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @wl1251_acx_feature_cfg._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @wl1251_acx_feature_cfg._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 269, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @wl1251_acx_data_path_params._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @wl1251_acx_data_path_params._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 272, i32 3}
!38 = !{ptr @wl1251_acx_data_path_params._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @wl1251_acx_data_path_params._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 297, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @wl1251_acx_rx_msdu_life_time._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @wl1251_acx_rx_msdu_life_time._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 323, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @wl1251_acx_rx_config._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @wl1251_acx_rx_config._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 347, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @wl1251_acx_pd_threshold._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @wl1251_acx_pd_threshold._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 372, i32 3}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @wl1251_acx_slot._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @wl1251_acx_slot._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 401, i32 3}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @wl1251_acx_group_address_tbl._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @wl1251_acx_group_address_tbl._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 427, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @wl1251_acx_service_period_timeout._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @wl1251_acx_service_period_timeout._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 452, i32 3}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @wl1251_acx_rts_threshold._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @wl1251_acx_rts_threshold._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 478, i32 3}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @wl1251_acx_beacon_filter_opt._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @wl1251_acx_beacon_filter_opt._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 507, i32 3}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @wl1251_acx_beacon_filter_table._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @wl1251_acx_beacon_filter_table._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 533, i32 3}
!87 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @wl1251_acx_conn_monit_params._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @wl1251_acx_conn_monit_params._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 558, i32 3}
!92 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @wl1251_acx_sg_enable._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @wl1251_acx_sg_enable._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 610, i32 3}
!97 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @wl1251_acx_sg_cfg._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @wl1251_acx_sg_cfg._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 636, i32 3}
!102 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @wl1251_acx_cca_threshold._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @wl1251_acx_cca_threshold._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 660, i32 3}
!107 = !{ptr @wl1251_acx_bcn_dtim_options._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @wl1251_acx_bcn_dtim_options._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 684, i32 3}
!111 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @wl1251_acx_aid._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @wl1251_acx_aid._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 712, i32 3}
!116 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @wl1251_acx_event_mbox_mask._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @wl1251_acx_event_mbox_mask._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 740, i32 3}
!121 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @wl1251_acx_low_rssi._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @wl1251_acx_low_rssi._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 761, i32 3}
!126 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @wl1251_acx_set_preamble._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @wl1251_acx_set_preamble._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 786, i32 3}
!131 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @wl1251_acx_cts_protect._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @wl1251_acx_cts_protect._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 807, i32 3}
!136 = !{ptr @wl1251_acx_tsf_info._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @wl1251_acx_tsf_info._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 828, i32 3}
!140 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @wl1251_acx_statistics._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @wl1251_acx_statistics._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 861, i32 3}
!145 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @wl1251_acx_rate_policies._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @wl1251_acx_rate_policies._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 906, i32 3}
!150 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @wl1251_acx_mem_cfg._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @wl1251_acx_mem_cfg._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 932, i32 3}
!155 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @wl1251_acx_wr_tbtt_and_dtim._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @wl1251_acx_wr_tbtt_and_dtim._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.64, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 958, i32 3}
!160 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @wl1251_acx_bet_enable._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @wl1251_acx_bet_enable._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.66, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 987, i32 3}
!165 = !{ptr @.str.67, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @wl1251_acx_arp_ip_filter._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @wl1251_acx_arp_ip_filter._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.68, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 1014, i32 3}
!170 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @wl1251_acx_ac_cfg._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @wl1251_acx_ac_cfg._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ti/wl1251/acx.c", i32 1047, i32 3}
!175 = !{ptr @.str.71, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @wl1251_acx_tid_cfg._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @wl1251_acx_tid_cfg._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
