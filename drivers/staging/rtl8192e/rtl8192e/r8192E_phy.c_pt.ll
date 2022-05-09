; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dig_t = type { i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i32 }
%struct.rtllib_device = type { ptr, ptr, %struct.rtllib_security, i8, i32, i8, i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, ptr, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, %struct.net_device_stats, %struct.rtllib_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i8, %struct.rt_intel_promisc_mode, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, [6 x i8], i16, i16, %struct.lib80211_crypt_info, [32 x %struct.sw_cam_table], [16 x %struct.rt_pmkid_list], [17 x [4 x %struct.rtllib_frag_entry]], [17 x i32], i16, i16, [6 x i8], %struct.rtllib_network, i32, i32, i32, i32, i16, i16, ptr, i8, [162 x i8], i8, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i8, i16, i16, i32, i32, %struct.tasklet_struct, i64, i8, i16, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i32, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, i8, i8, [5 x ptr], i32, i32, i8, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, i8, %struct.rt_pwr_save_ctrl, %struct.tx_pending, %struct.timer_list, %struct.timer_list, i8, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %union.anon.124, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.rtllib_security = type <{ i16, [4 x i8], [4 x [32 x i8]], i8, i16 }>
%struct.atomic_t = type { i32 }
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %union.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%union.tspec_body = type { %struct.anon.119 }
%struct.anon.119 = type { %union.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%union.qos_tsinfo = type { %struct.anon.120 }
%struct.anon.120 = type { i8, i8, i8, i8 }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.123, i32 }
%union.anon.123 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i32, i8, i8, i8 }
%struct.rt_pwr_save_ctrl = type { i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8 }
%struct.tx_pending = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd] }
%struct.sw_chnl_cmd = type { i32, i32, i32, i32 }
%struct.r8192_priv = type { ptr, ptr, i8, i8, i8, i8, i8, i32, i16, i16, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.channel_access_setting, ptr, ptr, %struct.work_struct, %struct.log_int_8190, i32, i32, i32, [4 x %struct.bb_reg_definition], %struct.rate_adaptive, i32, ptr, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rt_stats, %struct.iw_statistics, ptr, ptr, [1 x ptr], [1 x [64 x ptr]], [1 x i32], [1 x i32], i32, i16, i64, i32, i8, i8, i16, [9 x %struct.rtl8192_tx_ring], i32, [16 x %struct.atomic_t], i16, i16, i8, i8, i8, i32, %struct.work_struct, i16, i16, i16, i16, i8, i8, [2 x i32], i8, i32, i8, i8, i8, [33 x i8], i8, i32, [10 x i32], i16, i8, i8, i8, i16, i8, i16, i16, i16, i8, i16, [14 x i8], [14 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i16, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, [4 x i32], i8, [4 x i8], i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, i8, i8, i32, [6 x i32], [14 x i8], [14 x i8], [14 x i8], [14 x i8], [14 x i8], [14 x i8], i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, %struct.init_gain, [4 x i8], i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i8, i32, i32, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.channel_access_setting = type { i16, i16, i16, i16, i16, i16 }
%struct.log_int_8190 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bb_reg_definition = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rate_adaptive = type { i8, i8, i16, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8 }
%struct.rt_stats = type { i32, i32, i32, i32, i32, i32, i32, [4 x [32 x i32]], [2 x [32 x i32]], i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [100 x i32], [100 x i32], i32, i32, i32, i32, i32, i32, [4 x i8], [2 x i8], [4 x i32], [100 x i32], i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head }
%struct.init_gain = type { i8, i8, i8, i8, i8 }

@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@rtl92e_set_rf_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017rtl819xE:FW RF CTRL is not ready now\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtl92e_set_rf_reg\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c\00", [49 x i8] zeroinitializer }, align 32
@rtl92e_set_rf_reg._entry_ptr = internal global ptr @rtl92e_set_rf_reg._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl92e_config_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017rtl819xE:Rtl819XMACPHY_Array_PG\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtl92e_config_mac\00", [46 x i8] zeroinitializer }, align 32
@rtl92e_config_mac._entry_ptr = internal global ptr @rtl92e_config_mac._entry, section ".printk_index", align 4
@Rtl8192PciEMACPHY_Array_PG = external dso_local local_unnamed_addr global [30 x i32], align 4
@rtl92e_config_mac._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017rtl819xE:Read rtl819XMACPHY_Array\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@rtl92e_config_mac._entry_ptr.7 = internal global ptr @rtl92e_config_mac._entry.5, section ".printk_index", align 4
@Rtl8192PciEMACPHY_Array = external dso_local local_unnamed_addr global [18 x i32], align 4
@rtl92e_config_mac._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\017rtl819xE:The Rtl8190MACPHY_Array[0] is %x Rtl8190MACPHY_Array[1] is %x Rtl8190MACPHY_Array[2] is %x\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl92e_config_mac._entry_ptr.10 = internal global ptr @rtl92e_config_mac._entry.8, section ".printk_index", align 4
@__const.rtl92e_check_bb_and_rf.WriteData = private unnamed_addr constant [4 x i32] [i32 -4057, i32 -1437229009, i32 39, i32 1437225007], align 4
@rtl92e_check_bb_and_rf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017rtl819xE:=======>%s(), CheckBlock:%d\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtl92e_check_bb_and_rf\00", [41 x i8] zeroinitializer }, align 32
@rtl92e_check_bb_and_rf._entry_ptr = internal global ptr @rtl92e_check_bb_and_rf._entry, section ".printk_index", align 4
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(): No checks available for MAC block.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): Check failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@rtl92e_get_tx_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\017rtl819xE:Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x)\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl92e_get_tx_power\00", [44 x i8] zeroinitializer }, align 32
@rtl92e_get_tx_power._entry_ptr = internal global ptr @rtl92e_get_tx_power._entry, section ".printk_index", align 4
@rtl92e_get_tx_power._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017rtl819xE:Default framesync (0x%x) = 0x%x\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@rtl92e_get_tx_power._entry_ptr.19 = internal global ptr @rtl92e_get_tx_power._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid RF Chip ID.\0A\00", [43 x i8] zeroinitializer }, align 32
@Rtl8192PciERadioA_Array = external dso_local local_unnamed_addr global [246 x i32], align 4
@Rtl8192PciERadioB_Array = external dso_local local_unnamed_addr global [78 x i32], align 4
@Rtl8192PciERadioC_Array = external dso_local local_unnamed_addr global [2 x i32], align 4
@Rtl8192PciERadioD_Array = external dso_local local_unnamed_addr global [2 x i32], align 4
@rtl92e_set_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017rtl819xE:=====>%s()\0A\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl92e_set_channel\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_set_channel._entry_ptr = internal global ptr @rtl92e_set_channel._entry, section ".printk_index", align 4
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): Driver is not initialized\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Channel %d not available in 802.11a.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Channel %d not available in 802.11b.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Channel %d not available in 802.11g.\0A\00", [58 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017rtl819xE:IG_Backup, backup the initial gain.\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtl92e_init_gain\00", [47 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry_ptr = internal global ptr @rtl92e_init_gain._entry, section ".printk_index", align 4
@dm_digtable = external dso_local local_unnamed_addr global %struct.dig_t, align 4
@rtl92e_init_gain._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017rtl819xE:Scan InitialGainBackup 0xc50 is %x\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry_ptr.31 = internal global ptr @rtl92e_init_gain._entry.29, section ".printk_index", align 4
@rtl92e_init_gain._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 1322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017rtl819xE:Scan InitialGainBackup 0xc58 is %x\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry_ptr.34 = internal global ptr @rtl92e_init_gain._entry.32, section ".printk_index", align 4
@rtl92e_init_gain._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.2, i32 1325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017rtl819xE:Scan InitialGainBackup 0xc60 is %x\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry_ptr.37 = internal global ptr @rtl92e_init_gain._entry.35, section ".printk_index", align 4
@rtl92e_init_gain._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.2, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017rtl819xE:Scan InitialGainBackup 0xc68 is %x\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry_ptr.40 = internal global ptr @rtl92e_init_gain._entry.38, section ".printk_index", align 4
@rtl92e_init_gain._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.28, ptr @.str.2, i32 1331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017rtl819xE:Scan InitialGainBackup 0xa0a is %x\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry_ptr.43 = internal global ptr @rtl92e_init_gain._entry.41, section ".printk_index", align 4
@rtl92e_init_gain._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.28, ptr @.str.2, i32 1334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017rtl819xE:Write scan initial gain = 0x%x\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry_ptr.46 = internal global ptr @rtl92e_init_gain._entry.44, section ".printk_index", align 4
@rtl92e_init_gain._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.28, ptr @.str.2, i32 1340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017rtl819xE:Write scan 0xa0a = 0x%x\0A\0A\00", [59 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry_ptr.49 = internal global ptr @rtl92e_init_gain._entry.47, section ".printk_index", align 4
@rtl92e_init_gain._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.28, ptr @.str.2, i32 1345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017rtl819xE:IG_Restore, restore the initial gain.\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry_ptr.52 = internal global ptr @rtl92e_init_gain._entry.50, section ".printk_index", align 4
@rtl92e_init_gain._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.28, ptr @.str.2, i32 1365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017rtl819xE:Scan BBInitialGainRestore 0xc50 is %x\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry_ptr.55 = internal global ptr @rtl92e_init_gain._entry.53, section ".printk_index", align 4
@rtl92e_init_gain._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.28, ptr @.str.2, i32 1368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017rtl819xE:Scan BBInitialGainRestore 0xc58 is %x\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry_ptr.58 = internal global ptr @rtl92e_init_gain._entry.56, section ".printk_index", align 4
@rtl92e_init_gain._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.28, ptr @.str.2, i32 1371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017rtl819xE:Scan BBInitialGainRestore 0xc60 is %x\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry_ptr.61 = internal global ptr @rtl92e_init_gain._entry.59, section ".printk_index", align 4
@rtl92e_init_gain._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.28, ptr @.str.2, i32 1374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017rtl819xE:Scan BBInitialGainRestore 0xc68 is %x\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry_ptr.64 = internal global ptr @rtl92e_init_gain._entry.62, section ".printk_index", align 4
@rtl92e_init_gain._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.28, ptr @.str.2, i32 1377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017rtl819xE:Scan BBInitialGainRestore 0xa0a is %x\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry_ptr.67 = internal global ptr @rtl92e_init_gain._entry.65, section ".printk_index", align 4
@rtl92e_init_gain._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.28, ptr @.str.2, i32 1387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017rtl819xE:Unknown IG Operation.\0A\0A\00", [61 x i8] zeroinitializer }, align 32
@rtl92e_init_gain._entry_ptr.70 = internal global ptr @rtl92e_init_gain._entry.68, section ".printk_index", align 4
@rtl92e_set_rf_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 1578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017rtl819xE:---------> %s: eRFPowerState(%d)\0A\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtl92e_set_rf_power_state\00", [38 x i8] zeroinitializer }, align 32
@rtl92e_set_rf_power_state._entry_ptr = internal global ptr @rtl92e_set_rf_power_state._entry, section ".printk_index", align 4
@rtl92e_set_rf_power_state._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 1582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\017rtl819xE:<--------- %s: discard the request for eRFPowerState(%d) is the same.\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_set_rf_power_state._entry_ptr.75 = internal global ptr @rtl92e_set_rf_power_state._entry.73, section ".printk_index", align 4
@rtl92e_set_rf_power_state._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.2, i32 1588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017rtl819xE:<--------- %s: bResult(%d)\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl92e_set_rf_power_state._entry_ptr.78 = internal global ptr @rtl92e_set_rf_power_state._entry.76, section ".printk_index", align 4
@rtl92e_scan_op_backup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 1608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017rtl819xE:Unknown Scan Backup Operation.\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl92e_scan_op_backup\00", [42 x i8] zeroinitializer }, align 32
@rtl92e_scan_op_backup._entry_ptr = internal global ptr @rtl92e_scan_op_backup._entry, section ".printk_index", align 4
@_rtl92e_phy_rf_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017rtl819xE:check RF type here, need to be 8256\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_rtl92e_phy_rf_read\00", [44 x i8] zeroinitializer }, align 32
@_rtl92e_phy_rf_read._entry_ptr = internal global ptr @_rtl92e_phy_rf_read._entry, section ".printk_index", align 4
@_rtl92e_phy_rf_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.83, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_rtl92e_phy_rf_write\00", [43 x i8] zeroinitializer }, align 32
@_rtl92e_phy_rf_write._entry_ptr = internal global ptr @_rtl92e_phy_rf_write._entry, section ".printk_index", align 4
@_rtl92e_bb_config_para_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017rtl819xE:rtl92e_config_rf():Check PHY%d Fail!!\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"_rtl92e_bb_config_para_file\00", [36 x i8] zeroinitializer }, align 32
@_rtl92e_bb_config_para_file._entry_ptr = internal global ptr @_rtl92e_bb_config_para_file._entry, section ".printk_index", align 4
@Rtl8192PciEAGCTAB_Array = external dso_local local_unnamed_addr global [384 x i32], align 4
@Rtl8192PciEPHY_REGArray = external dso_local local_unnamed_addr global [1 x i32], align 4
@Rtl8192PciEPHY_REG_1T2RArray = external dso_local local_unnamed_addr global [296 x i32], align 4
@_rtl92e_phy_config_bb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\017rtl819xE:i: %x, The Rtl819xUsbPHY_REGArray[0] is %x Rtl819xUsbPHY_REGArray[1] is %x\0A\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_rtl92e_phy_config_bb\00", [42 x i8] zeroinitializer }, align 32
@_rtl92e_phy_config_bb._entry_ptr = internal global ptr @_rtl92e_phy_config_bb._entry, section ".printk_index", align 4
@_rtl92e_phy_config_bb._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\017rtl819xE:i:%x, The rtl819XAGCTAB_Array[0] is %x rtl819XAGCTAB_Array[1] is %x\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@_rtl92e_phy_config_bb._entry_ptr.90 = internal global ptr @_rtl92e_phy_config_bb._entry.88, section ".printk_index", align 4
@_rtl92e_phy_switch_channel_work_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017rtl819xE:==> SwChnlCallback819xUsbWorkItem()\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"_rtl92e_phy_switch_channel_work_item\00", [59 x i8] zeroinitializer }, align 32
@_rtl92e_phy_switch_channel_work_item._entry_ptr = internal global ptr @_rtl92e_phy_switch_channel_work_item._entry, section ".printk_index", align 4
@_rtl92e_phy_switch_channel_work_item._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017rtl819xE:=====>--%s(), set chan:%d, priv:%p\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@_rtl92e_phy_switch_channel_work_item._entry_ptr.95 = internal global ptr @_rtl92e_phy_switch_channel_work_item._entry.93, section ".printk_index", align 4
@_rtl92e_phy_switch_channel_work_item._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.2, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017rtl819xE:<== SwChnlCallback819xUsbWorkItem()\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@_rtl92e_phy_switch_channel_work_item._entry_ptr.98 = internal global ptr @_rtl92e_phy_switch_channel_work_item._entry.96, section ".printk_index", align 4
@_rtl92e_phy_switch_channel_step._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017rtl819xE:====>%s()====stage:%d, step:%d, channel:%d\0A\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"_rtl92e_phy_switch_channel_step\00", [32 x i8] zeroinitializer }, align 32
@_rtl92e_phy_switch_channel_step._entry_ptr = internal global ptr @_rtl92e_phy_switch_channel_step._entry, section ".printk_index", align 4
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid channel requested: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid channel requested for 8225: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@RF_CHANNEL_TABLE_ZEBRA = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 0, i32 2140, i32 2268, i32 2396, i32 2524, i32 2652, i32 2780, i32 2908, i32 3036, i32 3164, i32 3292, i32 3420, i32 3548, i32 3676, i32 3954], [36 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid channel requested for 8256: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown RF Chip ID\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): Invalid RF Chip ID\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__._rtl92e_set_tx_power_level = private unnamed_addr constant [27 x i8] c"_rtl92e_set_tx_power_level\00", align 1
@_rtl92e_set_bw_mode_work_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 1160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017rtl819xE:==>%s Switch to %s bandwidth\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"_rtl92e_set_bw_mode_work_item\00", [34 x i8] zeroinitializer }, align 32
@_rtl92e_set_bw_mode_work_item._entry_ptr = internal global ptr @_rtl92e_set_bw_mode_work_item._entry, section ".printk_index", align 4
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"40MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): unknown Bandwidth: %#X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(): Unknown RFChipID: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@_rtl92e_set_bw_mode_work_item._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.109, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017rtl819xE:<==SetBWMode819xUsb()\0A\00", [62 x i8] zeroinitializer }, align 32
@_rtl92e_set_bw_mode_work_item._entry_ptr.116 = internal global ptr @_rtl92e_set_bw_mode_work_item._entry.114, section ".printk_index", align 4
@_rtl92e_cck_tx_power_track_bw_switch_tssi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017rtl819xE:20M, priv->CCKPresentAttentuation = %d\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"_rtl92e_cck_tx_power_track_bw_switch_tssi\00", [54 x i8] zeroinitializer }, align 32
@_rtl92e_cck_tx_power_track_bw_switch_tssi._entry_ptr = internal global ptr @_rtl92e_cck_tx_power_track_bw_switch_tssi._entry, section ".printk_index", align 4
@_rtl92e_cck_tx_power_track_bw_switch_tssi._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.2, i32 1087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017rtl819xE:40M, priv->CCKPresentAttentuation = %d\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@_rtl92e_cck_tx_power_track_bw_switch_tssi._entry_ptr.121 = internal global ptr @_rtl92e_cck_tx_power_track_bw_switch_tssi._entry.119, section ".printk_index", align 4
@_rtl92e_cck_tx_power_track_bw_switch_thermal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017rtl819xE:20MHz, %s,CCK_index = %d\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"_rtl92e_cck_tx_power_track_bw_switch_thermal\00", [51 x i8] zeroinitializer }, align 32
@_rtl92e_cck_tx_power_track_bw_switch_thermal._entry_ptr = internal global ptr @_rtl92e_cck_tx_power_track_bw_switch_thermal._entry, section ".printk_index", align 4
@_rtl92e_cck_tx_power_track_bw_switch_thermal._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.2, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017rtl819xE:40MHz, %s, CCK_index = %d\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@_rtl92e_cck_tx_power_track_bw_switch_thermal._entry_ptr.126 = internal global ptr @_rtl92e_cck_tx_power_track_bw_switch_thermal._entry.124, section ".printk_index", align 4
@_rtl92e_set_rf_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 1419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017rtl819xE:===========> %s!\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_rtl92e_set_rf_power_state\00", [37 x i8] zeroinitializer }, align 32
@_rtl92e_set_rf_power_state._entry_ptr = internal global ptr @_rtl92e_set_rf_power_state._entry, section ".printk_index", align 4
@_rtl92e_set_rf_power_state._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.2, i32 1426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017rtl819xE:%s eRfOn!\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@_rtl92e_set_rf_power_state._entry_ptr.131 = internal global ptr @_rtl92e_set_rf_power_state._entry.129, section ".printk_index", align 4
@.str.132 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): Failed to initialize Adapter.\0A\00", [59 x i8] zeroinitializer }, align 32
@_rtl92e_set_rf_power_state._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.128, ptr @.str.2, i32 1486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017rtl819xE:eRf Off/Sleep: %d times TcbBusyQueue[%d] !=0 before doze!\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@_rtl92e_set_rf_power_state._entry_ptr.135 = internal global ptr @_rtl92e_set_rf_power_state._entry.133, section ".printk_index", align 4
@_rtl92e_set_rf_power_state._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.128, ptr @.str.2, i32 1493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017rtl819xE:\0A\0A\0A TimeOut!! %s: eRfOff: %d times TcbBusyQueue[%d] != 0 !!!\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@_rtl92e_set_rf_power_state._entry_ptr.138 = internal global ptr @_rtl92e_set_rf_power_state._entry.136, section ".printk_index", align 4
@_rtl92e_set_rf_power_state._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.128, ptr @.str.2, i32 1501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017rtl819xE:%s eRfOff/Sleep !\0A\0A\00", [33 x i8] zeroinitializer }, align 32
@_rtl92e_set_rf_power_state._entry_ptr.141 = internal global ptr @_rtl92e_set_rf_power_state._entry.139, section ".printk_index", align 4
@_rtl92e_set_rf_power_state._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.128, ptr @.str.2, i32 1512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92e_set_rf_power_state._entry_ptr.143 = internal global ptr @_rtl92e_set_rf_power_state._entry.142, section ".printk_index", align 4
@_rtl92e_set_rf_power_state._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.128, ptr @.str.2, i32 1521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\017rtl819xE:\0A\0A\0A SetZebra: RFPowerState8185B(): eRfOff: %d times TcbBusyQueue[%d] != 0 !!!\0A\0A\00", [37 x i8] zeroinitializer }, align 32
@_rtl92e_set_rf_power_state._entry_ptr.146 = internal global ptr @_rtl92e_set_rf_power_state._entry.144, section ".printk_index", align 4
@.str.147 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): Unknown state requested: 0x%X.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): Unknown RF type\0A\00", [41 x i8] zeroinitializer }, align 32
@_rtl92e_set_rf_power_state._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.128, ptr @.str.2, i32 1566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017rtl819xE:<=========== %s bResult = %d!\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@_rtl92e_set_rf_power_state._entry_ptr.151 = internal global ptr @_rtl92e_set_rf_power_state._entry.149, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.154 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.158 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.159 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.160 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.161 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 16, i64 32]
@__sancov_gen_cov_switch_values.162 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.163 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.164 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.165 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.168 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.170 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 210, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 315, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 320, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 325, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 481, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 485, i32 20 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 518, i32 21 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 605, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 612, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 665, i32 19 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 993, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 995, i32 19 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1007, i32 9 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1015, i32 9 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1024, i32 9 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1294, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1317, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1320, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1323, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1326, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1329, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1333, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1339, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1344, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1363, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1366, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1369, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1372, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1375, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1387, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1577, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1581, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1588, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1608, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 120, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 176, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 546, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 360, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 370, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 979, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 981, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 986, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 816, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 820, i32 19 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 848, i32 9 }
@___asan_gen_.459 = private unnamed_addr constant [23 x i8] c"RF_CHANNEL_TABLE_ZEBRA\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 17, i32 12 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 870, i32 9 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 892, i32 21 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 774, i32 20 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1157, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1185, i32 19 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1247, i32 20 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1255, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1063, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1085, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1126, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1133, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1419, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1426, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1440, i32 10 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1484, i32 6 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1492, i32 6 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1501, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1510, i32 6 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1518, i32 6 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1540, i32 9 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1548, i32 20 }
@___asan_gen_.579 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.582 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.583 = private constant [50 x i8] c"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1566, i32 2 }
@llvm.compiler.used = appending global [187 x ptr] [ptr @_rtl92e_bb_config_para_file._entry, ptr @_rtl92e_bb_config_para_file._entry_ptr, ptr @_rtl92e_cck_tx_power_track_bw_switch_thermal._entry, ptr @_rtl92e_cck_tx_power_track_bw_switch_thermal._entry.124, ptr @_rtl92e_cck_tx_power_track_bw_switch_thermal._entry_ptr, ptr @_rtl92e_cck_tx_power_track_bw_switch_thermal._entry_ptr.126, ptr @_rtl92e_cck_tx_power_track_bw_switch_tssi._entry, ptr @_rtl92e_cck_tx_power_track_bw_switch_tssi._entry.119, ptr @_rtl92e_cck_tx_power_track_bw_switch_tssi._entry_ptr, ptr @_rtl92e_cck_tx_power_track_bw_switch_tssi._entry_ptr.121, ptr @_rtl92e_phy_config_bb._entry, ptr @_rtl92e_phy_config_bb._entry.88, ptr @_rtl92e_phy_config_bb._entry_ptr, ptr @_rtl92e_phy_config_bb._entry_ptr.90, ptr @_rtl92e_phy_rf_read._entry, ptr @_rtl92e_phy_rf_read._entry_ptr, ptr @_rtl92e_phy_rf_write._entry, ptr @_rtl92e_phy_rf_write._entry_ptr, ptr @_rtl92e_phy_switch_channel_step._entry, ptr @_rtl92e_phy_switch_channel_step._entry_ptr, ptr @_rtl92e_phy_switch_channel_work_item._entry, ptr @_rtl92e_phy_switch_channel_work_item._entry.93, ptr @_rtl92e_phy_switch_channel_work_item._entry.96, ptr @_rtl92e_phy_switch_channel_work_item._entry_ptr, ptr @_rtl92e_phy_switch_channel_work_item._entry_ptr.95, ptr @_rtl92e_phy_switch_channel_work_item._entry_ptr.98, ptr @_rtl92e_set_bw_mode_work_item._entry, ptr @_rtl92e_set_bw_mode_work_item._entry.114, ptr @_rtl92e_set_bw_mode_work_item._entry_ptr, ptr @_rtl92e_set_bw_mode_work_item._entry_ptr.116, ptr @_rtl92e_set_rf_power_state._entry, ptr @_rtl92e_set_rf_power_state._entry.129, ptr @_rtl92e_set_rf_power_state._entry.133, ptr @_rtl92e_set_rf_power_state._entry.136, ptr @_rtl92e_set_rf_power_state._entry.139, ptr @_rtl92e_set_rf_power_state._entry.142, ptr @_rtl92e_set_rf_power_state._entry.144, ptr @_rtl92e_set_rf_power_state._entry.149, ptr @_rtl92e_set_rf_power_state._entry_ptr, ptr @_rtl92e_set_rf_power_state._entry_ptr.131, ptr @_rtl92e_set_rf_power_state._entry_ptr.135, ptr @_rtl92e_set_rf_power_state._entry_ptr.138, ptr @_rtl92e_set_rf_power_state._entry_ptr.141, ptr @_rtl92e_set_rf_power_state._entry_ptr.143, ptr @_rtl92e_set_rf_power_state._entry_ptr.146, ptr @_rtl92e_set_rf_power_state._entry_ptr.151, ptr @rtl92e_check_bb_and_rf._entry, ptr @rtl92e_check_bb_and_rf._entry_ptr, ptr @rtl92e_config_mac._entry, ptr @rtl92e_config_mac._entry.5, ptr @rtl92e_config_mac._entry.8, ptr @rtl92e_config_mac._entry_ptr, ptr @rtl92e_config_mac._entry_ptr.10, ptr @rtl92e_config_mac._entry_ptr.7, ptr @rtl92e_get_tx_power._entry, ptr @rtl92e_get_tx_power._entry.17, ptr @rtl92e_get_tx_power._entry_ptr, ptr @rtl92e_get_tx_power._entry_ptr.19, ptr @rtl92e_init_gain._entry, ptr @rtl92e_init_gain._entry.29, ptr @rtl92e_init_gain._entry.32, ptr @rtl92e_init_gain._entry.35, ptr @rtl92e_init_gain._entry.38, ptr @rtl92e_init_gain._entry.41, ptr @rtl92e_init_gain._entry.44, ptr @rtl92e_init_gain._entry.47, ptr @rtl92e_init_gain._entry.50, ptr @rtl92e_init_gain._entry.53, ptr @rtl92e_init_gain._entry.56, ptr @rtl92e_init_gain._entry.59, ptr @rtl92e_init_gain._entry.62, ptr @rtl92e_init_gain._entry.65, ptr @rtl92e_init_gain._entry.68, ptr @rtl92e_init_gain._entry_ptr, ptr @rtl92e_init_gain._entry_ptr.31, ptr @rtl92e_init_gain._entry_ptr.34, ptr @rtl92e_init_gain._entry_ptr.37, ptr @rtl92e_init_gain._entry_ptr.40, ptr @rtl92e_init_gain._entry_ptr.43, ptr @rtl92e_init_gain._entry_ptr.46, ptr @rtl92e_init_gain._entry_ptr.49, ptr @rtl92e_init_gain._entry_ptr.52, ptr @rtl92e_init_gain._entry_ptr.55, ptr @rtl92e_init_gain._entry_ptr.58, ptr @rtl92e_init_gain._entry_ptr.61, ptr @rtl92e_init_gain._entry_ptr.64, ptr @rtl92e_init_gain._entry_ptr.67, ptr @rtl92e_init_gain._entry_ptr.70, ptr @rtl92e_scan_op_backup._entry, ptr @rtl92e_scan_op_backup._entry_ptr, ptr @rtl92e_set_channel._entry, ptr @rtl92e_set_channel._entry_ptr, ptr @rtl92e_set_rf_power_state._entry, ptr @rtl92e_set_rf_power_state._entry.73, ptr @rtl92e_set_rf_power_state._entry.76, ptr @rtl92e_set_rf_power_state._entry_ptr, ptr @rtl92e_set_rf_power_state._entry_ptr.75, ptr @rtl92e_set_rf_power_state._entry_ptr.78, ptr @rtl92e_set_rf_reg._entry, ptr @rtl92e_set_rf_reg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @RF_CHANNEL_TABLE_ZEBRA, ptr @.str.103, ptr @.str.104, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.150], section "llvm.metadata"
@0 = internal global [137 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_rf_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_config_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_config_mac._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_config_mac._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_check_bb_and_rf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_get_tx_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_get_tx_power._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_gain._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_gain._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_gain._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_gain._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_gain._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_gain._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_gain._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_gain._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_gain._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_gain._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_gain._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_gain._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_gain._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_gain._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_rf_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_rf_power_state._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_rf_power_state._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_scan_op_backup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_phy_rf_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_phy_rf_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_bb_config_para_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_phy_config_bb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_phy_config_bb._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_phy_switch_channel_work_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_phy_switch_channel_work_item._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_phy_switch_channel_work_item._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_phy_switch_channel_step._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RF_CHANNEL_TABLE_ZEBRA to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_set_bw_mode_work_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_set_bw_mode_work_item._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_cck_tx_power_track_bw_switch_tssi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_cck_tx_power_track_bw_switch_tssi._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_cck_tx_power_track_bw_switch_thermal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_cck_tx_power_track_bw_switch_thermal._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_set_rf_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_set_rf_power_state._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_set_rf_power_state._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_set_rf_power_state._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_set_rf_power_state._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_set_rf_power_state._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_set_rf_power_state._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_set_rf_power_state._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtl92e_is_legal_rf_path(ptr nocapture noundef readonly %dev, i32 noundef %eRFPath) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_type = getelementptr i8, ptr %dev, i32 35821
  %0 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rf_type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %if.end21.fold.split [
    i8 1, label %entry.if.end21_crit_edge
    i8 0, label %if.then6
  ]

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = and i32 %eRFPath, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ne i32 %3, 2
  %spec.select = zext i1 %switch to i8
  br label %if.end21

if.end21.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end21:                                         ; preds = %if.end21.fold.split, %if.then6, %entry.if.end21_crit_edge
  %ret.0 = phi i8 [ 0, %entry.if.end21_crit_edge ], [ 1, %if.end21.fold.split ], [ %spec.select, %if.then6 ]
  ret i8 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef %dwRegAddr, i32 noundef %dwBitMask, i32 noundef %dwData) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dwBitMask)
  %cmp.not = icmp eq i32 %dwBitMask, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef %dwRegAddr) #7
  %0 = tail call i32 @llvm.cttz.i32(i32 %dwBitMask, i1 false) #7, !range !272
  %neg = xor i32 %dwBitMask, -1
  %and = and i32 %call, %neg
  %shl = shl i32 %dwData, %0
  %or = or i32 %and, %shl
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dwData.sink = phi i32 [ %or, %if.then ], [ %dwData, %entry.if.end_crit_edge ]
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %dwRegAddr, i32 noundef %dwData.sink) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92e_readl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92e_get_bb_reg(ptr noundef %dev, i32 noundef %dwRegAddr, i32 noundef %dwBitMask) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef %dwRegAddr) #7
  %0 = tail call i32 @llvm.cttz.i32(i32 %dwBitMask, i1 false) #7, !range !272
  %and = and i32 %call, %dwBitMask
  %shr = lshr i32 %and, %0
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef %eRFPath, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_type.i = getelementptr i8, ptr %dev, i32 35821
  %0 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rf_type.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.152)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 1, label %entry.cleanup_crit_edge
    i8 0, label %rtl92e_is_legal_rf_path.exit
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rtl92e_is_legal_rf_path.exit:                     ; preds = %entry
  %3 = and i32 %eRFPath, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.i.not = icmp eq i32 %3, 2
  br i1 %switch.i.not, label %rtl92e_is_legal_rf_path.exit.cleanup_crit_edge, label %rtl92e_is_legal_rf_path.exit.if.end_crit_edge

rtl92e_is_legal_rf_path.exit.if.end_crit_edge:    ; preds = %rtl92e_is_legal_rf_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rtl92e_is_legal_rf_path.exit.cleanup_crit_edge:   ; preds = %rtl92e_is_legal_rf_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %rtl92e_is_legal_rf_path.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %4 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtllib, align 8
  %eRFPowerState = getelementptr inbounds %struct.rtllib_device, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %eRFPowerState to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eRFPowerState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end.do.body_crit_edge, label %land.lhs.true

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %being_init_adapter = getelementptr i8, ptr %dev, i32 30783
  %8 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %being_init_adapter, align 1, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %10 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.do.end11_crit_edge, label %do.end

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  %Rf_Mode = getelementptr i8, ptr %dev, i32 35812
  %11 = ptrtoint ptr %Rf_Mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %Rf_Mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp12 = icmp eq i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %BitMask)
  %cmp15.not = icmp eq i32 %BitMask, 4095
  br i1 %cmp12, label %if.then14, label %if.else22

if.then14:                                        ; preds = %do.end11
  br i1 %cmp15.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then14
  %call18 = tail call fastcc i32 @_rtl92e_phy_rf_fw_read(ptr noundef %dev, i32 noundef %eRFPath, i32 noundef %RegAddr)
  %13 = tail call i32 @llvm.cttz.i32(i32 %BitMask, i1 false) #7, !range !272
  %neg = xor i32 %BitMask, -1
  %and20 = and i32 %call18, %neg
  %shl = shl i32 %Data, %13
  %call13.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 496) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not14.i = icmp slt i32 %call13.i, 0
  br i1 %tobool.not14.i, label %if.then17.if.then.i_crit_edge, label %if.then17._rtl92e_phy_rf_fw_write.exit_crit_edge

if.then17._rtl92e_phy_rf_fw_write.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_phy_rf_fw_write.exit

if.then17.if.then.i_crit_edge:                    ; preds = %if.then17
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.if.then.i_crit_edge, %if.then17.if.then.i_crit_edge
  %time.015.i = phi i8 [ %inc.i, %if.then.i.if.then.i_crit_edge ], [ 0, %if.then17.if.then.i_crit_edge ]
  %inc.i = add nuw nsw i8 %time.015.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #7
  %call.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 496) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %time.015.i)
  %cmp.i = icmp ult i8 %time.015.i, 99
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.then.i.if.then.i_crit_edge, label %if.then.i._rtl92e_phy_rf_fw_write.exit_crit_edge

if.then.i._rtl92e_phy_rf_fw_write.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_phy_rf_fw_write.exit

if.then.i.if.then.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

_rtl92e_phy_rf_fw_write.exit:                     ; preds = %if.then.i._rtl92e_phy_rf_fw_write.exit_crit_edge, %if.then17._rtl92e_phy_rf_fw_write.exit_crit_edge
  %and.i = shl i32 %RegAddr, 12
  %shl.i = and i32 %and.i, 1044480
  %and1.i = shl i32 %eRFPath, 20
  %shl2.i = and i32 %and1.i, 3145728
  %or = or i32 %shl2.i, %shl.i
  %or.i = or i32 %or, %shl
  %or3.i = or i32 %or.i, %and20
  br label %if.end21

if.else:                                          ; preds = %if.then14
  %call13.i69 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 496) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i69)
  %tobool.not14.i70 = icmp slt i32 %call13.i69, 0
  br i1 %tobool.not14.i70, label %if.else.if.then.i77_crit_edge, label %if.else._rtl92e_phy_rf_fw_write.exit85_crit_edge

if.else._rtl92e_phy_rf_fw_write.exit85_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_phy_rf_fw_write.exit85

if.else.if.then.i77_crit_edge:                    ; preds = %if.else
  br label %if.then.i77

if.then.i77:                                      ; preds = %if.then.i77.if.then.i77_crit_edge, %if.else.if.then.i77_crit_edge
  %time.015.i71 = phi i8 [ %inc.i72, %if.then.i77.if.then.i77_crit_edge ], [ 0, %if.else.if.then.i77_crit_edge ]
  %inc.i72 = add nuw nsw i8 %time.015.i71, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #7
  %call.i73 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 496) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i74 = icmp slt i32 %call.i73, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %time.015.i71)
  %cmp.i75 = icmp ult i8 %time.015.i71, 99
  %or.cond.i76 = select i1 %tobool.not.i74, i1 %cmp.i75, i1 false
  br i1 %or.cond.i76, label %if.then.i77.if.then.i77_crit_edge, label %if.then.i77._rtl92e_phy_rf_fw_write.exit85_crit_edge

if.then.i77._rtl92e_phy_rf_fw_write.exit85_crit_edge: ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_phy_rf_fw_write.exit85

if.then.i77.if.then.i77_crit_edge:                ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i77

_rtl92e_phy_rf_fw_write.exit85:                   ; preds = %if.then.i77._rtl92e_phy_rf_fw_write.exit85_crit_edge, %if.else._rtl92e_phy_rf_fw_write.exit85_crit_edge
  %and.i78 = shl i32 %RegAddr, 12
  %shl.i79 = and i32 %and.i78, 1044480
  %and1.i80 = shl i32 %eRFPath, 20
  %shl2.i81 = and i32 %and1.i80, 3145728
  %or.i82 = or i32 %shl2.i81, %Data
  %or3.i83 = or i32 %or.i82, %shl.i79
  br label %if.end21

if.end21:                                         ; preds = %_rtl92e_phy_rf_fw_write.exit85, %_rtl92e_phy_rf_fw_write.exit
  %or3.i83.sink = phi i32 [ %or3.i83, %_rtl92e_phy_rf_fw_write.exit85 ], [ %or3.i, %_rtl92e_phy_rf_fw_write.exit ]
  %or5.i84 = or i32 %or3.i83.sink, -2143289344
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 496, i32 noundef %or5.i84) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 42949600) #7
  br label %cleanup

if.else22:                                        ; preds = %do.end11
  br i1 %cmp15.not, label %if.else32, label %if.then25

if.then25:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call fastcc i32 @_rtl92e_phy_rf_read(ptr noundef %dev, i32 noundef %eRFPath, i32 noundef %RegAddr)
  %17 = tail call i32 @llvm.cttz.i32(i32 %BitMask, i1 false) #7, !range !272
  %neg28 = xor i32 %BitMask, -1
  %and29 = and i32 %call26, %neg28
  %shl30 = shl i32 %Data, %17
  %or31 = or i32 %and29, %shl30
  tail call fastcc void @_rtl92e_phy_rf_write(ptr noundef %dev, i32 noundef %eRFPath, i32 noundef %RegAddr, i32 noundef %or31)
  br label %cleanup

if.else32:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_rtl92e_phy_rf_write(ptr noundef %dev, i32 noundef %eRFPath, i32 noundef %RegAddr, i32 noundef %Data)
  br label %cleanup

cleanup:                                          ; preds = %if.else32, %if.then25, %if.end21, %land.lhs.true.cleanup_crit_edge, %rtl92e_is_legal_rf_path.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl92e_phy_rf_fw_read(ptr noundef %dev, i32 noundef %eRFPath, i32 noundef %Offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %Offset, 12
  %shl = and i32 %and, 1044480
  %and1 = shl i32 %eRFPath, 20
  %shl2 = and i32 %and1, 3145728
  %or3 = or i32 %shl2, %shl
  %or4 = or i32 %or3, -2147483648
  %call29 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 496) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call29)
  %tobool.not30 = icmp sgt i32 %call29, -1
  br i1 %tobool.not30, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.then.while.body_crit_edge, %entry.while.body_crit_edge
  %time.031 = phi i8 [ %inc, %if.then.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %time.031)
  %cmp = icmp ult i8 %time.031, 100
  br i1 %cmp, label %if.then, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then:                                          ; preds = %while.body
  %inc = add nuw nsw i8 %time.031, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #7
  %call = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 496) #7
  %tobool.not = icmp sgt i32 %call, -1
  br i1 %tobool.not, label %if.then.while.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.then.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %time.1 = phi i8 [ 0, %entry.while.end_crit_edge ], [ %inc, %if.then.while.end_crit_edge ], [ 101, %while.body.while.end_crit_edge ]
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 496, i32 noundef %or4) #7
  %call833 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 496) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call833)
  %tobool10.not34 = icmp sgt i32 %call833, -1
  br i1 %tobool10.not34, label %while.end.while.end19_crit_edge, label %while.end.while.body11_crit_edge

while.end.while.body11_crit_edge:                 ; preds = %while.end
  br label %while.body11

while.end.while.end19_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end19

while.body11:                                     ; preds = %if.then16.while.body11_crit_edge, %while.end.while.body11_crit_edge
  %time.235 = phi i8 [ %inc12, %if.then16.while.body11_crit_edge ], [ %time.1, %while.end.while.body11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %time.235)
  %cmp14 = icmp ult i8 %time.235, 100
  br i1 %cmp14, label %if.then16, label %while.body11.cleanup_crit_edge

while.body11.cleanup_crit_edge:                   ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %while.body11
  %inc12 = add nuw nsw i8 %time.235, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #7
  %call8 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 496) #7
  %tobool10.not = icmp sgt i32 %call8, -1
  br i1 %tobool10.not, label %if.then16.while.end19_crit_edge, label %if.then16.while.body11_crit_edge

if.then16.while.body11_crit_edge:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body11

if.then16.while.end19_crit_edge:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end19

while.end19:                                      ; preds = %if.then16.while.end19_crit_edge, %while.end.while.end19_crit_edge
  %call20 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 468) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end19, %while.body11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %while.end19 ], [ 0, %while.body11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl92e_phy_rf_read(ptr noundef %dev, i32 noundef %eRFPath, i32 noundef %Offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %and = and i32 %Offset, 63
  %rf_chip = getelementptr i8, ptr %dev, i32 31416
  %0 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2188) #7
  %and.i = and i32 %call.i, -3841
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2188, i32 noundef %and.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %and)
  %cmp1 = icmp ugt i32 %and, 30
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 112, i32 %eRFPath
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %or = or i32 %3, 320
  store i32 %or, ptr %arrayidx3, align 4
  %rf3wireOffset = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 24, i32 %eRFPath, i32 4
  %4 = ptrtoint ptr %rf3wireOffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rf3wireOffset, align 4
  %shl = shl i32 %or, 16
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %5, i32 noundef %shl) #7
  %sub = add nsw i32 %and, -30
  br label %if.end29

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp6 = icmp ugt i32 %and, 15
  br i1 %cmp6, label %if.then7, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 112, i32 %eRFPath
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx9, align 4
  %or10 = and i32 %7, -321
  %and13 = or i32 %or10, 256
  store i32 %and13, ptr %arrayidx9, align 4
  %rf3wireOffset14 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 24, i32 %eRFPath, i32 4
  %8 = ptrtoint ptr %rf3wireOffset14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rf3wireOffset14, align 4
  %shl17 = shl i32 %and13, 16
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %9, i32 noundef %shl17) #7
  %sub18 = add nsw i32 %and, -15
  br label %if.end29

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %10 = load i32, ptr @rt_global_debug_component, align 4
  %and22 = and i32 %10, -2147467264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %do.body.if.end29_crit_edge, label %do.end

do.body.if.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #10
  br label %if.end29

if.end29:                                         ; preds = %do.end, %do.body.if.end29_crit_edge, %if.then7, %if.else.if.end29_crit_edge, %if.then2
  %NewOffset.0 = phi i32 [ %sub, %if.then2 ], [ %sub18, %if.then7 ], [ %and, %if.else.if.end29_crit_edge ], [ %and, %do.end ], [ %and, %do.body.if.end29_crit_edge ]
  %rfHSSIPara2 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 24, i32 %eRFPath, i32 8
  %11 = ptrtoint ptr %rfHSSIPara2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rfHSSIPara2, align 4
  %call.i81 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef %12) #7
  %and.i82 = and i32 %call.i81, -1056964609
  %shl.i = shl nuw nsw i32 %NewOffset.0, 24
  %or.i = or i32 %and.i82, %shl.i
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %12, i32 noundef %or.i) #7
  %13 = ptrtoint ptr %rfHSSIPara2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rfHSSIPara2, align 4
  %call.i83 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef %14) #7
  %and.i84 = and i32 %call.i83, 2147483647
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %14, i32 noundef %and.i84) #7
  %15 = ptrtoint ptr %rfHSSIPara2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rfHSSIPara2, align 4
  %call.i85 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef %16) #7
  %or.i87 = or i32 %call.i85, -2147483648
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %16, i32 noundef %or.i87) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #7
  %rfLSSIReadBack = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 24, i32 %eRFPath, i32 16
  %18 = ptrtoint ptr %rfLSSIReadBack to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rfLSSIReadBack, align 4
  %call.i88 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef %19) #7
  %20 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rf_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp34 = icmp eq i32 %21, 2
  br i1 %cmp34, label %if.then35, label %if.end29.if.end43_crit_edge

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx37 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 112, i32 %eRFPath
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx37, align 4
  %and38 = and i32 %23, 3775
  store i32 %and38, ptr %arrayidx37, align 4
  %rf3wireOffset39 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 24, i32 %eRFPath, i32 4
  %24 = ptrtoint ptr %rf3wireOffset39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rf3wireOffset39, align 4
  %shl42 = shl nuw nsw i32 %and38, 16
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %25, i32 noundef %shl42) #7
  %call.i90 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2188) #7
  %or.i92 = or i32 %call.i90, 768
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2188, i32 noundef %or.i92) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.end29.if.end43_crit_edge
  %and.i89 = and i32 %call.i88, 4095
  ret i32 %and.i89
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92e_phy_rf_write(ptr noundef %dev, i32 noundef %eRFPath, i32 noundef %Offset, i32 noundef %Data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %and = and i32 %Offset, 63
  %rf_chip = getelementptr i8, ptr %dev, i32 31416
  %0 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2188) #7
  %and.i = and i32 %call.i, -3841
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2188, i32 noundef %and.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %and)
  %cmp1 = icmp ugt i32 %and, 30
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 112, i32 %eRFPath
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %or = or i32 %3, 320
  store i32 %or, ptr %arrayidx3, align 4
  %rf3wireOffset = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 24, i32 %eRFPath, i32 4
  %4 = ptrtoint ptr %rf3wireOffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rf3wireOffset, align 4
  %shl = shl i32 %or, 16
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %5, i32 noundef %shl) #7
  %sub = add nsw i32 %and, -30
  br label %if.end29

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp6 = icmp ugt i32 %and, 15
  br i1 %cmp6, label %if.then7, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 112, i32 %eRFPath
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx9, align 4
  %or10 = and i32 %7, -321
  %and13 = or i32 %or10, 256
  store i32 %and13, ptr %arrayidx9, align 4
  %rf3wireOffset14 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 24, i32 %eRFPath, i32 4
  %8 = ptrtoint ptr %rf3wireOffset14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rf3wireOffset14, align 4
  %shl17 = shl i32 %and13, 16
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %9, i32 noundef %shl17) #7
  %sub18 = add nsw i32 %and, -15
  br label %if.end29

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %10 = load i32, ptr @rt_global_debug_component, align 4
  %and22 = and i32 %10, -2147467264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %do.body.if.end29_crit_edge, label %do.end

do.body.if.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #10
  br label %if.end29

if.end29:                                         ; preds = %do.end, %do.body.if.end29_crit_edge, %if.then7, %if.else.if.end29_crit_edge, %if.then2
  %NewOffset.0 = phi i32 [ %sub, %if.then2 ], [ %sub18, %if.then7 ], [ %and, %if.else.if.end29_crit_edge ], [ %and, %do.end ], [ %and, %do.body.if.end29_crit_edge ]
  %shl31 = shl i32 %Data, 16
  %or32 = or i32 %NewOffset.0, %shl31
  %rf3wireOffset33 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 24, i32 %eRFPath, i32 4
  %11 = ptrtoint ptr %rf3wireOffset33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rf3wireOffset33, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %12, i32 noundef %or32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp34 = icmp eq i32 %and, 0
  br i1 %cmp34, label %if.end38, label %if.end38.thread

if.end38:                                         ; preds = %if.end29
  %arrayidx37 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 112, i32 %eRFPath
  %13 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %Data, ptr %arrayidx37, align 4
  %14 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rf_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp40 = icmp eq i32 %15, 2
  br i1 %cmp40, label %if.end38.if.end51_crit_edge, label %if.end38.if.end52_crit_edge

if.end38.if.end52_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.end38.if.end51_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.end38.thread:                                  ; preds = %if.end29
  %16 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rf_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp4091 = icmp eq i32 %17, 2
  br i1 %cmp4091, label %if.then43, label %if.end38.thread.if.end52_crit_edge

if.end38.thread.if.end52_crit_edge:               ; preds = %if.end38.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then43:                                        ; preds = %if.end38.thread
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx45 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 112, i32 %eRFPath
  %18 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx45, align 4
  %and46 = and i32 %19, 3775
  store i32 %and46, ptr %arrayidx45, align 4
  %20 = ptrtoint ptr %rf3wireOffset33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rf3wireOffset33, align 4
  %shl50 = shl nuw nsw i32 %and46, 16
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %21, i32 noundef %shl50) #7
  br label %if.end51

if.end51:                                         ; preds = %if.then43, %if.end38.if.end51_crit_edge
  %call.i89 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2188) #7
  %or.i = or i32 %call.i89, 768
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2188, i32 noundef %or.i) #7
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end38.thread.if.end52_crit_edge, %if.end38.if.end52_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92e_get_rf_reg(ptr noundef %dev, i32 noundef %eRFPath, i32 noundef %RegAddr, i32 noundef %BitMask) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_type.i = getelementptr i8, ptr %dev, i32 35821
  %0 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rf_type.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 1, label %entry.cleanup_crit_edge
    i8 0, label %rtl92e_is_legal_rf_path.exit
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rtl92e_is_legal_rf_path.exit:                     ; preds = %entry
  %3 = and i32 %eRFPath, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.i.not = icmp eq i32 %3, 2
  br i1 %switch.i.not, label %rtl92e_is_legal_rf_path.exit.cleanup_crit_edge, label %rtl92e_is_legal_rf_path.exit.if.end_crit_edge

rtl92e_is_legal_rf_path.exit.if.end_crit_edge:    ; preds = %rtl92e_is_legal_rf_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rtl92e_is_legal_rf_path.exit.cleanup_crit_edge:   ; preds = %rtl92e_is_legal_rf_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %rtl92e_is_legal_rf_path.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %4 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtllib, align 8
  %eRFPowerState = getelementptr inbounds %struct.rtllib_device, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %eRFPowerState to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eRFPowerState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %being_init_adapter = getelementptr i8, ptr %dev, i32 30783
  %8 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %being_init_adapter, align 1, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %rf_mutex = getelementptr i8, ptr %dev, i32 32332
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex, i32 noundef 0) #7
  %Rf_Mode = getelementptr i8, ptr %dev, i32 35812
  %10 = ptrtoint ptr %Rf_Mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %Rf_Mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp5 = icmp eq i8 %11, 1
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call fastcc i32 @_rtl92e_phy_rf_fw_read(ptr noundef %dev, i32 noundef %eRFPath, i32 noundef %RegAddr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 42949600) #7
  br label %if.end10

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call fastcc i32 @_rtl92e_phy_rf_read(ptr noundef %dev, i32 noundef %eRFPath, i32 noundef %RegAddr)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %Original_Value.0 = phi i32 [ %call8, %if.then7 ], [ %call9, %if.else ]
  %13 = tail call i32 @llvm.cttz.i32(i32 %BitMask, i1 false) #7, !range !272
  %and = and i32 %Original_Value.0, %BitMask
  %shr = lshr i32 %and, %13
  tail call void @mutex_unlock(ptr noundef %rf_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true.cleanup_crit_edge, %rtl92e_is_legal_rf_path.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end10 ], [ 0, %rtl92e_is_legal_rf_path.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_config_mac(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bTXPowerDataReadFromEEPORM = getelementptr i8, ptr %dev, i32 36001
  %0 = ptrtoint ptr %bTXPowerDataReadFromEEPORM to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bTXPowerDataReadFromEEPORM, align 1, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %2 = load i32, ptr @rt_global_debug_component, align 4
  %and8 = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %Rtl8192PciEMACPHY_Array.Rtl8192PciEMACPHY_Array_PG = select i1 %tobool.not, ptr @Rtl8192PciEMACPHY_Array, ptr @Rtl8192PciEMACPHY_Array_PG
  %. = select i1 %tobool.not, i32 18, i32 30
  br i1 %tobool9.not, label %entry.do.body20.preheader_crit_edge, label %if.end19.sink.split

entry.do.body20.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20.preheader

if.end19.sink.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.str.6..str.3 = select i1 %tobool.not, ptr @.str.6, ptr @.str.3
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.6..str.3) #10
  br label %do.body20.preheader

do.body20.preheader:                              ; preds = %if.end19.sink.split, %entry.do.body20.preheader_crit_edge
  br label %do.body20

do.body20:                                        ; preds = %rtl92e_set_bb_reg.exit.do.body20_crit_edge, %do.body20.preheader
  %i.064 = phi i32 [ %add46, %rtl92e_set_bb_reg.exit.do.body20_crit_edge ], [ 0, %do.body20.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %3 = load i32, ptr @rt_global_debug_component, align 4
  %and21 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.do.end34_crit_edge, label %do.end26

do.body20.do.end34_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i32, ptr %Rtl8192PciEMACPHY_Array.Rtl8192PciEMACPHY_Array_PG, i32 %i.064
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.064, 1
  %arrayidx28 = getelementptr i32, ptr %Rtl8192PciEMACPHY_Array.Rtl8192PciEMACPHY_Array_PG, i32 %add
  %6 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx28, align 4
  %add29 = add nuw nsw i32 %i.064, 2
  %arrayidx30 = getelementptr i32, ptr %Rtl8192PciEMACPHY_Array.Rtl8192PciEMACPHY_Array_PG, i32 %add29
  %8 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx30, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %5, i32 noundef %7, i32 noundef %9) #10
  br label %do.end34

do.end34:                                         ; preds = %do.end26, %do.body20.do.end34_crit_edge
  %arrayidx35 = getelementptr i32, ptr %Rtl8192PciEMACPHY_Array.Rtl8192PciEMACPHY_Array_PG, i32 %i.064
  %10 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 792, i32 %11)
  %cmp36 = icmp eq i32 %11, 792
  %add38 = add nuw nsw i32 %i.064, 2
  br i1 %cmp36, label %if.then37, label %do.end34.if.end40_crit_edge

do.end34.if.end40_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then37:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx39 = getelementptr i32, ptr %Rtl8192PciEMACPHY_Array.Rtl8192PciEMACPHY_Array_PG, i32 %add38
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2048, ptr %arrayidx39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %do.end34.if.end40_crit_edge
  %13 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx35, align 4
  %add42 = add nuw nsw i32 %i.064, 1
  %arrayidx43 = getelementptr i32, ptr %Rtl8192PciEMACPHY_Array.Rtl8192PciEMACPHY_Array_PG, i32 %add42
  %15 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx43, align 4
  %arrayidx45 = getelementptr i32, ptr %Rtl8192PciEMACPHY_Array.Rtl8192PciEMACPHY_Array_PG, i32 %add38
  %17 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.not.i = icmp eq i32 %16, -1
  br i1 %cmp.not.i, label %if.end40.rtl92e_set_bb_reg.exit_crit_edge, label %if.then.i

if.end40.rtl92e_set_bb_reg.exit_crit_edge:        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92e_set_bb_reg.exit

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef %14) #7
  %19 = tail call i32 @llvm.cttz.i32(i32 %16, i1 false) #7, !range !272
  %neg.i = xor i32 %16, -1
  %and.i = and i32 %call.i, %neg.i
  %shl.i = shl i32 %18, %19
  %or.i = or i32 %and.i, %shl.i
  br label %rtl92e_set_bb_reg.exit

rtl92e_set_bb_reg.exit:                           ; preds = %if.then.i, %if.end40.rtl92e_set_bb_reg.exit_crit_edge
  %dwData.sink.i = phi i32 [ %or.i, %if.then.i ], [ %18, %if.end40.rtl92e_set_bb_reg.exit_crit_edge ]
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %14, i32 noundef %dwData.sink.i) #7
  %add46 = add nuw nsw i32 %i.064, 3
  %cmp = icmp ult i32 %add46, %.
  br i1 %cmp, label %rtl92e_set_bb_reg.exit.do.body20_crit_edge, label %for.end

rtl92e_set_bb_reg.exit.do.body20_crit_edge:       ; preds = %rtl92e_set_bb_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

for.end:                                          ; preds = %rtl92e_set_bb_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92e_check_bb_and_rf(ptr noundef %dev, i32 noundef %CheckBlock, i32 noundef %eRFPath) local_unnamed_addr #2 align 64 {
entry:
  %WriteAddr = alloca [4 x i32], align 4
  %WriteData = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %WriteAddr) #7
  %0 = getelementptr inbounds [4 x i32], ptr %WriteAddr, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %WriteAddr, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %WriteAddr, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %WriteData) #7
  %3 = call ptr @memcpy(ptr %WriteData, ptr @__const.rtl92e_check_bb_and_rf.WriteData, i32 16)
  %4 = ptrtoint ptr %WriteAddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 256, ptr %WriteAddr, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2304, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2048, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %8 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %CheckBlock) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %CheckBlock)
  %cmp = icmp eq i32 %CheckBlock, 0
  br i1 %cmp, label %do.end6.cleanup.sink.split_crit_edge, label %for.cond.preheader

do.end6.cleanup.sink.split_crit_edge:             ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %do.end6
  %arrayidx11 = getelementptr [4 x i32], ptr %WriteAddr, i32 0, i32 %CheckBlock
  br label %for.body

for.cond:                                         ; preds = %sw.epilog
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %dwRegRead.063 = phi i32 [ 0, %for.cond.preheader ], [ %dwRegRead.1, %for.cond.for.body_crit_edge ]
  %i.062 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %ret.0.off061 = phi i1 [ true, %for.cond.preheader ], [ %ret.1.off0, %for.cond.for.body_crit_edge ]
  %9 = zext i32 %CheckBlock to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %CheckBlock, label %for.body.sw.epilog_crit_edge [
    i32 1, label %for.body.sw.bb_crit_edge
    i32 2, label %for.body.sw.bb_crit_edge69
    i32 3, label %sw.bb15
  ]

for.body.sw.bb_crit_edge69:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge69
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr [4 x i32], ptr %WriteData, i32 0, i32 %i.062
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %11, i32 noundef %13) #7
  %call14 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef %11) #7
  br label %sw.epilog

sw.bb15:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx16 = getelementptr [4 x i32], ptr %WriteData, i32 0, i32 %i.062
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  %and17 = and i32 %15, 4095
  store i32 %and17, ptr %arrayidx16, align 4
  tail call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef %eRFPath, i32 noundef 3, i32 noundef 4095, i32 noundef %and17)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #7
  %call22 = tail call i32 @rtl92e_get_rf_reg(ptr noundef %dev, i32 noundef %eRFPath, i32 noundef 3, i32 noundef -1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb, %for.body.sw.epilog_crit_edge
  %ret.1.off0 = phi i1 [ %ret.0.off061, %sw.bb ], [ false, %for.body.sw.epilog_crit_edge ], [ %ret.0.off061, %sw.bb15 ]
  %dwRegRead.1 = phi i32 [ %call14, %sw.bb ], [ %dwRegRead.063, %for.body.sw.epilog_crit_edge ], [ %call22, %sw.bb15 ]
  %arrayidx29 = getelementptr [4 x i32], ptr %WriteData, i32 0, i32 %i.062
  %36 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dwRegRead.1, i32 %37)
  %cmp30.not = icmp eq i32 %dwRegRead.1, %37
  br i1 %cmp30.not, label %for.cond, label %sw.epilog.cleanup.sink.split_crit_edge

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog.cleanup.sink.split_crit_edge, %do.end6.cleanup.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.13, %do.end6.cleanup.sink.split_crit_edge ], [ @.str.14, %sw.epilog.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull %.str.14.sink, ptr noundef nonnull @.str.12) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.cond.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %cleanup.sink.split ], [ %ret.1.off0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %WriteData) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %WriteAddr) #7
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92e_config_bb(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %PHYRegDef.i = getelementptr i8, ptr %dev, i32 31424
  %0 = ptrtoint ptr %PHYRegDef.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2160, ptr %PHYRegDef.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %dev, i32 31496
  %1 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2160, ptr %arrayidx2.i, align 4
  %arrayidx5.i = getelementptr i8, ptr %dev, i32 31568
  %2 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2164, ptr %arrayidx5.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %dev, i32 31640
  %3 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2164, ptr %arrayidx8.i, align 4
  %rfintfi.i = getelementptr i8, ptr %dev, i32 31428
  %4 = ptrtoint ptr %rfintfi.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2272, ptr %rfintfi.i, align 4
  %rfintfi14.i = getelementptr i8, ptr %dev, i32 31500
  %5 = ptrtoint ptr %rfintfi14.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2272, ptr %rfintfi14.i, align 4
  %rfintfi17.i = getelementptr i8, ptr %dev, i32 31572
  %6 = ptrtoint ptr %rfintfi17.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2276, ptr %rfintfi17.i, align 4
  %rfintfi20.i = getelementptr i8, ptr %dev, i32 31644
  %7 = ptrtoint ptr %rfintfi20.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2276, ptr %rfintfi20.i, align 4
  %rfintfo.i = getelementptr i8, ptr %dev, i32 31432
  %8 = ptrtoint ptr %rfintfo.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2144, ptr %rfintfo.i, align 4
  %rfintfo25.i = getelementptr i8, ptr %dev, i32 31504
  %9 = ptrtoint ptr %rfintfo25.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2148, ptr %rfintfo25.i, align 4
  %rfintfo28.i = getelementptr i8, ptr %dev, i32 31576
  %10 = ptrtoint ptr %rfintfo28.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2152, ptr %rfintfo28.i, align 4
  %rfintfo31.i = getelementptr i8, ptr %dev, i32 31648
  %11 = ptrtoint ptr %rfintfo31.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2156, ptr %rfintfo31.i, align 4
  %rfintfe.i = getelementptr i8, ptr %dev, i32 31436
  %12 = ptrtoint ptr %rfintfe.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2144, ptr %rfintfe.i, align 4
  %rfintfe36.i = getelementptr i8, ptr %dev, i32 31508
  %13 = ptrtoint ptr %rfintfe36.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2148, ptr %rfintfe36.i, align 4
  %rfintfe39.i = getelementptr i8, ptr %dev, i32 31580
  %14 = ptrtoint ptr %rfintfe39.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2152, ptr %rfintfe39.i, align 4
  %rfintfe42.i = getelementptr i8, ptr %dev, i32 31652
  %15 = ptrtoint ptr %rfintfe42.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2156, ptr %rfintfe42.i, align 4
  %rf3wireOffset.i = getelementptr i8, ptr %dev, i32 31440
  %16 = ptrtoint ptr %rf3wireOffset.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2112, ptr %rf3wireOffset.i, align 4
  %rf3wireOffset47.i = getelementptr i8, ptr %dev, i32 31512
  %17 = ptrtoint ptr %rf3wireOffset47.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2116, ptr %rf3wireOffset47.i, align 4
  %rf3wireOffset50.i = getelementptr i8, ptr %dev, i32 31584
  %18 = ptrtoint ptr %rf3wireOffset50.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2120, ptr %rf3wireOffset50.i, align 4
  %rf3wireOffset53.i = getelementptr i8, ptr %dev, i32 31656
  %19 = ptrtoint ptr %rf3wireOffset53.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2124, ptr %rf3wireOffset53.i, align 4
  %rfLSSI_Select.i = getelementptr i8, ptr %dev, i32 31444
  %20 = ptrtoint ptr %rfLSSI_Select.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2168, ptr %rfLSSI_Select.i, align 4
  %rfLSSI_Select58.i = getelementptr i8, ptr %dev, i32 31516
  %21 = ptrtoint ptr %rfLSSI_Select58.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2168, ptr %rfLSSI_Select58.i, align 4
  %rfLSSI_Select61.i = getelementptr i8, ptr %dev, i32 31588
  %22 = ptrtoint ptr %rfLSSI_Select61.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2172, ptr %rfLSSI_Select61.i, align 4
  %rfLSSI_Select64.i = getelementptr i8, ptr %dev, i32 31660
  %23 = ptrtoint ptr %rfLSSI_Select64.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2172, ptr %rfLSSI_Select64.i, align 4
  %rfTxGainStage.i = getelementptr i8, ptr %dev, i32 31448
  %24 = ptrtoint ptr %rfTxGainStage.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2060, ptr %rfTxGainStage.i, align 4
  %rfTxGainStage69.i = getelementptr i8, ptr %dev, i32 31520
  %25 = ptrtoint ptr %rfTxGainStage69.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2060, ptr %rfTxGainStage69.i, align 4
  %rfTxGainStage72.i = getelementptr i8, ptr %dev, i32 31592
  %26 = ptrtoint ptr %rfTxGainStage72.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2060, ptr %rfTxGainStage72.i, align 4
  %rfTxGainStage75.i = getelementptr i8, ptr %dev, i32 31664
  %27 = ptrtoint ptr %rfTxGainStage75.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2060, ptr %rfTxGainStage75.i, align 4
  %rfHSSIPara1.i = getelementptr i8, ptr %dev, i32 31452
  %28 = ptrtoint ptr %rfHSSIPara1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2080, ptr %rfHSSIPara1.i, align 4
  %rfHSSIPara180.i = getelementptr i8, ptr %dev, i32 31524
  %29 = ptrtoint ptr %rfHSSIPara180.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2088, ptr %rfHSSIPara180.i, align 4
  %rfHSSIPara183.i = getelementptr i8, ptr %dev, i32 31596
  %30 = ptrtoint ptr %rfHSSIPara183.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2096, ptr %rfHSSIPara183.i, align 4
  %rfHSSIPara186.i = getelementptr i8, ptr %dev, i32 31668
  %31 = ptrtoint ptr %rfHSSIPara186.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2104, ptr %rfHSSIPara186.i, align 4
  %rfHSSIPara2.i = getelementptr i8, ptr %dev, i32 31456
  %32 = ptrtoint ptr %rfHSSIPara2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2084, ptr %rfHSSIPara2.i, align 4
  %rfHSSIPara291.i = getelementptr i8, ptr %dev, i32 31528
  %33 = ptrtoint ptr %rfHSSIPara291.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2092, ptr %rfHSSIPara291.i, align 4
  %rfHSSIPara294.i = getelementptr i8, ptr %dev, i32 31600
  %34 = ptrtoint ptr %rfHSSIPara294.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2100, ptr %rfHSSIPara294.i, align 4
  %rfHSSIPara297.i = getelementptr i8, ptr %dev, i32 31672
  %35 = ptrtoint ptr %rfHSSIPara297.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2108, ptr %rfHSSIPara297.i, align 4
  %rfSwitchControl.i = getelementptr i8, ptr %dev, i32 31460
  %36 = ptrtoint ptr %rfSwitchControl.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2136, ptr %rfSwitchControl.i, align 4
  %rfSwitchControl102.i = getelementptr i8, ptr %dev, i32 31532
  %37 = ptrtoint ptr %rfSwitchControl102.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2136, ptr %rfSwitchControl102.i, align 4
  %rfSwitchControl105.i = getelementptr i8, ptr %dev, i32 31604
  %38 = ptrtoint ptr %rfSwitchControl105.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2140, ptr %rfSwitchControl105.i, align 4
  %rfSwitchControl108.i = getelementptr i8, ptr %dev, i32 31676
  %39 = ptrtoint ptr %rfSwitchControl108.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2140, ptr %rfSwitchControl108.i, align 4
  %rfAGCControl1.i = getelementptr i8, ptr %dev, i32 31464
  %40 = ptrtoint ptr %rfAGCControl1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3152, ptr %rfAGCControl1.i, align 4
  %rfAGCControl1113.i = getelementptr i8, ptr %dev, i32 31536
  %41 = ptrtoint ptr %rfAGCControl1113.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3160, ptr %rfAGCControl1113.i, align 4
  %rfAGCControl1116.i = getelementptr i8, ptr %dev, i32 31608
  %42 = ptrtoint ptr %rfAGCControl1116.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3168, ptr %rfAGCControl1116.i, align 4
  %rfAGCControl1119.i = getelementptr i8, ptr %dev, i32 31680
  %43 = ptrtoint ptr %rfAGCControl1119.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3176, ptr %rfAGCControl1119.i, align 4
  %rfAGCControl2.i = getelementptr i8, ptr %dev, i32 31468
  %44 = ptrtoint ptr %rfAGCControl2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3156, ptr %rfAGCControl2.i, align 4
  %rfAGCControl2124.i = getelementptr i8, ptr %dev, i32 31540
  %45 = ptrtoint ptr %rfAGCControl2124.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3164, ptr %rfAGCControl2124.i, align 4
  %rfAGCControl2127.i = getelementptr i8, ptr %dev, i32 31612
  %46 = ptrtoint ptr %rfAGCControl2127.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3172, ptr %rfAGCControl2127.i, align 4
  %rfAGCControl2130.i = getelementptr i8, ptr %dev, i32 31684
  %47 = ptrtoint ptr %rfAGCControl2130.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3180, ptr %rfAGCControl2130.i, align 4
  %rfRxIQImbalance.i = getelementptr i8, ptr %dev, i32 31472
  %48 = ptrtoint ptr %rfRxIQImbalance.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3092, ptr %rfRxIQImbalance.i, align 4
  %rfRxIQImbalance135.i = getelementptr i8, ptr %dev, i32 31544
  %49 = ptrtoint ptr %rfRxIQImbalance135.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3100, ptr %rfRxIQImbalance135.i, align 4
  %rfRxIQImbalance138.i = getelementptr i8, ptr %dev, i32 31616
  %50 = ptrtoint ptr %rfRxIQImbalance138.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3108, ptr %rfRxIQImbalance138.i, align 4
  %rfRxIQImbalance141.i = getelementptr i8, ptr %dev, i32 31688
  %51 = ptrtoint ptr %rfRxIQImbalance141.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3116, ptr %rfRxIQImbalance141.i, align 4
  %rfRxAFE.i = getelementptr i8, ptr %dev, i32 31476
  %52 = ptrtoint ptr %rfRxAFE.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3088, ptr %rfRxAFE.i, align 4
  %rfRxAFE146.i = getelementptr i8, ptr %dev, i32 31548
  %53 = ptrtoint ptr %rfRxAFE146.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3096, ptr %rfRxAFE146.i, align 4
  %rfRxAFE149.i = getelementptr i8, ptr %dev, i32 31620
  %54 = ptrtoint ptr %rfRxAFE149.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3104, ptr %rfRxAFE149.i, align 4
  %rfRxAFE152.i = getelementptr i8, ptr %dev, i32 31692
  %55 = ptrtoint ptr %rfRxAFE152.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3112, ptr %rfRxAFE152.i, align 4
  %rfTxIQImbalance.i = getelementptr i8, ptr %dev, i32 31480
  %56 = ptrtoint ptr %rfTxIQImbalance.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3200, ptr %rfTxIQImbalance.i, align 4
  %rfTxIQImbalance157.i = getelementptr i8, ptr %dev, i32 31552
  %57 = ptrtoint ptr %rfTxIQImbalance157.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3208, ptr %rfTxIQImbalance157.i, align 4
  %rfTxIQImbalance160.i = getelementptr i8, ptr %dev, i32 31624
  %58 = ptrtoint ptr %rfTxIQImbalance160.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 3216, ptr %rfTxIQImbalance160.i, align 4
  %rfTxIQImbalance163.i = getelementptr i8, ptr %dev, i32 31696
  %59 = ptrtoint ptr %rfTxIQImbalance163.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3224, ptr %rfTxIQImbalance163.i, align 4
  %rfTxAFE.i = getelementptr i8, ptr %dev, i32 31484
  %60 = ptrtoint ptr %rfTxAFE.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 3204, ptr %rfTxAFE.i, align 4
  %rfTxAFE168.i = getelementptr i8, ptr %dev, i32 31556
  %61 = ptrtoint ptr %rfTxAFE168.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3212, ptr %rfTxAFE168.i, align 4
  %rfTxAFE171.i = getelementptr i8, ptr %dev, i32 31628
  %62 = ptrtoint ptr %rfTxAFE171.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3220, ptr %rfTxAFE171.i, align 4
  %rfTxAFE174.i = getelementptr i8, ptr %dev, i32 31700
  %63 = ptrtoint ptr %rfTxAFE174.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 3228, ptr %rfTxAFE174.i, align 4
  %rfLSSIReadBack.i = getelementptr i8, ptr %dev, i32 31488
  %64 = ptrtoint ptr %rfLSSIReadBack.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2208, ptr %rfLSSIReadBack.i, align 4
  %rfLSSIReadBack179.i = getelementptr i8, ptr %dev, i32 31560
  %65 = ptrtoint ptr %rfLSSIReadBack179.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2212, ptr %rfLSSIReadBack179.i, align 4
  %rfLSSIReadBack182.i = getelementptr i8, ptr %dev, i32 31632
  %66 = ptrtoint ptr %rfLSSIReadBack182.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2216, ptr %rfLSSIReadBack182.i, align 4
  %rfLSSIReadBack185.i = getelementptr i8, ptr %dev, i32 31704
  %67 = ptrtoint ptr %rfLSSIReadBack185.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2220, ptr %rfLSSIReadBack185.i, align 4
  %call1.i = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 32) #7
  %68 = or i8 %call1.i, 1
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 32, i8 noundef zeroext %68) #7
  %call3.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 256) #7
  %and.i = and i32 %call3.i, -257
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 256, i32 noundef %and.i) #7
  %call7.i = tail call zeroext i1 @rtl92e_check_bb_and_rf(ptr noundef %dev, i32 noundef 1, i32 noundef 0) #7
  br i1 %call7.i, label %for.cond.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.cond.i:                                       ; preds = %entry
  %call7.1.i = tail call zeroext i1 @rtl92e_check_bb_and_rf(ptr noundef %dev, i32 noundef 2, i32 noundef 0) #7
  br i1 %call7.1.i, label %for.cond.1.i, label %for.cond.i.do.body.i_crit_edge

for.cond.i.do.body.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.i.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2048) #7
  %and.i.i = and i32 %call.i.i, -50331649
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2048, i32 noundef %and.i.i) #7
  %rf_type.i.i = getelementptr i8, ptr %dev, i32 35821
  %69 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %rf_type.i.i, align 1
  %71 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.155)
  switch i8 %70, label %for.cond.1.i._rtl92e_phy_config_bb.exit.i_crit_edge [
    i8 1, label %for.cond.1.i.if.end7.i.i_crit_edge
    i8 0, label %if.then6.i.i
  ]

for.cond.1.i.if.end7.i.i_crit_edge:               ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

for.cond.1.i._rtl92e_phy_config_bb.exit.i_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_phy_config_bb.exit.i

do.body.i:                                        ; preds = %for.cond.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %conv489.lcssa.i = phi i32 [ 0, %entry.do.body.i_crit_edge ], [ 1, %for.cond.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %72 = load i32, ptr @rt_global_debug_component, align 4
  %and8.i = and i32 %72, -2147467264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %do.body.i._rtl92e_bb_config_para_file.exit_crit_edge, label %do.end.i

do.body.i._rtl92e_bb_config_para_file.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_bb_config_para_file.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %conv489.lcssa.i) #10
  br label %_rtl92e_bb_config_para_file.exit

if.then6.i.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then6.i.i, %for.cond.1.i.if.end7.i.i_crit_edge
  %PHY_REGArrayLen.0.i.i = phi i32 [ 1, %for.cond.1.i.if.end7.i.i_crit_edge ], [ 296, %if.then6.i.i ]
  %Rtl819XPHY_REGArray_Table.0.i.i = phi ptr [ @Rtl8192PciEPHY_REGArray, %for.cond.1.i.if.end7.i.i_crit_edge ], [ @Rtl8192PciEPHY_REG_1T2RArray, %if.then6.i.i ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end7.i.i
  %i.086.i.i = phi i32 [ %add25.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end7.i.i ]
  %arrayidx.i.i = getelementptr i32, ptr %Rtl819XPHY_REGArray_Table.0.i.i, i32 %i.086.i.i
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = or i32 %i.086.i.i, 1
  %arrayidx15.i.i = getelementptr i32, ptr %Rtl819XPHY_REGArray_Table.0.i.i, i32 %add.i.i
  %75 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx15.i.i, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %74, i32 noundef %76) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %77 = load i32, ptr @rt_global_debug_component, align 4
  %and.i71.i = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71.i)
  %tobool.not.i.i = icmp eq i32 %and.i71.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %do.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i.i, align 4
  %80 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx15.i.i, align 4
  %call21.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %i.086.i.i, i32 noundef %79, i32 noundef %81) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %add25.i.i = add nuw nsw i32 %i.086.i.i, 2
  %cmp13.i.i = icmp ult i32 %add25.i.i, %PHY_REGArrayLen.0.i.i
  br i1 %cmp13.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i._rtl92e_phy_config_bb.exit.i_crit_edge

for.inc.i.i._rtl92e_phy_config_bb.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_phy_config_bb.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

_rtl92e_phy_config_bb.exit.i:                     ; preds = %for.inc.i.i._rtl92e_phy_config_bb.exit.i_crit_edge, %for.cond.1.i._rtl92e_phy_config_bb.exit.i_crit_edge
  %call18.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 256) #7
  %or19.i = or i32 %call18.i, 256
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 256, i32 noundef %or19.i) #7
  br label %for.body35.i.i

for.body35.i.i:                                   ; preds = %for.inc54.i.i.for.body35.i.i_crit_edge, %_rtl92e_phy_config_bb.exit.i
  %i.183.i.i = phi i32 [ %add55.i.i, %for.inc54.i.i.for.body35.i.i_crit_edge ], [ 0, %_rtl92e_phy_config_bb.exit.i ]
  %arrayidx36.i.i = getelementptr i32, ptr @Rtl8192PciEAGCTAB_Array, i32 %i.183.i.i
  %82 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx36.i.i, align 4
  %add37.i.i = or i32 %i.183.i.i, 1
  %arrayidx38.i.i = getelementptr i32, ptr @Rtl8192PciEAGCTAB_Array, i32 %add37.i.i
  %84 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx38.i.i, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %83, i32 noundef %85) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %86 = load i32, ptr @rt_global_debug_component, align 4
  %and40.i.i = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool41.not.i.i, label %for.body35.i.i.for.inc54.i.i_crit_edge, label %do.end45.i.i

for.body35.i.i.for.inc54.i.i_crit_edge:           ; preds = %for.body35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc54.i.i

do.end45.i.i:                                     ; preds = %for.body35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx36.i.i, align 4
  %89 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx38.i.i, align 4
  %call50.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %i.183.i.i, i32 noundef %88, i32 noundef %90) #10
  br label %for.inc54.i.i

for.inc54.i.i:                                    ; preds = %do.end45.i.i, %for.body35.i.i.for.inc54.i.i_crit_edge
  %add55.i.i = add nuw nsw i32 %i.183.i.i, 2
  %cmp33.i.i = icmp ult i32 %i.183.i.i, 382
  br i1 %cmp33.i.i, label %for.inc54.i.i.for.body35.i.i_crit_edge, label %_rtl92e_phy_config_bb.exit78.i

for.inc54.i.i.for.body35.i.i_crit_edge:           ; preds = %for.inc54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body35.i.i

_rtl92e_phy_config_bb.exit78.i:                   ; preds = %for.inc54.i.i
  %IC_Cut.i = getelementptr i8, ptr %dev, i32 35822
  %91 = ptrtoint ptr %IC_Cut.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %IC_Cut.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %92)
  %cmp21.i = icmp ugt i8 %92, 3
  br i1 %cmp21.i, label %if.then23.i, label %_rtl92e_phy_config_bb.exit78.i._rtl92e_bb_config_para_file.exit_crit_edge

_rtl92e_phy_config_bb.exit78.i._rtl92e_bb_config_para_file.exit_crit_edge: ; preds = %_rtl92e_phy_config_bb.exit78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_bb_config_para_file.exit

if.then23.i:                                      ; preds = %_rtl92e_phy_config_bb.exit78.i
  %93 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %rf_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %94)
  %cmp25.i = icmp eq i8 %94, 1
  br i1 %cmp25.i, label %if.then27.i, label %if.then23.i.if.end38.i_crit_edge

if.then23.i.if.end38.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then27.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  %AntennaTxPwDiff.i = getelementptr i8, ptr %dev, i32 36142
  %arrayidx.i = getelementptr i8, ptr %dev, i32 36144
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i, align 2
  %conv28.i = zext i8 %96 to i32
  %shl.i = shl nuw nsw i32 %conv28.i, 8
  %arrayidx30.i = getelementptr i8, ptr %dev, i32 36143
  %97 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %98 to i32
  %shl32.i = shl nuw nsw i32 %conv31.i, 4
  %or33.i = or i32 %shl32.i, %shl.i
  %99 = ptrtoint ptr %AntennaTxPwDiff.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %AntennaTxPwDiff.i, align 2
  %conv36.i = zext i8 %100 to i32
  %or37.i = or i32 %or33.i, %conv36.i
  %phi.bo.i = shl nuw nsw i32 %or37.i, 8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then27.i, %if.then23.i.if.end38.i_crit_edge
  %dwRegValue.0.i = phi i32 [ %phi.bo.i, %if.then27.i ], [ 0, %if.then23.i.if.end38.i_crit_edge ]
  %call.i79.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2060) #7
  %and.i80.i = and i32 %call.i79.i, -1048321
  %or.i.i = or i32 %and.i80.i, %dwRegValue.0.i
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2060, i32 noundef %or.i.i) #7
  %CrystalCap.i = getelementptr i8, ptr %dev, i32 35969
  %101 = ptrtoint ptr %CrystalCap.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %CrystalCap.i, align 1
  %conv39.i = zext i8 %102 to i32
  %call.i81.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2176) #7
  %and.i82.i = and i32 %call.i81.i, -251658241
  %shl.i83.i = shl nuw i32 %conv39.i, 24
  %or.i84.i = or i32 %and.i82.i, %shl.i83.i
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2176, i32 noundef %or.i84.i) #7
  br label %_rtl92e_bb_config_para_file.exit

_rtl92e_bb_config_para_file.exit:                 ; preds = %if.end38.i, %_rtl92e_phy_config_bb.exit78.i._rtl92e_bb_config_para_file.exit_crit_edge, %do.end.i, %do.body.i._rtl92e_bb_config_para_file.exit_crit_edge
  %cmp86.i = phi i1 [ true, %_rtl92e_phy_config_bb.exit78.i._rtl92e_bb_config_para_file.exit_crit_edge ], [ true, %if.end38.i ], [ false, %do.body.i._rtl92e_bb_config_para_file.exit_crit_edge ], [ false, %do.end.i ]
  ret i1 %cmp86.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_get_tx_power(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3584) #7
  %MCSTxPowerLevelOriginalOffset = getelementptr i8, ptr %dev, i32 36032
  %0 = ptrtoint ptr %MCSTxPowerLevelOriginalOffset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %MCSTxPowerLevelOriginalOffset, align 4
  %call2 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3588) #7
  %arrayidx4 = getelementptr i8, ptr %dev, i32 36036
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call2, ptr %arrayidx4, align 4
  %call5 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3600) #7
  %arrayidx7 = getelementptr i8, ptr %dev, i32 36040
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call5, ptr %arrayidx7, align 4
  %call8 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3604) #7
  %arrayidx10 = getelementptr i8, ptr %dev, i32 36044
  %3 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call8, ptr %arrayidx10, align 4
  %call11 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3608) #7
  %arrayidx13 = getelementptr i8, ptr %dev, i32 36048
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call11, ptr %arrayidx13, align 4
  %call14 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3612) #7
  %arrayidx16 = getelementptr i8, ptr %dev, i32 36052
  %5 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call14, ptr %arrayidx16, align 4
  %call17 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 3152) #7
  %DefaultInitialGain = getelementptr i8, ptr %dev, i32 36168
  %6 = ptrtoint ptr %DefaultInitialGain to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call17, ptr %DefaultInitialGain, align 4
  %call19 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 3160) #7
  %arrayidx21 = getelementptr i8, ptr %dev, i32 36169
  %7 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call19, ptr %arrayidx21, align 1
  %call22 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 3168) #7
  %arrayidx24 = getelementptr i8, ptr %dev, i32 36170
  %8 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call22, ptr %arrayidx24, align 2
  %call25 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 3176) #7
  %arrayidx27 = getelementptr i8, ptr %dev, i32 36171
  %9 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call25, ptr %arrayidx27, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %10 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end42_crit_edge, label %do.end

entry.do.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %DefaultInitialGain to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %DefaultInitialGain, align 4
  %conv = zext i8 %12 to i32
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx21, align 1
  %conv33 = zext i8 %14 to i32
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx24, align 2
  %conv36 = zext i8 %16 to i32
  %conv39 = zext i8 %call25 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %conv33, i32 noundef %conv36, i32 noundef %conv39) #10
  br label %do.end42

do.end42:                                         ; preds = %do.end, %entry.do.end42_crit_edge
  %call43 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 3128) #7
  %framesync = getelementptr i8, ptr %dev, i32 36189
  %17 = ptrtoint ptr %framesync to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call43, ptr %framesync, align 1
  %call44 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3124) #7
  %framesyncC34 = getelementptr i8, ptr %dev, i32 36192
  %18 = ptrtoint ptr %framesyncC34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call44, ptr %framesyncC34, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %19 = load i32, ptr @rt_global_debug_component, align 4
  %and46 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.end42.do.end58_crit_edge, label %do.end51

do.end42.do.end58_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

do.end51:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %framesync to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %framesync, align 1
  %conv54 = zext i8 %21 to i32
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef 3128, i32 noundef %conv54) #10
  br label %do.end58

do.end58:                                         ; preds = %do.end51, %do.end42.do.end58_crit_edge
  %call59 = tail call zeroext i16 @rtl92e_readw(ptr noundef %dev, i32 noundef 62) #7
  %SifsTime = getelementptr i8, ptr %dev, i32 35910
  %22 = ptrtoint ptr %SifsTime to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %call59, ptr %SifsTime, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92e_readb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtl92e_readw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_set_tx_power(ptr noundef %dev, i8 noundef zeroext %channel) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %epromtype = getelementptr i8, ptr %dev, i32 35914
  %0 = ptrtoint ptr %epromtype to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %epromtype, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.156)
  switch i16 %1, label %entry.if.end65_crit_edge [
    i16 0, label %if.then
    i16 1, label %if.then10
  ]

entry.if.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv2 = zext i8 %channel to i32
  %sub = add nsw i32 %conv2, -1
  %arrayidx = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 135, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %arrayidx5 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 138, i32 %sub
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5, align 1
  br label %if.end65

if.then10:                                        ; preds = %entry
  %rf_type = getelementptr i8, ptr %dev, i32 35821
  %7 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rf_type, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.157)
  switch i8 %8, label %if.then10.if.end65_crit_edge [
    i8 0, label %if.then14
    i8 1, label %if.then26
  ]

if.then10.if.end65_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %conv15 = zext i8 %channel to i32
  %sub16 = add nsw i32 %conv15, -1
  %arrayidx17 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 137, i32 %sub16
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx17, align 1
  %arrayidx20 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 140, i32 %sub16
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 1
  br label %if.end65

if.then26:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %conv27 = zext i8 %channel to i32
  %sub28 = add nsw i32 %conv27, -1
  %arrayidx29 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 136, i32 %sub28
  %14 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx29, align 1
  %arrayidx32 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 139, i32 %sub28
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx32, align 1
  %arrayidx36 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 140, i32 %sub28
  %18 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx36, align 1
  %sub43 = sub i8 %19, %17
  %RF_C_TxPwDiff = getelementptr i8, ptr %dev, i32 36141
  %20 = ptrtoint ptr %RF_C_TxPwDiff to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %sub43, ptr %RF_C_TxPwDiff, align 1
  %21 = and i8 %sub43, 15
  %AntennaTxPwDiff = getelementptr i8, ptr %dev, i32 36142
  %arrayidx47 = getelementptr i8, ptr %dev, i32 36144
  %22 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx47, align 2
  %arrayidx49 = getelementptr i8, ptr %dev, i32 36143
  %23 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %21, ptr %arrayidx49, align 1
  %24 = ptrtoint ptr %AntennaTxPwDiff to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %AntennaTxPwDiff, align 2
  %25 = shl i8 %sub43, 4
  %shl58 = zext i8 %25 to i32
  %call.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2060) #7
  %and.i = and i32 %call.i, -1048321
  %shl.i = shl nuw nsw i32 %shl58, 8
  %or.i = or i32 %and.i, %shl.i
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2060, i32 noundef %or.i) #7
  br label %if.end65

if.end65:                                         ; preds = %if.then26, %if.then14, %if.then10.if.end65_crit_edge, %if.then, %entry.if.end65_crit_edge
  %powerlevel.0 = phi i8 [ %4, %if.then ], [ %11, %if.then14 ], [ %15, %if.then26 ], [ 0, %entry.if.end65_crit_edge ], [ 0, %if.then10.if.end65_crit_edge ]
  %powerlevelOFDM24G.0 = phi i8 [ %6, %if.then ], [ %13, %if.then14 ], [ %17, %if.then26 ], [ 0, %entry.if.end65_crit_edge ], [ 0, %if.then10.if.end65_crit_edge ]
  %rf_chip = getelementptr i8, ptr %dev, i32 31416
  %26 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rf_chip, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %27, label %sw.default [
    i32 1, label %if.end65.sw.epilog_crit_edge
    i32 2, label %sw.bb
    i32 3, label %if.end65.sw.epilog_crit_edge99
  ]

if.end65.sw.epilog_crit_edge99:                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end65.sw.epilog_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_set_cck_tx_power(ptr noundef %dev, i8 noundef zeroext %powerlevel.0) #7
  tail call void @rtl92e_set_ofdm_tx_power(ptr noundef %dev, i8 noundef zeroext %powerlevelOFDM24G.0) #7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %if.end65.sw.epilog_crit_edge, %if.end65.sw.epilog_crit_edge99
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_cck_tx_power(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_ofdm_tx_power(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92e_config_phy(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_chip = getelementptr i8, ptr %dev, i32 31416
  %0 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf_chip, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %1, label %sw.default [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb
    i32 3, label %entry.sw.epilog_crit_edge4
    i32 5, label %entry.sw.epilog_crit_edge5
  ]

entry.sw.epilog_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge4:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call zeroext i1 @rtl92e_config_rf(ptr noundef %dev) #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge4, %entry.sw.epilog_crit_edge5
  %rtStatus.0.off0 = phi i1 [ true, %sw.default ], [ %call1, %sw.bb ], [ true, %entry.sw.epilog_crit_edge ], [ true, %entry.sw.epilog_crit_edge4 ], [ true, %entry.sw.epilog_crit_edge5 ]
  ret i1 %rtStatus.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_config_rf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl92e_config_rf_path(ptr noundef %dev, i32 noundef %eRFPath) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %eRFPath to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %eRFPath, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.for.body_crit_edge
    i32 1, label %entry.for.body8_crit_edge
    i32 2, label %for.body22.preheader
    i32 3, label %for.body36.preheader
  ]

entry.for.body8_crit_edge:                        ; preds = %entry
  br label %for.body8

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body36.preheader:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @Rtl8192PciERadioD_Array to i32))
  %1 = load i32, ptr @Rtl8192PciERadioD_Array, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %1)
  %cmp38 = icmp eq i32 %1, 254
  br i1 %cmp38, label %if.then39, label %if.end40

for.body22.preheader:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @Rtl8192PciERadioC_Array to i32))
  %2 = load i32, ptr @Rtl8192PciERadioC_Array, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %2)
  %cmp24 = icmp eq i32 %2, 254
  br i1 %cmp24, label %if.then25, label %if.end26

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.085 = phi i32 [ %add4, %for.inc.for.body_crit_edge ], [ %eRFPath, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [246 x i32], ptr @Rtl8192PciERadioA_Array, i32 0, i32 %i.085
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %4)
  %cmp1 = icmp eq i32 %4, 254
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 100) #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add = or i32 %i.085, 1
  %arrayidx3 = getelementptr [246 x i32], ptr @Rtl8192PciERadioA_Array, i32 0, i32 %add
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  tail call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef 0, i32 noundef %4, i32 noundef 4095, i32 noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %add4 = add nuw nsw i32 %i.085, 2
  %cmp = icmp ult i32 %i.085, 244
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.sw.epilog_crit_edge

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body8:                                        ; preds = %for.inc16.for.body8_crit_edge, %entry.for.body8_crit_edge
  %i.183 = phi i32 [ %add17, %for.inc16.for.body8_crit_edge ], [ 0, %entry.for.body8_crit_edge ]
  %arrayidx9 = getelementptr [78 x i32], ptr @Rtl8192PciERadioB_Array, i32 0, i32 %i.183
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %8)
  %cmp10 = icmp eq i32 %8, 254
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 100) #7
  br label %for.inc16

if.end12:                                         ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  %add14 = or i32 %i.183, 1
  %arrayidx15 = getelementptr [78 x i32], ptr @Rtl8192PciERadioB_Array, i32 0, i32 %add14
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx15, align 4
  tail call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef 1, i32 noundef %8, i32 noundef 4095, i32 noundef %10)
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12, %if.then11
  %add17 = add nuw nsw i32 %i.183, 2
  %cmp7 = icmp ult i32 %i.183, 76
  br i1 %cmp7, label %for.inc16.for.body8_crit_edge, label %for.inc16.sw.epilog_crit_edge

for.inc16.sw.epilog_crit_edge:                    ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.inc16.for.body8_crit_edge:                    ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

if.then25:                                        ; preds = %for.body22.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 100) #7
  br label %sw.epilog

if.end26:                                         ; preds = %for.body22.preheader
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([2 x i32], ptr @Rtl8192PciERadioC_Array, i32 0, i32 1) to i32))
  %11 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @Rtl8192PciERadioC_Array, i32 0, i32 1), align 4
  tail call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef 2, i32 noundef %2, i32 noundef 4095, i32 noundef %11)
  br label %sw.epilog

if.then39:                                        ; preds = %for.body36.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 100) #7
  br label %sw.epilog

if.end40:                                         ; preds = %for.body36.preheader
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([2 x i32], ptr @Rtl8192PciERadioD_Array, i32 0, i32 1) to i32))
  %12 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @Rtl8192PciERadioD_Array, i32 0, i32 1), align 4
  tail call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef 3, i32 noundef %1, i32 noundef 4095, i32 noundef %12)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end40, %if.then39, %if.end26, %if.then25, %for.inc16.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i8 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl92e_set_channel(ptr noundef %dev, i8 noundef zeroext %channel) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %up = getelementptr i8, ptr %dev, i32 30794
  %1 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool5.not = icmp eq i16 %2, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %SwChnlInProgress = getelementptr i8, ptr %dev, i32 35972
  %3 = ptrtoint ptr %SwChnlInProgress to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %SwChnlInProgress, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool8.not = icmp eq i8 %4, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %5 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtllib, align 8
  %mode = getelementptr inbounds %struct.rtllib_device, ptr %6, i32 0, i32 92
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %8, label %if.end10.if.then38_crit_edge [
    i32 1, label %if.end10.sw.bb_crit_edge
    i32 32, label %if.end10.sw.bb_crit_edge113
    i32 2, label %sw.bb15
    i32 4, label %if.end10.sw.bb22_crit_edge
    i32 16, label %if.end10.sw.bb22_crit_edge114
  ]

if.end10.sw.bb22_crit_edge114:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22

if.end10.sw.bb22_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22

if.end10.sw.bb_crit_edge113:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end10.sw.bb_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end10.if.then38_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

sw.bb:                                            ; preds = %if.end10.sw.bb_crit_edge, %if.end10.sw.bb_crit_edge113
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %channel)
  %cmp = icmp ult i8 %channel, 15
  br i1 %cmp, label %if.then12, label %sw.bb.if.then38_crit_edge

sw.bb.if.then38_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %channel to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %conv) #10
  br label %cleanup

sw.bb15:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %channel)
  %cmp17 = icmp ugt i8 %channel, 14
  br i1 %cmp17, label %if.then19, label %sw.bb15.if.then38_crit_edge

sw.bb15.if.then38_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

if.then19:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %conv16 = zext i8 %channel to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %conv16) #10
  br label %cleanup

sw.bb22:                                          ; preds = %if.end10.sw.bb22_crit_edge, %if.end10.sw.bb22_crit_edge114
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %channel)
  %cmp24 = icmp ugt i8 %channel, 14
  br i1 %cmp24, label %if.then26, label %sw.bb22.if.then38_crit_edge

sw.bb22.if.then38_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

if.then26:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  %conv23 = zext i8 %channel to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %conv23) #10
  br label %cleanup

if.then38:                                        ; preds = %sw.bb22.if.then38_crit_edge, %sw.bb15.if.then38_crit_edge, %sw.bb.if.then38_crit_edge, %if.end10.if.then38_crit_edge
  %10 = ptrtoint ptr %SwChnlInProgress to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %SwChnlInProgress, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %channel)
  %cmp31 = icmp eq i8 %channel, 0
  %spec.store.select = select i1 %cmp31, i8 1, i8 %channel
  %conv35 = zext i8 %spec.store.select to i16
  %chan = getelementptr i8, ptr %dev, i32 35794
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv35, ptr %chan, align 2
  %SwChnlStage = getelementptr i8, ptr %dev, i32 35973
  %12 = ptrtoint ptr %SwChnlStage to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %SwChnlStage, align 1
  %SwChnlStep = getelementptr i8, ptr %dev, i32 35974
  %13 = ptrtoint ptr %SwChnlStep to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %SwChnlStep, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %14 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then38.do.body5.i_crit_edge, label %do.end.i

if.then38.do.body5.i_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5.i

do.end.i:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #10
  br label %do.body5.i

do.body5.i:                                       ; preds = %do.end.i, %if.then38.do.body5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %15 = load i32, ptr @rt_global_debug_component, align 4
  %and6.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %do.body5.i.do.end16.i_crit_edge, label %do.end11.i

do.body5.i.do.end16.i_crit_edge:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

do.end11.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %chan, align 2
  %conv.i = sext i16 %17 to i32
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.92, i32 noundef %conv.i, ptr noundef %priv.i) #10
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end11.i, %do.body5.i.do.end16.i_crit_edge
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %chan, align 2
  %conv18.i = trunc i16 %19 to i8
  %conv18.mask.i = and i16 %19, 255
  %conv3.i.i.i = zext i16 %conv18.mask.i to i32
  %rf_chip.i.i.i = getelementptr i8, ptr %dev, i32 31416
  %20 = add i8 %conv18.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %20)
  %21 = icmp ult i8 %20, 14
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr @RF_CHANNEL_TABLE_ZEBRA, i32 0, i32 %conv3.i.i.i
  %NumTotalRFPath.i.i.i = getelementptr i8, ptr %dev, i32 35996
  %IC_Cut.i.i.i = getelementptr i8, ptr %dev, i32 35822
  %sub.i.i.i.i = add nsw i32 %conv3.i.i.i, -1
  %arrayidx3.i.i.i.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 138, i32 %sub.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 135, i32 %sub.i.i.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i.while.cond.i.i_crit_edge, %do.end16.i
  %delay.0.i.i = phi i32 [ 0, %do.end16.i ], [ %delay.1.ph.i.i, %if.end.i.i.while.cond.i.i_crit_edge ]
  %22 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rtllib, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %24 = load i32, ptr @rt_global_debug_component, align 4
  %and.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.do.end6.i.i.i_crit_edge, label %do.end.i.i.i

while.cond.i.i.do.end6.i.i.i_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i.i.i

do.end.i.i.i:                                     ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %SwChnlStage to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %SwChnlStage, align 1
  %conv.i.i.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %SwChnlStep to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %SwChnlStep, align 1
  %conv2.i.i.i = zext i8 %28 to i32
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, i32 noundef %conv.i.i.i, i32 noundef %conv2.i.i.i, i32 noundef %conv3.i.i.i) #10
  br label %do.end6.i.i.i

do.end6.i.i.i:                                    ; preds = %do.end.i.i.i, %while.cond.i.i.do.end6.i.i.i_crit_edge
  %29 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rtllib, align 8
  %call8.i.i.i = tail call i32 @rtllib_legal_channel(ptr noundef %30, i8 noundef zeroext %conv18.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %call8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.then10.i.i.i, label %if.end12.i.i.i

if.then10.i.i.i:                                  ; preds = %do.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.101, i32 noundef %conv3.i.i.i) #10
  br label %_rtl92e_phy_switch_channel.exit.i

if.end12.i.i.i:                                   ; preds = %do.end6.i.i.i
  %31 = getelementptr inbounds %struct.rtllib_device, ptr %23, i32 0, i32 173
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 1, ptr %31, align 1
  %Para15.i.i.i.i = getelementptr %struct.rtllib_device, ptr %23, i32 0, i32 173, i32 0, i32 0, i32 0, i32 1
  %33 = call ptr @memset(ptr %Para15.i.i.i.i, i32 0, i32 28)
  %PostCommonCmd.i.i.i = getelementptr inbounds %struct.rtllib_device, ptr %23, i32 0, i32 173, i32 0, i32 1
  %34 = call ptr @memset(ptr %PostCommonCmd.i.i.i, i32 0, i32 16)
  %35 = ptrtoint ptr %rf_chip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rf_chip.i.i.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %36, label %sw.default.i.i.i [
    i32 1, label %sw.bb.i.i.i
    i32 2, label %sw.bb36.i.i.i
    i32 3, label %if.end12.i.i.i.do.body56.i.i.i.preheader_crit_edge
  ]

if.end12.i.i.i.do.body56.i.i.i.preheader_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56.i.i.i.preheader

sw.bb.i.i.i:                                      ; preds = %if.end12.i.i.i
  br i1 %21, label %if.end28.i.i.i, label %if.then26.i.i.i

if.then26.i.i.i:                                  ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.102, i32 noundef %conv3.i.i.i) #10
  br label %while.body.i.i

if.end28.i.i.i:                                   ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i.i, align 4
  br label %sw.epilog.i.sink.split.i.i

sw.bb36.i.i.i:                                    ; preds = %if.end12.i.i.i
  br i1 %21, label %sw.bb36.i.i.i.sw.epilog.i.sink.split.i.i_crit_edge, label %if.then44.i.i.i

sw.bb36.i.i.i.sw.epilog.i.sink.split.i.i_crit_edge: ; preds = %sw.bb36.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.sink.split.i.i

if.then44.i.i.i:                                  ; preds = %sw.bb36.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.103, i32 noundef %conv3.i.i.i) #10
  br label %while.body.i.i

sw.default.i.i.i:                                 ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.104) #10
  br label %while.body.i.i

sw.epilog.i.sink.split.i.i:                       ; preds = %sw.bb36.i.i.i.sw.epilog.i.sink.split.i.i_crit_edge, %if.end28.i.i.i
  %conv3.i.sink.i.i = phi i32 [ %39, %if.end28.i.i.i ], [ %conv3.i.i.i, %sw.bb36.i.i.i.sw.epilog.i.sink.split.i.i_crit_edge ]
  %RfDependCmd47.i.sink.i.i = getelementptr inbounds %struct.rtllib_device, ptr %23, i32 0, i32 173, i32 0, i32 2
  %40 = ptrtoint ptr %RfDependCmd47.i.sink.i.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 6, ptr %RfDependCmd47.i.sink.i.i, align 1
  %Para15.i220.i.i.i = getelementptr %struct.rtllib_device, ptr %23, i32 0, i32 173, i32 0, i32 2, i32 0, i32 1
  %41 = ptrtoint ptr %Para15.i220.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 7, ptr %Para15.i220.i.i.i, align 1
  %Para26.i221.i.i.i = getelementptr %struct.rtllib_device, ptr %23, i32 0, i32 173, i32 0, i32 2, i32 0, i32 2
  %42 = ptrtoint ptr %Para26.i221.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %conv3.i.sink.i.i, ptr %Para26.i221.i.i.i, align 1
  %msDelay7.i222.i.i.i = getelementptr %struct.rtllib_device, ptr %23, i32 0, i32 173, i32 0, i32 2, i32 0, i32 3
  %43 = ptrtoint ptr %msDelay7.i222.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 10, ptr %msDelay7.i222.i.i.i, align 1
  %add.ptr.i227.i.i.i = getelementptr %struct.rtllib_device, ptr %23, i32 0, i32 173, i32 0, i32 2, i32 1
  %44 = call ptr @memset(ptr %add.ptr.i227.i.i.i, i32 0, i32 16)
  br label %do.body56.i.i.i.preheader

do.body56.i.i.i.preheader:                        ; preds = %sw.epilog.i.sink.split.i.i, %if.end12.i.i.i.do.body56.i.i.i.preheader_crit_edge
  br label %do.body56.i.i.i

do.body56.i.i.i:                                  ; preds = %do.body56.i.i.i.backedge, %do.body56.i.i.i.preheader
  %CurrentCmd.0.i.i.i = phi ptr [ null, %do.body56.i.i.i.preheader ], [ %CurrentCmd.1.i.i.i, %do.body56.i.i.i.backedge ]
  %45 = ptrtoint ptr %SwChnlStage to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %SwChnlStage, align 1
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.163)
  switch i8 %46, label %do.body56.i.i.i.sw.epilog70.i.i.i_crit_edge [
    i8 0, label %sw.bb58.i.i.i
    i8 1, label %sw.bb62.i.i.i
    i8 2, label %sw.bb66.i.i.i
  ]

do.body56.i.i.i.sw.epilog70.i.i.i_crit_edge:      ; preds = %do.body56.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog70.i.i.i

sw.bb58.i.i.i:                                    ; preds = %do.body56.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %SwChnlStep to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %SwChnlStep, align 1
  %idxprom60.i.i.i = zext i8 %49 to i32
  %arrayidx61.i.i.i = getelementptr [16 x %struct.sw_chnl_cmd], ptr %31, i32 0, i32 %idxprom60.i.i.i
  br label %sw.epilog70.i.i.i

sw.bb62.i.i.i:                                    ; preds = %do.body56.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %SwChnlStep to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %SwChnlStep, align 1
  %idxprom64.i.i.i = zext i8 %51 to i32
  %arrayidx65.i.i.i = getelementptr %struct.rtllib_device, ptr %23, i32 0, i32 173, i32 0, i32 2, i32 %idxprom64.i.i.i
  br label %sw.epilog70.i.i.i

sw.bb66.i.i.i:                                    ; preds = %do.body56.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %SwChnlStep to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %SwChnlStep, align 1
  %idxprom68.i.i.i = zext i8 %53 to i32
  %arrayidx69.i.i.i = getelementptr %struct.rtllib_device, ptr %23, i32 0, i32 173, i32 0, i32 1, i32 %idxprom68.i.i.i
  br label %sw.epilog70.i.i.i

sw.epilog70.i.i.i:                                ; preds = %sw.bb66.i.i.i, %sw.bb62.i.i.i, %sw.bb58.i.i.i, %do.body56.i.i.i.sw.epilog70.i.i.i_crit_edge
  %CurrentCmd.1.i.i.i = phi ptr [ %CurrentCmd.0.i.i.i, %do.body56.i.i.i.sw.epilog70.i.i.i_crit_edge ], [ %arrayidx69.i.i.i, %sw.bb66.i.i.i ], [ %arrayidx65.i.i.i, %sw.bb62.i.i.i ], [ %arrayidx61.i.i.i, %sw.bb58.i.i.i ]
  %tobool71.not.i.i.i = icmp eq ptr %CurrentCmd.1.i.i.i, null
  br i1 %tobool71.not.i.i.i, label %sw.epilog70.i.i.i.do.body56.i.i.i.backedge_crit_edge, label %land.lhs.true72.i.i.i

sw.epilog70.i.i.i.do.body56.i.i.i.backedge_crit_edge: ; preds = %sw.epilog70.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56.i.i.i.backedge

land.lhs.true72.i.i.i:                            ; preds = %sw.epilog70.i.i.i
  %54 = ptrtoint ptr %CurrentCmd.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %CurrentCmd.1.i.i.i, align 1
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %55, label %land.lhs.true72.i.i.i.do.end114.i.i.i_crit_edge [
    i32 0, label %if.then75.i.i.i
    i32 1, label %sw.bb87.i.i.i
    i32 3, label %sw.bb93.i.i.i
    i32 4, label %sw.bb94.i.i.i
    i32 5, label %sw.bb98.i.i.i
    i32 6, label %for.cond.preheader.i.i.i
  ]

land.lhs.true72.i.i.i.do.end114.i.i.i_crit_edge:  ; preds = %land.lhs.true72.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end114.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %land.lhs.true72.i.i.i
  %57 = ptrtoint ptr %NumTotalRFPath.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %NumTotalRFPath.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp105241.not.i.i.i = icmp eq i8 %58, 0
  br i1 %cmp105241.not.i.i.i, label %for.cond.preheader.i.i.i.do.end114.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

for.cond.preheader.i.i.i.do.end114.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end114.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %Para1108.i.i.i = getelementptr inbounds %struct.sw_chnl_cmd, ptr %CurrentCmd.1.i.i.i, i32 0, i32 1
  %Para2109.i.i.i = getelementptr inbounds %struct.sw_chnl_cmd, ptr %CurrentCmd.1.i.i.i, i32 0, i32 2
  br label %for.body.i.i.i

if.then75.i.i.i:                                  ; preds = %land.lhs.true72.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp77.i.i.i = icmp eq i8 %46, 2
  br i1 %cmp77.i.i.i, label %if.then75.i.i.i._rtl92e_phy_switch_channel.exit.i_crit_edge, label %if.end80.i.i.i

if.then75.i.i.i._rtl92e_phy_switch_channel.exit.i_crit_edge: ; preds = %if.then75.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_phy_switch_channel.exit.i

if.end80.i.i.i:                                   ; preds = %if.then75.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc81.i.i.i = add i8 %46, 1
  %59 = ptrtoint ptr %SwChnlStage to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %inc81.i.i.i, ptr %SwChnlStage, align 1
  %60 = ptrtoint ptr %SwChnlStep to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %SwChnlStep, align 1
  br label %do.body56.i.i.i.backedge

do.body56.i.i.i.backedge:                         ; preds = %if.end80.i.i.i, %sw.epilog70.i.i.i.do.body56.i.i.i.backedge_crit_edge
  br label %do.body56.i.i.i

sw.bb87.i.i.i:                                    ; preds = %land.lhs.true72.i.i.i
  %61 = ptrtoint ptr %IC_Cut.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %IC_Cut.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %62)
  %cmp89.i.i.i = icmp ugt i8 %62, 3
  br i1 %cmp89.i.i.i, label %if.then91.i.i.i, label %sw.bb87.i.i.i.do.end114.i.i.i_crit_edge

sw.bb87.i.i.i.do.end114.i.i.i_crit_edge:          ; preds = %sw.bb87.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end114.i.i.i

if.then91.i.i.i:                                  ; preds = %sw.bb87.i.i.i
  %63 = ptrtoint ptr %rf_chip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rf_chip.i.i.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %64, label %sw.default.i.i.i.i [
    i32 1, label %if.then91.i.i.i.do.end114.i.i.i_crit_edge
    i32 2, label %sw.bb.i.i.i.i
    i32 3, label %if.then91.i.i.i.do.end114.i.i.i_crit_edge115
  ]

if.then91.i.i.i.do.end114.i.i.i_crit_edge115:     ; preds = %if.then91.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end114.i.i.i

if.then91.i.i.i.do.end114.i.i.i_crit_edge:        ; preds = %if.then91.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end114.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.then91.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx3.i.i.i.i, align 1
  %68 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i.i.i.i, align 1
  tail call void @rtl92e_set_cck_tx_power(ptr noundef %dev, i8 noundef zeroext %69) #7
  tail call void @rtl92e_set_ofdm_tx_power(ptr noundef %dev, i8 noundef zeroext %67) #7
  br label %do.end114.i.i.i

sw.default.i.i.i.i:                               ; preds = %if.then91.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.107, ptr noundef nonnull @__func__._rtl92e_set_tx_power_level) #10
  br label %do.end114.i.i.i

sw.bb93.i.i.i:                                    ; preds = %land.lhs.true72.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %Para1.i.i.i = getelementptr inbounds %struct.sw_chnl_cmd, ptr %CurrentCmd.1.i.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %Para1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %Para1.i.i.i, align 1
  %Para2.i.i.i = getelementptr inbounds %struct.sw_chnl_cmd, ptr %CurrentCmd.1.i.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %Para2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %Para2.i.i.i, align 1
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef %71, i32 noundef %73) #7
  br label %do.end114.i.i.i

sw.bb94.i.i.i:                                    ; preds = %land.lhs.true72.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %Para195.i.i.i = getelementptr inbounds %struct.sw_chnl_cmd, ptr %CurrentCmd.1.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %Para195.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %Para195.i.i.i, align 1
  %Para296.i.i.i = getelementptr inbounds %struct.sw_chnl_cmd, ptr %CurrentCmd.1.i.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %Para296.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %Para296.i.i.i, align 1
  %conv97.i.i.i = trunc i32 %77 to i16
  tail call void @rtl92e_writew(ptr noundef %dev, i32 noundef %75, i16 noundef zeroext %conv97.i.i.i) #7
  br label %do.end114.i.i.i

sw.bb98.i.i.i:                                    ; preds = %land.lhs.true72.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %Para199.i.i.i = getelementptr inbounds %struct.sw_chnl_cmd, ptr %CurrentCmd.1.i.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %Para199.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %Para199.i.i.i, align 1
  %Para2100.i.i.i = getelementptr inbounds %struct.sw_chnl_cmd, ptr %CurrentCmd.1.i.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %Para2100.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %Para2100.i.i.i, align 1
  %conv101.i.i.i = trunc i32 %81 to i8
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef %79, i8 noundef zeroext %conv101.i.i.i) #7
  br label %do.end114.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %82 = ptrtoint ptr %Para1108.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %Para1108.i.i.i, align 1
  %84 = ptrtoint ptr %Para2109.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %Para2109.i.i.i, align 1
  %shl.i.i.i = shl i32 %85, 7
  tail call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef %indvars.iv.i.i.i, i32 noundef %83, i32 noundef 4095, i32 noundef %shl.i.i.i) #7
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %86 = ptrtoint ptr %NumTotalRFPath.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %NumTotalRFPath.i.i.i, align 8
  %88 = zext i8 %87 to i32
  %cmp105.i.i.i = icmp ult i32 %indvars.iv.next.i.i.i, %88
  br i1 %cmp105.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.do.end114.i.i.i_crit_edge

for.body.i.i.i.do.end114.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end114.i.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

do.end114.i.i.i:                                  ; preds = %for.body.i.i.i.do.end114.i.i.i_crit_edge, %sw.bb98.i.i.i, %sw.bb94.i.i.i, %sw.bb93.i.i.i, %sw.default.i.i.i.i, %sw.bb.i.i.i.i, %if.then91.i.i.i.do.end114.i.i.i_crit_edge, %if.then91.i.i.i.do.end114.i.i.i_crit_edge115, %sw.bb87.i.i.i.do.end114.i.i.i_crit_edge, %for.cond.preheader.i.i.i.do.end114.i.i.i_crit_edge, %land.lhs.true72.i.i.i.do.end114.i.i.i_crit_edge
  %msDelay.i.i.i = getelementptr inbounds %struct.sw_chnl_cmd, ptr %CurrentCmd.1.i.i.i, i32 0, i32 3
  %89 = ptrtoint ptr %msDelay.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %msDelay.i.i.i, align 1
  %91 = ptrtoint ptr %SwChnlStep to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %SwChnlStep, align 1
  %inc115.i.i.i = add i8 %92, 1
  store i8 %inc115.i.i.i, ptr %SwChnlStep, align 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %do.end114.i.i.i, %sw.default.i.i.i, %if.then44.i.i.i, %if.then26.i.i.i
  %delay.1.ph.i.i = phi i32 [ %delay.0.i.i, %if.then26.i.i.i ], [ %delay.0.i.i, %if.then44.i.i.i ], [ %90, %do.end114.i.i.i ], [ %delay.0.i.i, %sw.default.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay.1.ph.i.i)
  %cmp.not.i.i = icmp eq i32 %delay.1.ph.i.i, 0
  br i1 %cmp.not.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef %delay.1.ph.i.i) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %93 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %up, align 2
  %tobool2.not.i.i = icmp eq i16 %94, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i._rtl92e_phy_switch_channel.exit.i_crit_edge, label %if.end.i.i.while.cond.i.i_crit_edge

if.end.i.i.while.cond.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

if.end.i.i._rtl92e_phy_switch_channel.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_phy_switch_channel.exit.i

_rtl92e_phy_switch_channel.exit.i:                ; preds = %if.end.i.i._rtl92e_phy_switch_channel.exit.i_crit_edge, %if.then75.i.i.i._rtl92e_phy_switch_channel.exit.i_crit_edge, %if.then10.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %95 = load i32, ptr @rt_global_debug_component, align 4
  %and20.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %_rtl92e_phy_switch_channel.exit.i.if.end39_crit_edge, label %do.end25.i

_rtl92e_phy_switch_channel.exit.i.if.end39_crit_edge: ; preds = %_rtl92e_phy_switch_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.end25.i:                                       ; preds = %_rtl92e_phy_switch_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #10
  br label %if.end39

if.end39:                                         ; preds = %do.end25.i, %_rtl92e_phy_switch_channel.exit.i.if.end39_crit_edge
  %96 = ptrtoint ptr %SwChnlInProgress to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %SwChnlInProgress, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then26, %if.then19, %if.then12, %if.end7.cleanup_crit_edge, %if.then6
  %retval.0 = phi i8 [ 1, %if.end39 ], [ 0, %if.then26 ], [ 0, %if.then19 ], [ 0, %if.then12 ], [ 0, %if.then6 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_set_bw_mode(ptr noundef %dev, i32 noundef %Bandwidth, i32 noundef %Offset) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %SetBWModeInProgress = getelementptr i8, ptr %dev, i32 35975
  %0 = ptrtoint ptr %SetBWModeInProgress to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %SetBWModeInProgress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %atm_swbw = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 38
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %atm_swbw, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %atm_swbw, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %atm_swbw, ptr %atm_swbw, i32 1, ptr elementtype(i32) %atm_swbw) #7, !srcloc !274
  %5 = ptrtoint ptr %SetBWModeInProgress to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %SetBWModeInProgress, align 1
  %CurrentChannelBW = getelementptr i8, ptr %dev, i32 31420
  %6 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %Bandwidth, ptr %CurrentChannelBW, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %Offset)
  %switch.selectcmp = icmp eq i32 %Offset, 1
  %switch.select = zext i1 %switch.selectcmp to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %Offset)
  %switch.selectcmp19 = icmp eq i32 %Offset, 3
  %switch.select20 = select i1 %switch.selectcmp19, i8 2, i8 %switch.select
  %nCur40MhzPrimeSC5 = getelementptr i8, ptr %dev, i32 35976
  %7 = ptrtoint ptr %nCur40MhzPrimeSC5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %switch.select20, ptr %nCur40MhzPrimeSC5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %8 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.do.end4.i_crit_edge, label %do.end.i

if.end.do.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %CurrentChannelBW, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  %cond.i = select i1 %cmp.i, ptr @.str.110, ptr @.str.111
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, ptr noundef nonnull %cond.i) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end.do.end4.i_crit_edge
  %rf_chip.i = getelementptr i8, ptr %dev, i32 31416
  %11 = ptrtoint ptr %rf_chip.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rf_chip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp5.i = icmp eq i32 %12, 5
  br i1 %cmp5.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %SetBWModeInProgress to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %SetBWModeInProgress, align 1
  br label %cleanup

if.end7.i:                                        ; preds = %do.end4.i
  %up.i = getelementptr i8, ptr %dev, i32 30794
  %14 = ptrtoint ptr %up.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %up.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool8.not.i = icmp eq i16 %15, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.109) #10
  br label %cleanup

if.end10.i:                                       ; preds = %if.end7.i
  %call11.i = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 768) #7
  %16 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %CurrentChannelBW, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %17, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = or i8 %call11.i, 4
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 768, i8 noundef zeroext %19) #7
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = and i8 %call11.i, -5
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 768, i8 noundef zeroext %20) #7
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.109, i32 noundef %17) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb14.i, %sw.bb.i
  %21 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %CurrentChannelBW, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %22, label %sw.default33.i [
    i32 0, label %sw.bb20.i
    i32 1, label %sw.bb24.i
  ]

sw.bb20.i:                                        ; preds = %sw.epilog.i
  %call.i.i18 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2048) #7
  %and.i.i = and i32 %call.i.i18, -2
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2048, i32 noundef %and.i.i) #7
  %call.i99.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2304) #7
  %and.i100.i = and i32 %call.i99.i, -2
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2304, i32 noundef %and.i100.i) #7
  %btxpower_tracking.i = getelementptr i8, ptr %dev, i32 36154
  %24 = ptrtoint ptr %btxpower_tracking.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %btxpower_tracking.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool21.not.i = icmp eq i8 %25, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2592, i32 noundef 437977088) #7
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2596, i32 noundef 151917335) #7
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2600, i32 noundef 516) #7
  br label %if.end23.i

if.else.i:                                        ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_rtl92e_cck_tx_power_track_bw_switch(ptr noundef %dev) #7
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.then22.i
  %call.i101.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2176) #7
  %or.i.i = or i32 %call.i101.i, 1048576
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2176, i32 noundef %or.i.i) #7
  br label %sw.epilog35.i

sw.bb24.i:                                        ; preds = %sw.epilog.i
  %call.i103.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2048) #7
  %or.i105.i = or i32 %call.i103.i, 1
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2048, i32 noundef %or.i105.i) #7
  %call.i106.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2304) #7
  %or.i108.i = or i32 %call.i106.i, 1
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2304, i32 noundef %or.i108.i) #7
  %btxpower_tracking25.i = getelementptr i8, ptr %dev, i32 36154
  %26 = ptrtoint ptr %btxpower_tracking25.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %btxpower_tracking25.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool26.not.i = icmp eq i8 %27, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.else28.i

if.then27.i:                                      ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2592, i32 noundef 892731392) #7
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2596, i32 noundef 303834414) #7
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2600, i32 noundef 1033) #7
  br label %if.end29.i

if.else28.i:                                      ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_rtl92e_cck_tx_power_track_bw_switch(ptr noundef %dev) #7
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else28.i, %if.then27.i
  %nCur40MhzPrimeSC.i = getelementptr i8, ptr %dev, i32 35976
  %28 = ptrtoint ptr %nCur40MhzPrimeSC.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nCur40MhzPrimeSC.i, align 4
  %30 = lshr i8 %29, 1
  %31 = zext i8 %30 to i32
  %call.i109.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2560) #7
  %and.i110.i = and i32 %call.i109.i, -17
  %shl.i.i = shl nuw nsw i32 %31, 4
  %or.i111.i = or i32 %shl.i.i, %and.i110.i
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2560, i32 noundef %or.i111.i) #7
  %32 = ptrtoint ptr %nCur40MhzPrimeSC.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nCur40MhzPrimeSC.i, align 4
  %conv32.i = zext i8 %33 to i32
  %call.i112.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3328) #7
  %and.i113.i = and i32 %call.i112.i, -3073
  %shl.i114.i = shl nuw nsw i32 %conv32.i, 10
  %or.i115.i = or i32 %and.i113.i, %shl.i114.i
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3328, i32 noundef %or.i115.i) #7
  %call.i116.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2176) #7
  %and.i117.i = and i32 %call.i116.i, -1048577
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2176, i32 noundef %and.i117.i) #7
  br label %sw.epilog35.i

sw.default33.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.109, i32 noundef %22) #10
  br label %sw.epilog35.i

sw.epilog35.i:                                    ; preds = %sw.default33.i, %if.end29.i, %if.end23.i
  %34 = ptrtoint ptr %rf_chip.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rf_chip.i, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %35, label %sw.default39.i [
    i32 1, label %sw.epilog35.i.sw.epilog41.i_crit_edge
    i32 2, label %sw.bb37.i
    i32 3, label %sw.epilog35.i.sw.epilog41.i_crit_edge21
    i32 5, label %sw.epilog35.i.sw.epilog41.i_crit_edge22
  ]

sw.epilog35.i.sw.epilog41.i_crit_edge22:          ; preds = %sw.epilog35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog41.i

sw.epilog35.i.sw.epilog41.i_crit_edge21:          ; preds = %sw.epilog35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog41.i

sw.epilog35.i.sw.epilog41.i_crit_edge:            ; preds = %sw.epilog35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog41.i

sw.bb37.i:                                        ; preds = %sw.epilog35.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %CurrentChannelBW, align 8
  tail call void @rtl92e_set_bandwidth(ptr noundef %dev, i32 noundef %38) #7
  br label %sw.epilog41.i

sw.default39.i:                                   ; preds = %sw.epilog35.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.109, i32 noundef %35) #10
  br label %sw.epilog41.i

sw.epilog41.i:                                    ; preds = %sw.default39.i, %sw.bb37.i, %sw.epilog35.i.sw.epilog41.i_crit_edge, %sw.epilog35.i.sw.epilog41.i_crit_edge21, %sw.epilog35.i.sw.epilog41.i_crit_edge22
  %39 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rtllib, align 8
  %atm_swbw.i = getelementptr inbounds %struct.rtllib_device, ptr %40, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %atm_swbw.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %atm_swbw.i, i32 1, i32 3, i32 1) #7
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %atm_swbw.i, ptr %atm_swbw.i, i32 1, ptr elementtype(i32) %atm_swbw.i) #7, !srcloc !275
  %42 = ptrtoint ptr %SetBWModeInProgress to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %SetBWModeInProgress, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %43 = load i32, ptr @rt_global_debug_component, align 4
  %and44.i = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %sw.epilog41.i.cleanup_crit_edge, label %do.end49.i

sw.epilog41.i.cleanup_crit_edge:                  ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end49.i:                                       ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #9
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end49.i, %sw.epilog41.i.cleanup_crit_edge, %if.then9.i, %if.then6.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_init_gain(ptr noundef %dev, i8 noundef zeroext %Operation) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %up = getelementptr i8, ptr %dev, i32 30794
  %0 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end250_crit_edge, label %if.then

entry.if.end250_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250

if.then:                                          ; preds = %entry
  %2 = zext i8 %Operation to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.169)
  switch i8 %Operation, label %do.body238 [
    i8 0, label %do.body
    i8 1, label %do.body126
  ]

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %3 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 1) to i32))
  %4 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then9, label %do.end6.if.end10_crit_edge

do.end6.if.end10_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 792) #7
  %and.i = and i32 %call.i, -65281
  %or.i = or i32 %and.i, 2048
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 792, i32 noundef %or.i) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.end6.if.end10_crit_edge
  %call.i304 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3152) #7
  %conv12 = trunc i32 %call.i304 to i8
  %initgain_backup = getelementptr i8, ptr %dev, i32 36163
  %5 = ptrtoint ptr %initgain_backup to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv12, ptr %initgain_backup, align 1
  %call.i306 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3160) #7
  %conv14 = trunc i32 %call.i306 to i8
  %xbagccore1 = getelementptr i8, ptr %dev, i32 36164
  %6 = ptrtoint ptr %xbagccore1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv14, ptr %xbagccore1, align 1
  %call.i308 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3168) #7
  %conv17 = trunc i32 %call.i308 to i8
  %xcagccore1 = getelementptr i8, ptr %dev, i32 36165
  %7 = ptrtoint ptr %xcagccore1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv17, ptr %xcagccore1, align 1
  %call.i310 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3176) #7
  %conv20 = trunc i32 %call.i310 to i8
  %xdagccore1 = getelementptr i8, ptr %dev, i32 36166
  %8 = ptrtoint ptr %xdagccore1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv20, ptr %xdagccore1, align 1
  %call.i312 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2568) #7
  %and.i313 = lshr i32 %call.i312, 16
  %conv23 = trunc i32 %and.i313 to i8
  %cca = getelementptr i8, ptr %dev, i32 36167
  %9 = ptrtoint ptr %cca to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv23, ptr %cca, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %10 = load i32, ptr @rt_global_debug_component, align 4
  %and26 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end10.do.body40_crit_edge, label %do.end31

if.end10.do.body40_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

do.end31:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %initgain_backup to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %initgain_backup, align 1
  %conv35 = zext i8 %12 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv35) #10
  br label %do.body40

do.body40:                                        ; preds = %do.end31, %if.end10.do.body40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %13 = load i32, ptr @rt_global_debug_component, align 4
  %and41 = and i32 %13, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body40.do.body55_crit_edge, label %do.end46

do.body40.do.body55_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %xbagccore1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %xbagccore1, align 1
  %conv50 = zext i8 %15 to i32
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv50) #10
  br label %do.body55

do.body55:                                        ; preds = %do.end46, %do.body40.do.body55_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %16 = load i32, ptr @rt_global_debug_component, align 4
  %and56 = and i32 %16, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body55.do.body70_crit_edge, label %do.end61

do.body55.do.body70_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body70

do.end61:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %xcagccore1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %xcagccore1, align 1
  %conv65 = zext i8 %18 to i32
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv65) #10
  br label %do.body70

do.body70:                                        ; preds = %do.end61, %do.body55.do.body70_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %19 = load i32, ptr @rt_global_debug_component, align 4
  %and71 = and i32 %19, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body70.do.body85_crit_edge, label %do.end76

do.body70.do.body85_crit_edge:                    ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body85

do.end76:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %xdagccore1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %xdagccore1, align 1
  %conv80 = zext i8 %21 to i32
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv80) #10
  br label %do.body85

do.body85:                                        ; preds = %do.end76, %do.body70.do.body85_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %22 = load i32, ptr @rt_global_debug_component, align 4
  %and86 = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.body85.do.body100_crit_edge, label %do.end91

do.body85.do.body100_crit_edge:                   ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body100

do.end91:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %cca to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cca, align 1
  %conv95 = zext i8 %24 to i32
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv95) #10
  br label %do.body100

do.body100:                                       ; preds = %do.end91, %do.body85.do.body100_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %25 = load i32, ptr @rt_global_debug_component, align 4
  %and101 = and i32 %25, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %do.body100.do.end112_crit_edge, label %do.end106

do.body100.do.end112_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end112

do.end106:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #9
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 23) #10
  br label %do.end112

do.end112:                                        ; preds = %do.end106, %do.body100.do.end112_crit_edge
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3152, i8 noundef zeroext 23) #7
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3160, i8 noundef zeroext 23) #7
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3168, i8 noundef zeroext 23) #7
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3176, i8 noundef zeroext 23) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %26 = load i32, ptr @rt_global_debug_component, align 4
  %and114 = and i32 %26, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.end112.do.end124_crit_edge, label %do.end119

do.end112.do.end124_crit_edge:                    ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end124

do.end119:                                        ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #9
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 8) #10
  br label %do.end124

do.end124:                                        ; preds = %do.end119, %do.end112.do.end124_crit_edge
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 2570, i8 noundef zeroext 8) #7
  br label %if.end250

do.body126:                                       ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %27 = load i32, ptr @rt_global_debug_component, align 4
  %and127 = and i32 %27, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %do.body126.do.end137_crit_edge, label %do.end132

do.body126.do.end137_crit_edge:                   ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end137

do.end132:                                        ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #9
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #10
  br label %do.end137

do.end137:                                        ; preds = %do.end132, %do.body126.do.end137_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 1) to i32))
  %28 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp139 = icmp eq i8 %28, 0
  br i1 %cmp139, label %if.then141, label %do.end137.if.end142_crit_edge

do.end137.if.end142_crit_edge:                    ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.then141:                                       ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #9
  %call.i314 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 792) #7
  %and.i315 = and i32 %call.i314, -65281
  %or.i316 = or i32 %and.i315, 2048
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 792, i32 noundef %or.i316) #7
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %do.end137.if.end142_crit_edge
  %initgain_backup143 = getelementptr i8, ptr %dev, i32 36163
  %29 = ptrtoint ptr %initgain_backup143 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %initgain_backup143, align 1
  %conv145 = zext i8 %30 to i32
  %call.i317 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3152) #7
  %and.i318 = and i32 %call.i317, -128
  %or.i319 = or i32 %and.i318, %conv145
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3152, i32 noundef %or.i319) #7
  %xbagccore1147 = getelementptr i8, ptr %dev, i32 36164
  %31 = ptrtoint ptr %xbagccore1147 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %xbagccore1147, align 1
  %conv148 = zext i8 %32 to i32
  %call.i320 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3160) #7
  %and.i321 = and i32 %call.i320, -128
  %or.i322 = or i32 %and.i321, %conv148
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3160, i32 noundef %or.i322) #7
  %xcagccore1150 = getelementptr i8, ptr %dev, i32 36165
  %33 = ptrtoint ptr %xcagccore1150 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %xcagccore1150, align 1
  %conv151 = zext i8 %34 to i32
  %call.i323 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3168) #7
  %and.i324 = and i32 %call.i323, -128
  %or.i325 = or i32 %and.i324, %conv151
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3168, i32 noundef %or.i325) #7
  %xdagccore1153 = getelementptr i8, ptr %dev, i32 36166
  %35 = ptrtoint ptr %xdagccore1153 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %xdagccore1153, align 1
  %conv154 = zext i8 %36 to i32
  %call.i326 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3176) #7
  %and.i327 = and i32 %call.i326, -128
  %or.i328 = or i32 %and.i327, %conv154
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3176, i32 noundef %or.i328) #7
  %cca156 = getelementptr i8, ptr %dev, i32 36167
  %37 = ptrtoint ptr %cca156 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cca156, align 1
  %conv157 = zext i8 %38 to i32
  %call.i329 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2568) #7
  %and.i330 = and i32 %call.i329, -16711681
  %shl.i = shl nuw nsw i32 %conv157, 16
  %or.i331 = or i32 %and.i330, %shl.i
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2568, i32 noundef %or.i331) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %39 = load i32, ptr @rt_global_debug_component, align 4
  %and159 = and i32 %39, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.end142.do.body173_crit_edge, label %do.end164

if.end142.do.body173_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body173

do.end164:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %initgain_backup143 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %initgain_backup143, align 1
  %conv168 = zext i8 %41 to i32
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %conv168) #10
  br label %do.body173

do.body173:                                       ; preds = %do.end164, %if.end142.do.body173_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %42 = load i32, ptr @rt_global_debug_component, align 4
  %and174 = and i32 %42, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %do.body173.do.body188_crit_edge, label %do.end179

do.body173.do.body188_crit_edge:                  ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body188

do.end179:                                        ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %xbagccore1147 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %xbagccore1147, align 1
  %conv183 = zext i8 %44 to i32
  %call184 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %conv183) #10
  br label %do.body188

do.body188:                                       ; preds = %do.end179, %do.body173.do.body188_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %45 = load i32, ptr @rt_global_debug_component, align 4
  %and189 = and i32 %45, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %do.body188.do.body203_crit_edge, label %do.end194

do.body188.do.body203_crit_edge:                  ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body203

do.end194:                                        ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %xcagccore1150 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %xcagccore1150, align 1
  %conv198 = zext i8 %47 to i32
  %call199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %conv198) #10
  br label %do.body203

do.body203:                                       ; preds = %do.end194, %do.body188.do.body203_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %48 = load i32, ptr @rt_global_debug_component, align 4
  %and204 = and i32 %48, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %do.body203.do.body218_crit_edge, label %do.end209

do.body203.do.body218_crit_edge:                  ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body218

do.end209:                                        ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %xdagccore1153 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %xdagccore1153, align 1
  %conv213 = zext i8 %50 to i32
  %call214 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %conv213) #10
  br label %do.body218

do.body218:                                       ; preds = %do.end209, %do.body203.do.body218_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %51 = load i32, ptr @rt_global_debug_component, align 4
  %and219 = and i32 %51, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219)
  %tobool220.not = icmp eq i32 %and219, 0
  br i1 %tobool220.not, label %do.body218.do.end232_crit_edge, label %do.end224

do.body218.do.end232_crit_edge:                   ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end232

do.end224:                                        ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %cca156 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cca156, align 1
  %conv228 = zext i8 %53 to i32
  %call229 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv228) #10
  br label %do.end232

do.end232:                                        ; preds = %do.end224, %do.body218.do.end232_crit_edge
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %54 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rtllib, align 8
  %channel = getelementptr inbounds %struct.rtllib_device, ptr %55, i32 0, i32 89, i32 1
  %56 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %channel, align 2
  tail call void @rtl92e_set_tx_power(ptr noundef %dev, i8 noundef zeroext %57)
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 1) to i32))
  %58 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp234 = icmp eq i8 %58, 0
  br i1 %cmp234, label %if.then236, label %do.end232.if.end250_crit_edge

do.end232.if.end250_crit_edge:                    ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250

if.then236:                                       ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #9
  %call.i332 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 792) #7
  %and.i333 = and i32 %call.i332, -65281
  %or.i334 = or i32 %and.i333, 256
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 792, i32 noundef %or.i334) #7
  br label %if.end250

do.body238:                                       ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %59 = load i32, ptr @rt_global_debug_component, align 4
  %and239 = and i32 %59, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %do.body238.if.end250_crit_edge, label %do.end244

do.body238.if.end250_crit_edge:                   ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250

do.end244:                                        ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #9
  %call246 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #10
  br label %if.end250

if.end250:                                        ; preds = %do.end244, %do.body238.if.end250_crit_edge, %if.then236, %do.end232.if.end250_crit_edge, %do.end124, %entry.if.end250_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_writeb(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_set_rf_off(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2144) #7
  %and.i = and i32 %call.i, -17
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2144, i32 noundef %and.i) #7
  %call.i8 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2188) #7
  %and.i9 = and i32 %call.i8, -769
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2188, i32 noundef %and.i9) #7
  %call.i10 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2176) #7
  %and.i11 = and i32 %call.i10, -25
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2176, i32 noundef %and.i11) #7
  %call.i12 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3076) #7
  %and.i13 = and i32 %call.i12, -16
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3076, i32 noundef %and.i13) #7
  %call.i14 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3332) #7
  %and.i15 = and i32 %call.i14, -16
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3332, i32 noundef %and.i15) #7
  %call.i16 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2176) #7
  %and.i17 = and i32 %call.i16, -97
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2176, i32 noundef %and.i17) #7
  %call.i18 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2176) #7
  %and.i19 = and i32 %call.i18, -5
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2176, i32 noundef %and.i19) #7
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 23, i8 noundef zeroext 7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92e_set_rf_power_state(ptr noundef %dev, i32 noundef %eRFPowerState) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %eRFPowerState) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %1 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rtllib, align 8
  %eRFPowerState5 = getelementptr inbounds %struct.rtllib_device, ptr %2, i32 0, i32 23
  %3 = ptrtoint ptr %eRFPowerState5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %eRFPowerState5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %eRFPowerState)
  %cmp = icmp eq i32 %4, %eRFPowerState
  br i1 %cmp, label %land.lhs.true, label %do.end4.if.end22_crit_edge

do.end4.if.end22_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true:                                    ; preds = %do.end4
  %bHwRfOffAction = getelementptr i8, ptr %dev, i32 36009
  %5 = ptrtoint ptr %bHwRfOffAction to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bHwRfOffAction, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp6 = icmp eq i8 %6, 0
  br i1 %cmp6, label %do.body9, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.body9:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %7 = load i32, ptr @rt_global_debug_component, align 4
  %and10 = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.cleanup_crit_edge, label %do.end15

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72, i32 noundef %eRFPowerState) #10
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %do.end4.if.end22_crit_edge
  %8 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtllib, align 8
  %SetRFPowerStateInProgress.i = getelementptr i8, ptr %dev, i32 36011
  %10 = ptrtoint ptr %SetRFPowerStateInProgress.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %SetRFPowerStateInProgress.i, align 1, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end22._rtl92e_set_rf_power_state.exit_crit_edge

if.end22._rtl92e_set_rf_power_state.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_set_rf_power_state.exit

do.body.i:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %12 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end7.i_crit_edge, label %do.end.i

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %13 = ptrtoint ptr %SetRFPowerStateInProgress.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %SetRFPowerStateInProgress.i, align 1
  %rf_chip.i = getelementptr i8, ptr %dev, i32 31416
  %14 = ptrtoint ptr %rf_chip.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rf_chip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cond.i = icmp eq i32 %15, 2
  br i1 %cond.i, label %sw.bb.i, label %sw.default170.i

sw.bb.i:                                          ; preds = %do.end7.i
  %16 = zext i32 %eRFPowerState to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %eRFPowerState, label %sw.epilog171.i [
    i32 0, label %do.body10.i
    i32 1, label %sw.bb41.i
    i32 2, label %do.body89.i
  ]

do.body10.i:                                      ; preds = %sw.bb.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %17 = load i32, ptr @rt_global_debug_component, align 4
  %and11.i = and i32 %17, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %do.body10.i.do.end21.i_crit_edge, label %do.end16.i

do.body10.i.do.end21.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21.i

do.end16.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.128) #10
  br label %do.end21.i

do.end21.i:                                       ; preds = %do.end16.i, %do.body10.i.do.end21.i_crit_edge
  %18 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtllib, align 8
  %eRFPowerState23.i = getelementptr inbounds %struct.rtllib_device, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %eRFPowerState23.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %eRFPowerState23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i = icmp eq i32 %21, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end21.i.if.else.i_crit_edge

do.end21.i.if.else.i_crit_edge:                   ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.end21.i
  %CurPsLevel.i = getelementptr inbounds %struct.rtllib_device, ptr %9, i32 0, i32 158, i32 9
  %22 = ptrtoint ptr %CurPsLevel.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %CurPsLevel.i, align 4
  %and24.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %do.body27.preheader.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

do.body27.preheader.i:                            ; preds = %land.lhs.true.i
  %RegRfOff.i = getelementptr i8, ptr %dev, i32 36006
  %24 = ptrtoint ptr %RegRfOff.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %RegRfOff.i, align 2
  %call28.i = tail call zeroext i1 @rtl92e_enable_nic(ptr noundef %dev) #7
  br i1 %call28.i, label %do.body27.preheader.i.do.end32.i_crit_edge, label %do.body27.i.1

do.body27.preheader.i.do.end32.i_crit_edge:       ; preds = %do.body27.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32.i

do.body27.i.1:                                    ; preds = %do.body27.preheader.i
  %25 = ptrtoint ptr %RegRfOff.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %RegRfOff.i, align 2
  %call28.i.1 = tail call zeroext i1 @rtl92e_enable_nic(ptr noundef %dev) #7
  br i1 %call28.i.1, label %do.body27.i.1.do.end32.i_crit_edge, label %do.body27.i.2

do.body27.i.1.do.end32.i_crit_edge:               ; preds = %do.body27.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32.i

do.body27.i.2:                                    ; preds = %do.body27.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %RegRfOff.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %RegRfOff.i, align 2
  %call28.i.2 = tail call zeroext i1 @rtl92e_enable_nic(ptr noundef %dev) #7
  br label %do.end32.i

do.end32.i:                                       ; preds = %do.body27.i.2, %do.body27.i.1.do.end32.i_crit_edge, %do.body27.preheader.i.do.end32.i_crit_edge
  %call28.i.lcssa = phi i1 [ %call28.i, %do.body27.preheader.i.do.end32.i_crit_edge ], [ %call28.i.1, %do.body27.i.1.do.end32.i_crit_edge ], [ %call28.i.2, %do.body27.i.2 ]
  br i1 %call28.i.lcssa, label %if.end36.i, label %if.then34.i

if.then34.i:                                      ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.128) #10
  %27 = ptrtoint ptr %SetRFPowerStateInProgress.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %SetRFPowerStateInProgress.i, align 1
  br label %_rtl92e_set_rf_power_state.exit

if.end36.i:                                       ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %CurPsLevel.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %CurPsLevel.i, align 4
  %and38.i = and i32 %29, -9
  store i32 %and38.i, ptr %CurPsLevel.i, align 4
  br label %if.then173.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.end21.i.if.else.i_crit_edge
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 23, i8 noundef zeroext 55) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #7
  %call.i.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2176) #7
  %or.i.i = or i32 %call.i.i, 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2176, i32 noundef %or.i.i) #7
  %bHwRfOffAction.i = getelementptr i8, ptr %dev, i32 36009
  %31 = ptrtoint ptr %bHwRfOffAction.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %bHwRfOffAction.i, align 1
  %call.i259.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2144) #7
  %or.i261.i = or i32 %call.i259.i, 16
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2144, i32 noundef %or.i261.i) #7
  %call.i262.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2188) #7
  %or.i264.i = or i32 %call.i262.i, 768
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2188, i32 noundef %or.i264.i) #7
  %call.i265.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2176) #7
  %or.i267.i = or i32 %call.i265.i, 24
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2176, i32 noundef %or.i267.i) #7
  %call.i268.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3076) #7
  %or.i270.i = or i32 %call.i268.i, 3
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3076, i32 noundef %or.i270.i) #7
  %call.i271.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 3332) #7
  %or.i273.i = or i32 %call.i271.i, 3
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3332, i32 noundef %or.i273.i) #7
  %call.i274.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 2176) #7
  %or.i276.i = or i32 %call.i274.i, 96
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 2176, i32 noundef %or.i276.i) #7
  br label %if.then173.i

sw.bb41.i:                                        ; preds = %sw.bb.i
  %32 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rtllib, align 8
  %eRFPowerState43.i = getelementptr inbounds %struct.rtllib_device, ptr %33, i32 0, i32 23
  %34 = ptrtoint ptr %eRFPowerState43.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %eRFPowerState43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp44.i = icmp eq i32 %35, 2
  br i1 %cmp44.i, label %sw.bb41.i.if.then173.i_crit_edge, label %for.cond.preheader.i

sw.bb41.i.if.then173.i_crit_edge:                 ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then173.i

for.cond.preheader.i:                             ; preds = %sw.bb41.i
  %qlen.i296.i = getelementptr i8, ptr %dev, i32 35044
  br label %for.cond.outer.split.i

for.cond.outer.split.i:                           ; preds = %if.then52.i.for.cond.outer.split.i_crit_edge, %for.cond.preheader.i
  %indvars.iv305.i = phi i32 [ 0, %for.cond.preheader.i ], [ %indvars.iv.next306.i, %if.then52.i.for.cond.outer.split.i_crit_edge ]
  %qlen.i300.i = phi ptr [ %qlen.i296.i, %for.cond.preheader.i ], [ %qlen.i.i, %if.then52.i.for.cond.outer.split.i_crit_edge ]
  %i.0.ph298.i = phi i8 [ 0, %for.cond.preheader.i ], [ %i.0.i, %if.then52.i.for.cond.outer.split.i_crit_edge ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %do.end67.i.for.cond.i_crit_edge, %for.cond.outer.split.i
  %i.0.i = phi i8 [ %inc68.i, %do.end67.i.for.cond.i_crit_edge ], [ %i.0.ph298.i, %for.cond.outer.split.i ]
  %36 = ptrtoint ptr %qlen.i300.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qlen.i300.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp50.i = icmp eq i32 %37, 0
  br i1 %cmp50.i, label %if.then52.i, label %do.body54.i

if.then52.i:                                      ; preds = %for.cond.i
  %indvars.iv.next306.i = add nuw nsw i32 %indvars.iv305.i, 1
  %queue.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %indvars.iv.next306.i, i32 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue.i, i32 0, i32 1
  %exitcond307.not.i = icmp eq i32 %indvars.iv.next306.i, 9
  br i1 %exitcond307.not.i, label %if.then52.i.for.end.i_crit_edge, label %if.then52.i.for.cond.outer.split.i_crit_edge

if.then52.i.for.cond.outer.split.i_crit_edge:     ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.outer.split.i

if.then52.i.for.end.i_crit_edge:                  ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

do.body54.i:                                      ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %38 = load i32, ptr @rt_global_debug_component, align 4
  %and55.i = and i32 %38, 1048640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %do.body54.i.do.end67.i_crit_edge, label %do.end60.i

do.body54.i.do.end67.i_crit_edge:                 ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67.i

do.end60.i:                                       ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv62.i = zext i8 %i.0.i to i32
  %add.i = add nuw nsw i32 %conv62.i, 1
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %add.i, i32 noundef %indvars.iv305.i) #10
  br label %do.end67.i

do.end67.i:                                       ; preds = %do.end60.i, %do.body54.i.do.end67.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 2147480) #7
  %inc68.i = add i8 %i.0.i, 1
  %cmp71.i = icmp ugt i8 %inc68.i, 63
  br i1 %cmp71.i, label %do.body74.i, label %do.end67.i.for.cond.i_crit_edge

do.end67.i.for.cond.i_crit_edge:                  ; preds = %do.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

do.body74.i:                                      ; preds = %do.end67.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %40 = load i32, ptr @rt_global_debug_component, align 4
  %and75.i = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %do.body74.i.for.end.i_crit_edge, label %do.end80.i

do.body74.i.for.end.i_crit_edge:                  ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

do.end80.i:                                       ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #9
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.128, i32 noundef 64, i32 noundef %indvars.iv305.i) #10
  br label %for.end.i

for.end.i:                                        ; preds = %do.end80.i, %do.body74.i.for.end.i_crit_edge, %if.then52.i.for.end.i_crit_edge
  tail call void @rtl92e_set_rf_off(ptr noundef %dev) #7
  br label %if.then173.i

do.body89.i:                                      ; preds = %sw.bb.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %41 = load i32, ptr @rt_global_debug_component, align 4
  %and90.i = and i32 %41, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  br i1 %tobool91.not.i, label %do.body89.i.do.end100.i_crit_edge, label %do.end95.i

do.body89.i.do.end100.i_crit_edge:                ; preds = %do.body89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end100.i

do.end95.i:                                       ; preds = %do.body89.i
  call void @__sanitizer_cov_trace_pc() #9
  %call97.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.128) #10
  br label %do.end100.i

do.end100.i:                                      ; preds = %do.end95.i, %do.body89.i.do.end100.i_crit_edge
  %qlen.i277290.i = getelementptr i8, ptr %dev, i32 35044
  br label %for.cond101.outer.split.i

for.cond101.outer.split.i:                        ; preds = %if.then113.i.for.cond101.outer.split.i_crit_edge, %do.end100.i
  %indvars.iv.i = phi i32 [ 0, %do.end100.i ], [ %indvars.iv.next.i, %if.then113.i.for.cond101.outer.split.i_crit_edge ]
  %qlen.i277294.i = phi ptr [ %qlen.i277290.i, %do.end100.i ], [ %qlen.i277.i, %if.then113.i.for.cond101.outer.split.i_crit_edge ]
  %i.1.ph292.i = phi i8 [ 0, %do.end100.i ], [ %i.1.i, %if.then113.i.for.cond101.outer.split.i_crit_edge ]
  br label %for.cond101.i

for.cond101.i:                                    ; preds = %do.end130.i.for.cond101.i_crit_edge, %for.cond101.outer.split.i
  %i.1.i = phi i8 [ %inc131.i, %do.end130.i.for.cond101.i_crit_edge ], [ %i.1.ph292.i, %for.cond101.outer.split.i ]
  %42 = ptrtoint ptr %qlen.i277294.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qlen.i277294.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp111.i = icmp eq i32 %43, 0
  br i1 %cmp111.i, label %if.then113.i, label %do.body116.i

if.then113.i:                                     ; preds = %for.cond101.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %queue109.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %indvars.iv.next.i, i32 4
  %qlen.i277.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue109.i, i32 0, i32 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 9
  br i1 %exitcond.not.i, label %if.then113.i.for.end151.i_crit_edge, label %if.then113.i.for.cond101.outer.split.i_crit_edge

if.then113.i.for.cond101.outer.split.i_crit_edge: ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond101.outer.split.i

if.then113.i.for.end151.i_crit_edge:              ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end151.i

do.body116.i:                                     ; preds = %for.cond101.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %44 = load i32, ptr @rt_global_debug_component, align 4
  %and117.i = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %do.body116.i.do.end130.i_crit_edge, label %do.end122.i

do.body116.i.do.end130.i_crit_edge:               ; preds = %do.body116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end130.i

do.end122.i:                                      ; preds = %do.body116.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv124.i = zext i8 %i.1.i to i32
  %add125.i = add nuw nsw i32 %conv124.i, 1
  %call127.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %add125.i, i32 noundef %indvars.iv.i) #10
  br label %do.end130.i

do.end130.i:                                      ; preds = %do.end122.i, %do.body116.i.do.end130.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #7
  %inc131.i = add i8 %i.1.i, 1
  %cmp134.i = icmp ugt i8 %inc131.i, 63
  br i1 %cmp134.i, label %do.body137.i, label %do.end130.i.for.cond101.i_crit_edge

do.end130.i.for.cond101.i_crit_edge:              ; preds = %do.end130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond101.i

do.body137.i:                                     ; preds = %do.end130.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %46 = load i32, ptr @rt_global_debug_component, align 4
  %and138.i = and i32 %46, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i)
  %tobool139.not.i = icmp eq i32 %and138.i, 0
  br i1 %tobool139.not.i, label %do.body137.i.for.end151.i_crit_edge, label %do.end143.i

do.body137.i.for.end151.i_crit_edge:              ; preds = %do.body137.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end151.i

do.end143.i:                                      ; preds = %do.body137.i
  call void @__sanitizer_cov_trace_pc() #9
  %call146.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, i32 noundef 64, i32 noundef %indvars.iv.i) #10
  br label %for.end151.i

for.end151.i:                                     ; preds = %do.end143.i, %do.body137.i.for.end151.i_crit_edge, %if.then113.i.for.end151.i_crit_edge
  %RegRfPsLevel.i = getelementptr inbounds %struct.rtllib_device, ptr %9, i32 0, i32 158, i32 10
  %47 = ptrtoint ptr %RegRfPsLevel.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %RegRfPsLevel.i, align 4
  %and152.i = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  br i1 %tobool153.not.i, label %if.then167.i, label %land.lhs.true154.i

land.lhs.true154.i:                               ; preds = %for.end151.i
  %CurPsLevel155.i = getelementptr inbounds %struct.rtllib_device, ptr %9, i32 0, i32 158, i32 9
  %49 = ptrtoint ptr %CurPsLevel155.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %CurPsLevel155.i, align 4
  %and156.i = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156.i)
  %tobool157.not.i = icmp eq i32 %and156.i, 0
  br i1 %tobool157.not.i, label %if.then160.i, label %land.lhs.true154.i.if.then173.i_crit_edge

land.lhs.true154.i.if.then173.i_crit_edge:        ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then173.i

if.then160.i:                                     ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #9
  %call161.i = tail call zeroext i1 @rtl92e_disable_nic(ptr noundef %dev) #7
  %51 = ptrtoint ptr %CurPsLevel155.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %CurPsLevel155.i, align 4
  %or.i = or i32 %52, 8
  store i32 %or.i, ptr %CurPsLevel155.i, align 4
  br label %if.then173.i

if.then167.i:                                     ; preds = %for.end151.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_set_rf_off(ptr noundef %dev) #7
  br label %if.then173.i

sw.default170.i:                                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.128) #10
  br label %if.then173.i

sw.epilog171.i:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.128, i32 noundef %eRFPowerState) #10
  br label %if.end179.i

if.then173.i:                                     ; preds = %sw.default170.i, %if.then167.i, %if.then160.i, %land.lhs.true154.i.if.then173.i_crit_edge, %for.end.i, %sw.bb41.i.if.then173.i_crit_edge, %if.else.i, %if.end36.i
  %53 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rtllib, align 8
  %eRFPowerState175.i = getelementptr inbounds %struct.rtllib_device, ptr %54, i32 0, i32 23
  %55 = ptrtoint ptr %eRFPowerState175.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %eRFPowerState, ptr %eRFPowerState175.i, align 4
  %56 = ptrtoint ptr %rf_chip.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rf_chip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cond202.i = icmp eq i32 %57, 2
  br i1 %cond202.i, label %if.then173.i.if.end179.i_crit_edge, label %sw.default177.i

if.then173.i.if.end179.i_crit_edge:               ; preds = %if.then173.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179.i

sw.default177.i:                                  ; preds = %if.then173.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.128) #10
  br label %if.end179.i

if.end179.i:                                      ; preds = %sw.default177.i, %if.then173.i.if.end179.i_crit_edge, %sw.epilog171.i
  %bResult.0.off0279.i = phi i1 [ true, %sw.default177.i ], [ true, %if.then173.i.if.end179.i_crit_edge ], [ false, %sw.epilog171.i ]
  %58 = ptrtoint ptr %SetRFPowerStateInProgress.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %SetRFPowerStateInProgress.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %59 = load i32, ptr @rt_global_debug_component, align 4
  %and182.i = and i32 %59, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182.i)
  %tobool183.not.i = icmp eq i32 %and182.i, 0
  br i1 %tobool183.not.i, label %if.end179.i._rtl92e_set_rf_power_state.exit_crit_edge, label %do.end187.i

if.end179.i._rtl92e_set_rf_power_state.exit_crit_edge: ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_set_rf_power_state.exit

do.end187.i:                                      ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv190.i = zext i1 %bResult.0.off0279.i to i32
  %call191.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.128, i32 noundef %conv190.i) #10
  br label %_rtl92e_set_rf_power_state.exit

_rtl92e_set_rf_power_state.exit:                  ; preds = %do.end187.i, %if.end179.i._rtl92e_set_rf_power_state.exit_crit_edge, %if.then34.i, %if.end22._rtl92e_set_rf_power_state.exit_crit_edge
  %retval.1.i = phi i1 [ false, %if.end22._rtl92e_set_rf_power_state.exit_crit_edge ], [ false, %if.then34.i ], [ %bResult.0.off0279.i, %do.end187.i ], [ %bResult.0.off0279.i, %if.end179.i._rtl92e_set_rf_power_state.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %60 = load i32, ptr @rt_global_debug_component, align 4
  %and25 = and i32 %60, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %_rtl92e_set_rf_power_state.exit.cleanup_crit_edge, label %do.end30

_rtl92e_set_rf_power_state.exit.cleanup_crit_edge: ; preds = %_rtl92e_set_rf_power_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end30:                                         ; preds = %_rtl92e_set_rf_power_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv33 = zext i1 %retval.1.i to i32
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.72, i32 noundef %conv33) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %_rtl92e_set_rf_power_state.exit.cleanup_crit_edge, %do.end15, %do.body9.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end15 ], [ false, %do.body9.cleanup_crit_edge ], [ %retval.1.i, %do.end30 ], [ %retval.1.i, %_rtl92e_set_rf_power_state.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_scan_op_backup(ptr noundef %dev, i8 noundef zeroext %Operation) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %up = getelementptr i8, ptr %dev, i32 30794
  %0 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  %2 = zext i8 %Operation to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.171)
  switch i8 %Operation, label %do.body [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %3 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtllib, align 8
  %InitialGainHandler = getelementptr inbounds %struct.rtllib_device, ptr %4, i32 0, i32 198
  %5 = ptrtoint ptr %InitialGainHandler to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %InitialGainHandler, align 4
  tail call void %6(ptr noundef %dev, i8 noundef zeroext 0) #7
  br label %if.end10

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %rtllib2 = getelementptr i8, ptr %dev, i32 31316
  %7 = ptrtoint ptr %rtllib2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtllib2, align 8
  %InitialGainHandler3 = getelementptr inbounds %struct.rtllib_device, ptr %8, i32 0, i32 198
  %9 = ptrtoint ptr %InitialGainHandler3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %InitialGainHandler3, align 4
  tail call void %10(ptr noundef %dev, i8 noundef zeroext 1) #7
  br label %if.end10

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %11 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.if.end10_crit_edge, label %do.end

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #10
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge, %sw.bb1, %sw.bb, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_legal_channel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_writew(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92e_cck_tx_power_track_bw_switch(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %IC_Cut = getelementptr i8, ptr %dev, i32 35822
  %0 = ptrtoint ptr %IC_Cut to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %IC_Cut, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ugt i8 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %CurrentChannelBW.i = getelementptr i8, ptr %dev, i32 31420
  %2 = ptrtoint ptr %CurrentChannelBW.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %CurrentChannelBW.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %3, label %if.then.if.end_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb49.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb.i:                                          ; preds = %if.then
  %CCKPresentAttentuation_20Mdefault.i = getelementptr i8, ptr %dev, i32 36024
  %5 = ptrtoint ptr %CCKPresentAttentuation_20Mdefault.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %CCKPresentAttentuation_20Mdefault.i, align 4
  %CCKPresentAttentuation_difference.i = getelementptr i8, ptr %dev, i32 36026
  %7 = ptrtoint ptr %CCKPresentAttentuation_difference.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %CCKPresentAttentuation_difference.i, align 2
  %add.i = add i8 %8, %6
  %CCKPresentAttentuation.i = getelementptr i8, ptr %dev, i32 36027
  %9 = tail call i8 @llvm.smin.i8(i8 %add.i, i8 22) #7
  %10 = tail call i8 @llvm.smax.i8(i8 %9, i8 0) #7
  %11 = ptrtoint ptr %CCKPresentAttentuation.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %CCKPresentAttentuation.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %12 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.do.end21.i_crit_edge, label %do.end.i

sw.bb.i.do.end21.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv17160.i = zext i8 %10 to i32
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %conv17160.i) #10
  br label %do.end21.i

do.end21.i:                                       ; preds = %do.end.i, %sw.bb.i.do.end21.i_crit_edge
  %rtllib.i = getelementptr i8, ptr %dev, i32 31316
  %13 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtllib.i, align 8
  %channel.i = getelementptr inbounds %struct.rtllib_device, ptr %14, i32 0, i32 89, i32 1
  %15 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %channel.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %16)
  %cmp23.i = icmp eq i8 %16, 14
  %bcck_in_ch14.i = getelementptr i8, ptr %dev, i32 36155
  %17 = ptrtoint ptr %bcck_in_ch14.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bcck_in_ch14.i, align 1, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool25.not.i = icmp eq i8 %18, 0
  br i1 %cmp23.i, label %land.lhs.true.i, label %land.lhs.true36.i

land.lhs.true.i:                                  ; preds = %do.end21.i
  br i1 %tobool25.not.i, label %if.then26.i, label %land.lhs.true.i.if.else44.i_crit_edge

land.lhs.true.i.if.else44.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else44.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %bcck_in_ch14.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %bcck_in_ch14.i, align 1
  br label %if.end.sink.split

land.lhs.true36.i:                                ; preds = %do.end21.i
  br i1 %tobool25.not.i, label %land.lhs.true36.i.if.else44.i_crit_edge, label %if.then40.i

land.lhs.true36.i.if.else44.i_crit_edge:          ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else44.i

if.then40.i:                                      ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %bcck_in_ch14.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %bcck_in_ch14.i, align 1
  br label %if.end.sink.split

if.else44.i:                                      ; preds = %land.lhs.true36.i.if.else44.i_crit_edge, %land.lhs.true.i.if.else44.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool46.i = icmp ne i8 %18, 0
  br label %if.end.sink.split

sw.bb49.i:                                        ; preds = %if.then
  %CCKPresentAttentuation_40Mdefault.i = getelementptr i8, ptr %dev, i32 36025
  %21 = ptrtoint ptr %CCKPresentAttentuation_40Mdefault.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %CCKPresentAttentuation_40Mdefault.i, align 1
  %CCKPresentAttentuation_difference51.i = getelementptr i8, ptr %dev, i32 36026
  %23 = ptrtoint ptr %CCKPresentAttentuation_difference51.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %CCKPresentAttentuation_difference51.i, align 2
  %add53.i = add i8 %24, %22
  %CCKPresentAttentuation55.i = getelementptr i8, ptr %dev, i32 36027
  %25 = ptrtoint ptr %CCKPresentAttentuation55.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %add53.i, ptr %CCKPresentAttentuation55.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %26 = load i32, ptr @rt_global_debug_component, align 4
  %and57.i = and i32 %26, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %sw.bb49.i.do.end69.i_crit_edge, label %do.end62.i

sw.bb49.i.do.end69.i_crit_edge:                   ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69.i

do.end62.i:                                       ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv65.i = sext i8 %add53.i to i32
  %call66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %conv65.i) #10
  %27 = ptrtoint ptr %CCKPresentAttentuation55.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %.pr.i = load i8, ptr %CCKPresentAttentuation55.i, align 1
  br label %do.end69.i

do.end69.i:                                       ; preds = %do.end62.i, %sw.bb49.i.do.end69.i_crit_edge
  %28 = phi i8 [ %.pr.i, %do.end62.i ], [ %add53.i, %sw.bb49.i.do.end69.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %28)
  %cmp72.i = icmp sgt i8 %28, 22
  br i1 %cmp72.i, label %do.end69.i.if.end83.sink.split.i_crit_edge, label %if.end76.i

do.end69.i.if.end83.sink.split.i_crit_edge:       ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.sink.split.i

if.end76.i:                                       ; preds = %do.end69.i
  %29 = ptrtoint ptr %CCKPresentAttentuation55.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %.pr158.i = load i8, ptr %CCKPresentAttentuation55.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr158.i)
  %cmp79.i = icmp slt i8 %.pr158.i, 0
  br i1 %cmp79.i, label %if.end76.i.if.end83.sink.split.i_crit_edge, label %if.end76.i.if.end83.i_crit_edge

if.end76.i.if.end83.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

if.end76.i.if.end83.sink.split.i_crit_edge:       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.sink.split.i

if.end83.sink.split.i:                            ; preds = %if.end76.i.if.end83.sink.split.i_crit_edge, %do.end69.i.if.end83.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 22, %do.end69.i.if.end83.sink.split.i_crit_edge ], [ 0, %if.end76.i.if.end83.sink.split.i_crit_edge ]
  %30 = ptrtoint ptr %CCKPresentAttentuation55.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink.i, ptr %CCKPresentAttentuation55.i, align 1
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.end83.sink.split.i, %if.end76.i.if.end83.i_crit_edge
  %rtllib84.i = getelementptr i8, ptr %dev, i32 31316
  %31 = ptrtoint ptr %rtllib84.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rtllib84.i, align 8
  %channel86.i = getelementptr inbounds %struct.rtllib_device, ptr %32, i32 0, i32 89, i32 1
  %33 = ptrtoint ptr %channel86.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %channel86.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %34)
  %cmp88.i = icmp eq i8 %34, 14
  %bcck_in_ch1491.i = getelementptr i8, ptr %dev, i32 36155
  %35 = ptrtoint ptr %bcck_in_ch1491.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bcck_in_ch1491.i, align 1, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool92.not.i = icmp eq i8 %36, 0
  br i1 %cmp88.i, label %land.lhs.true90.i, label %land.lhs.true104.i

land.lhs.true90.i:                                ; preds = %if.end83.i
  br i1 %tobool92.not.i, label %if.then93.i, label %land.lhs.true90.i.if.else112.i_crit_edge

land.lhs.true90.i.if.else112.i_crit_edge:         ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else112.i

if.then93.i:                                      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %bcck_in_ch1491.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %bcck_in_ch1491.i, align 1
  br label %if.end.sink.split

land.lhs.true104.i:                               ; preds = %if.end83.i
  br i1 %tobool92.not.i, label %land.lhs.true104.i.if.else112.i_crit_edge, label %if.then108.i

land.lhs.true104.i.if.else112.i_crit_edge:        ; preds = %land.lhs.true104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else112.i

if.then108.i:                                     ; preds = %land.lhs.true104.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %bcck_in_ch1491.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %bcck_in_ch1491.i, align 1
  br label %if.end.sink.split

if.else112.i:                                     ; preds = %land.lhs.true104.i.if.else112.i_crit_edge, %land.lhs.true90.i.if.else112.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool114.i = icmp ne i8 %36, 0
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %rtllib.i4 = getelementptr i8, ptr %dev, i32 31316
  %39 = ptrtoint ptr %rtllib.i4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rtllib.i4, align 8
  %channel.i5 = getelementptr inbounds %struct.rtllib_device, ptr %40, i32 0, i32 89, i32 1
  %41 = ptrtoint ptr %channel.i5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %channel.i5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %42)
  %cmp.i = icmp eq i8 %42, 14
  %bcck_in_ch14.i6 = getelementptr i8, ptr %dev, i32 36155
  %43 = ptrtoint ptr %bcck_in_ch14.i6 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bcck_in_ch14.i6, align 1, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i7 = icmp eq i8 %44, 0
  br i1 %cmp.i, label %land.lhs.true.i8, label %land.lhs.true9.i

land.lhs.true.i8:                                 ; preds = %if.else
  br i1 %tobool.not.i7, label %land.lhs.true.i8.if.end15.sink.split.i_crit_edge, label %land.lhs.true.i8.if.end15.i_crit_edge

land.lhs.true.i8.if.end15.i_crit_edge:            ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

land.lhs.true.i8.if.end15.sink.split.i_crit_edge: ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i

land.lhs.true9.i:                                 ; preds = %if.else
  br i1 %tobool.not.i7, label %land.lhs.true9.i.if.end15.i_crit_edge, label %land.lhs.true9.i.if.end15.sink.split.i_crit_edge

land.lhs.true9.i.if.end15.sink.split.i_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i

land.lhs.true9.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.end15.sink.split.i:                            ; preds = %land.lhs.true9.i.if.end15.sink.split.i_crit_edge, %land.lhs.true.i8.if.end15.sink.split.i_crit_edge
  %.sink.i9 = phi i8 [ 1, %land.lhs.true.i8.if.end15.sink.split.i_crit_edge ], [ 0, %land.lhs.true9.i.if.end15.sink.split.i_crit_edge ]
  %45 = ptrtoint ptr %bcck_in_ch14.i6 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink.i9, ptr %bcck_in_ch14.i6, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end15.sink.split.i, %land.lhs.true9.i.if.end15.i_crit_edge, %land.lhs.true.i8.if.end15.i_crit_edge
  %CurrentChannelBW.i10 = getelementptr i8, ptr %dev, i32 31420
  %46 = ptrtoint ptr %CurrentChannelBW.i10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %CurrentChannelBW.i10, align 8
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %47, label %if.end15.i._rtl92e_cck_tx_power_track_bw_switch_thermal.exit_crit_edge [
    i32 0, label %sw.bb.i11
    i32 1, label %sw.bb32.i
  ]

if.end15.i._rtl92e_cck_tx_power_track_bw_switch_thermal.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_cck_tx_power_track_bw_switch_thermal.exit

sw.bb.i11:                                        ; preds = %if.end15.i
  %Record_CCK_20Mindex.i = getelementptr i8, ptr %dev, i32 36161
  %49 = ptrtoint ptr %Record_CCK_20Mindex.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %Record_CCK_20Mindex.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp17.i = icmp eq i8 %50, 0
  br i1 %cmp17.i, label %if.then19.i, label %sw.bb.i11.if.end21.i_crit_edge

sw.bb.i11.if.end21.i_crit_edge:                   ; preds = %sw.bb.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then19.i:                                      ; preds = %sw.bb.i11
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %Record_CCK_20Mindex.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 6, ptr %Record_CCK_20Mindex.i, align 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %sw.bb.i11.if.end21.i_crit_edge
  %52 = ptrtoint ptr %Record_CCK_20Mindex.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %Record_CCK_20Mindex.i, align 1
  %CCK_index.i = getelementptr i8, ptr %dev, i32 36160
  %54 = ptrtoint ptr %CCK_index.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %CCK_index.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %55 = load i32, ptr @rt_global_debug_component, align 4
  %and.i12 = and i32 %55, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool23.not.i = icmp eq i32 %and.i12, 0
  br i1 %tobool23.not.i, label %if.end21.i._rtl92e_cck_tx_power_track_bw_switch_thermal.exit_crit_edge, label %if.end21.i.sw.epilog.sink.split.i13_crit_edge

if.end21.i.sw.epilog.sink.split.i13_crit_edge:    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i13

if.end21.i._rtl92e_cck_tx_power_track_bw_switch_thermal.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_cck_tx_power_track_bw_switch_thermal.exit

sw.bb32.i:                                        ; preds = %if.end15.i
  %Record_CCK_40Mindex.i = getelementptr i8, ptr %dev, i32 36162
  %56 = ptrtoint ptr %Record_CCK_40Mindex.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %Record_CCK_40Mindex.i, align 2
  %CCK_index33.i = getelementptr i8, ptr %dev, i32 36160
  %58 = ptrtoint ptr %CCK_index33.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %CCK_index33.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %59 = load i32, ptr @rt_global_debug_component, align 4
  %and35.i = and i32 %59, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %sw.bb32.i._rtl92e_cck_tx_power_track_bw_switch_thermal.exit_crit_edge, label %sw.bb32.i.sw.epilog.sink.split.i13_crit_edge

sw.bb32.i.sw.epilog.sink.split.i13_crit_edge:     ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i13

sw.bb32.i._rtl92e_cck_tx_power_track_bw_switch_thermal.exit_crit_edge: ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_cck_tx_power_track_bw_switch_thermal.exit

sw.epilog.sink.split.i13:                         ; preds = %sw.bb32.i.sw.epilog.sink.split.i13_crit_edge, %if.end21.i.sw.epilog.sink.split.i13_crit_edge
  %.sink66.i = phi i8 [ %53, %if.end21.i.sw.epilog.sink.split.i13_crit_edge ], [ %57, %sw.bb32.i.sw.epilog.sink.split.i13_crit_edge ]
  %.str.125.sink.i = phi ptr [ @.str.122, %if.end21.i.sw.epilog.sink.split.i13_crit_edge ], [ @.str.125, %sw.bb32.i.sw.epilog.sink.split.i13_crit_edge ]
  %conv43.i = zext i8 %.sink66.i to i32
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.125.sink.i, ptr noundef nonnull @.str.123, i32 noundef %conv43.i) #10
  br label %_rtl92e_cck_tx_power_track_bw_switch_thermal.exit

_rtl92e_cck_tx_power_track_bw_switch_thermal.exit: ; preds = %sw.epilog.sink.split.i13, %sw.bb32.i._rtl92e_cck_tx_power_track_bw_switch_thermal.exit_crit_edge, %if.end21.i._rtl92e_cck_tx_power_track_bw_switch_thermal.exit_crit_edge, %if.end15.i._rtl92e_cck_tx_power_track_bw_switch_thermal.exit_crit_edge
  %60 = ptrtoint ptr %bcck_in_ch14.i6 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bcck_in_ch14.i6, align 1, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool49.i = icmp ne i8 %61, 0
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %_rtl92e_cck_tx_power_track_bw_switch_thermal.exit, %if.else112.i, %if.then108.i, %if.then93.i, %if.else44.i, %if.then40.i, %if.then26.i
  %.sink161.i.sink = phi i1 [ %tobool49.i, %_rtl92e_cck_tx_power_track_bw_switch_thermal.exit ], [ true, %if.then93.i ], [ %tobool114.i, %if.else112.i ], [ false, %if.then108.i ], [ true, %if.then26.i ], [ %tobool46.i, %if.else44.i ], [ false, %if.then40.i ]
  tail call void @rtl92e_dm_cck_txpower_adjust(ptr noundef %dev, i1 noundef zeroext %.sink161.i.sink) #7
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_bandwidth(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_dm_cck_txpower_adjust(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_enable_nic(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_disable_nic(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !195, !196, !197, !198, !199, !201, !203, !205, !206, !207, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !253, !254, !255, !257, !259, !261, !262}
!llvm.module.flags = !{!263, !264, !265, !266, !267, !268, !269, !270}
!llvm.ident = !{!271}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 210, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl92e_set_rf_reg._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl92e_set_rf_reg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 315, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rtl92e_config_mac._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @rtl92e_config_mac._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 320, i32 3}
!13 = !{ptr @rtl92e_config_mac._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @rtl92e_config_mac._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 325, i32 3}
!17 = !{ptr @rtl92e_config_mac._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @rtl92e_config_mac._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 481, i32 2}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rtl92e_check_bb_and_rf._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @rtl92e_check_bb_and_rf._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 485, i32 20}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 518, i32 21}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 605, i32 2}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rtl92e_get_tx_power._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @rtl92e_get_tx_power._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 612, i32 2}
!35 = !{ptr @rtl92e_get_tx_power._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rtl92e_get_tx_power._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 665, i32 19}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 993, i32 2}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rtl92e_set_channel._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @rtl92e_set_channel._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 995, i32 19}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1007, i32 9}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1015, i32 9}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1024, i32 9}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1294, i32 4}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rtl92e_init_gain._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @rtl92e_init_gain._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1317, i32 4}
!59 = !{ptr @rtl92e_init_gain._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rtl92e_init_gain._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1320, i32 4}
!63 = !{ptr @rtl92e_init_gain._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rtl92e_init_gain._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1323, i32 4}
!67 = !{ptr @rtl92e_init_gain._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rtl92e_init_gain._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1326, i32 4}
!71 = !{ptr @rtl92e_init_gain._entry.38, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @rtl92e_init_gain._entry_ptr.40, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1329, i32 4}
!75 = !{ptr @rtl92e_init_gain._entry.41, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rtl92e_init_gain._entry_ptr.43, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1333, i32 4}
!79 = !{ptr @rtl92e_init_gain._entry.44, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @rtl92e_init_gain._entry_ptr.46, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1339, i32 4}
!83 = !{ptr @rtl92e_init_gain._entry.47, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @rtl92e_init_gain._entry_ptr.49, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1344, i32 4}
!87 = !{ptr @rtl92e_init_gain._entry.50, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @rtl92e_init_gain._entry_ptr.52, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1363, i32 4}
!91 = !{ptr @rtl92e_init_gain._entry.53, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @rtl92e_init_gain._entry_ptr.55, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.57, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1366, i32 4}
!95 = !{ptr @rtl92e_init_gain._entry.56, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @rtl92e_init_gain._entry_ptr.58, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.60, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1369, i32 4}
!99 = !{ptr @rtl92e_init_gain._entry.59, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @rtl92e_init_gain._entry_ptr.61, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.63, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1372, i32 4}
!103 = !{ptr @rtl92e_init_gain._entry.62, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @rtl92e_init_gain._entry_ptr.64, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.66, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1375, i32 4}
!107 = !{ptr @rtl92e_init_gain._entry.65, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @rtl92e_init_gain._entry_ptr.67, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.69, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1387, i32 4}
!111 = !{ptr @rtl92e_init_gain._entry.68, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @rtl92e_init_gain._entry_ptr.70, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.71, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1577, i32 2}
!115 = !{ptr @.str.72, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @rtl92e_set_rf_power_state._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @rtl92e_set_rf_power_state._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.74, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1581, i32 3}
!120 = !{ptr @rtl92e_set_rf_power_state._entry.73, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @rtl92e_set_rf_power_state._entry_ptr.75, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.77, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1588, i32 2}
!124 = !{ptr @rtl92e_set_rf_power_state._entry.76, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @rtl92e_set_rf_power_state._entry_ptr.78, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.79, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1608, i32 4}
!128 = !{ptr @.str.80, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @rtl92e_scan_op_backup._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @rtl92e_scan_op_backup._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.81, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 120, i32 3}
!133 = !{ptr @.str.82, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @_rtl92e_phy_rf_read._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @_rtl92e_phy_rf_read._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.83, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 176, i32 3}
!138 = !{ptr @_rtl92e_phy_rf_write._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @_rtl92e_phy_rf_write._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.84, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 546, i32 4}
!142 = !{ptr @.str.85, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @_rtl92e_bb_config_para_file._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @_rtl92e_bb_config_para_file._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.86, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 360, i32 4}
!147 = !{ptr @.str.87, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @_rtl92e_phy_config_bb._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @_rtl92e_phy_config_bb._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.89, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 370, i32 4}
!152 = !{ptr @_rtl92e_phy_config_bb._entry.88, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @_rtl92e_phy_config_bb._entry_ptr.90, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.91, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 979, i32 2}
!156 = !{ptr @.str.92, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @_rtl92e_phy_switch_channel_work_item._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @_rtl92e_phy_switch_channel_work_item._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.94, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 981, i32 2}
!161 = !{ptr @_rtl92e_phy_switch_channel_work_item._entry.93, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @_rtl92e_phy_switch_channel_work_item._entry_ptr.95, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.97, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 986, i32 2}
!165 = !{ptr @_rtl92e_phy_switch_channel_work_item._entry.96, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @_rtl92e_phy_switch_channel_work_item._entry_ptr.98, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.99, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 816, i32 2}
!169 = !{ptr @.str.100, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @_rtl92e_phy_switch_channel_step._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @_rtl92e_phy_switch_channel_step._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.101, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 820, i32 19}
!174 = !{ptr @.str.102, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 848, i32 9}
!176 = !{ptr @.str.103, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 870, i32 9}
!178 = !{ptr @.str.104, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 892, i32 21}
!180 = distinct !{null, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 788, i32 19}
!182 = distinct !{null, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 788, i32 55}
!184 = distinct !{null, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 792, i32 19}
!186 = !{ptr @RF_CHANNEL_TABLE_ZEBRA, !187, !"RF_CHANNEL_TABLE_ZEBRA", i1 false, i1 false}
!187 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 17, i32 12}
!188 = !{ptr @.str.107, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 774, i32 20}
!190 = !{ptr @__func__._rtl92e_set_tx_power_level, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 774, i32 50}
!192 = !{ptr @.str.108, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1157, i32 2}
!194 = !{ptr @.str.109, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @_rtl92e_set_bw_mode_work_item._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @_rtl92e_set_bw_mode_work_item._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.110, !193, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.111, !193, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.112, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1185, i32 19}
!201 = !{ptr @.str.113, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1247, i32 20}
!203 = !{ptr @.str.115, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1255, i32 2}
!205 = !{ptr @_rtl92e_set_bw_mode_work_item._entry.114, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @_rtl92e_set_bw_mode_work_item._entry_ptr.116, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.117, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1063, i32 3}
!209 = !{ptr @.str.118, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @_rtl92e_cck_tx_power_track_bw_switch_tssi._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @_rtl92e_cck_tx_power_track_bw_switch_tssi._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.120, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1085, i32 3}
!214 = !{ptr @_rtl92e_cck_tx_power_track_bw_switch_tssi._entry.119, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @_rtl92e_cck_tx_power_track_bw_switch_tssi._entry_ptr.121, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.122, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1126, i32 3}
!218 = !{ptr @.str.123, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @_rtl92e_cck_tx_power_track_bw_switch_thermal._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @_rtl92e_cck_tx_power_track_bw_switch_thermal._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.125, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1133, i32 3}
!223 = !{ptr @_rtl92e_cck_tx_power_track_bw_switch_thermal._entry.124, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @_rtl92e_cck_tx_power_track_bw_switch_thermal._entry_ptr.126, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.127, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1419, i32 2}
!227 = !{ptr @.str.128, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @_rtl92e_set_rf_power_state._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @_rtl92e_set_rf_power_state._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.130, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1426, i32 4}
!232 = !{ptr @_rtl92e_set_rf_power_state._entry.129, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @_rtl92e_set_rf_power_state._entry_ptr.131, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.132, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1440, i32 10}
!236 = !{ptr @.str.134, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1484, i32 6}
!238 = !{ptr @_rtl92e_set_rf_power_state._entry.133, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @_rtl92e_set_rf_power_state._entry_ptr.135, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.137, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1492, i32 6}
!242 = !{ptr @_rtl92e_set_rf_power_state._entry.136, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @_rtl92e_set_rf_power_state._entry_ptr.138, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.140, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1501, i32 4}
!246 = !{ptr @_rtl92e_set_rf_power_state._entry.139, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @_rtl92e_set_rf_power_state._entry_ptr.141, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @_rtl92e_set_rf_power_state._entry.142, !249, !"_entry", i1 false, i1 false}
!249 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1510, i32 6}
!250 = !{ptr @_rtl92e_set_rf_power_state._entry_ptr.143, !249, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.145, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1518, i32 6}
!253 = !{ptr @_rtl92e_set_rf_power_state._entry.144, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @_rtl92e_set_rf_power_state._entry_ptr.146, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.147, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1540, i32 9}
!257 = !{ptr @.str.148, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1548, i32 20}
!259 = !{ptr @.str.150, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c", i32 1566, i32 2}
!261 = !{ptr @_rtl92e_set_rf_power_state._entry.149, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @_rtl92e_set_rf_power_state._entry_ptr.151, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{i32 1, !"wchar_size", i32 2}
!264 = !{i32 1, !"min_enum_size", i32 4}
!265 = !{i32 8, !"branch-target-enforcement", i32 0}
!266 = !{i32 8, !"sign-return-address", i32 0}
!267 = !{i32 8, !"sign-return-address-all", i32 0}
!268 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!269 = !{i32 7, !"uwtable", i32 1}
!270 = !{i32 7, !"frame-pointer", i32 2}
!271 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!272 = !{i32 0, i32 33}
!273 = !{i8 0, i8 2}
!274 = !{i64 2148205018, i64 2148205044, i64 2148205073, i64 2148205107, i64 2148205138, i64 2148205161}
!275 = !{i64 2148207483, i64 2148207509, i64 2148207538, i64 2148207572, i64 2148207603, i64 2148207626}
