; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtl8192e/rtl_ps.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtllib_device = type { ptr, ptr, %struct.rtllib_security, i8, i32, i8, i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, ptr, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, %struct.net_device_stats, %struct.rtllib_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i8, %struct.rt_intel_promisc_mode, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, [6 x i8], i16, i16, %struct.lib80211_crypt_info, [32 x %struct.sw_cam_table], [16 x %struct.rt_pmkid_list], [17 x [4 x %struct.rtllib_frag_entry]], [17 x i32], i16, i16, [6 x i8], %struct.rtllib_network, i32, i32, i32, i32, i16, i16, ptr, i8, [162 x i8], i8, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i8, i16, i16, i32, i32, %struct.tasklet_struct, i64, i8, i16, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i32, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, i8, i8, [5 x ptr], i32, i32, i8, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, i8, %struct.rt_pwr_save_ctrl, %struct.tx_pending, %struct.timer_list, %struct.timer_list, i8, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %union.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.rtllib_security = type <{ i16, [4 x i8], [4 x [32 x i8]], i8, i16 }>
%struct.atomic_t = type { i32 }
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %union.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%union.tspec_body = type { %struct.anon.115 }
%struct.anon.115 = type { %union.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%union.qos_tsinfo = type { %struct.anon.116 }
%struct.anon.116 = type { i8, i8, i8, i8 }
%union.qos_tclas = type { %struct._TYPE1_IPV6 }
%struct._TYPE1_IPV6 = type { i8, i8, i8, i8, [16 x i8], [16 x i8], i16, i16, [3 x i8] }
%struct.ba_record = type { %struct.timer_list, i8, i8, %union.ba_param_set, i16, %union.sequence_control }
%union.ba_param_set = type { i16 }
%union.sequence_control = type { i16 }
%struct.rx_ts_record = type { %struct.ts_common_info, i16, i16, %struct.list_head, %struct.timer_list, %struct.ba_record, i16, i8, i8 }
%struct.rx_reorder_entry = type { %struct.list_head, i16, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtllib_softmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rt_intel_promisc_mode = type { i8, i8 }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.sw_cam_table = type { [6 x i8], i8, [16 x i8], i16, i8, i8 }
%struct.rt_pmkid_list = type { [6 x i8], [16 x i8], [33 x i8], i8 }
%struct.rtllib_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.rtllib_network = type { [6 x i8], i8, [33 x i8], i8, [33 x i8], i8, %struct.rtllib_qos_data, i8, i8, i8, [2 x i8], i8, i8, [6 x i8], i8, i8, %struct.rtllib_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i32, [64 x i8], i32, [256 x i8], i32, %struct.rtllib_tim_parameters, i8, i8, i64, i8, [4 x %struct.rtllib_wmm_ac_param], i8, i16, [255 x i8], %struct.bss_ht, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head }
%struct.rtllib_qos_data = type { %struct.rtllib_qos_parameters, i32, i32, i32, i8, i8 }
%struct.rtllib_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.rtllib_rx_stats = type { i64, i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, i16, i16, i16, i16, i8, i8, i16 }
%struct.rtllib_tim_parameters = type { i8, i8 }
%struct.rtllib_wmm_ac_param = type { i8, i8, i16 }
%struct.bss_ht = type { i8, [32 x i8], i16, [32 x i8], i16, i32, i32, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.119, i32 }
%union.anon.119 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i32, i8, i8, i8 }
%struct.rt_pwr_save_ctrl = type { i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8 }
%struct.tx_pending = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd] }
%struct.sw_chnl_cmd = type { i32, i32, i32, i32 }

@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@rtl92e_hw_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017rtl819xE:%s(): RF Change in progress!\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtl92e_hw_wakeup\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/rtl8192e/rtl8192e/rtl_ps.c\00", [53 x i8] zeroinitializer }, align 32
@rtl92e_hw_wakeup._entry_ptr = internal global ptr @rtl92e_hw_wakeup._entry, section ".printk_index", align 4
@rtl92e_hw_wakeup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017rtl819xE:%s()============>come to wake up\0A\0A\00", [50 x i8] zeroinitializer }, align 32
@rtl92e_hw_wakeup._entry_ptr.5 = internal global ptr @rtl92e_hw_wakeup._entry.3, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"too short to sleep::%lld < %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"========>too long to sleep:%lld > %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@rtl92e_ips_enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017rtl819xE:%s(): Turn off RF.\0A\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtl92e_ips_enter\00", [47 x i8] zeroinitializer }, align 32
@rtl92e_ips_enter._entry_ptr = internal global ptr @rtl92e_ips_enter._entry, section ".printk_index", align 4
@rtl92e_ips_leave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017rtl819xE:%s(): Turn on RF.\0A\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtl92e_ips_leave\00", [47 x i8] zeroinitializer }, align 32
@rtl92e_ips_leave._entry_ptr = internal global ptr @rtl92e_ips_leave._entry, section ".printk_index", align 4
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(): RF is OFF.\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.rtl92e_rtllib_ips_leave_wq = private unnamed_addr constant [27 x i8] c"rtl92e_rtllib_ips_leave_wq\00", align 1
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"=========>%s(): rtl92e_ips_leave\0A\00", [62 x i8] zeroinitializer }, align 32
@rtl92e_leisure_ps_enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017rtl819xE:%s()...\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl92e_leisure_ps_enter\00", [40 x i8] zeroinitializer }, align 32
@rtl92e_leisure_ps_enter._entry_ptr = internal global ptr @rtl92e_leisure_ps_enter._entry, section ".printk_index", align 4
@rtl92e_leisure_ps_enter._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\017rtl819xE:pPSC->bLeisurePs = %d, ieee->ps = %d,pPSC->LpsIdleCount is %d,RT_CHECK_FOR_HANG_PERIOD is %d\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@rtl92e_leisure_ps_enter._entry_ptr.18 = internal global ptr @rtl92e_leisure_ps_enter._entry.16, section ".printk_index", align 4
@rtl92e_leisure_ps_enter._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017rtl819xE:%s(): Enter 802.11 power save mode...\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_leisure_ps_enter._entry_ptr.21 = internal global ptr @rtl92e_leisure_ps_enter._entry.19, section ".printk_index", align 4
@rtl92e_leisure_ps_leave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.22, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl92e_leisure_ps_leave\00", [40 x i8] zeroinitializer }, align 32
@rtl92e_leisure_ps_leave._entry_ptr = internal global ptr @rtl92e_leisure_ps_leave._entry, section ".printk_index", align 4
@rtl92e_leisure_ps_leave._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017rtl819xE:pPSC->bLeisurePs = %d, ieee->ps = %d\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@rtl92e_leisure_ps_leave._entry_ptr.25 = internal global ptr @rtl92e_leisure_ps_leave._entry.23, section ".printk_index", align 4
@rtl92e_leisure_ps_leave._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017rtl819xE:%s(): Busy Traffic , Leave 802.11 power save..\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@rtl92e_leisure_ps_leave._entry_ptr.28 = internal global ptr @rtl92e_leisure_ps_leave._entry.26, section ".printk_index", align 4
@_rtl92e_hw_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.29, ptr @.str.2, i32 27, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_rtl92e_hw_sleep\00", [47 x i8] zeroinitializer }, align 32
@_rtl92e_hw_sleep._entry_ptr = internal global ptr @_rtl92e_hw_sleep._entry, section ".printk_index", align 4
@_rtl92e_hw_sleep._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017rtl819xE:%s()============>come to sleep down\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@_rtl92e_hw_sleep._entry_ptr.32 = internal global ptr @_rtl92e_hw_sleep._entry.30, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@_rtl92e_ps_update_rf_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017rtl819xE:%s() --------->\0A\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_rtl92e_ps_update_rf_state\00", [37 x i8] zeroinitializer }, align 32
@_rtl92e_ps_update_rf_state._entry_ptr = internal global ptr @_rtl92e_ps_update_rf_state._entry, section ".printk_index", align 4
@_rtl92e_ps_update_rf_state._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017rtl819xE:%s(): Set RF to %s.\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@_rtl92e_ps_update_rf_state._entry_ptr.37 = internal global ptr @_rtl92e_ps_update_rf_state._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@_rtl92e_ps_update_rf_state._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.34, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017rtl819xE:%s() <---------\0A\0A\00", [35 x i8] zeroinitializer }, align 32
@_rtl92e_ps_update_rf_state._entry_ptr.42 = internal global ptr @_rtl92e_ps_update_rf_state._entry.40, section ".printk_index", align 4
@_rtl92e_ps_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017rtl819xE:%s(): set ieee->ps = %x\0A\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_rtl92e_ps_set_mode\00", [44 x i8] zeroinitializer }, align 32
@_rtl92e_ps_set_mode._entry_ptr = internal global ptr @_rtl92e_ps_set_mode._entry, section ".printk_index", align 4
@_rtl92e_ps_set_mode._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\017rtl819xE:LPS leave: notify AP we are awaked ++++++++++ SendNullFunctionData\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@_rtl92e_ps_set_mode._entry_ptr.47 = internal global ptr @_rtl92e_ps_set_mode._entry.45, section ".printk_index", align 4
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 53, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 60, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 90, i32 20 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 96, i32 20 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 136, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 156, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 186, i32 22 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 190, i32 21 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 239, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 240, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 256, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 279, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 280, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 285, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 26, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 31, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 113, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 116, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 121, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 213, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [46 x i8] c"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 224, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @_rtl92e_hw_sleep._entry, ptr @_rtl92e_hw_sleep._entry.30, ptr @_rtl92e_hw_sleep._entry_ptr, ptr @_rtl92e_hw_sleep._entry_ptr.32, ptr @_rtl92e_ps_set_mode._entry, ptr @_rtl92e_ps_set_mode._entry.45, ptr @_rtl92e_ps_set_mode._entry_ptr, ptr @_rtl92e_ps_set_mode._entry_ptr.47, ptr @_rtl92e_ps_update_rf_state._entry, ptr @_rtl92e_ps_update_rf_state._entry.35, ptr @_rtl92e_ps_update_rf_state._entry.40, ptr @_rtl92e_ps_update_rf_state._entry_ptr, ptr @_rtl92e_ps_update_rf_state._entry_ptr.37, ptr @_rtl92e_ps_update_rf_state._entry_ptr.42, ptr @rtl92e_hw_wakeup._entry, ptr @rtl92e_hw_wakeup._entry.3, ptr @rtl92e_hw_wakeup._entry_ptr, ptr @rtl92e_hw_wakeup._entry_ptr.5, ptr @rtl92e_ips_enter._entry, ptr @rtl92e_ips_enter._entry_ptr, ptr @rtl92e_ips_leave._entry, ptr @rtl92e_ips_leave._entry_ptr, ptr @rtl92e_leisure_ps_enter._entry, ptr @rtl92e_leisure_ps_enter._entry.16, ptr @rtl92e_leisure_ps_enter._entry.19, ptr @rtl92e_leisure_ps_enter._entry_ptr, ptr @rtl92e_leisure_ps_enter._entry_ptr.18, ptr @rtl92e_leisure_ps_enter._entry_ptr.21, ptr @rtl92e_leisure_ps_leave._entry, ptr @rtl92e_leisure_ps_leave._entry.23, ptr @rtl92e_leisure_ps_leave._entry.26, ptr @rtl92e_leisure_ps_leave._entry_ptr, ptr @rtl92e_leisure_ps_leave._entry_ptr.25, ptr @rtl92e_leisure_ps_leave._entry_ptr.28, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_hw_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_hw_wakeup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_ips_enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_ips_leave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_leisure_ps_enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_leisure_ps_enter._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_leisure_ps_enter._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_leisure_ps_leave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_leisure_ps_leave._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_leisure_ps_leave._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_hw_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_hw_sleep._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_ps_update_rf_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_ps_update_rf_state._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_ps_update_rf_state._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_ps_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_ps_set_mode._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_hw_sleep_wq(ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %data, i32 -27316
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %rf_ps_lock.i = getelementptr i8, ptr %1, i32 32024
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock.i) #3
  %RFChangeInProgress.i = getelementptr i8, ptr %1, i32 36010
  %2 = ptrtoint ptr %RFChangeInProgress.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %RFChangeInProgress.i, align 2, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock.i, i32 noundef %call3.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %4 = load i32, ptr @rt_global_debug_component, align 4
  %and20.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool.not.i, label %if.end17.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  br i1 %tobool21.not.i, label %if.then.i._rtl92e_hw_sleep.exit_crit_edge, label %do.end12.i

if.then.i._rtl92e_hw_sleep.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_rtl92e_hw_sleep.exit

do.end12.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.29) #6
  br label %_rtl92e_hw_sleep.exit

if.end17.i:                                       ; preds = %entry
  br i1 %tobool21.not.i, label %if.end17.i.do.end30.i_crit_edge, label %do.end25.i

if.end17.i.do.end30.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end30.i

do.end25.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #5
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29) #6
  br label %do.end30.i

do.end30.i:                                       ; preds = %do.end25.i, %if.end17.i.do.end30.i_crit_edge
  %call31.i = tail call zeroext i1 @rtl92e_set_rf_state(ptr noundef %1, i32 noundef 1, i32 noundef 536870912) #3
  br label %_rtl92e_hw_sleep.exit

_rtl92e_hw_sleep.exit:                            ; preds = %do.end30.i, %do.end12.i, %if.then.i._rtl92e_hw_sleep.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_hw_wakeup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_ps_lock = getelementptr i8, ptr %dev, i32 32024
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #3
  %RFChangeInProgress = getelementptr i8, ptr %dev, i32 36010
  %0 = ptrtoint ptr %RFChangeInProgress to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %RFChangeInProgress, align 2, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call3) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %2 = load i32, ptr @rt_global_debug_component, align 4
  br i1 %tobool.not, label %if.end19, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then.do.end16_crit_edge, label %do.end12

if.then.do.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end16

do.end12:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  br label %do.end16

do.end16:                                         ; preds = %do.end12, %if.then.do.end16_crit_edge
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %3 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtllib, align 8
  %hw_wakeup_wq = getelementptr inbounds %struct.rtllib_device, ptr %4, i32 0, i32 169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %hw_wakeup_wq, i32 noundef 1) #3
  br label %cleanup

if.end19:                                         ; preds = %entry
  %and22 = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end19.do.end32_crit_edge, label %do.end27

if.end19.do.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end32

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #6
  br label %do.end32

do.end32:                                         ; preds = %do.end27, %if.end19.do.end32_crit_edge
  %call33 = tail call zeroext i1 @rtl92e_set_rf_state(ptr noundef %dev, i32 noundef 0, i32 noundef 536870912) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %do.end16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_set_rf_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_hw_wakeup_wq(ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %data, i32 -27216
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @rtl92e_hw_wakeup(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_enter_sleep(ptr noundef %dev, i64 noundef %time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_lock = getelementptr i8, ptr %dev, i32 32068
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ps_lock) #3
  %sub = add i64 %time, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %conv10 = trunc i64 %sub to i32
  %add.neg = add i32 %conv10, -5
  %sub11 = sub i32 %add.neg, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11)
  %cmp12 = icmp slt i32 %sub11, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ps_lock, i32 noundef %call4) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %conv15 = zext i32 %1 to i64
  %sub16 = sub i64 %sub, %conv15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.6, i64 noundef %sub16, i32 noundef 5) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add19 = sub i32 1000, %conv10
  %sub21 = add i32 %add19, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub21)
  %cmp22 = icmp slt i32 %sub21, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  br i1 %cmp22, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv25 = zext i32 %3 to i64
  %sub26 = sub i64 %sub, %conv25
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, i64 noundef %sub26, i32 noundef 1000) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ps_lock, i32 noundef %call4) #3
  br label %cleanup

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv32 = sub i32 %conv10, %3
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %4 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtllib, align 8
  %hw_wakeup_wq = getelementptr inbounds %struct.rtllib_device, ptr %5, i32 0, i32 169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %hw_wakeup_wq, i32 noundef %conv32) #3
  %7 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtllib, align 8
  %hw_sleep_wq = getelementptr inbounds %struct.rtllib_device, ptr %8, i32 0, i32 170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i55 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %hw_sleep_wq, i32 noundef 0) #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ps_lock, i32 noundef %call4) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then24, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_ips_enter(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %PowerSaveControl = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158
  %2 = ptrtoint ptr %PowerSaveControl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %PowerSaveControl, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then:                                          ; preds = %entry
  %eRFPowerState = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %eRFPowerState to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eRFPowerState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then
  %bSwRfProcessing = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 2
  %6 = ptrtoint ptr %bSwRfProcessing to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bSwRfProcessing, align 2, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

land.lhs.true3:                                   ; preds = %land.lhs.true
  %state = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 90
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp5.not = icmp eq i32 %9, 5
  br i1 %cmp5.not, label %land.lhs.true3.if.end17_crit_edge, label %land.lhs.true6

land.lhs.true3.if.end17_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %iw_mode = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 56
  %10 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp8.not = icmp eq i32 %11, 3
  br i1 %cmp8.not, label %land.lhs.true6.if.end17_crit_edge, label %do.body

land.lhs.true6.if.end17_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

do.body:                                          ; preds = %land.lhs.true6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %12 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.do.end15_crit_edge, label %do.end

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #6
  br label %do.end15

do.end15:                                         ; preds = %do.end, %do.body.do.end15_crit_edge
  %eInactivePowerState = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 3
  %13 = ptrtoint ptr %eInactivePowerState to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %eInactivePowerState, align 4
  %isRFOff = getelementptr i8, ptr %dev, i32 36007
  %14 = ptrtoint ptr %isRFOff to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %isRFOff, align 1
  %bInPowerSaveMode = getelementptr i8, ptr %dev, i32 36008
  %15 = ptrtoint ptr %bInPowerSaveMode to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %bInPowerSaveMode, align 4
  tail call fastcc void @_rtl92e_ps_update_rf_state(ptr noundef %dev)
  br label %if.end17

if.end17:                                         ; preds = %do.end15, %land.lhs.true6.if.end17_crit_edge, %land.lhs.true3.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92e_ps_update_rf_state(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %2 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #6
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %bSwRfProcessing = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 2
  %3 = ptrtoint ptr %bSwRfProcessing to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %bSwRfProcessing, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %4 = load i32, ptr @rt_global_debug_component, align 4
  %and6 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.end4.do.end16_crit_edge, label %do.end11

do.end4.do.end16_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end16

do.end11:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #5
  %eInactivePowerState = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 3
  %5 = ptrtoint ptr %eInactivePowerState to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eInactivePowerState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  %cond = select i1 %cmp, ptr @.str.38, ptr @.str.39
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond) #6
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %do.end4.do.end16_crit_edge
  %eInactivePowerState17 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 3
  %7 = ptrtoint ptr %eInactivePowerState17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eInactivePowerState17, align 4
  %call18 = tail call zeroext i1 @rtl92e_set_rf_state(ptr noundef %dev, i32 noundef %8, i32 noundef 268435456) #3
  %9 = ptrtoint ptr %bSwRfProcessing to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %bSwRfProcessing, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %10 = load i32, ptr @rt_global_debug_component, align 4
  %and21 = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.end16.do.end31_crit_edge, label %do.end26

do.end16.do.end31_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end31

do.end26:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #5
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.34) #6
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %do.end16.do.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_ips_leave(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %PowerSaveControl = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158
  %2 = ptrtoint ptr %PowerSaveControl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %PowerSaveControl, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then:                                          ; preds = %entry
  %eRFPowerState = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %eRFPowerState to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eRFPowerState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.then.if.end14_crit_edge, label %land.lhs.true

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

land.lhs.true:                                    ; preds = %if.then
  %bSwRfProcessing = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 2
  %6 = ptrtoint ptr %bSwRfProcessing to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bSwRfProcessing, align 2, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

land.lhs.true3:                                   ; preds = %land.lhs.true
  %RfOffReason = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %RfOffReason to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %RfOffReason, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435457, i32 %9)
  %cmp5 = icmp ult i32 %9, 268435457
  br i1 %cmp5, label %do.body, label %land.lhs.true3.if.end14_crit_edge

land.lhs.true3.if.end14_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

do.body:                                          ; preds = %land.lhs.true3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %10 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.do.end12_crit_edge, label %do.end

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #6
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  %eInactivePowerState = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 3
  %11 = ptrtoint ptr %eInactivePowerState to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %eInactivePowerState, align 4
  %bInPowerSaveMode = getelementptr i8, ptr %dev, i32 36008
  %12 = ptrtoint ptr %bInPowerSaveMode to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %bInPowerSaveMode, align 4
  tail call fastcc void @_rtl92e_ps_update_rf_state(ptr noundef %dev)
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %land.lhs.true3.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_ips_leave_wq(ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %data, i32 -26772
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %rtllib = getelementptr i8, ptr %1, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %ips_mutex = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 123
  tail call void @mutex_lock_nested(ptr noundef %ips_mutex, i32 noundef 0) #3
  %4 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtllib, align 8
  %PowerSaveControl.i = getelementptr inbounds %struct.rtllib_device, ptr %5, i32 0, i32 158
  %6 = ptrtoint ptr %PowerSaveControl.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %PowerSaveControl.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl92e_ips_leave.exit_crit_edge, label %if.then.i

entry.rtl92e_ips_leave.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl92e_ips_leave.exit

if.then.i:                                        ; preds = %entry
  %eRFPowerState.i = getelementptr inbounds %struct.rtllib_device, ptr %5, i32 0, i32 23
  %8 = ptrtoint ptr %eRFPowerState.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eRFPowerState.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.then.i.rtl92e_ips_leave.exit_crit_edge, label %land.lhs.true.i

if.then.i.rtl92e_ips_leave.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl92e_ips_leave.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %bSwRfProcessing.i = getelementptr inbounds %struct.rtllib_device, ptr %5, i32 0, i32 158, i32 2
  %10 = ptrtoint ptr %bSwRfProcessing.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bSwRfProcessing.i, align 2, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not.i = icmp eq i8 %11, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.rtl92e_ips_leave.exit_crit_edge

land.lhs.true.i.rtl92e_ips_leave.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl92e_ips_leave.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %RfOffReason.i = getelementptr inbounds %struct.rtllib_device, ptr %5, i32 0, i32 24
  %12 = ptrtoint ptr %RfOffReason.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %RfOffReason.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435457, i32 %13)
  %cmp5.i = icmp ult i32 %13, 268435457
  br i1 %cmp5.i, label %do.body.i, label %land.lhs.true3.i.rtl92e_ips_leave.exit_crit_edge

land.lhs.true3.i.rtl92e_ips_leave.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl92e_ips_leave.exit

do.body.i:                                        ; preds = %land.lhs.true3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %14 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %14, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %do.body.i.do.end12.i_crit_edge, label %do.end.i

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end12.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #6
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %do.body.i.do.end12.i_crit_edge
  %eInactivePowerState.i = getelementptr inbounds %struct.rtllib_device, ptr %5, i32 0, i32 158, i32 3
  %15 = ptrtoint ptr %eInactivePowerState.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %eInactivePowerState.i, align 4
  %bInPowerSaveMode.i = getelementptr i8, ptr %1, i32 36008
  %16 = ptrtoint ptr %bInPowerSaveMode.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bInPowerSaveMode.i, align 4
  tail call fastcc void @_rtl92e_ps_update_rf_state(ptr noundef %1) #3
  br label %rtl92e_ips_leave.exit

rtl92e_ips_leave.exit:                            ; preds = %do.end12.i, %land.lhs.true3.i.rtl92e_ips_leave.exit_crit_edge, %land.lhs.true.i.rtl92e_ips_leave.exit_crit_edge, %if.then.i.rtl92e_ips_leave.exit_crit_edge, %entry.rtl92e_ips_leave.exit_crit_edge
  %17 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rtllib, align 8
  %ips_mutex3 = getelementptr inbounds %struct.rtllib_device, ptr %18, i32 0, i32 123
  tail call void @mutex_unlock(ptr noundef %ips_mutex3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_rtllib_ips_leave_wq(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %PowerSaveControl = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158
  %2 = ptrtoint ptr %PowerSaveControl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %PowerSaveControl, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  %eRFPowerState = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %eRFPowerState to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eRFPowerState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2:                                         ; preds = %if.then
  %RfOffReason = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %RfOffReason to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %RfOffReason, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %7)
  %cmp4 = icmp ugt i32 %7, 268435456
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.rtl92e_rtllib_ips_leave_wq) #6
  br label %cleanup

if.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.rtl92e_rtllib_ips_leave_wq) #6
  %8 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtllib, align 8
  %ips_leave_wq = getelementptr inbounds %struct.rtllib_device, ptr %9, i32 0, i32 164
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %ips_leave_wq) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_rtllib_ips_leave(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %ips_mutex = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 123
  tail call void @mutex_lock_nested(ptr noundef %ips_mutex, i32 noundef 0) #3
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %PowerSaveControl.i = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 158
  %4 = ptrtoint ptr %PowerSaveControl.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %PowerSaveControl.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.rtl92e_ips_leave.exit_crit_edge, label %if.then.i

entry.rtl92e_ips_leave.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl92e_ips_leave.exit

if.then.i:                                        ; preds = %entry
  %eRFPowerState.i = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %eRFPowerState.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eRFPowerState.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %if.then.i.rtl92e_ips_leave.exit_crit_edge, label %land.lhs.true.i

if.then.i.rtl92e_ips_leave.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl92e_ips_leave.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %bSwRfProcessing.i = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 158, i32 2
  %8 = ptrtoint ptr %bSwRfProcessing.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bSwRfProcessing.i, align 2, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not.i = icmp eq i8 %9, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.rtl92e_ips_leave.exit_crit_edge

land.lhs.true.i.rtl92e_ips_leave.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl92e_ips_leave.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %RfOffReason.i = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 24
  %10 = ptrtoint ptr %RfOffReason.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %RfOffReason.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435457, i32 %11)
  %cmp5.i = icmp ult i32 %11, 268435457
  br i1 %cmp5.i, label %do.body.i, label %land.lhs.true3.i.rtl92e_ips_leave.exit_crit_edge

land.lhs.true3.i.rtl92e_ips_leave.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl92e_ips_leave.exit

do.body.i:                                        ; preds = %land.lhs.true3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %12 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %do.body.i.do.end12.i_crit_edge, label %do.end.i

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end12.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #6
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %do.body.i.do.end12.i_crit_edge
  %eInactivePowerState.i = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 158, i32 3
  %13 = ptrtoint ptr %eInactivePowerState.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %eInactivePowerState.i, align 4
  %bInPowerSaveMode.i = getelementptr i8, ptr %dev, i32 36008
  %14 = ptrtoint ptr %bInPowerSaveMode.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bInPowerSaveMode.i, align 4
  tail call fastcc void @_rtl92e_ps_update_rf_state(ptr noundef %dev) #3
  br label %rtl92e_ips_leave.exit

rtl92e_ips_leave.exit:                            ; preds = %do.end12.i, %land.lhs.true3.i.rtl92e_ips_leave.exit_crit_edge, %land.lhs.true.i.rtl92e_ips_leave.exit_crit_edge, %if.then.i.rtl92e_ips_leave.exit_crit_edge, %entry.rtl92e_ips_leave.exit_crit_edge
  %15 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtllib, align 8
  %ips_mutex2 = getelementptr inbounds %struct.rtllib_device, ptr %16, i32 0, i32 123
  tail call void @mutex_unlock(ptr noundef %ips_mutex2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_leisure_ps_enter(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %2 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #6
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %3 = load i32, ptr @rt_global_debug_component, align 4
  %and6 = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body5.do.end20_crit_edge, label %do.end11

do.body5.do.end20_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end20

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  %bLeisurePs = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 5
  %4 = ptrtoint ptr %bLeisurePs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bLeisurePs, align 4, !range !96
  %6 = zext i8 %5 to i32
  %7 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtllib, align 8
  %ps = getelementptr inbounds %struct.rtllib_device, ptr %8, i32 0, i32 109
  %9 = ptrtoint ptr %ps to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ps, align 4
  %conv15 = sext i16 %10 to i32
  %LpsIdleCount = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 6
  %11 = ptrtoint ptr %LpsIdleCount to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %LpsIdleCount, align 1
  %conv16 = zext i8 %12 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %6, i32 noundef %conv15, i32 noundef %conv16, i32 noundef 2) #6
  br label %do.end20

do.end20:                                         ; preds = %do.end11, %do.body5.do.end20_crit_edge
  %13 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtllib, align 8
  %iw_mode = getelementptr inbounds %struct.rtllib_device, ptr %14, i32 0, i32 56
  %15 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp eq i32 %16, 2
  br i1 %cmp, label %land.lhs.true, label %do.end20.cleanup_crit_edge

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end20
  %state = getelementptr inbounds %struct.rtllib_device, ptr %14, i32 0, i32 90
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %cmp24 = icmp eq i32 %18, 5
  br i1 %cmp24, label %if.end36, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end36:                                         ; preds = %land.lhs.true
  %bLeisurePs37 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 5
  %19 = ptrtoint ptr %bLeisurePs37 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bLeisurePs37, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool38.not = icmp eq i8 %20, 0
  br i1 %tobool38.not, label %if.end36.cleanup_crit_edge, label %if.then39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then39:                                        ; preds = %if.end36
  %LpsIdleCount40 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 6
  %21 = ptrtoint ptr %LpsIdleCount40 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %LpsIdleCount40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp42 = icmp ugt i8 %22, 1
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.then39
  %ps46 = getelementptr inbounds %struct.rtllib_device, ptr %14, i32 0, i32 109
  %23 = ptrtoint ptr %ps46 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ps46, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp48 = icmp eq i16 %24, 0
  br i1 %cmp48, label %do.body51, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body51:                                        ; preds = %if.then44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %25 = load i32, ptr @rt_global_debug_component, align 4
  %and52 = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body51.do.end62_crit_edge, label %do.end57

do.body51.do.end62_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end62

do.end57:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #5
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15) #6
  br label %do.end62

do.end62:                                         ; preds = %do.end57, %do.body51.do.end62_crit_edge
  %bFwCtrlLPS = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 11
  %26 = ptrtoint ptr %bFwCtrlLPS to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bFwCtrlLPS, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool63.not = icmp eq i8 %27, 0
  br i1 %tobool63.not, label %if.then64, label %do.end62.if.end72_crit_edge

do.end62.if.end72_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72

if.then64:                                        ; preds = %do.end62
  %28 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rtllib, align 8
  %SetFwCmdHandler = getelementptr inbounds %struct.rtllib_device, ptr %29, i32 0, i32 199
  %30 = ptrtoint ptr %SetFwCmdHandler to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %SetFwCmdHandler, align 8
  %tobool66.not = icmp eq ptr %31, null
  br i1 %tobool66.not, label %if.then64.if.end72_crit_edge, label %if.then67

if.then64.if.end72_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #5
  %call70 = tail call zeroext i1 %31(ptr noundef %dev, i32 noundef 22) #3
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.then64.if.end72_crit_edge, %do.end62.if.end72_crit_edge
  %32 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rtllib, align 8
  %iw_mode.i = getelementptr inbounds %struct.rtllib_device, ptr %33, i32 0, i32 56
  %34 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iw_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i = icmp eq i32 %35, 1
  br i1 %cmp.i, label %if.end72.cleanup_crit_edge, label %do.body.i

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body.i:                                        ; preds = %if.end72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %36 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %36, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end6.i_crit_edge, label %do.end.i

do.body.i.do.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end6.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 6) #6
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.body.i.do.end6.i_crit_edge
  %ps_force.i = getelementptr i8, ptr %dev, i32 35801
  %37 = ptrtoint ptr %ps_force.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ps_force.i, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool7.not.i = icmp eq i8 %38, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %do.end6.i.cleanup_crit_edge

do.end6.i.cleanup_crit_edge:                      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then8.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rtllib, align 8
  %ps.i = getelementptr inbounds %struct.rtllib_device, ptr %40, i32 0, i32 109
  %41 = ptrtoint ptr %ps.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 6, ptr %ps.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #5
  %inc = add nuw nsw i8 %22, 1
  %42 = ptrtoint ptr %LpsIdleCount40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %inc, ptr %LpsIdleCount40, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8.i, %do.end6.i.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %if.then44.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end20.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_leisure_ps_leave(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %2 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.22) #6
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %3 = load i32, ptr @rt_global_debug_component, align 4
  %and6 = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body5.do.end19_crit_edge, label %do.end11

do.body5.do.end19_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end19

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  %bLeisurePs = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 5
  %4 = ptrtoint ptr %bLeisurePs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bLeisurePs, align 4, !range !96
  %6 = zext i8 %5 to i32
  %7 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtllib, align 8
  %ps = getelementptr inbounds %struct.rtllib_device, ptr %8, i32 0, i32 109
  %9 = ptrtoint ptr %ps to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ps, align 4
  %conv15 = sext i16 %10 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %6, i32 noundef %conv15) #6
  br label %do.end19

do.end19:                                         ; preds = %do.end11, %do.body5.do.end19_crit_edge
  %bLeisurePs20 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 5
  %11 = ptrtoint ptr %bLeisurePs20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bLeisurePs20, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool21.not = icmp eq i8 %12, 0
  br i1 %tobool21.not, label %do.end19.if.end52_crit_edge, label %if.then22

do.end19.if.end52_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

if.then22:                                        ; preds = %do.end19
  %13 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtllib, align 8
  %ps24 = getelementptr inbounds %struct.rtllib_device, ptr %14, i32 0, i32 109
  %15 = ptrtoint ptr %ps24 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ps24, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.not = icmp eq i16 %16, 0
  br i1 %cmp.not, label %if.then22.if.end52_crit_edge, label %do.body28

if.then22.if.end52_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

do.body28:                                        ; preds = %if.then22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %17 = load i32, ptr @rt_global_debug_component, align 4
  %and29 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.do.end39_crit_edge, label %do.end34

do.body28.do.end39_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end39

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #5
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22) #6
  br label %do.end39

do.end39:                                         ; preds = %do.end34, %do.body28.do.end39_crit_edge
  %18 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtllib, align 8
  %iw_mode.i = getelementptr inbounds %struct.rtllib_device, ptr %19, i32 0, i32 56
  %20 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iw_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i = icmp eq i32 %21, 1
  br i1 %cmp.i, label %do.end39._rtl92e_ps_set_mode.exit_crit_edge, label %do.body.i

do.end39._rtl92e_ps_set_mode.exit_crit_edge:      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %_rtl92e_ps_set_mode.exit

do.body.i:                                        ; preds = %do.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %22 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end6.i_crit_edge, label %do.end.i

do.body.i.do.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end6.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 0) #6
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.body.i.do.end6.i_crit_edge
  %ps_force.i = getelementptr i8, ptr %dev, i32 35801
  %23 = ptrtoint ptr %ps_force.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ps_force.i, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool7.not.i = icmp eq i8 %24, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %do.end6.i.if.end11.i_crit_edge

do.end6.i.if.end11.i_crit_edge:                   ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i

if.then8.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rtllib, align 8
  %ps.i = getelementptr inbounds %struct.rtllib_device, ptr %26, i32 0, i32 109
  %27 = ptrtoint ptr %ps.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %ps.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %do.end6.i.if.end11.i_crit_edge
  %28 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rtllib, align 8
  %sta_sleep.i = getelementptr inbounds %struct.rtllib_device, ptr %29, i32 0, i32 110
  %30 = ptrtoint ptr %sta_sleep.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sta_sleep.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp14.not.i.not = icmp eq i16 %31, 0
  br i1 %cmp14.not.i.not, label %if.end11.i._rtl92e_ps_set_mode.exit_crit_edge, label %if.then19.i

if.end11.i._rtl92e_ps_set_mode.exit_crit_edge:    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_rtl92e_ps_set_mode.exit

if.then19.i:                                      ; preds = %if.end11.i
  tail call void @rtl92e_hw_wakeup(ptr noundef %dev) #3
  %32 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rtllib, align 8
  %sta_sleep21.i = getelementptr inbounds %struct.rtllib_device, ptr %33, i32 0, i32 110
  %34 = ptrtoint ptr %sta_sleep21.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %sta_sleep21.i, align 2
  %35 = load ptr, ptr %rtllib, align 8
  %mgmt_tx_lock.i = getelementptr inbounds %struct.rtllib_device, ptr %35, i32 0, i32 124
  %call29.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mgmt_tx_lock.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %36 = load i32, ptr @rt_global_debug_component, align 4
  %and35.i = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.then19.i.do.end45.i_crit_edge, label %do.end40.i

if.then19.i.do.end45.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end45.i

do.end40.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #5
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #6
  br label %do.end45.i

do.end45.i:                                       ; preds = %do.end40.i, %if.then19.i.do.end45.i_crit_edge
  %37 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rtllib, align 8
  tail call void @rtllib_sta_ps_send_null_frame(ptr noundef %38, i16 noundef signext 0) #3
  %39 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rtllib, align 8
  %mgmt_tx_lock48.i = getelementptr inbounds %struct.rtllib_device, ptr %40, i32 0, i32 124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mgmt_tx_lock48.i, i32 noundef %call29.i) #3
  br label %_rtl92e_ps_set_mode.exit

_rtl92e_ps_set_mode.exit:                         ; preds = %do.end45.i, %if.end11.i._rtl92e_ps_set_mode.exit_crit_edge, %do.end39._rtl92e_ps_set_mode.exit_crit_edge
  %bFwCtrlLPS = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 11
  %41 = ptrtoint ptr %bFwCtrlLPS to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bFwCtrlLPS, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool41.not = icmp eq i8 %42, 0
  br i1 %tobool41.not, label %if.then42, label %_rtl92e_ps_set_mode.exit.if.end52_crit_edge

_rtl92e_ps_set_mode.exit.if.end52_crit_edge:      ; preds = %_rtl92e_ps_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

if.then42:                                        ; preds = %_rtl92e_ps_set_mode.exit
  %43 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rtllib, align 8
  %SetFwCmdHandler = getelementptr inbounds %struct.rtllib_device, ptr %44, i32 0, i32 199
  %45 = ptrtoint ptr %SetFwCmdHandler to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %SetFwCmdHandler, align 8
  %tobool44.not = icmp eq ptr %46, null
  br i1 %tobool44.not, label %if.then42.if.end52_crit_edge, label %if.then45

if.then42.if.end52_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  %call48 = tail call zeroext i1 %46(ptr noundef %dev, i32 noundef 23) #3
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %if.then42.if.end52_crit_edge, %_rtl92e_ps_set_mode.exit.if.end52_crit_edge, %if.then22.if.end52_crit_edge, %do.end19.if.end52_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_sta_ps_send_null_frame(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 53, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl92e_hw_wakeup._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl92e_hw_wakeup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 60, i32 2}
!8 = !{ptr @rtl92e_hw_wakeup._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @rtl92e_hw_wakeup._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 90, i32 20}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 96, i32 20}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 136, i32 4}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rtl92e_ips_enter._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @rtl92e_ips_enter._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 156, i32 4}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rtl92e_ips_leave._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @rtl92e_ips_leave._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 186, i32 22}
!26 = !{ptr @__func__.rtl92e_rtllib_ips_leave_wq, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 187, i32 10}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 190, i32 21}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 239, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rtl92e_leisure_ps_enter._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @rtl92e_leisure_ps_enter._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 240, i32 2}
!37 = !{ptr @rtl92e_leisure_ps_enter._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @rtl92e_leisure_ps_enter._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 256, i32 5}
!41 = !{ptr @rtl92e_leisure_ps_enter._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @rtl92e_leisure_ps_enter._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 279, i32 2}
!45 = !{ptr @rtl92e_leisure_ps_leave._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rtl92e_leisure_ps_leave._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 280, i32 2}
!49 = !{ptr @rtl92e_leisure_ps_leave._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @rtl92e_leisure_ps_leave._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 285, i32 4}
!53 = !{ptr @rtl92e_leisure_ps_leave._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rtl92e_leisure_ps_leave._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 26, i32 3}
!57 = !{ptr @_rtl92e_hw_sleep._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @_rtl92e_hw_sleep._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 31, i32 2}
!61 = !{ptr @_rtl92e_hw_sleep._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @_rtl92e_hw_sleep._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 113, i32 2}
!65 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @_rtl92e_ps_update_rf_state._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @_rtl92e_ps_update_rf_state._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 116, i32 2}
!70 = !{ptr @_rtl92e_ps_update_rf_state._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @_rtl92e_ps_update_rf_state._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 121, i32 2}
!76 = !{ptr @_rtl92e_ps_update_rf_state._entry.40, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @_rtl92e_ps_update_rf_state._entry_ptr.42, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 213, i32 2}
!80 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @_rtl92e_ps_set_mode._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @_rtl92e_ps_set_mode._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c", i32 224, i32 3}
!85 = !{ptr @_rtl92e_ps_set_mode._entry.45, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @_rtl92e_ps_set_mode._entry_ptr.47, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i8 0, i8 2}
