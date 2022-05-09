; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dig_t = type { i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i32 }
%struct.drx_path_sel = type { i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd] }
%struct.sw_chnl_cmd = type { i32, i32, i32, i32 }
%struct.rt_hi_throughput = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capab_ele, %struct.ht_info_ele, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32, i8, i8, i8, i8 }>
%struct.ht_capab_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct.ht_info_ele = type { i8, [5 x i8], [16 x i8] }
%struct.dcmd_txcmd = type { i32, i32, i32 }
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

@dm_tx_bb_gain = dso_local constant { [37 x i32], [44 x i8] } { [37 x i32] [i32 2139095550, i32 2021655010, i32 1908408775, i32 1803551150, i32 1698693525, i32 1606418815, i32 1514144105, i32 1430258005, i32 1350566210, i32 1275068720, i32 1203765535, i32 1136656655, i32 1073742080, i32 1015021810, i32 956301540, i32 901775575, i32 851443915, i32 805306560, i32 759169205, i32 717226155, i32 679477410, i32 637534360, i32 603979920, i32 570425480, i32 536871040, i32 436207724, i32 478150770, i32 402653280, i32 427819110, i32 360710230, i32 650117211, i32 339738705, i32 608174161, i32 318767180, i32 301989960, i32 285212740, i32 268435520], [44 x i8] zeroinitializer }, align 32
@dm_cck_tx_bb_gain = dso_local constant { [23 x [8 x i8]], [40 x i8] } { [23 x [8 x i8]] [[8 x i8] c"65.%\1C\12\09\04", [8 x i8] c"32+#\1A\11\08\04", [8 x i8] c"0/)!\19\10\08\03", [8 x i8] c"--'\1F\18\0F\08\03", [8 x i8] c"+*%\1E\16\0E\07\03", [8 x i8] c"((\22\1C\15\0D\07\03", [8 x i8] c"&%!\1B\14\0D\06\03", [8 x i8] c"$#\1F\19\13\0C\06\03", [8 x i8] c"\22!\1D\18\11\0B\06\02", [8 x i8] c"  \1B\16\11\08\05\02", [8 x i8] c"\1F\1E\1A\15\10\0A\05\02", [8 x i8] c"\1D\1C\18\14\0F\0A\05\02", [8 x i8] c"\1B\1A\17\13\0E\09\04\02", [8 x i8] c"\1A\19\16\12\0D\09\04\02", [8 x i8] c"\18\17\15\11\0C\08\04\02", [8 x i8] c"\17\16\13\10\0C\08\04\02", [8 x i8] c"\16\15\12\0F\0B\07\04\01", [8 x i8] c"\14\14\11\0E\0B\07\03\02", [8 x i8] c"\13\13\10\0D\0A\06\03\01", [8 x i8] c"\12\12\0F\0C\09\06\03\01", [8 x i8] c"\11\11\0F\0C\09\06\03\01", [8 x i8] c"\10\10\0E\0B\08\05\03\01", [8 x i8] c"\0F\0F\0D\0B\08\05\03\01"], [40 x i8] zeroinitializer }, align 32
@dm_cck_tx_bb_gain_ch14 = dso_local constant { [23 x [8 x i8]], [40 x i8] } { [23 x [8 x i8]] [[8 x i8] c"65.\1B\00\00\00\00", [8 x i8] c"32+\19\00\00\00\00", [8 x i8] c"0/)\18\00\00\00\00", [8 x i8] c"--'\17\00\00\00\00", [8 x i8] c"+*%\15\00\00\00\00", [8 x i8] c"((\22\14\00\00\00\00", [8 x i8] c"&%!\13\00\00\00\00", [8 x i8] c"$#\1F\12\00\00\00\00", [8 x i8] c"\22!\1D\11\00\00\00\00", [8 x i8] c"  \1B\10\00\00\00\00", [8 x i8] c"\1F\1E\1A\0F\00\00\00\00", [8 x i8] c"\1D\1C\18\0E\00\00\00\00", [8 x i8] c"\1B\1A\17\0E\00\00\00\00", [8 x i8] c"\1A\19\16\0D\00\00\00\00", [8 x i8] c"\18\17\15\0C\00\00\00\00", [8 x i8] c"\17\16\13\0B\00\00\00\00", [8 x i8] c"\16\15\12\0B\00\00\00\00", [8 x i8] c"\14\14\11\0A\00\00\00\00", [8 x i8] c"\13\13\10\0A\00\00\00\00", [8 x i8] c"\12\12\0F\09\00\00\00\00", [8 x i8] c"\11\11\0F\09\00\00\00\00", [8 x i8] c"\10\10\0E\08\00\00\00\00", [8 x i8] c"\0F\0F\0D\08\00\00\00\00"], [40 x i8] zeroinitializer }, align 32
@rtl92e_dm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&priv->gpio_change_rf_wq)->work)\00", [43 x i8] zeroinitializer }, align 32
@rtl92e_dm_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&priv->gpio_change_rf_wq)->timer\00", [61 x i8] zeroinitializer }, align 32
@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@rtl92e_dm_restore_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017rtl819xE:<---- %s: driver is going to unload\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl92e_dm_restore_state\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/rtl8192e/rtl8192e/rtl_dm.c\00", [53 x i8] zeroinitializer }, align 32
@rtl92e_dm_restore_state._entry_ptr = internal global ptr @rtl92e_dm_restore_state._entry, section ".printk_index", align 4
@dm_digtable = dso_local global { %struct.dig_t, [52 x i8] } zeroinitializer, align 32
@rtl92e_dm_backup_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017rtl819xE:BBInitialGainBackup 0xc50 is %x\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtl92e_dm_backup_state\00", [41 x i8] zeroinitializer }, align 32
@rtl92e_dm_backup_state._entry_ptr = internal global ptr @rtl92e_dm_backup_state._entry, section ".printk_index", align 4
@rtl92e_dm_backup_state._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.5, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017rtl819xE:BBInitialGainBackup 0xc58 is %x\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@rtl92e_dm_backup_state._entry_ptr.10 = internal global ptr @rtl92e_dm_backup_state._entry.8, section ".printk_index", align 4
@rtl92e_dm_backup_state._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.5, i32 1260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017rtl819xE:BBInitialGainBackup 0xc60 is %x\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@rtl92e_dm_backup_state._entry_ptr.13 = internal global ptr @rtl92e_dm_backup_state._entry.11, section ".printk_index", align 4
@rtl92e_dm_backup_state._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.5, i32 1262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017rtl819xE:BBInitialGainBackup 0xc68 is %x\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@rtl92e_dm_backup_state._entry_ptr.16 = internal global ptr @rtl92e_dm_backup_state._entry.14, section ".printk_index", align 4
@rtl92e_dm_backup_state._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.5, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017rtl819xE:BBInitialGainBackup 0xa0a is %x\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@rtl92e_dm_backup_state._entry_ptr.19 = internal global ptr @rtl92e_dm_backup_state._entry.17, section ".printk_index", align 4
@DM_RxPathSelTable = dso_local global { %struct.drx_path_sel, [32 x i8] } zeroinitializer, align 32
@_rtl92e_dm_check_ac_dc_power.ac_dc_script = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"/etc/acpi/wireless-rtl-ac-dc-power.sh\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtl819xE\00", [23 x i8] zeroinitializer }, align 32
@__const._rtl92e_dm_check_ac_dc_power.argv = private unnamed_addr constant [3 x ptr] [ptr @_rtl92e_dm_check_ac_dc_power.ac_dc_script, ptr @.str.20, ptr null], align 4
@_rtl92e_dm_check_ac_dc_power.envp = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOME=/\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TERM=linux\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PATH=/usr/bin:/bin\00", [45 x i8] zeroinitializer }, align 32
@_rtl92e_dm_check_ac_dc_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017rtl819xE:GPIOChangeRFWorkItemCallBack(): Silent Reset!!!!!!!\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"_rtl92e_dm_check_ac_dc_power\00", [35 x i8] zeroinitializer }, align 32
@_rtl92e_dm_check_ac_dc_power._entry_ptr = internal global ptr @_rtl92e_dm_check_ac_dc_power._entry, section ".printk_index", align 4
@_rtl92e_dm_check_rate_adaptive.ping_rssi_state = internal global { i1, [31 x i8] } zeroinitializer, align 32
@_rtl92e_dm_check_rate_adaptive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.26, ptr @.str.5, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"_rtl92e_dm_check_rate_adaptive\00", [33 x i8] zeroinitializer }, align 32
@_rtl92e_dm_check_rate_adaptive._entry_ptr = internal global ptr @_rtl92e_dm_check_rate_adaptive._entry, section ".printk_index", align 4
@_rtl92e_dm_check_rate_adaptive._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.5, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017rtl819xE:currentRATR = %x, targetRATR = %x\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@_rtl92e_dm_check_rate_adaptive._entry_ptr.29 = internal global ptr @_rtl92e_dm_check_rate_adaptive._entry.27, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017rtl819xE:%s()\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"_rtl92e_dm_tx_power_tracking_callback_tssi\00", [53 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.5, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017rtl819xE:powerlevelOFDM24G = %x\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.34 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.32, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.5, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017rtl819xE:we are in silent reset progress, so return\0A\0A\00", [40 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.37 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.35, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.5, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017rtl819xE:we are in power save, so return\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.40 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.38, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.31, ptr @.str.5, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017rtl819xE:TSSI_report_value = %d\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.43 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.41, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.31, ptr @.str.5, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017rtl819xE:we filted this data\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.46 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.44, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.31, ptr @.str.5, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017rtl819xE:Avg_TSSI_Meas_from_driver = %d\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.49 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.47, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.31, ptr @.str.5, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017rtl819xE:TSSI_13dBm = %d\0A\0A\00", [35 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.52 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.50, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.31, ptr @.str.5, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017rtl819xE:tx power track is done\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.55 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.53, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.31, ptr @.str.5, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017rtl819xE:priv->rfa_txpowertrackingindex = %d\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.58 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.56, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.31, ptr @.str.5, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017rtl819xE:priv->rfa_txpowertrackingindex_real = %d\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.61 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.59, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.31, ptr @.str.5, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017rtl819xE:priv->CCKPresentAttentuation_difference = %d\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.64 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.62, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.31, ptr @.str.5, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017rtl819xE:priv->CCKPresentAttentuation = %d\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.67 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.65, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.31, ptr @.str.5, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.69 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.68, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.31, ptr @.str.5, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.71 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.70, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.31, ptr @.str.5, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.73 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.72, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.31, ptr @.str.5, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.75 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.74, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.31, ptr @.str.5, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017rtl819xE:tx power track--->limited\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.78 = internal global ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.76, section ".printk_index", align 4
@OFDMSwingTable = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 2139095550, i32 1908408775, i32 1698693525, i32 1514144105, i32 1350566210, i32 1203765535, i32 1073742080, i32 956301540, i32 851443915, i32 759169205, i32 679477410, i32 603979920, i32 536871040, i32 478150770, i32 427819110, i32 650117211, i32 608174161, i32 301989960, i32 268435520], [52 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_cb_thermal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.5, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017rtl819xE:Initial reg0x%x = 0x%x, OFDM_index = 0x%x\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"_rtl92e_dm_tx_power_tracking_cb_thermal\00", [56 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr = internal global ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry, section ".printk_index", align 4
@CCKSwingTable_Ch1_Ch13 = internal constant { [12 x [8 x i8]], [32 x i8] } { [12 x [8 x i8]] [[8 x i8] c"65.%\1C\12\09\04", [8 x i8] c"0/)!\19\10\08\03", [8 x i8] c"+*%\1E\16\0E\07\03", [8 x i8] c"&%!\1B\14\0D\06\03", [8 x i8] c"\22!\1D\18\11\0B\06\02", [8 x i8] c"\1F\1E\1A\15\10\0A\05\02", [8 x i8] c"\1B\1A\17\13\0E\09\04\02", [8 x i8] c"\18\17\15\11\0C\08\04\02", [8 x i8] c"\16\15\12\0F\0B\07\04\01", [8 x i8] c"\13\13\10\0D\0A\06\03\01", [8 x i8] c"\11\11\0F\0C\09\06\03\01", [8 x i8] c"\0F\0F\0D\0B\08\05\03\01"], [32 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_cb_thermal._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.5, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017rtl819xE:Initial reg0x%x = 0x%x, CCK_index = 0x%x\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr.83 = internal global ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.81, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_cb_thermal._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.5, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017rtl819xE:Readback ThermalMeterA = %d\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr.86 = internal global ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.84, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_cb_thermal._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.5, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017rtl819xE:Valid ThermalMeterA = %d\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr.89 = internal global ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.87, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_cb_thermal._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.80, ptr @.str.5, i32 899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017rtl819xE:Record_CCK_20Mindex / Record_CCK_40Mindex = %d / %d.\0A\0A\00", [62 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr.92 = internal global ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.90, section ".printk_index", align 4
@_rtl92e_dm_tx_power_tracking_cb_thermal._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.80, ptr @.str.5, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017rtl819xE:Update OFDMSwing[%d] = 0x%x\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr.95 = internal global ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.93, section ".printk_index", align 4
@_rtl92e_dm_init_tx_power_tracking_thermal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.5, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017rtl819xE:pMgntInfo->bTXPowerTracking = %d\0A\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"_rtl92e_dm_init_tx_power_tracking_thermal\00", [54 x i8] zeroinitializer }, align 32
@_rtl92e_dm_init_tx_power_tracking_thermal._entry_ptr = internal global ptr @_rtl92e_dm_init_tx_power_tracking_thermal._entry, section ".printk_index", align 4
@_rtl92e_dm_check_tx_power_tracking_tssi.tx_power_track_counter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_dm_check_tx_power_tracking_tssi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.98, ptr @.str.5, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"_rtl92e_dm_check_tx_power_tracking_tssi\00", [56 x i8] zeroinitializer }, align 32
@_rtl92e_dm_check_tx_power_tracking_tssi._entry_ptr = internal global ptr @_rtl92e_dm_check_tx_power_tracking_tssi._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@_rtl92e_dm_check_tx_power_tracking_thermal.TM_Trigger = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"===============>Schedule TxPowerTrackingWorkItem\0A\00", [46 x i8] zeroinitializer }, align 32
@_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.5, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017rtl819xE:CCK not chnl 14, reg 0x%x = 0x%x\0A\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"_rtl92e_dm_cck_tx_power_adjust_thermal_meter\00", [51 x i8] zeroinitializer }, align 32
@_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr = internal global ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry, section ".printk_index", align 4
@_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.5, i32 1099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr.103 = internal global ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.102, section ".printk_index", align 4
@_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.5, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr.105 = internal global ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.104, section ".printk_index", align 4
@CCKSwingTable_Ch14 = internal constant { [12 x [8 x i8]], [32 x i8] } { [12 x [8 x i8]] [[8 x i8] c"65.\1B\00\00\00\00", [8 x i8] c"0/)\18\00\00\00\00", [8 x i8] c"+*%\15\00\00\00\00", [8 x i8] c"&%!\13\00\00\00\00", [8 x i8] c"\22!\1D\11\00\00\00\00", [8 x i8] c"\1F\1E\1A\0F\00\00\00\00", [8 x i8] c"\1B\1A\17\0E\00\00\00\00", [8 x i8] c"\18\17\15\0C\00\00\00\00", [8 x i8] c"\16\15\12\0B\00\00\00\00", [8 x i8] c"\13\13\10\0A\00\00\00\00", [8 x i8] c"\11\11\0F\09\00\00\00\00", [8 x i8] c"\0F\0F\0D\08\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.101, ptr @.str.5, i32 1113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017rtl819xE:CCK chnl 14, reg 0x%x = 0x%x\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr.108 = internal global ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.106, section ".printk_index", align 4
@_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.101, ptr @.str.5, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr.110 = internal global ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.109, section ".printk_index", align 4
@_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.101, ptr @.str.5, i32 1126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr.112 = internal global ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.111, section ".printk_index", align 4
@_rtl92e_dm_tx_power_reset_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.5, i32 1144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017rtl819xE:Start Reset Recovery ==>\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"_rtl92e_dm_tx_power_reset_recovery\00", [61 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_reset_recovery._entry_ptr = internal global ptr @_rtl92e_dm_tx_power_reset_recovery._entry, section ".printk_index", align 4
@_rtl92e_dm_tx_power_reset_recovery._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.5, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017rtl819xE:Reset Recovery: Fill in 0xc80 is %08x\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_reset_recovery._entry_ptr.117 = internal global ptr @_rtl92e_dm_tx_power_reset_recovery._entry.115, section ".printk_index", align 4
@_rtl92e_dm_tx_power_reset_recovery._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.114, ptr @.str.5, i32 1151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017rtl819xE:Reset Recovery: Fill in RFA_txPowerTrackingIndex is %x\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_reset_recovery._entry_ptr.120 = internal global ptr @_rtl92e_dm_tx_power_reset_recovery._entry.118, section ".printk_index", align 4
@_rtl92e_dm_tx_power_reset_recovery._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.114, ptr @.str.5, i32 1154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017rtl819xE:Reset Recovery : RF A I/Q Amplify Gain is %d\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_reset_recovery._entry_ptr.123 = internal global ptr @_rtl92e_dm_tx_power_reset_recovery._entry.121, section ".printk_index", align 4
@_rtl92e_dm_tx_power_reset_recovery._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.114, ptr @.str.5, i32 1157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017rtl819xE:Reset Recovery: CCK Attenuation is %d dB\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_reset_recovery._entry_ptr.126 = internal global ptr @_rtl92e_dm_tx_power_reset_recovery._entry.124, section ".printk_index", align 4
@_rtl92e_dm_tx_power_reset_recovery._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.114, ptr @.str.5, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017rtl819xE:Reset Recovery: Fill in 0xc90 is %08x\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_reset_recovery._entry_ptr.129 = internal global ptr @_rtl92e_dm_tx_power_reset_recovery._entry.127, section ".printk_index", align 4
@_rtl92e_dm_tx_power_reset_recovery._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.114, ptr @.str.5, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017rtl819xE:Reset Recovery: Fill in RFC_txPowerTrackingIndex is %x\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_reset_recovery._entry_ptr.132 = internal global ptr @_rtl92e_dm_tx_power_reset_recovery._entry.130, section ".printk_index", align 4
@_rtl92e_dm_tx_power_reset_recovery._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.114, ptr @.str.5, i32 1169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017rtl819xE:Reset Recovery : RF C I/Q Amplify Gain is %d\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@_rtl92e_dm_tx_power_reset_recovery._entry_ptr.135 = internal global ptr @_rtl92e_dm_tx_power_reset_recovery._entry.133, section ".printk_index", align 4
@_rtl92e_dm_bb_initialgain_restore._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.5, i32 1223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017rtl819xE:dm_BBInitialGainRestore 0xc50 is %x\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"_rtl92e_dm_bb_initialgain_restore\00", [62 x i8] zeroinitializer }, align 32
@_rtl92e_dm_bb_initialgain_restore._entry_ptr = internal global ptr @_rtl92e_dm_bb_initialgain_restore._entry, section ".printk_index", align 4
@_rtl92e_dm_bb_initialgain_restore._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.5, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017rtl819xE:dm_BBInitialGainRestore 0xc58 is %x\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@_rtl92e_dm_bb_initialgain_restore._entry_ptr.140 = internal global ptr @_rtl92e_dm_bb_initialgain_restore._entry.138, section ".printk_index", align 4
@_rtl92e_dm_bb_initialgain_restore._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.137, ptr @.str.5, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017rtl819xE:dm_BBInitialGainRestore 0xc60 is %x\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@_rtl92e_dm_bb_initialgain_restore._entry_ptr.143 = internal global ptr @_rtl92e_dm_bb_initialgain_restore._entry.141, section ".printk_index", align 4
@_rtl92e_dm_bb_initialgain_restore._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.137, ptr @.str.5, i32 1229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017rtl819xE:dm_BBInitialGainRestore 0xc68 is %x\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@_rtl92e_dm_bb_initialgain_restore._entry_ptr.146 = internal global ptr @_rtl92e_dm_bb_initialgain_restore._entry.144, section ".printk_index", align 4
@_rtl92e_dm_bb_initialgain_restore._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.137, ptr @.str.5, i32 1231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017rtl819xE:dm_BBInitialGainRestore 0xa0a is %x\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@_rtl92e_dm_bb_initialgain_restore._entry_ptr.149 = internal global ptr @_rtl92e_dm_bb_initialgain_restore._entry.147, section ".printk_index", align 4
@_rtl92e_dm_ctrl_initgain_byrssi_false_alarm.reset_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_dm_ctrl_initgain_byrssi_driver.fw_dig = internal global { i8, [31 x i8] } zeroinitializer, align 32
@_rtl92e_dm_initial_gain.initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@_rtl92e_dm_initial_gain.force_write = internal global { i1, [31 x i8] } zeroinitializer, align 32
@_rtl92e_dm_initial_gain.reset_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_dm_pd_th.initialized = internal global { i8, [31 x i8] } zeroinitializer, align 32
@_rtl92e_dm_pd_th.force_write = internal global { i1, [31 x i8] } zeroinitializer, align 32
@_rtl92e_dm_pd_th.reset_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_dm_cs_ratio.initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@_rtl92e_dm_cs_ratio.force_write = internal global { i1, [31 x i8] } zeroinitializer, align 32
@_rtl92e_dm_cs_ratio.reset_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_dm_check_edca_turbo.lastTxOkCnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_dm_check_edca_turbo.lastRxOkCnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@edca_setting_UL = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 6177570, i32 42063, i32 6202447, i32 6177570, i32 6308642, i32 6177570, i32 6177570, i32 6177586, i32 0, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@edca_setting_DL_GMode = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 6177570, i32 6177570, i32 6177570, i32 6177570, i32 6308642, i32 42063, i32 6177570, i32 6177570, i32 0, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@edca_setting_DL = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 6177570, i32 6177570, i32 6202447, i32 6177570, i32 6308642, i32 42063, i32 6177570, i32 6177586, i32 0, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@_rtl92e_dm_cts_to_self.lastTxOkCnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_dm_cts_to_self.lastRxOkCnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_dm_check_rf_ctrl_gpio.RadioPowerPath = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"/etc/acpi/events/RadioPower.sh\00", [33 x i8] zeroinitializer }, align 32
@_rtl92e_dm_check_rf_ctrl_gpio.envp = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr null], [16 x i8] zeroinitializer }, align 32
@_rtl92e_dm_check_rf_ctrl_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.5, i32 1823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017rtl819xE:gpiochangeRF  - HW Radio ON\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"_rtl92e_dm_check_rf_ctrl_gpio\00", [34 x i8] zeroinitializer }, align 32
@_rtl92e_dm_check_rf_ctrl_gpio._entry_ptr = internal global ptr @_rtl92e_dm_check_rf_ctrl_gpio._entry, section ".printk_index", align 4
@.str.152 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gpiochangeRF  - HW Radio ON\0A\00", [35 x i8] zeroinitializer }, align 32
@_rtl92e_dm_check_rf_ctrl_gpio._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.151, ptr @.str.5, i32 1828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017rtl819xE:gpiochangeRF  - HW Radio OFF\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@_rtl92e_dm_check_rf_ctrl_gpio._entry_ptr.155 = internal global ptr @_rtl92e_dm_check_rf_ctrl_gpio._entry.153, section ".printk_index", align 4
@.str.156 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gpiochangeRF  - HW Radio OFF\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RFOFF\00", [26 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RFON\00", [27 x i8] zeroinitializer }, align 32
@_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@_rtl92e_dm_rx_path_sel_byrssi.cck_Rx_Path_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@_rtl92e_dm_init_fsync.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.159 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&priv->fsync_timer)\00", [43 x i8] zeroinitializer }, align 32
@_rtl92e_dm_fsync_timer_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.5, i32 2179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017rtl819xE:rateRecord %d rateCount %d, rateCountdiff %d bSwitchFsync %d\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"_rtl92e_dm_fsync_timer_callback\00", [32 x i8] zeroinitializer }, align 32
@_rtl92e_dm_fsync_timer_callback._entry_ptr = internal global ptr @_rtl92e_dm_fsync_timer_callback._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@_rtl92e_dm_fsync_timer_callback._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.5, i32 2223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017rtl819xE:ContinueDiffCount %d\0A\0A\00", [62 x i8] zeroinitializer }, align 32
@_rtl92e_dm_fsync_timer_callback._entry_ptr.164 = internal global ptr @_rtl92e_dm_fsync_timer_callback._entry.162, section ".printk_index", align 4
@_rtl92e_dm_fsync_timer_callback._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.5, i32 2227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92e_dm_fsync_timer_callback._entry_ptr.166 = internal global ptr @_rtl92e_dm_fsync_timer_callback._entry.165, section ".printk_index", align 4
@_rtl92e_dm_check_fsync.reg_c38_State = internal global { i8, [31 x i8] } zeroinitializer, align 32
@_rtl92e_dm_check_fsync.reset_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_dm_check_fsync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.5, i32 2322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017rtl819xE:RSSI %d TimeInterval %d MultipleTimeInterval %d\0A\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_rtl92e_dm_check_fsync\00", [41 x i8] zeroinitializer }, align 32
@_rtl92e_dm_check_fsync._entry_ptr = internal global ptr @_rtl92e_dm_check_fsync._entry, section ".printk_index", align 4
@_rtl92e_dm_check_fsync._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.5, i32 2327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\017rtl819xE:RateBitmap 0x%x FirstDiffRateThreshold %d SecondDiffRateThreshold %d\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@_rtl92e_dm_check_fsync._entry_ptr.171 = internal global ptr @_rtl92e_dm_check_fsync._entry.169, section ".printk_index", align 4
@_rtl92e_dm_start_hw_fsync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.5, i32 2235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017rtl819xE:%s\0A\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_rtl92e_dm_start_hw_fsync\00", [38 x i8] zeroinitializer }, align 32
@_rtl92e_dm_start_hw_fsync._entry_ptr = internal global ptr @_rtl92e_dm_start_hw_fsync._entry, section ".printk_index", align 4
@_rtl92e_dm_end_sw_fsync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.174, ptr @.str.5, i32 2258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_rtl92e_dm_end_sw_fsync\00", [40 x i8] zeroinitializer }, align 32
@_rtl92e_dm_end_sw_fsync._entry_ptr = internal global ptr @_rtl92e_dm_end_sw_fsync._entry, section ".printk_index", align 4
@_rtl92e_dm_start_sw_fsync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.175, ptr @.str.5, i32 2279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_rtl92e_dm_start_sw_fsync\00", [38 x i8] zeroinitializer }, align 32
@_rtl92e_dm_start_sw_fsync._entry_ptr = internal global ptr @_rtl92e_dm_start_sw_fsync._entry, section ".printk_index", align 4
@_rtl92e_dm_end_hw_fsync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.176, ptr @.str.5, i32 2247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_rtl92e_dm_end_hw_fsync\00", [40 x i8] zeroinitializer }, align 32
@_rtl92e_dm_end_hw_fsync._entry_ptr = internal global ptr @_rtl92e_dm_end_hw_fsync._entry, section ".printk_index", align 4
@_rtl92e_dm_dynamic_tx_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.5, i32 2465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017rtl819xE:priv->undecorated_smoothed_pwdb = %ld\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"_rtl92e_dm_dynamic_tx_power\00", [36 x i8] zeroinitializer }, align 32
@_rtl92e_dm_dynamic_tx_power._entry_ptr = internal global ptr @_rtl92e_dm_dynamic_tx_power._entry, section ".printk_index", align 4
@_rtl92e_dm_dynamic_tx_power._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.178, ptr @.str.5, i32 2488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017rtl819xE:SetTxPowerLevel8190()  channel = %d\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@_rtl92e_dm_dynamic_tx_power._entry_ptr.181 = internal global ptr @_rtl92e_dm_dynamic_tx_power._entry.179, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.186 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.191 = internal global [14 x i64] [i64 12, i64 32, i64 15, i64 17, i64 19, i64 22, i64 24, i64 27, i64 31, i64 34, i64 38, i64 43, i64 48, i64 54]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.195 = private unnamed_addr constant [14 x i8] c"dm_tx_bb_gain\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 49, i32 11 }
@___asan_gen_.198 = private unnamed_addr constant [18 x i8] c"dm_cck_tx_bb_gain\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 89, i32 10 }
@___asan_gen_.201 = private unnamed_addr constant [23 x i8] c"dm_cck_tx_bb_gain_ch14\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 115, i32 10 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 223, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1179, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [12 x i8] c"dm_digtable\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 145, i32 14 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1255, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1257, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1259, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1261, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1263, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [18 x i8] c"DM_RxPathSelTable\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 147, i32 21 }
@___asan_gen_.267 = private unnamed_addr constant [13 x i8] c"ac_dc_script\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 263, i32 20 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 264, i32 40 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 265, i32 15 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 265, i32 25 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 266, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 267, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 271, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [47 x i8] c"_rtl92e_dm_check_rate_adaptive.ping_rssi_state\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 336, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 426, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 631, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 640, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 659, i32 6 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 666, i32 6 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 692, i32 5 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 705, i32 5 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 716, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 720, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 732, i32 5 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 734, i32 5 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 737, i32 5 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 740, i32 5 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 743, i32 5 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 788, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 791, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 794, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 797, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 806, i32 5 }
@___asan_gen_.406 = private unnamed_addr constant [15 x i8] c"OFDMSwingTable\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 470, i32 12 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 837, i32 5 }
@___asan_gen_.418 = private unnamed_addr constant [23 x i8] c"CCKSwingTable_Ch1_Ch13\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 492, i32 11 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 848, i32 5 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 860, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 865, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 897, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 922, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 963, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant [23 x i8] c"tx_power_track_counter\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 980, i32 13 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 982, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant [54 x i8] c"_rtl92e_dm_check_tx_power_tracking_thermal.TM_Trigger\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1023, i32 19 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1089, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1097, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1104, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant [19 x i8] c"CCKSwingTable_Ch14\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 507, i32 11 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1112, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1119, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1125, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1144, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1147, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1149, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1152, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1155, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1162, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1164, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1167, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1222, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1224, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1226, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1228, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1230, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1366, i32 13 }
@___asan_gen_.590 = private unnamed_addr constant [18 x i8] c"reset_cnt_highpwr\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1454, i32 13 }
@___asan_gen_.593 = private unnamed_addr constant [7 x i8] c"fw_dig\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1333, i32 12 }
@___asan_gen_.596 = private unnamed_addr constant [36 x i8] c"_rtl92e_dm_initial_gain.initialized\00", align 1
@___asan_gen_.597 = private unnamed_addr constant [36 x i8] c"_rtl92e_dm_initial_gain.force_write\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1497, i32 13 }
@___asan_gen_.601 = private unnamed_addr constant [12 x i8] c"initialized\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1552, i32 12 }
@___asan_gen_.604 = private unnamed_addr constant [29 x i8] c"_rtl92e_dm_pd_th.force_write\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1553, i32 13 }
@___asan_gen_.608 = private unnamed_addr constant [32 x i8] c"_rtl92e_dm_cs_ratio.initialized\00", align 1
@___asan_gen_.609 = private unnamed_addr constant [32 x i8] c"_rtl92e_dm_cs_ratio.force_write\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1621, i32 13 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1675, i32 23 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1676, i32 23 }
@___asan_gen_.619 = private unnamed_addr constant [16 x i8] c"edca_setting_UL\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 38, i32 12 }
@___asan_gen_.622 = private unnamed_addr constant [22 x i8] c"edca_setting_DL_GMode\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 27, i32 12 }
@___asan_gen_.625 = private unnamed_addr constant [16 x i8] c"edca_setting_DL\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 16, i32 12 }
@___asan_gen_.628 = private unnamed_addr constant [12 x i8] c"lastTxOkCnt\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1763, i32 23 }
@___asan_gen_.631 = private unnamed_addr constant [12 x i8] c"lastRxOkCnt\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1764, i32 23 }
@___asan_gen_.634 = private unnamed_addr constant [15 x i8] c"RadioPowerPath\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1804, i32 20 }
@___asan_gen_.637 = private unnamed_addr constant [5 x i8] c"envp\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1805, i32 15 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1823, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1824, i32 20 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1828, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1829, i32 20 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1839, i32 14 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1841, i32 14 }
@___asan_gen_.667 = private unnamed_addr constant [16 x i8] c"disabled_rf_cnt\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1907, i32 12 }
@___asan_gen_.670 = private unnamed_addr constant [54 x i8] c"_rtl92e_dm_rx_path_sel_byrssi.cck_Rx_Path_initialized\00", align 1
@___asan_gen_.671 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2114, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2176, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2223, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2224, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant [14 x i8] c"reg_c38_State\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2315, i32 12 }
@___asan_gen_.698 = private unnamed_addr constant [10 x i8] c"reset_cnt\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2316, i32 13 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2318, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2323, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2235, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2258, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2279, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2247, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2464, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.755 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.756 = private constant [46 x i8] c"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2487, i32 3 }
@llvm.compiler.used = appending global [260 x ptr] [ptr @_rtl92e_dm_bb_initialgain_restore._entry, ptr @_rtl92e_dm_bb_initialgain_restore._entry.138, ptr @_rtl92e_dm_bb_initialgain_restore._entry.141, ptr @_rtl92e_dm_bb_initialgain_restore._entry.144, ptr @_rtl92e_dm_bb_initialgain_restore._entry.147, ptr @_rtl92e_dm_bb_initialgain_restore._entry_ptr, ptr @_rtl92e_dm_bb_initialgain_restore._entry_ptr.140, ptr @_rtl92e_dm_bb_initialgain_restore._entry_ptr.143, ptr @_rtl92e_dm_bb_initialgain_restore._entry_ptr.146, ptr @_rtl92e_dm_bb_initialgain_restore._entry_ptr.149, ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry, ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.102, ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.104, ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.106, ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.109, ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.111, ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr, ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr.103, ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr.105, ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr.108, ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr.110, ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr.112, ptr @_rtl92e_dm_check_ac_dc_power._entry, ptr @_rtl92e_dm_check_ac_dc_power._entry_ptr, ptr @_rtl92e_dm_check_fsync._entry, ptr @_rtl92e_dm_check_fsync._entry.169, ptr @_rtl92e_dm_check_fsync._entry_ptr, ptr @_rtl92e_dm_check_fsync._entry_ptr.171, ptr @_rtl92e_dm_check_rate_adaptive._entry, ptr @_rtl92e_dm_check_rate_adaptive._entry.27, ptr @_rtl92e_dm_check_rate_adaptive._entry_ptr, ptr @_rtl92e_dm_check_rate_adaptive._entry_ptr.29, ptr @_rtl92e_dm_check_rf_ctrl_gpio._entry, ptr @_rtl92e_dm_check_rf_ctrl_gpio._entry.153, ptr @_rtl92e_dm_check_rf_ctrl_gpio._entry_ptr, ptr @_rtl92e_dm_check_rf_ctrl_gpio._entry_ptr.155, ptr @_rtl92e_dm_check_tx_power_tracking_tssi._entry, ptr @_rtl92e_dm_check_tx_power_tracking_tssi._entry_ptr, ptr @_rtl92e_dm_dynamic_tx_power._entry, ptr @_rtl92e_dm_dynamic_tx_power._entry.179, ptr @_rtl92e_dm_dynamic_tx_power._entry_ptr, ptr @_rtl92e_dm_dynamic_tx_power._entry_ptr.181, ptr @_rtl92e_dm_end_hw_fsync._entry, ptr @_rtl92e_dm_end_hw_fsync._entry_ptr, ptr @_rtl92e_dm_end_sw_fsync._entry, ptr @_rtl92e_dm_end_sw_fsync._entry_ptr, ptr @_rtl92e_dm_fsync_timer_callback._entry, ptr @_rtl92e_dm_fsync_timer_callback._entry.162, ptr @_rtl92e_dm_fsync_timer_callback._entry.165, ptr @_rtl92e_dm_fsync_timer_callback._entry_ptr, ptr @_rtl92e_dm_fsync_timer_callback._entry_ptr.164, ptr @_rtl92e_dm_fsync_timer_callback._entry_ptr.166, ptr @_rtl92e_dm_init_tx_power_tracking_thermal._entry, ptr @_rtl92e_dm_init_tx_power_tracking_thermal._entry_ptr, ptr @_rtl92e_dm_start_hw_fsync._entry, ptr @_rtl92e_dm_start_hw_fsync._entry_ptr, ptr @_rtl92e_dm_start_sw_fsync._entry, ptr @_rtl92e_dm_start_sw_fsync._entry_ptr, ptr @_rtl92e_dm_tx_power_reset_recovery._entry, ptr @_rtl92e_dm_tx_power_reset_recovery._entry.115, ptr @_rtl92e_dm_tx_power_reset_recovery._entry.118, ptr @_rtl92e_dm_tx_power_reset_recovery._entry.121, ptr @_rtl92e_dm_tx_power_reset_recovery._entry.124, ptr @_rtl92e_dm_tx_power_reset_recovery._entry.127, ptr @_rtl92e_dm_tx_power_reset_recovery._entry.130, ptr @_rtl92e_dm_tx_power_reset_recovery._entry.133, ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr, ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr.117, ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr.120, ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr.123, ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr.126, ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr.129, ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr.132, ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr.135, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.32, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.35, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.38, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.41, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.44, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.47, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.50, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.53, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.56, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.59, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.62, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.65, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.68, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.70, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.72, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.74, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.76, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.34, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.37, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.40, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.43, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.46, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.49, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.52, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.55, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.58, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.61, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.64, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.67, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.69, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.71, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.73, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.75, ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.78, ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry, ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.81, ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.84, ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.87, ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.90, ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.93, ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr, ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr.83, ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr.86, ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr.89, ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr.92, ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr.95, ptr @rtl92e_dm_backup_state._entry, ptr @rtl92e_dm_backup_state._entry.11, ptr @rtl92e_dm_backup_state._entry.14, ptr @rtl92e_dm_backup_state._entry.17, ptr @rtl92e_dm_backup_state._entry.8, ptr @rtl92e_dm_backup_state._entry_ptr, ptr @rtl92e_dm_backup_state._entry_ptr.10, ptr @rtl92e_dm_backup_state._entry_ptr.13, ptr @rtl92e_dm_backup_state._entry_ptr.16, ptr @rtl92e_dm_backup_state._entry_ptr.19, ptr @rtl92e_dm_restore_state._entry, ptr @rtl92e_dm_restore_state._entry_ptr, ptr @dm_tx_bb_gain, ptr @dm_cck_tx_bb_gain, ptr @dm_cck_tx_bb_gain_ch14, ptr @rtl92e_dm_init.__key, ptr @.str, ptr @rtl92e_dm_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dm_digtable, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @DM_RxPathSelTable, ptr @_rtl92e_dm_check_ac_dc_power.ac_dc_script, ptr @.str.20, ptr @_rtl92e_dm_check_ac_dc_power.envp, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @_rtl92e_dm_check_rate_adaptive.ping_rssi_state, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.77, ptr @OFDMSwingTable, ptr @.str.79, ptr @.str.80, ptr @CCKSwingTable_Ch1_Ch13, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @_rtl92e_dm_check_tx_power_tracking_tssi.tx_power_track_counter, ptr @.str.98, ptr @_rtl92e_dm_check_tx_power_tracking_thermal.TM_Trigger, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @CCKSwingTable_Ch14, ptr @.str.107, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @_rtl92e_dm_ctrl_initgain_byrssi_false_alarm.reset_cnt, ptr @_rtl92e_dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr, ptr @_rtl92e_dm_ctrl_initgain_byrssi_driver.fw_dig, ptr @_rtl92e_dm_initial_gain.initialized, ptr @_rtl92e_dm_initial_gain.force_write, ptr @_rtl92e_dm_initial_gain.reset_cnt, ptr @_rtl92e_dm_pd_th.initialized, ptr @_rtl92e_dm_pd_th.force_write, ptr @_rtl92e_dm_pd_th.reset_cnt, ptr @_rtl92e_dm_cs_ratio.initialized, ptr @_rtl92e_dm_cs_ratio.force_write, ptr @_rtl92e_dm_cs_ratio.reset_cnt, ptr @_rtl92e_dm_check_edca_turbo.lastTxOkCnt, ptr @_rtl92e_dm_check_edca_turbo.lastRxOkCnt, ptr @edca_setting_UL, ptr @edca_setting_DL_GMode, ptr @edca_setting_DL, ptr @_rtl92e_dm_cts_to_self.lastTxOkCnt, ptr @_rtl92e_dm_cts_to_self.lastRxOkCnt, ptr @_rtl92e_dm_check_rf_ctrl_gpio.RadioPowerPath, ptr @_rtl92e_dm_check_rf_ctrl_gpio.envp, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, ptr @_rtl92e_dm_rx_path_sel_byrssi.cck_Rx_Path_initialized, ptr @_rtl92e_dm_init_fsync.__key, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @_rtl92e_dm_check_fsync.reg_c38_State, ptr @_rtl92e_dm_check_fsync.reset_cnt, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.180], section "llvm.metadata"
@0 = internal global [193 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_tx_bb_gain to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_cck_tx_bb_gain to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_cck_tx_bb_gain_ch14 to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_dm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_dm_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_dm_restore_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_digtable to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_dm_backup_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_dm_backup_state._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_dm_backup_state._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_dm_backup_state._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_dm_backup_state._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DM_RxPathSelTable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_ac_dc_power.ac_dc_script to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_ac_dc_power.envp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_ac_dc_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_rate_adaptive.ping_rssi_state to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_rate_adaptive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_rate_adaptive._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OFDMSwingTable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CCKSwingTable_Ch1_Ch13 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_init_tx_power_tracking_thermal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_tx_power_tracking_tssi.tx_power_track_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_tx_power_tracking_tssi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_tx_power_tracking_thermal.TM_Trigger to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CCKSwingTable_Ch14 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_reset_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_reset_recovery._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_reset_recovery._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_reset_recovery._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_reset_recovery._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_reset_recovery._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_reset_recovery._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_tx_power_reset_recovery._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_bb_initialgain_restore._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_bb_initialgain_restore._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_bb_initialgain_restore._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_bb_initialgain_restore._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_bb_initialgain_restore._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_ctrl_initgain_byrssi_false_alarm.reset_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_ctrl_initgain_byrssi_driver.fw_dig to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_initial_gain.initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_initial_gain.force_write to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_initial_gain.reset_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_pd_th.initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_pd_th.force_write to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_pd_th.reset_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_cs_ratio.initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_cs_ratio.force_write to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_cs_ratio.reset_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_edca_turbo.lastTxOkCnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_edca_turbo.lastRxOkCnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edca_setting_UL to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edca_setting_DL_GMode to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edca_setting_DL to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_cts_to_self.lastTxOkCnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_cts_to_self.lastRxOkCnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_rf_ctrl_gpio.RadioPowerPath to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_rf_ctrl_gpio.envp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_rf_ctrl_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_rf_ctrl_gpio._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_rx_path_sel_byrssi.cck_Rx_Path_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_init_fsync.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_fsync_timer_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_fsync_timer_callback._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_fsync_timer_callback._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_fsync.reg_c38_State to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_fsync.reset_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_fsync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_check_fsync._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_start_hw_fsync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_end_sw_fsync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_start_sw_fsync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_end_hw_fsync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_dynamic_tx_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_dm_dynamic_tx_power._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_dm_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %DM_Type = getelementptr i8, ptr %dev, i32 36013
  %0 = ptrtoint ptr %DM_Type to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %DM_Type, align 1
  %undecorated_smoothed_pwdb = getelementptr i8, ptr %dev, i32 36028
  %1 = ptrtoint ptr %undecorated_smoothed_pwdb to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %undecorated_smoothed_pwdb, align 8
  %rtllib.i = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib.i, align 8
  %bdynamic_txpower_enable.i = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 143
  %4 = ptrtoint ptr %bdynamic_txpower_enable.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %bdynamic_txpower_enable.i, align 4
  %bDynamicTxHighPower.i = getelementptr i8, ptr %dev, i32 36145
  %5 = ptrtoint ptr %bDynamicTxHighPower.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 0, ptr %bDynamicTxHighPower.i, align 1
  %ratr_state.i = getelementptr i8, ptr %dev, i32 31713
  %6 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %ratr_state.i, align 1
  %high2low_rssi_thresh_for_ra.i = getelementptr i8, ptr %dev, i32 31720
  %7 = ptrtoint ptr %high2low_rssi_thresh_for_ra.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 50, ptr %high2low_rssi_thresh_for_ra.i, align 4
  %low2high_rssi_thresh_for_ra20M.i = getelementptr i8, ptr %dev, i32 31732
  %8 = ptrtoint ptr %low2high_rssi_thresh_for_ra20M.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 35, ptr %low2high_rssi_thresh_for_ra20M.i, align 4
  %low2high_rssi_thresh_for_ra40M.i = getelementptr i8, ptr %dev, i32 31724
  %9 = ptrtoint ptr %low2high_rssi_thresh_for_ra40M.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 15, ptr %low2high_rssi_thresh_for_ra40M.i, align 4
  %high_rssi_thresh_for_ra.i = getelementptr i8, ptr %dev, i32 31716
  %10 = ptrtoint ptr %high_rssi_thresh_for_ra.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 55, ptr %high_rssi_thresh_for_ra.i, align 4
  %low_rssi_thresh_for_ra20M.i = getelementptr i8, ptr %dev, i32 31736
  %11 = ptrtoint ptr %low_rssi_thresh_for_ra20M.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 30, ptr %low_rssi_thresh_for_ra20M.i, align 4
  %low_rssi_thresh_for_ra40M.i = getelementptr i8, ptr %dev, i32 31728
  %12 = ptrtoint ptr %low_rssi_thresh_for_ra40M.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %low_rssi_thresh_for_ra40M.i, align 4
  %CustomerID.i = getelementptr i8, ptr %dev, i32 31412
  %13 = ptrtoint ptr %CustomerID.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %CustomerID.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %14)
  %cmp.i = icmp eq i32 %14, 10
  %spec.select.i = zext i1 %cmp.i to i8
  %15 = getelementptr i8, ptr %dev, i32 31760
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select.i, ptr %15, align 4
  %ping_rssi_thresh_for_ra.i = getelementptr i8, ptr %dev, i32 31768
  %17 = ptrtoint ptr %ping_rssi_thresh_for_ra.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 15, ptr %ping_rssi_thresh_for_ra.i, align 4
  %rf_type.i = getelementptr i8, ptr %dev, i32 35821
  %18 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rf_type.i, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %entry.rtl92e_init_adaptive_rate.exit_crit_edge [
    i8 1, label %entry.if.end18.sink.split.i_crit_edge
    i8 0, label %if.then10.i
  ]

entry.if.end18.sink.split.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.sink.split.i

entry.rtl92e_init_adaptive_rate.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92e_init_adaptive_rate.exit

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.sink.split.i

if.end18.sink.split.i:                            ; preds = %if.then10.i, %entry.if.end18.sink.split.i_crit_edge
  %.sink46.i = phi i32 [ 1032192, %if.then10.i ], [ -1894842368, %entry.if.end18.sink.split.i_crit_edge ]
  %.sink45.i = phi i32 [ 1044480, %if.then10.i ], [ -1894780928, %entry.if.end18.sink.split.i_crit_edge ]
  %.sink44.i = phi i32 [ 1044481, %if.then10.i ], [ -1894780927, %entry.if.end18.sink.split.i_crit_edge ]
  %.sink43.i = phi i32 [ 1044485, %if.then10.i ], [ -1894780923, %entry.if.end18.sink.split.i_crit_edge ]
  %upper_rssi_threshold_ratr11.i = getelementptr i8, ptr %dev, i32 31740
  %21 = ptrtoint ptr %upper_rssi_threshold_ratr11.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink46.i, ptr %upper_rssi_threshold_ratr11.i, align 4
  %middle_rssi_threshold_ratr12.i = getelementptr i8, ptr %dev, i32 31744
  %22 = ptrtoint ptr %middle_rssi_threshold_ratr12.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink45.i, ptr %middle_rssi_threshold_ratr12.i, align 4
  %low_rssi_threshold_ratr13.i = getelementptr i8, ptr %dev, i32 31748
  %23 = ptrtoint ptr %low_rssi_threshold_ratr13.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink44.i, ptr %low_rssi_threshold_ratr13.i, align 4
  %low_rssi_threshold_ratr_40M14.i = getelementptr i8, ptr %dev, i32 31752
  %24 = ptrtoint ptr %low_rssi_threshold_ratr_40M14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink43.i, ptr %low_rssi_threshold_ratr_40M14.i, align 4
  %low_rssi_threshold_ratr_20M15.i = getelementptr i8, ptr %dev, i32 31756
  %25 = ptrtoint ptr %low_rssi_threshold_ratr_20M15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink44.i, ptr %low_rssi_threshold_ratr_20M15.i, align 4
  %ping_rssi_ratr16.i = getelementptr i8, ptr %dev, i32 31764
  %26 = ptrtoint ptr %ping_rssi_ratr16.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 13, ptr %ping_rssi_ratr16.i, align 4
  br label %rtl92e_init_adaptive_rate.exit

rtl92e_init_adaptive_rate.exit:                   ; preds = %if.end18.sink.split.i, %entry.rtl92e_init_adaptive_rate.exit_crit_edge
  store i8 1, ptr @dm_digtable, align 4
  store i8 1, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 1), align 1
  store i8 0, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 2), align 2
  store i8 2, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 7), align 4
  store i8 2, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 8), align 1
  store i8 0, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 9), align 2
  store i8 0, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 10), align 1
  store i32 35, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 3), align 4
  store i32 40, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 4), align 4
  store i32 70, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 5), align 4
  store i32 75, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 6), align 4
  store i32 50, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 20), align 4
  store i8 12, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 17), align 4
  store i8 54, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 18), align 1
  %27 = ptrtoint ptr %CustomerID.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %CustomerID.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %28)
  %cmp.i36 = icmp eq i32 %28, 10
  %..i = select i1 %cmp.i36, i8 18, i8 28
  store i8 %..i, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 19), align 2
  %bcurrent_turbo_EDCA.i = getelementptr i8, ptr %dev, i32 36173
  %29 = ptrtoint ptr %bcurrent_turbo_EDCA.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %bcurrent_turbo_EDCA.i, align 1
  %30 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rtllib.i, align 8
  %bis_any_nonbepkts.i = getelementptr inbounds %struct.rtllib_device, ptr %31, i32 0, i32 153
  %32 = ptrtoint ptr %bis_any_nonbepkts.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %bis_any_nonbepkts.i, align 8
  %bis_cur_rdlstate.i = getelementptr i8, ptr %dev, i32 36174
  %33 = ptrtoint ptr %bis_cur_rdlstate.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %bis_cur_rdlstate.i, align 2
  %34 = load ptr, ptr %rtllib.i, align 8
  %bandwidth_auto_switch.i = getelementptr inbounds %struct.rtllib_device, ptr %34, i32 0, i32 154
  %35 = ptrtoint ptr %bandwidth_auto_switch.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 30, ptr %bandwidth_auto_switch.i, align 4
  %36 = load ptr, ptr %rtllib.i, align 8
  %threshold_40Mhzto20Mhz.i = getelementptr inbounds %struct.rtllib_device, ptr %36, i32 0, i32 154, i32 1
  %37 = ptrtoint ptr %threshold_40Mhzto20Mhz.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 25, ptr %threshold_40Mhzto20Mhz.i, align 4
  %38 = load ptr, ptr %rtllib.i, align 8
  %bforced_tx20Mhz.i = getelementptr inbounds %struct.rtllib_device, ptr %38, i32 0, i32 154, i32 2
  %39 = ptrtoint ptr %bforced_tx20Mhz.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %bforced_tx20Mhz.i, align 4
  %40 = load ptr, ptr %rtllib.i, align 8
  %bautoswitch_enable.i = getelementptr inbounds %struct.rtllib_device, ptr %40, i32 0, i32 154, i32 3
  %41 = ptrtoint ptr %bautoswitch_enable.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %bautoswitch_enable.i, align 1
  %42 = load ptr, ptr %rtllib.i, align 8
  %fsync_time_interval.i = getelementptr inbounds %struct.rtllib_device, ptr %42, i32 0, i32 145
  %43 = ptrtoint ptr %fsync_time_interval.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 500, ptr %fsync_time_interval.i, align 8
  %44 = load ptr, ptr %rtllib.i, align 8
  %fsync_rate_bitmap.i = getelementptr inbounds %struct.rtllib_device, ptr %44, i32 0, i32 146
  %45 = ptrtoint ptr %fsync_rate_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 251660288, ptr %fsync_rate_bitmap.i, align 4
  %46 = load ptr, ptr %rtllib.i, align 8
  %fsync_rssi_threshold.i = getelementptr inbounds %struct.rtllib_device, ptr %46, i32 0, i32 147
  %47 = ptrtoint ptr %fsync_rssi_threshold.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 30, ptr %fsync_rssi_threshold.i, align 8
  %48 = load ptr, ptr %rtllib.i, align 8
  %bfsync_enable.i = getelementptr inbounds %struct.rtllib_device, ptr %48, i32 0, i32 148
  %49 = ptrtoint ptr %bfsync_enable.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %bfsync_enable.i, align 1
  %50 = load ptr, ptr %rtllib.i, align 8
  %fsync_multiple_timeinterval.i = getelementptr inbounds %struct.rtllib_device, ptr %50, i32 0, i32 149
  %51 = ptrtoint ptr %fsync_multiple_timeinterval.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %fsync_multiple_timeinterval.i, align 2
  %52 = load ptr, ptr %rtllib.i, align 8
  %fsync_firstdiff_ratethreshold.i = getelementptr inbounds %struct.rtllib_device, ptr %52, i32 0, i32 150
  %53 = ptrtoint ptr %fsync_firstdiff_ratethreshold.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 100, ptr %fsync_firstdiff_ratethreshold.i, align 4
  %54 = load ptr, ptr %rtllib.i, align 8
  %fsync_seconddiff_ratethreshold.i = getelementptr inbounds %struct.rtllib_device, ptr %54, i32 0, i32 151
  %55 = ptrtoint ptr %fsync_seconddiff_ratethreshold.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 200, ptr %fsync_seconddiff_ratethreshold.i, align 8
  %56 = load ptr, ptr %rtllib.i, align 8
  %fsync_state.i = getelementptr inbounds %struct.rtllib_device, ptr %56, i32 0, i32 152
  %57 = ptrtoint ptr %fsync_state.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %fsync_state.i, align 4
  %framesyncMonitor.i = getelementptr i8, ptr %dev, i32 36196
  %58 = ptrtoint ptr %framesyncMonitor.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %framesyncMonitor.i, align 8
  %fsync_timer.i = getelementptr i8, ptr %dev, i32 31840
  tail call void @init_timer_key(ptr noundef %fsync_timer.i, ptr noundef nonnull @_rtl92e_dm_fsync_timer_callback, i32 noundef 0, ptr noundef nonnull @.str.159, ptr noundef nonnull @_rtl92e_dm_init_fsync.__key) #7
  store i8 1, ptr @DM_RxPathSelTable, align 4
  store i8 30, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 3), align 1
  store i8 18, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 4), align 4
  %59 = ptrtoint ptr %CustomerID.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %CustomerID.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %60)
  %cmp.i41 = icmp eq i32 %60, 10
  %..i42 = zext i1 %cmp.i41 to i8
  store i8 %..i42, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 1), align 1
  store i8 0, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5), align 1
  store i32 842150450, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 7, i32 0), align 1
  store i32 1684300900, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 8, i32 0), align 1
  store i32 -64, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 9, i32 0), align 4
  store i32 -64, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 9, i32 1), align 4
  store i32 -64, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 9, i32 2), align 4
  store i32 -64, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 9, i32 3), align 4
  %61 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rtllib.i, align 8
  %bCTSToSelfEnable.i = getelementptr inbounds %struct.rtllib_device, ptr %62, i32 0, i32 144
  %63 = ptrtoint ptr %bCTSToSelfEnable.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %bCTSToSelfEnable.i, align 1
  %card_8192 = getelementptr i8, ptr %dev, i32 35816
  %64 = ptrtoint ptr %card_8192 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %card_8192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %65)
  %cmp = icmp eq i32 %65, 4
  br i1 %cmp, label %if.then, label %rtl92e_init_adaptive_rate.exit.do.body2_crit_edge

rtl92e_init_adaptive_rate.exit.do.body2_crit_edge: ; preds = %rtl92e_init_adaptive_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

if.then:                                          ; preds = %rtl92e_init_adaptive_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rtllib.i, align 8
  %pHTInfo1.i = getelementptr inbounds %struct.rtllib_device, ptr %67, i32 0, i32 27
  %68 = ptrtoint ptr %pHTInfo1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pHTInfo1.i, align 8
  %bWAIotBroadcom.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %69, i32 0, i32 53
  %70 = ptrtoint ptr %bWAIotBroadcom.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %bWAIotBroadcom.i, align 1
  %WAIotTH.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %69, i32 0, i32 54
  %71 = ptrtoint ptr %WAIotTH.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 25, ptr %WAIotTH.i, align 1
  br label %do.body2

do.body2:                                         ; preds = %if.then, %rtl92e_init_adaptive_rate.exit.do.body2_crit_edge
  %gpio_change_rf_wq = getelementptr i8, ptr %dev, i32 31200
  tail call void @__init_work(ptr noundef %gpio_change_rf_wq, i32 noundef 0) #7
  %72 = ptrtoint ptr %gpio_change_rf_wq to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -64, ptr %gpio_change_rf_wq, align 4
  %lockdep_map = getelementptr i8, ptr %dev, i32 31216
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @rtl92e_dm_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry9 = getelementptr i8, ptr %dev, i32 31204
  %73 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 31208
  %74 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %dev, i32 31212
  %75 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @_rtl92e_dm_check_rf_ctrl_gpio, ptr %func, align 4
  %timer = getelementptr i8, ptr %dev, i32 31244
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtl92e_dm_init.__key.1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92e_init_adaptive_rate(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ratr_state = getelementptr i8, ptr %dev, i32 31713
  %0 = ptrtoint ptr %ratr_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %ratr_state, align 1
  %high2low_rssi_thresh_for_ra = getelementptr i8, ptr %dev, i32 31720
  %1 = ptrtoint ptr %high2low_rssi_thresh_for_ra to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 50, ptr %high2low_rssi_thresh_for_ra, align 4
  %low2high_rssi_thresh_for_ra20M = getelementptr i8, ptr %dev, i32 31732
  %2 = ptrtoint ptr %low2high_rssi_thresh_for_ra20M to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 35, ptr %low2high_rssi_thresh_for_ra20M, align 4
  %low2high_rssi_thresh_for_ra40M = getelementptr i8, ptr %dev, i32 31724
  %3 = ptrtoint ptr %low2high_rssi_thresh_for_ra40M to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 15, ptr %low2high_rssi_thresh_for_ra40M, align 4
  %high_rssi_thresh_for_ra = getelementptr i8, ptr %dev, i32 31716
  %4 = ptrtoint ptr %high_rssi_thresh_for_ra to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 55, ptr %high_rssi_thresh_for_ra, align 4
  %low_rssi_thresh_for_ra20M = getelementptr i8, ptr %dev, i32 31736
  %5 = ptrtoint ptr %low_rssi_thresh_for_ra20M to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 30, ptr %low_rssi_thresh_for_ra20M, align 4
  %low_rssi_thresh_for_ra40M = getelementptr i8, ptr %dev, i32 31728
  %6 = ptrtoint ptr %low_rssi_thresh_for_ra40M to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10, ptr %low_rssi_thresh_for_ra40M, align 4
  %CustomerID = getelementptr i8, ptr %dev, i32 31412
  %7 = ptrtoint ptr %CustomerID to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %CustomerID, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %8)
  %cmp = icmp eq i32 %8, 10
  %spec.select = zext i1 %cmp to i8
  %9 = getelementptr i8, ptr %dev, i32 31760
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select, ptr %9, align 4
  %ping_rssi_thresh_for_ra = getelementptr i8, ptr %dev, i32 31768
  %11 = ptrtoint ptr %ping_rssi_thresh_for_ra to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 15, ptr %ping_rssi_thresh_for_ra, align 4
  %rf_type = getelementptr i8, ptr %dev, i32 35821
  %12 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rf_type, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.182)
  switch i8 %13, label %entry.if.end18_crit_edge [
    i8 1, label %entry.if.end18.sink.split_crit_edge
    i8 0, label %if.then10
  ]

entry.if.end18.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.sink.split

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.then10, %entry.if.end18.sink.split_crit_edge
  %.sink46 = phi i32 [ 1032192, %if.then10 ], [ -1894842368, %entry.if.end18.sink.split_crit_edge ]
  %.sink45 = phi i32 [ 1044480, %if.then10 ], [ -1894780928, %entry.if.end18.sink.split_crit_edge ]
  %.sink44 = phi i32 [ 1044481, %if.then10 ], [ -1894780927, %entry.if.end18.sink.split_crit_edge ]
  %.sink43 = phi i32 [ 1044485, %if.then10 ], [ -1894780923, %entry.if.end18.sink.split_crit_edge ]
  %upper_rssi_threshold_ratr11 = getelementptr i8, ptr %dev, i32 31740
  %15 = ptrtoint ptr %upper_rssi_threshold_ratr11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink46, ptr %upper_rssi_threshold_ratr11, align 4
  %middle_rssi_threshold_ratr12 = getelementptr i8, ptr %dev, i32 31744
  %16 = ptrtoint ptr %middle_rssi_threshold_ratr12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink45, ptr %middle_rssi_threshold_ratr12, align 4
  %low_rssi_threshold_ratr13 = getelementptr i8, ptr %dev, i32 31748
  %17 = ptrtoint ptr %low_rssi_threshold_ratr13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink44, ptr %low_rssi_threshold_ratr13, align 4
  %low_rssi_threshold_ratr_40M14 = getelementptr i8, ptr %dev, i32 31752
  %18 = ptrtoint ptr %low_rssi_threshold_ratr_40M14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink43, ptr %low_rssi_threshold_ratr_40M14, align 4
  %low_rssi_threshold_ratr_20M15 = getelementptr i8, ptr %dev, i32 31756
  %19 = ptrtoint ptr %low_rssi_threshold_ratr_20M15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink44, ptr %low_rssi_threshold_ratr_20M15, align 4
  %ping_rssi_ratr16 = getelementptr i8, ptr %dev, i32 31764
  %20 = ptrtoint ptr %ping_rssi_ratr16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 13, ptr %ping_rssi_ratr16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92e_dm_init_edca_turbo(ptr nocapture noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bcurrent_turbo_EDCA = getelementptr i8, ptr %dev, i32 36173
  %0 = ptrtoint ptr %bcurrent_turbo_EDCA to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bcurrent_turbo_EDCA, align 1
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %1 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rtllib, align 8
  %bis_any_nonbepkts = getelementptr inbounds %struct.rtllib_device, ptr %2, i32 0, i32 153
  %3 = ptrtoint ptr %bis_any_nonbepkts to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bis_any_nonbepkts, align 8
  %bis_cur_rdlstate = getelementptr i8, ptr %dev, i32 36174
  %4 = ptrtoint ptr %bis_cur_rdlstate to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bis_cur_rdlstate, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl92e_dm_check_rf_ctrl_gpio(ptr nocapture noundef %data) #0 align 64 {
entry:
  %argv = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %data, i32 116
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %dev1 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %argv) #7
  %4 = getelementptr inbounds [3 x ptr], ptr %argv, i32 0, i32 1
  %5 = getelementptr inbounds [3 x ptr], ptr %argv, i32 0, i32 2
  %up_first_time = getelementptr i8, ptr %data, i32 -404
  %6 = ptrtoint ptr %up_first_time to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %up_first_time, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp = icmp eq i16 %7, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %being_init_adapter = getelementptr i8, ptr %data, i32 -417
  %8 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %being_init_adapter, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bfirst_after_down = getelementptr i8, ptr %data, i32 -419
  %10 = ptrtoint ptr %bfirst_after_down to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bfirst_after_down, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %bfirst_after_down to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %bfirst_after_down, align 1
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call zeroext i8 @rtl92e_readb(ptr noundef %3, i32 noundef 264) #7
  %13 = and i8 %call8, 2
  %14 = xor i8 %13, 2
  %15 = zext i8 %14 to i32
  %bHwRadioOff = getelementptr i8, ptr %data, i32 4540
  %16 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bHwRadioOff, align 8, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not = icmp eq i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.else, label %do.body

do.body:                                          ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %18 = load i32, ptr @rt_global_debug_component, align 4
  %and16 = and i32 %18, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body.if.then48_crit_edge, label %do.body.if.then48.sink.split_crit_edge

do.body.if.then48.sink.split_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48.sink.split

do.body.if.then48_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48

if.else:                                          ; preds = %if.end7
  %or.cond81 = select i1 %tobool11.not, i1 %tobool10.not, i1 false
  br i1 %or.cond81, label %do.body32, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body32:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %19 = load i32, ptr @rt_global_debug_component, align 4
  %and33 = and i32 %19, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body32.if.then48_crit_edge, label %do.body32.if.then48.sink.split_crit_edge

do.body32.if.then48.sink.split_crit_edge:         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48.sink.split

do.body32.if.then48_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48

if.then48.sink.split:                             ; preds = %do.body32.if.then48.sink.split_crit_edge, %do.body.if.then48.sink.split_crit_edge
  %.str.154.sink = phi ptr [ @.str.150, %do.body.if.then48.sink.split_crit_edge ], [ @.str.154, %do.body32.if.then48.sink.split_crit_edge ]
  %.str.156.sink.ph = phi ptr [ @.str.152, %do.body.if.then48.sink.split_crit_edge ], [ @.str.156, %do.body32.if.then48.sink.split_crit_edge ]
  %storemerge.ph = phi i8 [ 0, %do.body.if.then48.sink.split_crit_edge ], [ 1, %do.body32.if.then48.sink.split_crit_edge ]
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.154.sink) #10
  br label %if.then48

if.then48:                                        ; preds = %if.then48.sink.split, %do.body32.if.then48_crit_edge, %do.body.if.then48_crit_edge
  %.str.156.sink = phi ptr [ @.str.152, %do.body.if.then48_crit_edge ], [ @.str.156, %do.body32.if.then48_crit_edge ], [ %.str.156.sink.ph, %if.then48.sink.split ]
  %storemerge = phi i8 [ 0, %do.body.if.then48_crit_edge ], [ 1, %do.body32.if.then48_crit_edge ], [ %storemerge.ph, %if.then48.sink.split ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull %.str.156.sink) #10
  %20 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %storemerge, ptr %bHwRadioOff, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then48
  %__ms.082 = phi i32 [ 1000, %if.then48 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.082, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #7
  %tobool49.not = icmp eq i32 %dec, 0
  br i1 %tobool49.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %bHwRfOffAction = getelementptr i8, ptr %data, i32 4809
  %22 = ptrtoint ptr %bHwRfOffAction to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %bHwRfOffAction, align 1
  %call50 = tail call zeroext i1 @rtl92e_set_rf_state(ptr noundef %3, i32 noundef %15, i32 noundef 1073741824) #7
  %23 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bHwRadioOff, align 8, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool52.not = icmp eq i8 %24, 0
  %.str.158..str.157 = select i1 %tobool52.not, ptr @.str.158, ptr @.str.157
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %.str.158..str.157, ptr %4, align 4
  %26 = ptrtoint ptr %argv to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @_rtl92e_dm_check_rf_ctrl_gpio.RadioPowerPath, ptr %argv, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %5, align 4
  %call59 = call i32 @call_usermodehelper(ptr noundef nonnull @_rtl92e_dm_check_rf_ctrl_gpio.RadioPowerPath, ptr noundef nonnull %argv, ptr noundef nonnull @_rtl92e_dm_check_rf_ctrl_gpio.envp, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else.cleanup_crit_edge, %if.then5, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %argv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_dm_deinit(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fsync_timer.i = getelementptr i8, ptr %dev, i32 31840
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %fsync_timer.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_dm_watchdog(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %rf_timing.i188.i = alloca i8, align 1
  %rf_timing.i180.i = alloca i8, align 1
  %rf_timing.i171.i = alloca i8, align 1
  %rf_timing.i.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %argv.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %being_init_adapter = getelementptr i8, ptr %dev, i32 30783
  %0 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %being_init_adapter, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %argv.i) #7
  %2 = call ptr @memcpy(ptr %argv.i, ptr @__const._rtl92e_dm_check_ac_dc_power.argv, i32 12)
  %ResetProgress.i = getelementptr i8, ptr %dev, i32 36204
  %3 = ptrtoint ptr %ResetProgress.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ResetProgress.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i = icmp eq i32 %4, 2
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %5 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %5, 1048644
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i._rtl92e_dm_check_ac_dc_power.exit_crit_edge, label %do.end.i

do.body.i._rtl92e_dm_check_ac_dc_power.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_ac_dc_power.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  br label %_rtl92e_dm_check_ac_dc_power.exit

if.end6.i:                                        ; preds = %if.end
  %rtllib.i = getelementptr i8, ptr %dev, i32 31316
  %6 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtllib.i, align 8
  %state.i = getelementptr inbounds %struct.rtllib_device, ptr %7, i32 0, i32 90
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp7.not.i = icmp eq i32 %9, 5
  br i1 %cmp7.not.i, label %if.end9.i, label %if.end6.i._rtl92e_dm_check_ac_dc_power.exit_crit_edge

if.end6.i._rtl92e_dm_check_ac_dc_power.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_ac_dc_power.exit

if.end9.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = call i32 @call_usermodehelper(ptr noundef nonnull @_rtl92e_dm_check_ac_dc_power.ac_dc_script, ptr noundef nonnull %argv.i, ptr noundef nonnull @_rtl92e_dm_check_ac_dc_power.envp, i32 noundef 2) #7
  br label %_rtl92e_dm_check_ac_dc_power.exit

_rtl92e_dm_check_ac_dc_power.exit:                ; preds = %if.end9.i, %if.end6.i._rtl92e_dm_check_ac_dc_power.exit_crit_edge, %do.end.i, %do.body.i._rtl92e_dm_check_ac_dc_power.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %argv.i) #7
  %rtllib.i13 = getelementptr i8, ptr %dev, i32 31316
  %10 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtllib.i13, align 8
  %call1.i = call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 480) #7
  %CurrentShowTxate.i = getelementptr inbounds %struct.rtllib_device, ptr %11, i32 0, i32 50, i32 17
  %12 = ptrtoint ptr %CurrentShowTxate.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call1.i, ptr %CurrentShowTxate.i, align 4
  %call2.i = call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 481) #7
  %last_packet_rate.i = getelementptr inbounds %struct.rtllib_device, ptr %11, i32 0, i32 50, i32 18
  %13 = ptrtoint ptr %last_packet_rate.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call2.i, ptr %last_packet_rate.i, align 1
  %call4.i = call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 428) #7
  %txretrycount.i = getelementptr inbounds %struct.rtllib_device, ptr %11, i32 0, i32 50, i32 19
  %14 = ptrtoint ptr %txretrycount.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call4.i, ptr %txretrycount.i, align 8
  %15 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtllib.i13, align 8
  %pHTInfo1.i = getelementptr inbounds %struct.rtllib_device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %pHTInfo1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pHTInfo1.i, align 8
  %iw_mode.i = getelementptr inbounds %struct.rtllib_device, ptr %16, i32 0, i32 56
  %19 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iw_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i15 = icmp eq i32 %20, 1
  br i1 %cmp.i15, label %_rtl92e_dm_check_ac_dc_power.exit._rtl92e_dm_check_edca_turbo.exit_crit_edge, label %if.end.i

_rtl92e_dm_check_ac_dc_power.exit._rtl92e_dm_check_edca_turbo.exit_crit_edge: ; preds = %_rtl92e_dm_check_ac_dc_power.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_edca_turbo.exit

if.end.i:                                         ; preds = %_rtl92e_dm_check_ac_dc_power.exit
  %state.i16 = getelementptr inbounds %struct.rtllib_device, ptr %16, i32 0, i32 90
  %21 = ptrtoint ptr %state.i16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state.i16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %cmp4.not.i = icmp eq i32 %22, 5
  br i1 %cmp4.not.i, label %if.end6.i19, label %if.end.i._rtl92e_dm_check_edca_turbo.exit_crit_edge

if.end.i._rtl92e_dm_check_edca_turbo.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_edca_turbo.exit

if.end6.i19:                                      ; preds = %if.end.i
  %IOTAction.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %18, i32 0, i32 51
  %23 = ptrtoint ptr %IOTAction.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %IOTAction.i, align 1
  %and.i17 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %if.end10.i, label %if.end6.i19._rtl92e_dm_check_edca_turbo.exit_crit_edge

if.end6.i19._rtl92e_dm_check_edca_turbo.exit_crit_edge: ; preds = %if.end6.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_edca_turbo.exit

if.end10.i:                                       ; preds = %if.end6.i19
  %bis_any_nonbepkts.i = getelementptr inbounds %struct.rtllib_device, ptr %16, i32 0, i32 153
  %25 = ptrtoint ptr %bis_any_nonbepkts.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bis_any_nonbepkts.i, align 8, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not.i = icmp eq i8 %26, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.else87.i

if.then13.i:                                      ; preds = %if.end10.i
  %txbytesunicast.i = getelementptr i8, ptr %dev, i32 33416
  %27 = ptrtoint ptr %txbytesunicast.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %txbytesunicast.i, align 4
  %29 = load i32, ptr @_rtl92e_dm_check_edca_turbo.lastTxOkCnt, align 4
  %sub.i = sub i32 %28, %29
  %rxbytesunicast.i = getelementptr i8, ptr %dev, i32 33420
  %30 = ptrtoint ptr %rxbytesunicast.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rxbytesunicast.i, align 8
  %32 = load i32, ptr @_rtl92e_dm_check_edca_turbo.lastRxOkCnt, align 4
  %sub15.i = sub i32 %31, %32
  %and17.i = and i32 %24, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.else48.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.then13.i
  %mul.i = shl i32 %sub15.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %mul.i)
  %cmp20.i = icmp ugt i32 %sub.i, %mul.i
  %bis_cur_rdlstate.i = getelementptr i8, ptr %dev, i32 36174
  %33 = ptrtoint ptr %bis_cur_rdlstate.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bis_cur_rdlstate.i, align 2, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool22.not.i = icmp eq i8 %34, 0
  br i1 %cmp20.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.then19.i
  br i1 %tobool22.not.i, label %lor.lhs.false.i, label %if.then21.i.if.then24.i_crit_edge

if.then21.i.if.then24.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

lor.lhs.false.i:                                  ; preds = %if.then21.i
  %bcurrent_turbo_EDCA.i = getelementptr i8, ptr %dev, i32 36173
  %35 = ptrtoint ptr %bcurrent_turbo_EDCA.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bcurrent_turbo_EDCA.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool23.not.i = icmp eq i8 %36, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i.if.then24.i_crit_edge, label %lor.lhs.false.i.if.end46.i_crit_edge

lor.lhs.false.i.if.end46.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

lor.lhs.false.i.if.then24.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

if.then24.i:                                      ; preds = %lor.lhs.false.i.if.then24.i_crit_edge, %if.then21.i.if.then24.i_crit_edge
  %IOTPeer.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %18, i32 0, i32 50
  %37 = ptrtoint ptr %IOTPeer.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %IOTPeer.i, align 1
  %idxprom.i = zext i8 %38 to i32
  %arrayidx.i = getelementptr [11 x i32], ptr @edca_setting_UL, i32 0, i32 %idxprom.i
  br label %if.end46.sink.split.i

if.else.i:                                        ; preds = %if.then19.i
  br i1 %tobool22.not.i, label %if.else.i.if.then32.i_crit_edge, label %lor.lhs.false29.i

if.else.i.if.then32.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32.i

lor.lhs.false29.i:                                ; preds = %if.else.i
  %bcurrent_turbo_EDCA30.i = getelementptr i8, ptr %dev, i32 36173
  %39 = ptrtoint ptr %bcurrent_turbo_EDCA30.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bcurrent_turbo_EDCA30.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool31.not.i = icmp eq i8 %40, 0
  br i1 %tobool31.not.i, label %lor.lhs.false29.i.if.then32.i_crit_edge, label %lor.lhs.false29.i.if.end46.i_crit_edge

lor.lhs.false29.i.if.end46.i_crit_edge:           ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

lor.lhs.false29.i.if.then32.i_crit_edge:          ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32.i

if.then32.i:                                      ; preds = %lor.lhs.false29.i.if.then32.i_crit_edge, %if.else.i.if.then32.i_crit_edge
  %mode.i = getelementptr inbounds %struct.rtllib_device, ptr %16, i32 0, i32 92
  %41 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp34.i = icmp eq i32 %42, 4
  %IOTPeer36.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %18, i32 0, i32 50
  %43 = ptrtoint ptr %IOTPeer36.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %IOTPeer36.i, align 1
  %idxprom37.i = zext i8 %44 to i32
  %edca_setting_DL_GMode.edca_setting_DL.i = select i1 %cmp34.i, ptr @edca_setting_DL_GMode, ptr @edca_setting_DL
  %arrayidx42.i = getelementptr [11 x i32], ptr %edca_setting_DL_GMode.edca_setting_DL.i, i32 0, i32 %idxprom37.i
  br label %if.end46.sink.split.i

if.end46.sink.split.i:                            ; preds = %if.then32.i, %if.then24.i
  %arrayidx42.sink.i = phi ptr [ %arrayidx42.i, %if.then32.i ], [ %arrayidx.i, %if.then24.i ]
  %.sink.i = phi i8 [ 1, %if.then32.i ], [ 0, %if.then24.i ]
  %45 = ptrtoint ptr %arrayidx42.sink.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx42.sink.i, align 4
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 80, i32 noundef %46) #7
  %47 = ptrtoint ptr %bis_cur_rdlstate.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %.sink.i, ptr %bis_cur_rdlstate.i, align 2
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end46.sink.split.i, %lor.lhs.false29.i.if.end46.i_crit_edge, %lor.lhs.false.i.if.end46.i_crit_edge
  %bcurrent_turbo_EDCA47.i = getelementptr i8, ptr %dev, i32 36173
  %48 = ptrtoint ptr %bcurrent_turbo_EDCA47.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %bcurrent_turbo_EDCA47.i, align 1
  br label %_rtl92e_dm_check_edca_turbo.exit

if.else48.i:                                      ; preds = %if.then13.i
  %mul49.i = shl i32 %sub.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15.i, i32 %mul49.i)
  %cmp50.i = icmp ugt i32 %sub15.i, %mul49.i
  %bis_cur_rdlstate52.i = getelementptr i8, ptr %dev, i32 36174
  %49 = ptrtoint ptr %bis_cur_rdlstate52.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bis_cur_rdlstate52.i, align 2, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool53.not.i = icmp eq i8 %50, 0
  br i1 %cmp50.i, label %if.then51.i, label %if.else72.i

if.then51.i:                                      ; preds = %if.else48.i
  br i1 %tobool53.not.i, label %if.then51.i.if.then57.i_crit_edge, label %lor.lhs.false54.i

if.then51.i.if.then57.i_crit_edge:                ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57.i

lor.lhs.false54.i:                                ; preds = %if.then51.i
  %bcurrent_turbo_EDCA55.i = getelementptr i8, ptr %dev, i32 36173
  %51 = ptrtoint ptr %bcurrent_turbo_EDCA55.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bcurrent_turbo_EDCA55.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool56.not.i = icmp eq i8 %52, 0
  br i1 %tobool56.not.i, label %lor.lhs.false54.i.if.then57.i_crit_edge, label %lor.lhs.false54.i.if.end84.i_crit_edge

lor.lhs.false54.i.if.end84.i_crit_edge:           ; preds = %lor.lhs.false54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84.i

lor.lhs.false54.i.if.then57.i_crit_edge:          ; preds = %lor.lhs.false54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57.i

if.then57.i:                                      ; preds = %lor.lhs.false54.i.if.then57.i_crit_edge, %if.then51.i.if.then57.i_crit_edge
  %mode59.i = getelementptr inbounds %struct.rtllib_device, ptr %16, i32 0, i32 92
  %53 = ptrtoint ptr %mode59.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode59.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp60.i = icmp eq i32 %54, 4
  %IOTPeer62.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %18, i32 0, i32 50
  %55 = ptrtoint ptr %IOTPeer62.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %IOTPeer62.i, align 1
  %idxprom63.i = zext i8 %56 to i32
  %edca_setting_DL_GMode.edca_setting_DL149.i = select i1 %cmp60.i, ptr @edca_setting_DL_GMode, ptr @edca_setting_DL
  %arrayidx68.i = getelementptr [11 x i32], ptr %edca_setting_DL_GMode.edca_setting_DL149.i, i32 0, i32 %idxprom63.i
  br label %if.end84.sink.split.i

if.else72.i:                                      ; preds = %if.else48.i
  br i1 %tobool53.not.i, label %lor.lhs.false75.i, label %if.else72.i.if.then78.i_crit_edge

if.else72.i.if.then78.i_crit_edge:                ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then78.i

lor.lhs.false75.i:                                ; preds = %if.else72.i
  %bcurrent_turbo_EDCA76.i = getelementptr i8, ptr %dev, i32 36173
  %57 = ptrtoint ptr %bcurrent_turbo_EDCA76.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bcurrent_turbo_EDCA76.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool77.not.i = icmp eq i8 %58, 0
  br i1 %tobool77.not.i, label %lor.lhs.false75.i.if.then78.i_crit_edge, label %lor.lhs.false75.i.if.end84.i_crit_edge

lor.lhs.false75.i.if.end84.i_crit_edge:           ; preds = %lor.lhs.false75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84.i

lor.lhs.false75.i.if.then78.i_crit_edge:          ; preds = %lor.lhs.false75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then78.i

if.then78.i:                                      ; preds = %lor.lhs.false75.i.if.then78.i_crit_edge, %if.else72.i.if.then78.i_crit_edge
  %IOTPeer79.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %18, i32 0, i32 50
  %59 = ptrtoint ptr %IOTPeer79.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %IOTPeer79.i, align 1
  %idxprom80.i = zext i8 %60 to i32
  %arrayidx81.i = getelementptr [11 x i32], ptr @edca_setting_UL, i32 0, i32 %idxprom80.i
  br label %if.end84.sink.split.i

if.end84.sink.split.i:                            ; preds = %if.then78.i, %if.then57.i
  %arrayidx81.sink.i = phi ptr [ %arrayidx81.i, %if.then78.i ], [ %arrayidx68.i, %if.then57.i ]
  %.sink147.i = phi i8 [ 0, %if.then78.i ], [ 1, %if.then57.i ]
  %61 = ptrtoint ptr %arrayidx81.sink.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx81.sink.i, align 4
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 80, i32 noundef %62) #7
  %63 = ptrtoint ptr %bis_cur_rdlstate52.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %.sink147.i, ptr %bis_cur_rdlstate52.i, align 2
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.end84.sink.split.i, %lor.lhs.false75.i.if.end84.i_crit_edge, %lor.lhs.false54.i.if.end84.i_crit_edge
  %bcurrent_turbo_EDCA85.i = getelementptr i8, ptr %dev, i32 36173
  %64 = ptrtoint ptr %bcurrent_turbo_EDCA85.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %bcurrent_turbo_EDCA85.i, align 1
  br label %_rtl92e_dm_check_edca_turbo.exit

if.else87.i:                                      ; preds = %if.end10.i
  %bcurrent_turbo_EDCA88.i = getelementptr i8, ptr %dev, i32 36173
  %65 = ptrtoint ptr %bcurrent_turbo_EDCA88.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bcurrent_turbo_EDCA88.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool89.not.i = icmp eq i8 %66, 0
  br i1 %tobool89.not.i, label %if.else87.i._rtl92e_dm_check_edca_turbo.exit_crit_edge, label %if.then90.i

if.else87.i._rtl92e_dm_check_edca_turbo.exit_crit_edge: ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_edca_turbo.exit

if.then90.i:                                      ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %67 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %tmp.i, align 1
  %SetHwRegHandler.i = getelementptr inbounds %struct.rtllib_device, ptr %16, i32 0, i32 203
  %68 = ptrtoint ptr %SetHwRegHandler.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %SetHwRegHandler.i, align 8
  call void %69(ptr noundef %dev, i8 noundef zeroext 31, ptr noundef nonnull %tmp.i) #7
  %70 = ptrtoint ptr %bcurrent_turbo_EDCA88.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %bcurrent_turbo_EDCA88.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  br label %_rtl92e_dm_check_edca_turbo.exit

_rtl92e_dm_check_edca_turbo.exit:                 ; preds = %if.then90.i, %if.else87.i._rtl92e_dm_check_edca_turbo.exit_crit_edge, %if.end84.i, %if.end46.i, %if.end6.i19._rtl92e_dm_check_edca_turbo.exit_crit_edge, %if.end.i._rtl92e_dm_check_edca_turbo.exit_crit_edge, %_rtl92e_dm_check_ac_dc_power.exit._rtl92e_dm_check_edca_turbo.exit_crit_edge
  %71 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rtllib.i13, align 8
  %bis_any_nonbepkts96.i = getelementptr inbounds %struct.rtllib_device, ptr %72, i32 0, i32 153
  %73 = ptrtoint ptr %bis_any_nonbepkts96.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %bis_any_nonbepkts96.i, align 8
  %txbytesunicast98.i = getelementptr i8, ptr %dev, i32 33416
  %74 = ptrtoint ptr %txbytesunicast98.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %txbytesunicast98.i, align 4
  store i32 %75, ptr @_rtl92e_dm_check_edca_turbo.lastTxOkCnt, align 4
  %rxbytesunicast100.i = getelementptr i8, ptr %dev, i32 33420
  %76 = ptrtoint ptr %rxbytesunicast100.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rxbytesunicast100.i, align 8
  store i32 %77, ptr @_rtl92e_dm_check_edca_turbo.lastRxOkCnt, align 4
  %78 = load ptr, ptr %rtllib.i13, align 8
  %pHTInfo1.i21 = getelementptr inbounds %struct.rtllib_device, ptr %78, i32 0, i32 27
  %79 = ptrtoint ptr %pHTInfo1.i21 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pHTInfo1.i21, align 8
  %up.i = getelementptr i8, ptr %dev, i32 30794
  %81 = ptrtoint ptr %up.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %up.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool.not.i22 = icmp eq i16 %82, 0
  br i1 %tobool.not.i22, label %do.body.i24, label %if.end8.i

do.body.i24:                                      ; preds = %_rtl92e_dm_check_edca_turbo.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %83 = load i32, ptr @rt_global_debug_component, align 4
  %and.i23 = and i32 %83, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool2.not.i = icmp eq i32 %and.i23, 0
  br i1 %tobool2.not.i, label %do.body.i24._rtl92e_dm_check_rate_adaptive.exit_crit_edge, label %do.end.i25

do.body.i24._rtl92e_dm_check_rate_adaptive.exit_crit_edge: ; preds = %do.body.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_rate_adaptive.exit

do.end.i25:                                       ; preds = %do.body.i24
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.26) #10
  br label %_rtl92e_dm_check_rate_adaptive.exit

if.end8.i:                                        ; preds = %_rtl92e_dm_check_edca_turbo.exit
  %rate_adaptive.i = getelementptr i8, ptr %dev, i32 31712
  %84 = ptrtoint ptr %rate_adaptive.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %rate_adaptive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool9.not.i = icmp eq i8 %85, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end8.i._rtl92e_dm_check_rate_adaptive.exit_crit_edge

if.end8.i._rtl92e_dm_check_rate_adaptive.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_rate_adaptive.exit

if.end11.i:                                       ; preds = %if.end8.i
  %mode.i26 = getelementptr inbounds %struct.rtllib_device, ptr %78, i32 0, i32 92
  %86 = ptrtoint ptr %mode.i26 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mode.i26, align 8
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %87, label %if.end11.i._rtl92e_dm_check_rate_adaptive.exit_crit_edge [
    i32 16, label %if.end11.i.if.end17.i_crit_edge
    i32 32, label %if.end11.i.if.end17.i_crit_edge106
  ]

if.end11.i.if.end17.i_crit_edge106:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end11.i._rtl92e_dm_check_rate_adaptive.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_rate_adaptive.exit

if.end17.i:                                       ; preds = %if.end11.i.if.end17.i_crit_edge, %if.end11.i.if.end17.i_crit_edge106
  %state.i27 = getelementptr inbounds %struct.rtllib_device, ptr %78, i32 0, i32 90
  %89 = ptrtoint ptr %state.i27 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %state.i27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %90)
  %cmp19.i = icmp eq i32 %90, 5
  br i1 %cmp19.i, label %if.then20.i, label %if.else160.i

if.then20.i:                                      ; preds = %if.end17.i
  %bCurTxBW40MHz.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %80, i32 0, i32 35
  %91 = ptrtoint ptr %bCurTxBW40MHz.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bCurTxBW40MHz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool21.not.i = icmp eq i8 %92, 0
  br i1 %tobool21.not.i, label %lor.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then20.i
  %bCurShortGI40MHz.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %80, i32 0, i32 5
  %93 = ptrtoint ptr %bCurShortGI40MHz.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bCurShortGI40MHz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool23.not.i28 = icmp eq i8 %94, 0
  %upper_rssi_threshold_ratr246.i = getelementptr i8, ptr %dev, i32 31740
  %95 = ptrtoint ptr %upper_rssi_threshold_ratr246.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %upper_rssi_threshold_ratr246.i, align 4
  %and28247.i = and i32 %96, 2147483647
  br i1 %tobool23.not.i28, label %land.lhs.true.i.lor.end.thread245.i_crit_edge, label %land.lhs.true.i.lor.end.thread.i_crit_edge

land.lhs.true.i.lor.end.thread.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.thread.i

land.lhs.true.i.lor.end.thread245.i_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.thread245.i

lor.end.i:                                        ; preds = %if.then20.i
  %bCurShortGI20MHz.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %80, i32 0, i32 7
  %97 = ptrtoint ptr %bCurShortGI20MHz.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %bCurShortGI20MHz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool27.not.i = icmp eq i8 %98, 0
  %upper_rssi_threshold_ratr.i = getelementptr i8, ptr %dev, i32 31740
  %99 = ptrtoint ptr %upper_rssi_threshold_ratr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %upper_rssi_threshold_ratr.i, align 4
  %and28.i = and i32 %100, 2147483647
  br i1 %tobool27.not.i, label %lor.end.i.lor.end.thread245.i_crit_edge, label %lor.end.i.lor.end.thread.i_crit_edge

lor.end.i.lor.end.thread.i_crit_edge:             ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.thread.i

lor.end.i.lor.end.thread245.i_crit_edge:          ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.thread245.i

lor.end.thread.i:                                 ; preds = %lor.end.i.lor.end.thread.i_crit_edge, %land.lhs.true.i.lor.end.thread.i_crit_edge
  %and28244.i = phi i32 [ %and28.i, %lor.end.i.lor.end.thread.i_crit_edge ], [ %and28247.i, %land.lhs.true.i.lor.end.thread.i_crit_edge ]
  %upper_rssi_threshold_ratr242.i = phi ptr [ %upper_rssi_threshold_ratr.i, %lor.end.i.lor.end.thread.i_crit_edge ], [ %upper_rssi_threshold_ratr246.i, %land.lhs.true.i.lor.end.thread.i_crit_edge ]
  br label %lor.end.thread245.i

lor.end.thread245.i:                              ; preds = %lor.end.thread.i, %lor.end.i.lor.end.thread245.i_crit_edge, %land.lhs.true.i.lor.end.thread245.i_crit_edge
  %and28243.i = phi i32 [ %and28244.i, %lor.end.thread.i ], [ %and28.i, %lor.end.i.lor.end.thread245.i_crit_edge ], [ %and28247.i, %land.lhs.true.i.lor.end.thread245.i_crit_edge ]
  %upper_rssi_threshold_ratr241.i = phi ptr [ %upper_rssi_threshold_ratr242.i, %lor.end.thread.i ], [ %upper_rssi_threshold_ratr.i, %lor.end.i.lor.end.thread245.i_crit_edge ], [ %upper_rssi_threshold_ratr246.i, %land.lhs.true.i.lor.end.thread245.i_crit_edge ]
  %101 = phi i32 [ -2147483648, %lor.end.thread.i ], [ 0, %lor.end.i.lor.end.thread245.i_crit_edge ], [ 0, %land.lhs.true.i.lor.end.thread245.i_crit_edge ]
  %or.i = or i32 %101, %and28243.i
  %102 = ptrtoint ptr %upper_rssi_threshold_ratr241.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or.i, ptr %upper_rssi_threshold_ratr241.i, align 4
  %middle_rssi_threshold_ratr.i = getelementptr i8, ptr %dev, i32 31744
  %103 = ptrtoint ptr %middle_rssi_threshold_ratr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %middle_rssi_threshold_ratr.i, align 4
  %and32.i = and i32 %104, 2147483647
  %or36.i = or i32 %and32.i, %101
  store i32 %or36.i, ptr %middle_rssi_threshold_ratr.i, align 4
  %CurrentChannelBW.i = getelementptr i8, ptr %dev, i32 31420
  %105 = ptrtoint ptr %CurrentChannelBW.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %CurrentChannelBW.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp38.not.i = icmp eq i32 %106, 0
  %..i = select i1 %cmp38.not.i, i32 31756, i32 31752
  %low_rssi_threshold_ratr_20M.i = getelementptr i8, ptr %dev, i32 %..i
  %107 = ptrtoint ptr %low_rssi_threshold_ratr_20M.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %and46.pn.in.i = load i32, ptr %low_rssi_threshold_ratr_20M.i, align 4
  %and46.pn.i = and i32 %and46.pn.in.i, 2147483647
  %or45.sink.i = or i32 %and46.pn.i, %101
  %108 = getelementptr i8, ptr %dev, i32 31748
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or45.sink.i, ptr %108, align 4
  %ping_rssi_ratr.i = getelementptr i8, ptr %dev, i32 31764
  %110 = ptrtoint ptr %ping_rssi_ratr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ping_rssi_ratr.i, align 4
  %and53.i = and i32 %111, 2147483647
  %or57.i = or i32 %and53.i, %101
  store i32 %or57.i, ptr %ping_rssi_ratr.i, align 4
  %ratr_state.i = getelementptr i8, ptr %dev, i32 31713
  %112 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %ratr_state.i, align 1
  %114 = zext i8 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.184)
  switch i8 %113, label %if.else82.i [
    i8 0, label %if.then62.i
    i8 2, label %if.then72.i
  ]

if.then62.i:                                      ; preds = %lor.end.thread245.i
  call void @__sanitizer_cov_trace_pc() #9
  %high2low_rssi_thresh_for_ra.i = getelementptr i8, ptr %dev, i32 31720
  %cond66.in.v.i = select i1 %cmp38.not.i, i32 31736, i32 31728
  %cond66.in.i = getelementptr i8, ptr %dev, i32 %cond66.in.v.i
  %115 = ptrtoint ptr %cond66.in.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %cond66.i = load i32, ptr %cond66.in.i, align 4
  br label %if.end94.i

if.then72.i:                                      ; preds = %lor.end.thread245.i
  call void @__sanitizer_cov_trace_pc() #9
  %high_rssi_thresh_for_ra.i = getelementptr i8, ptr %dev, i32 31716
  %cond81.in.in.v.i = select i1 %cmp38.not.i, i32 31732, i32 31724
  %cond81.in.in.i = getelementptr i8, ptr %dev, i32 %cond81.in.in.v.i
  %116 = ptrtoint ptr %cond81.in.in.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %cond81.in.i = load i8, ptr %cond81.in.in.i, align 4
  %cond81.i = zext i8 %cond81.in.i to i32
  br label %if.end94.i

if.else82.i:                                      ; preds = %lor.end.thread245.i
  call void @__sanitizer_cov_trace_pc() #9
  %high_rssi_thresh_for_ra83.i = getelementptr i8, ptr %dev, i32 31716
  %cond92.in.v.i = select i1 %cmp38.not.i, i32 31736, i32 31728
  %cond92.in.i = getelementptr i8, ptr %dev, i32 %cond92.in.v.i
  %117 = ptrtoint ptr %cond92.in.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %cond92.i = load i32, ptr %cond92.in.i, align 4
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.else82.i, %if.then72.i, %if.then62.i
  %LowRSSIThreshForRA.0.i = phi i32 [ %cond66.i, %if.then62.i ], [ %cond81.i, %if.then72.i ], [ %cond92.i, %if.else82.i ]
  %HighRSSIThreshForRA.0.in.i = phi ptr [ %high2low_rssi_thresh_for_ra.i, %if.then62.i ], [ %high_rssi_thresh_for_ra.i, %if.then72.i ], [ %high_rssi_thresh_for_ra83.i, %if.else82.i ]
  %118 = ptrtoint ptr %HighRSSIThreshForRA.0.in.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %HighRSSIThreshForRA.0.i = load i32, ptr %HighRSSIThreshForRA.0.in.i, align 4
  %undecorated_smoothed_pwdb.i = getelementptr i8, ptr %dev, i32 36028
  %119 = ptrtoint ptr %undecorated_smoothed_pwdb.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %undecorated_smoothed_pwdb.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %HighRSSIThreshForRA.0.i)
  %cmp95.not.i = icmp slt i32 %120, %HighRSSIThreshForRA.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %LowRSSIThreshForRA.0.i)
  %cmp102.not.i = icmp slt i32 %120, %LowRSSIThreshForRA.0.i
  %.250.i = select i1 %cmp102.not.i, i8 2, i8 1
  %.middle_rssi_threshold_ratr.i = select i1 %cmp102.not.i, ptr %108, ptr %middle_rssi_threshold_ratr.i
  %.sink248.i = select i1 %cmp95.not.i, i8 %.250.i, i8 0
  %targetRATR.0.in.i = select i1 %cmp95.not.i, ptr %.middle_rssi_threshold_ratr.i, ptr %upper_rssi_threshold_ratr241.i
  %121 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %.sink248.i, ptr %ratr_state.i, align 1
  %122 = ptrtoint ptr %targetRATR.0.in.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %targetRATR.0.i = load i32, ptr %targetRATR.0.in.i, align 4
  %ping_rssi_enable.i = getelementptr i8, ptr %dev, i32 31760
  %123 = ptrtoint ptr %ping_rssi_enable.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %ping_rssi_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool112.not.i = icmp eq i8 %124, 0
  br i1 %tobool112.not.i, label %if.end94.i.if.end131.i_crit_edge, label %if.then113.i

if.end94.i.if.end131.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131.i

if.then113.i:                                     ; preds = %if.end94.i
  %ping_rssi_thresh_for_ra.i = getelementptr i8, ptr %dev, i32 31768
  %125 = ptrtoint ptr %ping_rssi_thresh_for_ra.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %ping_rssi_thresh_for_ra.i, align 4
  %add.i = add i32 %126, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %add.i)
  %cmp115.i = icmp slt i32 %120, %add.i
  br i1 %cmp115.i, label %if.then117.i, label %if.then113.i.if.end131.sink.split.i_crit_edge

if.then113.i.if.end131.sink.split.i_crit_edge:    ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131.sink.split.i

if.then117.i:                                     ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %126)
  %cmp120.i = icmp slt i32 %120, %126
  br i1 %cmp120.i, label %if.then117.i.if.then125.i_crit_edge, label %lor.lhs.false122.i

if.then117.i.if.then125.i_crit_edge:              ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then125.i

lor.lhs.false122.i:                               ; preds = %if.then117.i
  %.b.i = load i1, ptr @_rtl92e_dm_check_rate_adaptive.ping_rssi_state, align 1
  br i1 %.b.i, label %lor.lhs.false122.i.if.then125.i_crit_edge, label %lor.lhs.false122.i.if.end131.i_crit_edge

lor.lhs.false122.i.if.end131.i_crit_edge:         ; preds = %lor.lhs.false122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131.i

lor.lhs.false122.i.if.then125.i_crit_edge:        ; preds = %lor.lhs.false122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then125.i

if.then125.i:                                     ; preds = %lor.lhs.false122.i.if.then125.i_crit_edge, %if.then117.i.if.then125.i_crit_edge
  %127 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 2, ptr %ratr_state.i, align 1
  br label %if.end131.sink.split.i

if.end131.sink.split.i:                           ; preds = %if.then125.i, %if.then113.i.if.end131.sink.split.i_crit_edge
  %targetRATR.1.ph.i = phi i32 [ %or57.i, %if.then125.i ], [ %targetRATR.0.i, %if.then113.i.if.end131.sink.split.i_crit_edge ]
  store i1 %cmp115.i, ptr @_rtl92e_dm_check_rate_adaptive.ping_rssi_state, align 1
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.end131.sink.split.i, %lor.lhs.false122.i.if.end131.i_crit_edge, %if.end94.i.if.end131.i_crit_edge
  %targetRATR.1.i = phi i32 [ %targetRATR.0.i, %lor.lhs.false122.i.if.end131.i_crit_edge ], [ %targetRATR.0.i, %if.end94.i.if.end131.i_crit_edge ], [ %targetRATR.1.ph.i, %if.end131.sink.split.i ]
  %GetHalfNmodeSupportByAPsHandler.i = getelementptr inbounds %struct.rtllib_device, ptr %78, i32 0, i32 196
  %128 = ptrtoint ptr %GetHalfNmodeSupportByAPsHandler.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %GetHalfNmodeSupportByAPsHandler.i, align 4
  %call133.i = call zeroext i1 %129(ptr noundef %dev) #7
  %and135.i = and i32 %targetRATR.1.i, -267386881
  %spec.select.i = select i1 %call133.i, i32 %and135.i, i32 %targetRATR.1.i
  %call137.i = call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 800) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %call137.i)
  %cmp138.not.i = icmp eq i32 %spec.select.i, %call137.i
  br i1 %cmp138.not.i, label %if.end131.i._rtl92e_dm_check_rate_adaptive.exit_crit_edge, label %if.then140.i

if.end131.i._rtl92e_dm_check_rate_adaptive.exit_crit_edge: ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_rate_adaptive.exit

if.then140.i:                                     ; preds = %if.end131.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %130 = load i32, ptr @rt_global_debug_component, align 4
  %and142.i = and i32 %130, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i)
  %tobool143.not.i = icmp eq i32 %and142.i, 0
  br i1 %tobool143.not.i, label %if.then140.i.do.end152.i_crit_edge, label %do.end147.i

if.then140.i.do.end152.i_crit_edge:               ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end152.i

do.end147.i:                                      ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #9
  %call149.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call137.i, i32 noundef %spec.select.i) #10
  br label %do.end152.i

do.end152.i:                                      ; preds = %do.end147.i, %if.then140.i.do.end152.i_crit_edge
  %rf_type.i = getelementptr i8, ptr %dev, i32 35821
  %131 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %cmp154.i = icmp eq i8 %132, 0
  %spec.select238.i = select i1 %cmp154.i, i32 %and135.i, i32 %spec.select.i
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 800, i32 noundef %spec.select238.i) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 792, i8 noundef zeroext 1) #7
  %last_ratr.i = getelementptr i8, ptr %dev, i32 31772
  %133 = ptrtoint ptr %last_ratr.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %spec.select.i, ptr %last_ratr.i, align 4
  br label %_rtl92e_dm_check_rate_adaptive.exit

if.else160.i:                                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %ratr_state161.i = getelementptr i8, ptr %dev, i32 31713
  %134 = ptrtoint ptr %ratr_state161.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 3, ptr %ratr_state161.i, align 1
  br label %_rtl92e_dm_check_rate_adaptive.exit

_rtl92e_dm_check_rate_adaptive.exit:              ; preds = %if.else160.i, %do.end152.i, %if.end131.i._rtl92e_dm_check_rate_adaptive.exit_crit_edge, %if.end11.i._rtl92e_dm_check_rate_adaptive.exit_crit_edge, %if.end8.i._rtl92e_dm_check_rate_adaptive.exit_crit_edge, %do.end.i25, %do.body.i24._rtl92e_dm_check_rate_adaptive.exit_crit_edge
  %135 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rtllib.i13, align 8
  %bdynamic_txpower_enable.i = getelementptr inbounds %struct.rtllib_device, ptr %136, i32 0, i32 143
  %137 = ptrtoint ptr %bdynamic_txpower_enable.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %bdynamic_txpower_enable.i, align 4, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not.i30 = icmp eq i8 %138, 0
  br i1 %tobool.not.i30, label %if.then.i, label %if.end.i33

if.then.i:                                        ; preds = %_rtl92e_dm_check_rate_adaptive.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bDynamicTxHighPower.i = getelementptr i8, ptr %dev, i32 36145
  %139 = ptrtoint ptr %bDynamicTxHighPower.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %bDynamicTxHighPower.i, align 1
  %bDynamicTxLowPower.i = getelementptr i8, ptr %dev, i32 36146
  %140 = ptrtoint ptr %bDynamicTxLowPower.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %bDynamicTxLowPower.i, align 2
  br label %_rtl92e_dm_dynamic_tx_power.exit

if.end.i33:                                       ; preds = %_rtl92e_dm_check_rate_adaptive.exit
  %pHTInfo.i = getelementptr inbounds %struct.rtllib_device, ptr %136, i32 0, i32 27
  %141 = ptrtoint ptr %pHTInfo.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pHTInfo.i, align 8
  %IOTPeer.i31 = getelementptr inbounds %struct.rt_hi_throughput, ptr %142, i32 0, i32 50
  %143 = ptrtoint ptr %IOTPeer.i31 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %IOTPeer.i31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %144)
  %cmp.i32 = icmp eq i8 %144, 5
  br i1 %cmp.i32, label %land.lhs.true.i35, label %if.end.i33.if.else.i36_crit_edge

if.end.i33.if.else.i36_crit_edge:                 ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i36

land.lhs.true.i35:                                ; preds = %if.end.i33
  %mode.i34 = getelementptr inbounds %struct.rtllib_device, ptr %136, i32 0, i32 92
  %145 = ptrtoint ptr %mode.i34 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %mode.i34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %146)
  %cmp4.i = icmp eq i32 %146, 4
  br i1 %cmp4.i, label %land.lhs.true.i35.do.body.i38_crit_edge, label %land.lhs.true.i35.if.else.i36_crit_edge

land.lhs.true.i35.if.else.i36_crit_edge:          ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i36

land.lhs.true.i35.do.body.i38_crit_edge:          ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i38

if.else.i36:                                      ; preds = %land.lhs.true.i35.if.else.i36_crit_edge, %if.end.i33.if.else.i36_crit_edge
  br label %do.body.i38

do.body.i38:                                      ; preds = %if.else.i36, %land.lhs.true.i35.do.body.i38_crit_edge
  %txlowpower_threshold.0.i = phi i32 [ 62, %if.else.i36 ], [ 72, %land.lhs.true.i35.do.body.i38_crit_edge ]
  %txhipower_threshold.0.i = phi i32 [ 68, %if.else.i36 ], [ 78, %land.lhs.true.i35.do.body.i38_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %147 = load i32, ptr @rt_global_debug_component, align 4
  %and.i37 = and i32 %147, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool8.not.i = icmp eq i32 %and.i37, 0
  br i1 %tobool8.not.i, label %do.body.i38.do.end14.i_crit_edge, label %do.end.i40

do.body.i38.do.end14.i_crit_edge:                 ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14.i

do.end.i40:                                       ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #9
  %undecorated_smoothed_pwdb.i39 = getelementptr i8, ptr %dev, i32 36028
  %148 = ptrtoint ptr %undecorated_smoothed_pwdb.i39 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %undecorated_smoothed_pwdb.i39, align 8
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %149) #10
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i40, %do.body.i38.do.end14.i_crit_edge
  %150 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rtllib.i13, align 8
  %state.i41 = getelementptr inbounds %struct.rtllib_device, ptr %151, i32 0, i32 90
  %152 = ptrtoint ptr %state.i41 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %state.i41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %153)
  %cmp16.i = icmp eq i32 %153, 5
  br i1 %cmp16.i, label %if.then18.i, label %do.end14.i.if.end53.sink.split.sink.split.i_crit_edge

do.end14.i.if.end53.sink.split.sink.split.i_crit_edge: ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.sink.split.sink.split.i

if.then18.i:                                      ; preds = %do.end14.i
  %undecorated_smoothed_pwdb19.i = getelementptr i8, ptr %dev, i32 36028
  %154 = ptrtoint ptr %undecorated_smoothed_pwdb19.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %undecorated_smoothed_pwdb19.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %txhipower_threshold.0.i)
  %cmp20.not.i = icmp ult i32 %155, %txhipower_threshold.0.i
  br i1 %cmp20.not.i, label %if.else25.i, label %if.then18.i.if.end53.sink.split.sink.split.i_crit_edge

if.then18.i.if.end53.sink.split.sink.split.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.sink.split.sink.split.i

if.else25.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %txlowpower_threshold.0.i)
  %cmp27.i = icmp ult i32 %155, %txlowpower_threshold.0.i
  br i1 %cmp27.i, label %land.lhs.true29.i, label %if.else25.i.if.end35.i_crit_edge

if.else25.i.if.end35.i_crit_edge:                 ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

land.lhs.true29.i:                                ; preds = %if.else25.i
  %bDynamicTxHighPower30.i = getelementptr i8, ptr %dev, i32 36145
  %156 = ptrtoint ptr %bDynamicTxHighPower30.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %bDynamicTxHighPower30.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool31.not.i42 = icmp eq i8 %157, 0
  br i1 %tobool31.not.i42, label %land.lhs.true29.i.if.end35.i_crit_edge, label %if.then33.i

land.lhs.true29.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then33.i:                                      ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #9
  %158 = ptrtoint ptr %bDynamicTxHighPower30.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %bDynamicTxHighPower30.i, align 1
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then33.i, %land.lhs.true29.i.if.end35.i_crit_edge, %if.else25.i.if.end35.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %155)
  %cmp37.i = icmp slt i32 %155, 35
  br i1 %cmp37.i, label %if.end35.i.if.end53.sink.split.i_crit_edge, label %if.else41.i

if.end35.i.if.end53.sink.split.i_crit_edge:       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.sink.split.i

if.else41.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %155)
  %cmp43.i = icmp ugt i32 %155, 39
  br i1 %cmp43.i, label %if.else41.i.if.end53.sink.split.i_crit_edge, label %if.else41.i.if.end53.i_crit_edge

if.else41.i.if.end53.i_crit_edge:                 ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

if.else41.i.if.end53.sink.split.i_crit_edge:      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.sink.split.i

if.end53.sink.split.sink.split.i:                 ; preds = %if.then18.i.if.end53.sink.split.sink.split.i_crit_edge, %do.end14.i.if.end53.sink.split.sink.split.i_crit_edge
  %.sink126.i = phi i8 [ 1, %if.then18.i.if.end53.sink.split.sink.split.i_crit_edge ], [ 0, %do.end14.i.if.end53.sink.split.sink.split.i_crit_edge ]
  %bDynamicTxHighPower51.i = getelementptr i8, ptr %dev, i32 36145
  %159 = ptrtoint ptr %bDynamicTxHighPower51.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %.sink126.i, ptr %bDynamicTxHighPower51.i, align 1
  br label %if.end53.sink.split.i

if.end53.sink.split.i:                            ; preds = %if.end53.sink.split.sink.split.i, %if.else41.i.if.end53.sink.split.i_crit_edge, %if.end35.i.if.end53.sink.split.i_crit_edge
  %.sink.i43 = phi i8 [ 1, %if.end35.i.if.end53.sink.split.i_crit_edge ], [ 0, %if.else41.i.if.end53.sink.split.i_crit_edge ], [ 0, %if.end53.sink.split.sink.split.i ]
  %bDynamicTxLowPower24.i = getelementptr i8, ptr %dev, i32 36146
  %160 = ptrtoint ptr %bDynamicTxLowPower24.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %.sink.i43, ptr %bDynamicTxLowPower24.i, align 2
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.end53.sink.split.i, %if.else41.i.if.end53.i_crit_edge
  %bDynamicTxHighPower54.i = getelementptr i8, ptr %dev, i32 36145
  %161 = ptrtoint ptr %bDynamicTxHighPower54.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %bDynamicTxHighPower54.i, align 1, !range !385
  %bLastDTPFlag_High.i = getelementptr i8, ptr %dev, i32 36147
  %163 = ptrtoint ptr %bLastDTPFlag_High.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %bLastDTPFlag_High.i, align 1, !range !385
  call void @__sanitizer_cov_trace_cmp1(i8 %162, i8 %164)
  %cmp59.not.i = icmp eq i8 %162, %164
  br i1 %cmp59.not.i, label %lor.lhs.false.i44, label %if.end53.i.do.body69.i_crit_edge

if.end53.i.do.body69.i_crit_edge:                 ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body69.i

lor.lhs.false.i44:                                ; preds = %if.end53.i
  %bDynamicTxLowPower61.i = getelementptr i8, ptr %dev, i32 36146
  %165 = ptrtoint ptr %bDynamicTxLowPower61.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %bDynamicTxLowPower61.i, align 2, !range !385
  %bLastDTPFlag_Low.i = getelementptr i8, ptr %dev, i32 36148
  %167 = ptrtoint ptr %bLastDTPFlag_Low.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %bLastDTPFlag_Low.i, align 8, !range !385
  call void @__sanitizer_cov_trace_cmp1(i8 %166, i8 %168)
  %cmp66.not.i = icmp eq i8 %166, %168
  br i1 %cmp66.not.i, label %lor.lhs.false.i44.if.end86.i_crit_edge, label %lor.lhs.false.i44.do.body69.i_crit_edge

lor.lhs.false.i44.do.body69.i_crit_edge:          ; preds = %lor.lhs.false.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body69.i

lor.lhs.false.i44.if.end86.i_crit_edge:           ; preds = %lor.lhs.false.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86.i

do.body69.i:                                      ; preds = %lor.lhs.false.i44.do.body69.i_crit_edge, %if.end53.i.do.body69.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %169 = load i32, ptr @rt_global_debug_component, align 4
  %and70.i = and i32 %169, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %do.body69.i.do.end82.i_crit_edge, label %do.end75.i

do.body69.i.do.end82.i_crit_edge:                 ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82.i

do.end75.i:                                       ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #9
  %channel.i = getelementptr inbounds %struct.rtllib_device, ptr %151, i32 0, i32 89, i32 1
  %170 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %channel.i, align 2
  %conv78.i = zext i8 %171 to i32
  %call79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, i32 noundef %conv78.i) #10
  br label %do.end82.i

do.end82.i:                                       ; preds = %do.end75.i, %do.body69.i.do.end82.i_crit_edge
  %172 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %rtllib.i13, align 8
  %channel85.i = getelementptr inbounds %struct.rtllib_device, ptr %173, i32 0, i32 89, i32 1
  %174 = ptrtoint ptr %channel85.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %channel85.i, align 2
  call void @rtl92e_set_tx_power(ptr noundef %dev, i8 noundef zeroext %175) #7
  br label %if.end86.i

if.end86.i:                                       ; preds = %do.end82.i, %lor.lhs.false.i44.if.end86.i_crit_edge
  %176 = ptrtoint ptr %bDynamicTxHighPower54.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %bDynamicTxHighPower54.i, align 1, !range !385
  %178 = ptrtoint ptr %bLastDTPFlag_High.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %bLastDTPFlag_High.i, align 1
  %bDynamicTxLowPower90.i = getelementptr i8, ptr %dev, i32 36146
  %179 = ptrtoint ptr %bDynamicTxLowPower90.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %bDynamicTxLowPower90.i, align 2, !range !385
  %bLastDTPFlag_Low92.i = getelementptr i8, ptr %dev, i32 36148
  %181 = ptrtoint ptr %bLastDTPFlag_Low92.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %bLastDTPFlag_Low92.i, align 8
  br label %_rtl92e_dm_dynamic_tx_power.exit

_rtl92e_dm_dynamic_tx_power.exit:                 ; preds = %if.end86.i, %if.then.i
  %IC_Cut.i = getelementptr i8, ptr %dev, i32 35822
  %182 = ptrtoint ptr %IC_Cut.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %IC_Cut.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %183)
  %cmp.i45 = icmp ugt i8 %183, 2
  br i1 %cmp.i45, label %if.then.i46, label %if.else.i47

if.then.i46:                                      ; preds = %_rtl92e_dm_dynamic_tx_power.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %184 = load i32, ptr @rt_global_debug_component, align 4
  %and.i.i = and i32 %184, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i46.do.end4.i.i_crit_edge, label %do.end.i.i

if.then.i46.do.end4.i.i_crit_edge:                ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i.i

do.end.i.i:                                       ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.98) #10
  br label %do.end4.i.i

do.end4.i.i:                                      ; preds = %do.end.i.i, %if.then.i46.do.end4.i.i_crit_edge
  %call5.i.i = call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 286) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call5.i.i)
  %cmp.i.i = icmp eq i8 %call5.i.i, 1
  br i1 %cmp.i.i, label %do.end4.i.i._rtl92e_dm_check_tx_power_tracking.exit_crit_edge, label %if.end8.i.i

do.end4.i.i._rtl92e_dm_check_tx_power_tracking.exit_crit_edge: ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_tx_power_tracking.exit

if.end8.i.i:                                      ; preds = %do.end4.i.i
  %btxpower_tracking.i.i = getelementptr i8, ptr %dev, i32 36154
  %185 = ptrtoint ptr %btxpower_tracking.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %btxpower_tracking.i.i, align 2, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool9.not.i.i = icmp eq i8 %186, 0
  br i1 %tobool9.not.i.i, label %if.end8.i.i._rtl92e_dm_check_tx_power_tracking.exit_crit_edge, label %if.end11.i.i

if.end8.i.i._rtl92e_dm_check_tx_power_tracking.exit_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_tx_power_tracking.exit

if.end11.i.i:                                     ; preds = %if.end8.i.i
  %187 = load i32, ptr @_rtl92e_dm_check_tx_power_tracking_tssi.tx_power_track_counter, align 4
  %inc.i.i = add i32 %187, 1
  store i32 %inc.i.i, ptr @_rtl92e_dm_check_tx_power_tracking_tssi.tx_power_track_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 179, i32 %inc.i.i)
  %cmp12.i.i = icmp ugt i32 %inc.i.i, 179
  br i1 %cmp12.i.i, label %if.then14.i.i, label %if.end11.i.i._rtl92e_dm_check_tx_power_tracking.exit_crit_edge

if.end11.i.i._rtl92e_dm_check_tx_power_tracking.exit_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_tx_power_tracking.exit

if.then14.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %txpower_tracking_wq.i.i = getelementptr i8, ptr %dev, i32 31000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %188 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %188, ptr noundef %txpower_tracking_wq.i.i, i32 noundef 0) #7
  store i32 0, ptr @_rtl92e_dm_check_tx_power_tracking_tssi.tx_power_track_counter, align 4
  br label %_rtl92e_dm_check_tx_power_tracking.exit

if.else.i47:                                      ; preds = %_rtl92e_dm_dynamic_tx_power.exit
  %btxpower_tracking.i4.i = getelementptr i8, ptr %dev, i32 36154
  %189 = ptrtoint ptr %btxpower_tracking.i4.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %btxpower_tracking.i4.i, align 2, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool.not.i5.i = icmp eq i8 %190, 0
  br i1 %tobool.not.i5.i, label %if.else.i47._rtl92e_dm_check_tx_power_tracking.exit_crit_edge, label %if.end3.i.i

if.else.i47._rtl92e_dm_check_tx_power_tracking.exit_crit_edge: ; preds = %if.else.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_tx_power_tracking.exit

if.end3.i.i:                                      ; preds = %if.else.i47
  %card_8192.i.i = getelementptr i8, ptr %dev, i32 35816
  %191 = ptrtoint ptr %card_8192.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %card_8192.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %192)
  %cmp.i6.i = icmp eq i32 %192, 4
  %..i.i = select i1 %cmp.i6.i, i32 5, i32 2
  %txpower_count.i.i = getelementptr i8, ptr %dev, i32 36156
  %193 = ptrtoint ptr %txpower_count.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %txpower_count.i.i, align 8
  %conv.i.i = zext i8 %194 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %..i.i, i32 %conv.i.i)
  %cmp5.not.i.i = icmp ult i32 %..i.i, %conv.i.i
  br i1 %cmp5.not.i.i, label %if.end9.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i7.i = add i8 %194, 1
  %195 = ptrtoint ptr %txpower_count.i.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %inc.i7.i, ptr %txpower_count.i.i, align 8
  br label %_rtl92e_dm_check_tx_power_tracking.exit

if.end9.i.i:                                      ; preds = %if.end3.i.i
  %.b.i.i = load i1, ptr @_rtl92e_dm_check_tx_power_tracking_thermal.TM_Trigger, align 1
  br i1 %.b.i.i, label %if.end12.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef 0, i32 noundef 2, i32 noundef 4095, i32 noundef 77) #7
  call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef 0, i32 noundef 2, i32 noundef 4095, i32 noundef 79) #7
  call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef 0, i32 noundef 2, i32 noundef 4095, i32 noundef 77) #7
  call void @rtl92e_set_rf_reg(ptr noundef %dev, i32 noundef 0, i32 noundef 2, i32 noundef 4095, i32 noundef 79) #7
  store i1 true, ptr @_rtl92e_dm_check_tx_power_tracking_thermal.TM_Trigger, align 1
  br label %_rtl92e_dm_check_tx_power_tracking.exit

if.end12.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.99) #10
  %txpower_tracking_wq.i8.i = getelementptr i8, ptr %dev, i32 31000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %196 = load ptr, ptr @system_wq, align 4
  %call.i.i.i9.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %196, ptr noundef %txpower_tracking_wq.i8.i, i32 noundef 0) #7
  store i1 false, ptr @_rtl92e_dm_check_tx_power_tracking_thermal.TM_Trigger, align 1
  br label %_rtl92e_dm_check_tx_power_tracking.exit

_rtl92e_dm_check_tx_power_tracking.exit:          ; preds = %if.end12.i.i, %if.then11.i.i, %if.then7.i.i, %if.else.i47._rtl92e_dm_check_tx_power_tracking.exit_crit_edge, %if.then14.i.i, %if.end11.i.i._rtl92e_dm_check_tx_power_tracking.exit_crit_edge, %if.end8.i.i._rtl92e_dm_check_tx_power_tracking.exit_crit_edge, %do.end4.i.i._rtl92e_dm_check_tx_power_tracking.exit_crit_edge
  %197 = load i8, ptr @dm_digtable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.not.i49 = icmp eq i8 %197, 0
  br i1 %tobool.not.i49, label %_rtl92e_dm_check_tx_power_tracking.exit._rtl92e_dm_ctrl_initgain_byrssi.exit_crit_edge, label %if.end.i50

_rtl92e_dm_check_tx_power_tracking.exit._rtl92e_dm_ctrl_initgain_byrssi.exit_crit_edge: ; preds = %_rtl92e_dm_check_tx_power_tracking.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_ctrl_initgain_byrssi.exit

if.end.i50:                                       ; preds = %_rtl92e_dm_check_tx_power_tracking.exit
  %198 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 1), align 1
  %199 = zext i8 %198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %199, ptr @__sancov_gen_cov_switch_values.185)
  switch i8 %198, label %if.end.i50._rtl92e_dm_ctrl_initgain_byrssi.exit_crit_edge [
    i8 0, label %if.end.i.i
    i8 1, label %if.end.i13.i
  ]

if.end.i50._rtl92e_dm_ctrl_initgain_byrssi.exit_crit_edge: ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_ctrl_initgain_byrssi.exit

if.end.i.i:                                       ; preds = %if.end.i50
  %200 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool1.not.i.i = icmp eq i8 %200, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end4.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i8 2, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 7), align 4
  call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 1) #7
  call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 1) #7
  call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 1) #7
  store i8 0, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 2), align 2
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end4.i.i_crit_edge
  %201 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %rtllib.i13, align 8
  %state.i.i = getelementptr inbounds %struct.rtllib_device, ptr %202, i32 0, i32 90
  %203 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %204)
  %cmp5.not.i.i51 = icmp eq i32 %204, 5
  br i1 %cmp5.not.i.i51, label %if.end8.i.i52, label %if.end4.i.i._rtl92e_dm_ctrl_initgain_byrssi.exit_crit_edge

if.end4.i.i._rtl92e_dm_ctrl_initgain_byrssi.exit_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_ctrl_initgain_byrssi.exit

if.end8.i.i52:                                    ; preds = %if.end4.i.i
  %undecorated_smoothed_pwdb.i.i = getelementptr i8, ptr %dev, i32 36028
  %205 = ptrtoint ptr %undecorated_smoothed_pwdb.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %undecorated_smoothed_pwdb.i.i, align 8
  %207 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %207)
  %cmp9.i.i = icmp sgt i32 %206, %207
  br i1 %cmp9.i.i, label %land.lhs.true.i.i, label %if.then19.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i52
  %208 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %208)
  %cmp12.i.i53 = icmp slt i32 %206, %208
  br i1 %cmp12.i.i53, label %land.lhs.true.i.i._rtl92e_dm_ctrl_initgain_byrssi.exit_crit_edge, label %if.then37.i.i

land.lhs.true.i.i._rtl92e_dm_ctrl_initgain_byrssi.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_ctrl_initgain_byrssi.exit

if.then19.i.i:                                    ; preds = %if.end8.i.i52
  %209 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %cmp21.i.i = icmp eq i8 %209, 0
  br i1 %cmp21.i.i, label %land.lhs.true23.i.i, label %if.then19.i.i.if.end27.i.i_crit_edge

if.then19.i.i.if.end27.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i.i

land.lhs.true23.i.i:                              ; preds = %if.then19.i.i
  %reset_count.i.i = getelementptr i8, ptr %dev, i32 36200
  %210 = ptrtoint ptr %reset_count.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %reset_count.i.i, align 4
  %212 = load i32, ptr @_rtl92e_dm_ctrl_initgain_byrssi_false_alarm.reset_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %211, i32 %212)
  %cmp24.i.i = icmp eq i32 %211, %212
  br i1 %cmp24.i.i, label %land.lhs.true23.i.i._rtl92e_dm_ctrl_initgain_byrssi.exit_crit_edge, label %land.lhs.true23.i.i.if.end27.i.i_crit_edge

land.lhs.true23.i.i.if.end27.i.i_crit_edge:       ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i.i

land.lhs.true23.i.i._rtl92e_dm_ctrl_initgain_byrssi.exit_crit_edge: ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_ctrl_initgain_byrssi.exit

if.end27.i.i:                                     ; preds = %land.lhs.true23.i.i.if.end27.i.i_crit_edge, %if.then19.i.i.if.end27.i.i_crit_edge
  %reset_count28.i.i = getelementptr i8, ptr %dev, i32 36200
  %213 = ptrtoint ptr %reset_count28.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %reset_count28.i.i, align 4
  store i32 %214, ptr @_rtl92e_dm_ctrl_initgain_byrssi_false_alarm.reset_cnt, align 4
  store i8 2, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 8), align 1
  store i8 0, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 7), align 4
  call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 8) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3152, i8 noundef zeroext 23) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3160, i8 noundef zeroext 23) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3168, i8 noundef zeroext 23) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3176, i8 noundef zeroext 23) #7
  %CurrentChannelBW.i.i = getelementptr i8, ptr %dev, i32 31420
  %215 = ptrtoint ptr %CurrentChannelBW.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %CurrentChannelBW.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %cmp29.not.i.i = icmp eq i32 %216, 0
  br i1 %cmp29.not.i.i, label %if.else.i.i, label %if.then31.i.i

if.then31.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3207, i8 noundef zeroext 0) #7
  br label %if.end32.i.i

if.else.i.i:                                      ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3120, i8 noundef zeroext 66) #7
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.else.i.i, %if.then31.i.i
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 2570, i8 noundef zeroext 8) #7
  br label %_rtl92e_dm_ctrl_initgain_byrssi.exit

if.then37.i.i:                                    ; preds = %land.lhs.true.i.i
  %217 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %217)
  %cmp39.i.i = icmp eq i8 %217, 1
  br i1 %cmp39.i.i, label %land.lhs.true41.i.i, label %if.then37.i.i.if.end46.i.i_crit_edge

if.then37.i.i.if.end46.i.i_crit_edge:             ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i.i

land.lhs.true41.i.i:                              ; preds = %if.then37.i.i
  %reset_count42.i.i = getelementptr i8, ptr %dev, i32 36200
  %218 = ptrtoint ptr %reset_count42.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %reset_count42.i.i, align 4
  %220 = load i32, ptr @_rtl92e_dm_ctrl_initgain_byrssi_false_alarm.reset_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %220)
  %cmp43.i.i = icmp eq i32 %219, %220
  br i1 %cmp43.i.i, label %if.then45.i.i, label %land.lhs.true41.i.i.if.end46.i.i_crit_edge

land.lhs.true41.i.i.if.end46.i.i_crit_edge:       ; preds = %land.lhs.true41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i.i

if.then45.i.i:                                    ; preds = %land.lhs.true41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @_rtl92e_dm_ctrl_initgain_byrssi_highpwr(ptr noundef %dev) #7
  br label %_rtl92e_dm_ctrl_initgain_byrssi.exit

if.end46.i.i:                                     ; preds = %land.lhs.true41.i.i.if.end46.i.i_crit_edge, %if.then37.i.i.if.end46.i.i_crit_edge
  %reset_count47.i.i = getelementptr i8, ptr %dev, i32 36200
  %221 = ptrtoint ptr %reset_count47.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %reset_count47.i.i, align 4
  %223 = load i32, ptr @_rtl92e_dm_ctrl_initgain_byrssi_false_alarm.reset_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %222, i32 %223)
  %cmp48.not.i.i = icmp eq i32 %222, %223
  store i32 %222, ptr @_rtl92e_dm_ctrl_initgain_byrssi_false_alarm.reset_cnt, align 4
  store i8 1, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 7), align 4
  %..i.i54 = select i1 %cmp48.not.i.i, i8 32, i8 44
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3152, i8 noundef zeroext %..i.i54) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3160, i8 noundef zeroext %..i.i54) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3168, i8 noundef zeroext %..i.i54) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3176, i8 noundef zeroext %..i.i54) #7
  %CurrentChannelBW59.i.i = getelementptr i8, ptr %dev, i32 31420
  %224 = ptrtoint ptr %CurrentChannelBW59.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %CurrentChannelBW59.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %cmp60.not.i.i = icmp eq i32 %225, 0
  br i1 %cmp60.not.i.i, label %if.else63.i.i, label %if.then62.i.i

if.then62.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3207, i8 noundef zeroext 32) #7
  br label %if.end65.i.i

if.else63.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3120, i8 noundef zeroext 68) #7
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %if.else63.i.i, %if.then62.i.i
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 2570, i8 noundef zeroext -51) #7
  call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 1) #7
  call fastcc void @_rtl92e_dm_ctrl_initgain_byrssi_highpwr(ptr noundef %dev) #7
  br label %_rtl92e_dm_ctrl_initgain_byrssi.exit

if.end.i13.i:                                     ; preds = %if.end.i50
  %226 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool1.not.i12.i = icmp eq i8 %226, 0
  br i1 %tobool1.not.i12.i, label %if.end3.i.i56, label %if.end3.thread.i.i

if.end3.thread.i.i:                               ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  store i8 0, ptr @_rtl92e_dm_ctrl_initgain_byrssi_driver.fw_dig, align 1
  br label %for.body.preheader.i.i

if.end3.i.i56:                                    ; preds = %if.end.i13.i
  %.pr.i.i = load i8, ptr @_rtl92e_dm_ctrl_initgain_byrssi_driver.fw_dig, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr.i.i)
  %cmp.i.i55 = icmp ult i8 %.pr.i.i, 4
  br i1 %cmp.i.i55, label %if.end3.i.i56.for.body.preheader.i.i_crit_edge, label %if.end3.i.i56.if.end10.i.i_crit_edge

if.end3.i.i56.if.end10.i.i_crit_edge:             ; preds = %if.end3.i.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

if.end3.i.i56.for.body.preheader.i.i_crit_edge:   ; preds = %if.end3.i.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.end3.i.i56.for.body.preheader.i.i_crit_edge, %if.end3.thread.i.i
  call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 8) #7
  call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 8) #7
  call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 8) #7
  %227 = load i8, ptr @_rtl92e_dm_ctrl_initgain_byrssi_driver.fw_dig, align 1
  %inc9.i.i = add i8 %227, 1
  store i8 %inc9.i.i, ptr @_rtl92e_dm_ctrl_initgain_byrssi_driver.fw_dig, align 1
  store i8 0, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 7), align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %for.body.preheader.i.i, %if.end3.i.i56.if.end10.i.i_crit_edge
  %228 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %rtllib.i13, align 8
  %state.i15.i = getelementptr inbounds %struct.rtllib_device, ptr %229, i32 0, i32 90
  %230 = ptrtoint ptr %state.i15.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %state.i15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %231)
  %cmp11.i.i = icmp eq i32 %231, 5
  %..i16.i = zext i1 %cmp11.i.i to i8
  store i8 %..i16.i, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 9), align 2
  %undecorated_smoothed_pwdb.i17.i = getelementptr i8, ptr %dev, i32 36028
  %232 = ptrtoint ptr %undecorated_smoothed_pwdb.i17.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %undecorated_smoothed_pwdb.i17.i, align 8
  store i32 %233, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 20), align 4
  %234 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool.not.i.i.i = icmp eq i8 %234, 0
  br i1 %tobool.not.i.i.i, label %if.end10.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.end10.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 false, ptr @_rtl92e_dm_initial_gain.initialized, align 1
  store i32 0, ptr @_rtl92e_dm_initial_gain.reset_cnt, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end10.i.i.if.end.i.i.i_crit_edge
  %235 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %rtllib.i13, align 8
  %call1.i.i.i = call zeroext i1 @rtllib_act_scanning(ptr noundef %236, i1 noundef zeroext true) #7
  br i1 %call1.i.i.i, label %if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %237 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 10), align 1
  %238 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 9), align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %237, i8 %238)
  %cmp.i.i.i = icmp eq i8 %237, %238
  br i1 %cmp.i.i.i, label %if.then6.i.i.i, label %if.else30.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %237)
  %cmp8.i.i.i = icmp eq i8 %237, 1
  br i1 %cmp8.i.i.i, label %if.then10.i.i.i, label %if.else.i.i.i

if.then10.i.i.i:                                  ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %239 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 20), align 4
  %add.i.i.i = add i32 %239, 10
  %240 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 17), align 4
  %conv11.i.i.i = zext i8 %240 to i32
  %sub.i.i.i = sub i32 %add.i.i.i, %conv11.i.i.i
  %241 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 19), align 2
  %conv12.i.i.i = zext i8 %241 to i32
  %242 = call i32 @llvm.smax.i32(i32 %sub.i.i.i, i32 %conv12.i.i.i) #7
  %243 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 18), align 1
  %conv15.i.i.i = zext i8 %243 to i32
  %244 = call i32 @llvm.umin.i32(i32 %242, i32 %conv15.i.i.i) #7
  store i32 %244, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 16), align 4
  br label %if.end34.i.i.i

if.else.i.i.i:                                    ; preds = %if.then6.i.i.i
  %245 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 16), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %cmp23.i.i.i = icmp eq i32 %245, 0
  br i1 %cmp23.i.i.i, label %if.then25.i.i.i, label %if.else27.i.i.i

if.then25.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %DefaultInitialGain.i.i.i = getelementptr i8, ptr %dev, i32 36168
  %246 = ptrtoint ptr %DefaultInitialGain.i.i.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %DefaultInitialGain.i.i.i, align 4
  %conv26.i.i.i = zext i8 %247 to i32
  store i32 %conv26.i.i.i, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 16), align 4
  br label %if.end34.i.i.i

if.else27.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %248 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 15), align 4
  store i32 %248, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 16), align 4
  br label %if.end34.i.i.i

if.else30.i.i.i:                                  ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %DefaultInitialGain31.i.i.i = getelementptr i8, ptr %dev, i32 36168
  %249 = ptrtoint ptr %DefaultInitialGain31.i.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %DefaultInitialGain31.i.i.i, align 4
  %conv33.i.i.i = zext i8 %250 to i32
  store i32 %conv33.i.i.i, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 16), align 4
  store i32 0, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 15), align 4
  br label %if.end34.i.i.i

if.end34.i.i.i:                                   ; preds = %if.else30.i.i.i, %if.else27.i.i.i, %if.then25.i.i.i, %if.then10.i.i.i
  %reset_count.i.i.i = getelementptr i8, ptr %dev, i32 36200
  %251 = ptrtoint ptr %reset_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %reset_count.i.i.i, align 4
  %253 = load i32, ptr @_rtl92e_dm_initial_gain.reset_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %252, i32 %253)
  %cmp35.not.i.i.i = icmp eq i32 %252, %253
  br i1 %cmp35.not.i.i.i, label %if.end34.i.i.i.if.end39.i.i.i_crit_edge, label %if.then37.i.i.i

if.end34.i.i.i.if.end39.i.i.i_crit_edge:          ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @_rtl92e_dm_initial_gain.force_write, align 1
  store i32 %252, ptr @_rtl92e_dm_initial_gain.reset_cnt, align 4
  br label %if.end39.i.i.i

if.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %if.end34.i.i.i.if.end39.i.i.i_crit_edge
  %254 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 15), align 4
  %call40.i.i.i = call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 3152) #7
  %conv41.i.i.i = zext i8 %call40.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %254, i32 %conv41.i.i.i)
  %cmp42.not.i.i.i = icmp eq i32 %254, %conv41.i.i.i
  br i1 %cmp42.not.i.i.i, label %if.end39.i.i.i.if.end45.i.i.i_crit_edge, label %if.then44.i.i.i

if.end39.i.i.i.if.end45.i.i.i_crit_edge:          ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i.i.i

if.then44.i.i.i:                                  ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @_rtl92e_dm_initial_gain.force_write, align 1
  br label %if.end45.i.i.i

if.end45.i.i.i:                                   ; preds = %if.then44.i.i.i, %if.end39.i.i.i.if.end45.i.i.i_crit_edge
  %255 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 15), align 4
  %256 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 16), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %255, i32 %256)
  %cmp46.not.i.i.i = icmp eq i32 %255, %256
  br i1 %cmp46.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end45.i.i.i.if.then52.i.i.i_crit_edge

if.end45.i.i.i.if.then52.i.i.i_crit_edge:         ; preds = %if.end45.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end45.i.i.i
  %.b.i.i.i = load i1, ptr @_rtl92e_dm_initial_gain.initialized, align 1
  br i1 %.b.i.i.i, label %lor.lhs.false49.i.i.i, label %lor.lhs.false.i.i.i.if.then52.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then52.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52.i.i.i

lor.lhs.false49.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %.b73.i.i.i = load i1, ptr @_rtl92e_dm_initial_gain.force_write, align 1
  br i1 %.b73.i.i.i, label %lor.lhs.false49.i.i.i.if.then52.i.i.i_crit_edge, label %lor.lhs.false49.i.i.i._rtl92e_dm_initial_gain.exit.i.i_crit_edge

lor.lhs.false49.i.i.i._rtl92e_dm_initial_gain.exit.i.i_crit_edge: ; preds = %lor.lhs.false49.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_initial_gain.exit.i.i

lor.lhs.false49.i.i.i.if.then52.i.i.i_crit_edge:  ; preds = %lor.lhs.false49.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52.i.i.i

if.then52.i.i.i:                                  ; preds = %lor.lhs.false49.i.i.i.if.then52.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then52.i.i.i_crit_edge, %if.end45.i.i.i.if.then52.i.i.i_crit_edge
  %conv53.i.i.i = trunc i32 %256 to i8
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3152, i8 noundef zeroext %conv53.i.i.i) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3160, i8 noundef zeroext %conv53.i.i.i) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3168, i8 noundef zeroext %conv53.i.i.i) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3176, i8 noundef zeroext %conv53.i.i.i) #7
  %257 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 16), align 4
  store i32 %257, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 15), align 4
  store i1 true, ptr @_rtl92e_dm_initial_gain.initialized, align 1
  br label %cleanup.sink.split.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %if.then52.i.i.i, %if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge
  store i1 %call1.i.i.i, ptr @_rtl92e_dm_initial_gain.force_write, align 1
  br label %_rtl92e_dm_initial_gain.exit.i.i

_rtl92e_dm_initial_gain.exit.i.i:                 ; preds = %cleanup.sink.split.i.i.i, %lor.lhs.false49.i.i.i._rtl92e_dm_initial_gain.exit.i.i_crit_edge
  %258 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool.not.i25.i.i = icmp eq i8 %258, 0
  br i1 %tobool.not.i25.i.i, label %_rtl92e_dm_initial_gain.exit.i.i.if.end.i27.i.i_crit_edge, label %if.then.i26.i.i

_rtl92e_dm_initial_gain.exit.i.i.if.end.i27.i.i_crit_edge: ; preds = %_rtl92e_dm_initial_gain.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i27.i.i

if.then.i26.i.i:                                  ; preds = %_rtl92e_dm_initial_gain.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i8 0, ptr @_rtl92e_dm_pd_th.initialized, align 1
  store i32 0, ptr @_rtl92e_dm_pd_th.reset_cnt, align 4
  br label %if.end.i27.i.i

if.end.i27.i.i:                                   ; preds = %if.then.i26.i.i, %_rtl92e_dm_initial_gain.exit.i.i.if.end.i27.i.i_crit_edge
  %259 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 10), align 1
  %260 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 9), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %259)
  %cmp5.i.i.i = icmp eq i8 %259, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %260)
  %261 = icmp eq i8 %260, 1
  %262 = and i1 %cmp5.i.i.i, %261
  br i1 %262, label %if.then7.i.i.i, label %if.end.i27.i.i.if.end27.i.i.i_crit_edge

if.end.i27.i.i.if.end27.i.i.i_crit_edge:          ; preds = %if.end.i27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i27.i.i
  %263 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 20), align 4
  %264 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %263, i32 %264)
  %cmp8.not.i.i.i = icmp slt i32 %263, %264
  br i1 %cmp8.not.i.i.i, label %if.else.i28.i.i, label %if.then7.i.i.i.if.end27.i.i.i_crit_edge

if.then7.i.i.i.if.end27.i.i.i_crit_edge:          ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i.i.i

if.else.i28.i.i:                                  ; preds = %if.then7.i.i.i
  %265 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %263, i32 %265)
  %cmp11.not.i.i.i = icmp sgt i32 %263, %265
  br i1 %cmp11.not.i.i.i, label %if.else14.i.i.i, label %if.else.i28.i.i.if.end27.i.i.i_crit_edge

if.else.i28.i.i.if.end27.i.i.i_crit_edge:         ; preds = %if.else.i28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i.i.i

if.else14.i.i.i:                                  ; preds = %if.else.i28.i.i
  %266 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %263, i32 %266)
  %cmp15.not.i.i.i = icmp slt i32 %263, %266
  br i1 %cmp15.not.i.i.i, label %if.else14.i.i.i.if.else20.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.else14.i.i.i.if.else20.i.i.i_crit_edge:        ; preds = %if.else14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else20.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else14.i.i.i
  %267 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %263, i32 %267)
  %cmp17.i.i.i = icmp slt i32 %263, %267
  br i1 %cmp17.i.i.i, label %land.lhs.true.i.i.i.if.end27.i.i.i_crit_edge, label %land.lhs.true.i.i.i.if.else20.i.i.i_crit_edge

land.lhs.true.i.i.i.if.else20.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else20.i.i.i

land.lhs.true.i.i.i.if.end27.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i.i.i

if.else20.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.if.else20.i.i.i_crit_edge, %if.else14.i.i.i.if.else20.i.i.i_crit_edge
  %268 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 12), align 1
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.else20.i.i.i, %land.lhs.true.i.i.i.if.end27.i.i.i_crit_edge, %if.else.i28.i.i.if.end27.i.i.i_crit_edge, %if.then7.i.i.i.if.end27.i.i.i_crit_edge, %if.end.i27.i.i.if.end27.i.i.i_crit_edge
  %.sink.i.i.i = phi i8 [ %268, %if.else20.i.i.i ], [ 2, %if.then7.i.i.i.if.end27.i.i.i_crit_edge ], [ 0, %if.else.i28.i.i.if.end27.i.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.i.if.end27.i.i.i_crit_edge ], [ 0, %if.end.i27.i.i.if.end27.i.i.i_crit_edge ]
  store i8 %.sink.i.i.i, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 11), align 4
  %reset_count.i29.i.i = getelementptr i8, ptr %dev, i32 36200
  %269 = ptrtoint ptr %reset_count.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %reset_count.i29.i.i, align 4
  %271 = load i32, ptr @_rtl92e_dm_pd_th.reset_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %270, i32 %271)
  %cmp28.not.i.i.i = icmp eq i32 %270, %271
  br i1 %cmp28.not.i.i.i, label %if.end27.i.i.i.if.end32.i.i.i_crit_edge, label %if.then30.i.i.i

if.end27.i.i.i.if.end32.i.i.i_crit_edge:          ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i.i.i

if.then30.i.i.i:                                  ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @_rtl92e_dm_pd_th.force_write, align 1
  store i32 %270, ptr @_rtl92e_dm_pd_th.reset_cnt, align 4
  br label %if.end32.i.i.i

if.end32.i.i.i:                                   ; preds = %if.then30.i.i.i, %if.end27.i.i.i.if.end32.i.i.i_crit_edge
  %272 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 12), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %272, i8 %.sink.i.i.i)
  %cmp35.not.i30.i.i = icmp eq i8 %272, %.sink.i.i.i
  br i1 %cmp35.not.i30.i.i, label %lor.lhs.false.i31.i.i, label %if.end32.i.i.i.if.then43.i.i.i_crit_edge

if.end32.i.i.i.if.then43.i.i.i_crit_edge:         ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i.i.i

lor.lhs.false.i31.i.i:                            ; preds = %if.end32.i.i.i
  %273 = load i8, ptr @_rtl92e_dm_pd_th.initialized, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %273)
  %cmp38.i.i.i = icmp ult i8 %273, 4
  br i1 %cmp38.i.i.i, label %lor.lhs.false.i31.i.i.if.then43.i.i.i_crit_edge, label %lor.lhs.false40.i.i.i

lor.lhs.false.i31.i.i.if.then43.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i.i.i

lor.lhs.false40.i.i.i:                            ; preds = %lor.lhs.false.i31.i.i
  %.b.i32.i.i = load i1, ptr @_rtl92e_dm_pd_th.force_write, align 1
  br i1 %.b.i32.i.i, label %lor.lhs.false40.i.i.i.if.then43.i.i.i_crit_edge, label %lor.lhs.false40.i.i.i._rtl92e_dm_pd_th.exit.i.i_crit_edge

lor.lhs.false40.i.i.i._rtl92e_dm_pd_th.exit.i.i_crit_edge: ; preds = %lor.lhs.false40.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_pd_th.exit.i.i

lor.lhs.false40.i.i.i.if.then43.i.i.i_crit_edge:  ; preds = %lor.lhs.false40.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i.i.i

if.then43.i.i.i:                                  ; preds = %lor.lhs.false40.i.i.i.if.then43.i.i.i_crit_edge, %lor.lhs.false.i31.i.i.if.then43.i.i.i_crit_edge, %if.end32.i.i.i.if.then43.i.i.i_crit_edge
  %274 = zext i8 %.sink.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %274, ptr @__sancov_gen_cov_switch_values.186)
  switch i8 %.sink.i.i.i, label %if.then43.i.i.i.if.end77.i.i.i_crit_edge [
    i8 0, label %if.then47.i.i.i
    i8 1, label %if.then57.i.i.i
    i8 2, label %if.then68.i.i.i
  ]

if.then43.i.i.i.if.end77.i.i.i_crit_edge:         ; preds = %if.then43.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.i.i.i

if.then47.i.i.i:                                  ; preds = %if.then43.i.i.i
  %CurrentChannelBW.i.i.i = getelementptr i8, ptr %dev, i32 31420
  %275 = ptrtoint ptr %CurrentChannelBW.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %CurrentChannelBW.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %cmp48.not.i.i.i = icmp eq i32 %276, 0
  br i1 %cmp48.not.i.i.i, label %if.else51.i.i.i, label %if.then50.i.i.i

if.then50.i.i.i:                                  ; preds = %if.then47.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3207, i8 noundef zeroext 0) #7
  br label %if.end77.i.i.i

if.else51.i.i.i:                                  ; preds = %if.then47.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3120, i8 noundef zeroext 66) #7
  br label %if.end77.i.i.i

if.then57.i.i.i:                                  ; preds = %if.then43.i.i.i
  %CurrentChannelBW58.i.i.i = getelementptr i8, ptr %dev, i32 31420
  %277 = ptrtoint ptr %CurrentChannelBW58.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %CurrentChannelBW58.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %cmp59.not.i.i.i = icmp eq i32 %278, 0
  br i1 %cmp59.not.i.i.i, label %if.else62.i.i.i, label %if.then61.i.i.i

if.then61.i.i.i:                                  ; preds = %if.then57.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3207, i8 noundef zeroext 32) #7
  br label %if.end77.i.i.i

if.else62.i.i.i:                                  ; preds = %if.then57.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3120, i8 noundef zeroext 68) #7
  br label %if.end77.i.i.i

if.then68.i.i.i:                                  ; preds = %if.then43.i.i.i
  %CurrentChannelBW69.i.i.i = getelementptr i8, ptr %dev, i32 31420
  %279 = ptrtoint ptr %CurrentChannelBW69.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %CurrentChannelBW69.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %cmp70.not.i.i.i = icmp eq i32 %280, 0
  br i1 %cmp70.not.i.i.i, label %if.else73.i.i.i, label %if.then72.i.i.i

if.then72.i.i.i:                                  ; preds = %if.then68.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3207, i8 noundef zeroext 16) #7
  br label %if.end77.i.i.i

if.else73.i.i.i:                                  ; preds = %if.then68.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3120, i8 noundef zeroext 67) #7
  br label %if.end77.i.i.i

if.end77.i.i.i:                                   ; preds = %if.else73.i.i.i, %if.then72.i.i.i, %if.else62.i.i.i, %if.then61.i.i.i, %if.else51.i.i.i, %if.then50.i.i.i, %if.then43.i.i.i.if.end77.i.i.i_crit_edge
  %281 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 11), align 4
  store i8 %281, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 12), align 1
  %282 = load i8, ptr @_rtl92e_dm_pd_th.initialized, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %282)
  %cmp79.i.i.i = icmp ult i8 %282, 4
  br i1 %cmp79.i.i.i, label %if.then81.i.i.i, label %if.end77.i.i.i.if.end82.i.i.i_crit_edge

if.end77.i.i.i.if.end82.i.i.i_crit_edge:          ; preds = %if.end77.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.i.i.i

if.then81.i.i.i:                                  ; preds = %if.end77.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i.i.i = add nuw nsw i8 %282, 1
  store i8 %inc.i.i.i, ptr @_rtl92e_dm_pd_th.initialized, align 1
  br label %if.end82.i.i.i

if.end82.i.i.i:                                   ; preds = %if.then81.i.i.i, %if.end77.i.i.i.if.end82.i.i.i_crit_edge
  store i1 false, ptr @_rtl92e_dm_pd_th.force_write, align 1
  br label %_rtl92e_dm_pd_th.exit.i.i

_rtl92e_dm_pd_th.exit.i.i:                        ; preds = %if.end82.i.i.i, %lor.lhs.false40.i.i.i._rtl92e_dm_pd_th.exit.i.i_crit_edge
  %283 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool.not.i33.i.i = icmp eq i8 %283, 0
  br i1 %tobool.not.i33.i.i, label %_rtl92e_dm_pd_th.exit.i.i.if.end.i36.i.i_crit_edge, label %if.then.i34.i.i

_rtl92e_dm_pd_th.exit.i.i.if.end.i36.i.i_crit_edge: ; preds = %_rtl92e_dm_pd_th.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i36.i.i

if.then.i34.i.i:                                  ; preds = %_rtl92e_dm_pd_th.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 false, ptr @_rtl92e_dm_cs_ratio.initialized, align 1
  store i32 0, ptr @_rtl92e_dm_cs_ratio.reset_cnt, align 4
  br label %if.end.i36.i.i

if.end.i36.i.i:                                   ; preds = %if.then.i34.i.i, %_rtl92e_dm_pd_th.exit.i.i.if.end.i36.i.i_crit_edge
  %284 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 10), align 1
  %285 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 9), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %284)
  %cmp5.i35.i.i = icmp eq i8 %284, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %285)
  %286 = icmp eq i8 %285, 1
  %287 = and i1 %cmp5.i35.i.i, %286
  br i1 %287, label %if.then7.i38.i.i, label %if.end.i36.i.i.if.end20.i.i.i_crit_edge

if.end.i36.i.i.if.end20.i.i.i_crit_edge:          ; preds = %if.end.i36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i.i.i

if.then7.i38.i.i:                                 ; preds = %if.end.i36.i.i
  %288 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 20), align 4
  %289 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %288, i32 %289)
  %cmp8.not.i37.i.i = icmp sgt i32 %288, %289
  br i1 %cmp8.not.i37.i.i, label %if.else.i40.i.i, label %if.then7.i38.i.i.if.end20.i.i.i_crit_edge

if.then7.i38.i.i.if.end20.i.i.i_crit_edge:        ; preds = %if.then7.i38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i.i.i

if.else.i40.i.i:                                  ; preds = %if.then7.i38.i.i
  %290 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %288, i32 %290)
  %cmp11.not.i39.i.i = icmp slt i32 %288, %290
  br i1 %cmp11.not.i39.i.i, label %if.else14.i41.i.i, label %if.else.i40.i.i.if.end20.i.i.i_crit_edge

if.else.i40.i.i.if.end20.i.i.i_crit_edge:         ; preds = %if.else.i40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i.i.i

if.else14.i41.i.i:                                ; preds = %if.else.i40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %291 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 14), align 1
  br label %if.end20.i.i.i

if.end20.i.i.i:                                   ; preds = %if.else14.i41.i.i, %if.else.i40.i.i.if.end20.i.i.i_crit_edge, %if.then7.i38.i.i.if.end20.i.i.i_crit_edge, %if.end.i36.i.i.if.end20.i.i.i_crit_edge
  %.sink.i42.i.i = phi i8 [ %291, %if.else14.i41.i.i ], [ 0, %if.then7.i38.i.i.if.end20.i.i.i_crit_edge ], [ 1, %if.else.i40.i.i.if.end20.i.i.i_crit_edge ], [ 0, %if.end.i36.i.i.if.end20.i.i.i_crit_edge ]
  store i8 %.sink.i42.i.i, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 13), align 2
  %292 = ptrtoint ptr %reset_count.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %reset_count.i29.i.i, align 4
  %294 = load i32, ptr @_rtl92e_dm_cs_ratio.reset_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %293, i32 %294)
  %cmp21.not.i.i.i = icmp eq i32 %293, %294
  br i1 %cmp21.not.i.i.i, label %if.end20.i.i.i.if.end25.i.i.i_crit_edge, label %if.then23.i.i.i

if.end20.i.i.i.if.end25.i.i.i_crit_edge:          ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i.i.i

if.then23.i.i.i:                                  ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @_rtl92e_dm_cs_ratio.force_write, align 1
  store i32 %293, ptr @_rtl92e_dm_cs_ratio.reset_cnt, align 4
  br label %if.end25.i.i.i

if.end25.i.i.i:                                   ; preds = %if.then23.i.i.i, %if.end20.i.i.i.if.end25.i.i.i_crit_edge
  %295 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 14), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %295, i8 %.sink.i42.i.i)
  %cmp28.not.i44.i.i = icmp eq i8 %295, %.sink.i42.i.i
  br i1 %cmp28.not.i44.i.i, label %lor.lhs.false.i46.i.i, label %if.end25.i.i.i.if.then34.i.i.i_crit_edge

if.end25.i.i.i.if.then34.i.i.i_crit_edge:         ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34.i.i.i

lor.lhs.false.i46.i.i:                            ; preds = %if.end25.i.i.i
  %.b.i45.i.i = load i1, ptr @_rtl92e_dm_cs_ratio.initialized, align 1
  br i1 %.b.i45.i.i, label %lor.lhs.false31.i.i.i, label %lor.lhs.false.i46.i.i.if.then34.i.i.i_crit_edge

lor.lhs.false.i46.i.i.if.then34.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34.i.i.i

lor.lhs.false31.i.i.i:                            ; preds = %lor.lhs.false.i46.i.i
  %.b50.i.i.i = load i1, ptr @_rtl92e_dm_cs_ratio.force_write, align 1
  br i1 %.b50.i.i.i, label %lor.lhs.false31.i.i.i.if.then34.i.i.i_crit_edge, label %lor.lhs.false31.i.i.i._rtl92e_dm_cs_ratio.exit.i.i_crit_edge

lor.lhs.false31.i.i.i._rtl92e_dm_cs_ratio.exit.i.i_crit_edge: ; preds = %lor.lhs.false31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_cs_ratio.exit.i.i

lor.lhs.false31.i.i.i.if.then34.i.i.i_crit_edge:  ; preds = %lor.lhs.false31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34.i.i.i

if.then34.i.i.i:                                  ; preds = %lor.lhs.false31.i.i.i.if.then34.i.i.i_crit_edge, %lor.lhs.false.i46.i.i.if.then34.i.i.i_crit_edge, %if.end25.i.i.i.if.then34.i.i.i_crit_edge
  %296 = zext i8 %.sink.i42.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %296, ptr @__sancov_gen_cov_switch_values.187)
  switch i8 %.sink.i42.i.i, label %if.then34.i.i.i.if.end45.i48.i.i_crit_edge [
    i8 0, label %if.then34.i.i.i.if.end45.sink.split.i.i.i_crit_edge
    i8 1, label %if.then43.i47.i.i
  ]

if.then34.i.i.i.if.end45.sink.split.i.i.i_crit_edge: ; preds = %if.then34.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.sink.split.i.i.i

if.then34.i.i.i.if.end45.i48.i.i_crit_edge:       ; preds = %if.then34.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i48.i.i

if.then43.i47.i.i:                                ; preds = %if.then34.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.sink.split.i.i.i

if.end45.sink.split.i.i.i:                        ; preds = %if.then43.i47.i.i, %if.then34.i.i.i.if.end45.sink.split.i.i.i_crit_edge
  %.sink51.i.i.i = phi i8 [ -51, %if.then43.i47.i.i ], [ 8, %if.then34.i.i.i.if.end45.sink.split.i.i.i_crit_edge ]
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 2570, i8 noundef zeroext %.sink51.i.i.i) #7
  br label %if.end45.i48.i.i

if.end45.i48.i.i:                                 ; preds = %if.end45.sink.split.i.i.i, %if.then34.i.i.i.if.end45.i48.i.i_crit_edge
  %297 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 13), align 2
  store i8 %297, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 14), align 1
  store i1 true, ptr @_rtl92e_dm_cs_ratio.initialized, align 1
  store i1 false, ptr @_rtl92e_dm_cs_ratio.force_write, align 1
  br label %_rtl92e_dm_cs_ratio.exit.i.i

_rtl92e_dm_cs_ratio.exit.i.i:                     ; preds = %if.end45.i48.i.i, %lor.lhs.false31.i.i.i._rtl92e_dm_cs_ratio.exit.i.i_crit_edge
  %298 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %tobool15.not.i.i = icmp eq i8 %298, 0
  br i1 %tobool15.not.i.i, label %_rtl92e_dm_cs_ratio.exit.i.i._rtl92e_dm_ctrl_initgain_byrssi_driver.exit.i_crit_edge, label %if.then16.i.i

_rtl92e_dm_cs_ratio.exit.i.i._rtl92e_dm_ctrl_initgain_byrssi_driver.exit.i_crit_edge: ; preds = %_rtl92e_dm_cs_ratio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_ctrl_initgain_byrssi_driver.exit.i

if.then16.i.i:                                    ; preds = %_rtl92e_dm_cs_ratio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i8 0, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 2), align 2
  br label %_rtl92e_dm_ctrl_initgain_byrssi_driver.exit.i

_rtl92e_dm_ctrl_initgain_byrssi_driver.exit.i:    ; preds = %if.then16.i.i, %_rtl92e_dm_cs_ratio.exit.i.i._rtl92e_dm_ctrl_initgain_byrssi_driver.exit.i_crit_edge
  %299 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 9), align 2
  store i8 %299, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 10), align 1
  br label %_rtl92e_dm_ctrl_initgain_byrssi.exit

_rtl92e_dm_ctrl_initgain_byrssi.exit:             ; preds = %_rtl92e_dm_ctrl_initgain_byrssi_driver.exit.i, %if.end65.i.i, %if.then45.i.i, %if.end32.i.i, %land.lhs.true23.i.i._rtl92e_dm_ctrl_initgain_byrssi.exit_crit_edge, %land.lhs.true.i.i._rtl92e_dm_ctrl_initgain_byrssi.exit_crit_edge, %if.end4.i.i._rtl92e_dm_ctrl_initgain_byrssi.exit_crit_edge, %if.end.i50._rtl92e_dm_ctrl_initgain_byrssi.exit_crit_edge, %_rtl92e_dm_check_tx_power_tracking.exit._rtl92e_dm_ctrl_initgain_byrssi.exit_crit_edge
  %CurrentChannelBW.i58 = getelementptr i8, ptr %dev, i32 31420
  %300 = ptrtoint ptr %CurrentChannelBW.i58 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %CurrentChannelBW.i58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %cmp.i59 = icmp eq i32 %301, 0
  br i1 %cmp.i59, label %_rtl92e_dm_ctrl_initgain_byrssi.exit._rtl92e_dm_bandwidth_autoswitch.exit_crit_edge, label %lor.lhs.false.i62

_rtl92e_dm_ctrl_initgain_byrssi.exit._rtl92e_dm_bandwidth_autoswitch.exit_crit_edge: ; preds = %_rtl92e_dm_ctrl_initgain_byrssi.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_bandwidth_autoswitch.exit

lor.lhs.false.i62:                                ; preds = %_rtl92e_dm_ctrl_initgain_byrssi.exit
  %302 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %rtllib.i13, align 8
  %bandwidth_auto_switch.i = getelementptr inbounds %struct.rtllib_device, ptr %303, i32 0, i32 154
  %bautoswitch_enable.i = getelementptr inbounds %struct.rtllib_device, ptr %303, i32 0, i32 154, i32 3
  %304 = ptrtoint ptr %bautoswitch_enable.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %bautoswitch_enable.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %tobool.not.i61 = icmp eq i8 %305, 0
  br i1 %tobool.not.i61, label %lor.lhs.false.i62._rtl92e_dm_bandwidth_autoswitch.exit_crit_edge, label %if.end.i64

lor.lhs.false.i62._rtl92e_dm_bandwidth_autoswitch.exit_crit_edge: ; preds = %lor.lhs.false.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_bandwidth_autoswitch.exit

if.end.i64:                                       ; preds = %lor.lhs.false.i62
  %bforced_tx20Mhz.i = getelementptr inbounds %struct.rtllib_device, ptr %303, i32 0, i32 154, i32 2
  %306 = ptrtoint ptr %bforced_tx20Mhz.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %bforced_tx20Mhz.i, align 4, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool3.not.i = icmp eq i8 %307, 0
  %undecorated_smoothed_pwdb.i63 = getelementptr i8, ptr %dev, i32 36028
  %308 = ptrtoint ptr %undecorated_smoothed_pwdb.i63 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %undecorated_smoothed_pwdb.i63, align 8
  br i1 %tobool3.not.i, label %if.then4.i, label %if.else.i66

if.then4.i:                                       ; preds = %if.end.i64
  %threshold_40Mhzto20Mhz.i = getelementptr inbounds %struct.rtllib_device, ptr %303, i32 0, i32 154, i32 1
  %310 = ptrtoint ptr %threshold_40Mhzto20Mhz.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %threshold_40Mhzto20Mhz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %309, i32 %311)
  %cmp7.not.i65 = icmp sgt i32 %309, %311
  br i1 %cmp7.not.i65, label %if.then4.i._rtl92e_dm_bandwidth_autoswitch.exit_crit_edge, label %if.then4.i.cleanup.sink.split.i_crit_edge

if.then4.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then4.i._rtl92e_dm_bandwidth_autoswitch.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_bandwidth_autoswitch.exit

if.else.i66:                                      ; preds = %if.end.i64
  %312 = ptrtoint ptr %bandwidth_auto_switch.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %bandwidth_auto_switch.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %309, i32 %313)
  %cmp16.not.i = icmp slt i32 %309, %313
  br i1 %cmp16.not.i, label %if.else.i66._rtl92e_dm_bandwidth_autoswitch.exit_crit_edge, label %if.else.i66.cleanup.sink.split.i_crit_edge

if.else.i66.cleanup.sink.split.i_crit_edge:       ; preds = %if.else.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.else.i66._rtl92e_dm_bandwidth_autoswitch.exit_crit_edge: ; preds = %if.else.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_bandwidth_autoswitch.exit

cleanup.sink.split.i:                             ; preds = %if.else.i66.cleanup.sink.split.i_crit_edge, %if.then4.i.cleanup.sink.split.i_crit_edge
  %.sink.i67 = phi i8 [ 1, %if.then4.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.else.i66.cleanup.sink.split.i_crit_edge ]
  %314 = ptrtoint ptr %bforced_tx20Mhz.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %.sink.i67, ptr %bforced_tx20Mhz.i, align 4
  br label %_rtl92e_dm_bandwidth_autoswitch.exit

_rtl92e_dm_bandwidth_autoswitch.exit:             ; preds = %cleanup.sink.split.i, %if.else.i66._rtl92e_dm_bandwidth_autoswitch.exit_crit_edge, %if.then4.i._rtl92e_dm_bandwidth_autoswitch.exit_crit_edge, %lor.lhs.false.i62._rtl92e_dm_bandwidth_autoswitch.exit_crit_edge, %_rtl92e_dm_ctrl_initgain_byrssi.exit._rtl92e_dm_bandwidth_autoswitch.exit_crit_edge
  %rfpath_check_wq.i = getelementptr i8, ptr %dev, i32 31100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %315 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %315, ptr noundef %rfpath_check_wq.i, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %316 = load i32, ptr @rt_global_debug_component, align 4
  %and.i68 = and i32 %316, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool.not.i69 = icmp eq i32 %and.i68, 0
  br i1 %tobool.not.i69, label %_rtl92e_dm_bandwidth_autoswitch.exit.do.body8.i_crit_edge, label %do.end.i72

_rtl92e_dm_bandwidth_autoswitch.exit.do.body8.i_crit_edge: ; preds = %_rtl92e_dm_bandwidth_autoswitch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8.i

do.end.i72:                                       ; preds = %_rtl92e_dm_bandwidth_autoswitch.exit
  call void @__sanitizer_cov_trace_pc() #9
  %317 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %rtllib.i13, align 8
  %fsync_rssi_threshold.i = getelementptr inbounds %struct.rtllib_device, ptr %318, i32 0, i32 147
  %319 = ptrtoint ptr %fsync_rssi_threshold.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %fsync_rssi_threshold.i, align 8
  %conv.i = zext i8 %320 to i32
  %fsync_time_interval.i = getelementptr inbounds %struct.rtllib_device, ptr %318, i32 0, i32 145
  %321 = ptrtoint ptr %fsync_time_interval.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %fsync_time_interval.i, align 8
  %fsync_multiple_timeinterval.i = getelementptr inbounds %struct.rtllib_device, ptr %318, i32 0, i32 149
  %323 = ptrtoint ptr %fsync_multiple_timeinterval.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %fsync_multiple_timeinterval.i, align 2
  %conv4.i = zext i8 %324 to i32
  %call5.i71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %conv.i, i32 noundef %322, i32 noundef %conv4.i) #10
  br label %do.body8.i

do.body8.i:                                       ; preds = %do.end.i72, %_rtl92e_dm_bandwidth_autoswitch.exit.do.body8.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %325 = load i32, ptr @rt_global_debug_component, align 4
  %and9.i = and i32 %325, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %do.body8.i.do.end22.i_crit_edge, label %do.end14.i73

do.body8.i.do.end22.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i

do.end14.i73:                                     ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  %326 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %rtllib.i13, align 8
  %fsync_rate_bitmap.i = getelementptr inbounds %struct.rtllib_device, ptr %327, i32 0, i32 146
  %328 = ptrtoint ptr %fsync_rate_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %fsync_rate_bitmap.i, align 4
  %fsync_firstdiff_ratethreshold.i = getelementptr inbounds %struct.rtllib_device, ptr %327, i32 0, i32 150
  %330 = ptrtoint ptr %fsync_firstdiff_ratethreshold.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %fsync_firstdiff_ratethreshold.i, align 4
  %fsync_seconddiff_ratethreshold.i = getelementptr inbounds %struct.rtllib_device, ptr %327, i32 0, i32 151
  %332 = ptrtoint ptr %fsync_seconddiff_ratethreshold.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %fsync_seconddiff_ratethreshold.i, align 8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, i32 noundef %329, i32 noundef %331, i32 noundef %333) #10
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end14.i73, %do.body8.i.do.end22.i_crit_edge
  %334 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %rtllib.i13, align 8
  %state.i74 = getelementptr inbounds %struct.rtllib_device, ptr %335, i32 0, i32 90
  %336 = ptrtoint ptr %state.i74 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %state.i74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %337)
  %cmp.i75 = icmp eq i32 %337, 5
  br i1 %cmp.i75, label %land.lhs.true.i79, label %do.end22.i.if.else63.i_crit_edge

do.end22.i.if.else63.i_crit_edge:                 ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else63.i

land.lhs.true.i79:                                ; preds = %do.end22.i
  %pHTInfo.i76 = getelementptr inbounds %struct.rtllib_device, ptr %335, i32 0, i32 27
  %338 = ptrtoint ptr %pHTInfo.i76 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %pHTInfo.i76, align 8
  %IOTPeer.i77 = getelementptr inbounds %struct.rt_hi_throughput, ptr %339, i32 0, i32 50
  %340 = ptrtoint ptr %IOTPeer.i77 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %IOTPeer.i77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %341)
  %cmp27.i78 = icmp eq i8 %341, 3
  br i1 %cmp27.i78, label %if.then29.i, label %land.lhs.true.i79.if.else63.i_crit_edge

land.lhs.true.i79.if.else63.i_crit_edge:          ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else63.i

if.then29.i:                                      ; preds = %land.lhs.true.i79
  %bfsync_enable.i = getelementptr inbounds %struct.rtllib_device, ptr %335, i32 0, i32 148
  %342 = ptrtoint ptr %bfsync_enable.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %bfsync_enable.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %343)
  %cmp33.i = icmp eq i8 %343, 0
  %fsync_state.i = getelementptr inbounds %struct.rtllib_device, ptr %335, i32 0, i32 152
  %344 = ptrtoint ptr %fsync_state.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %fsync_state.i, align 4
  br i1 %cmp33.i, label %if.then35.i, label %if.else.i87

if.then35.i:                                      ; preds = %if.then29.i
  %346 = zext i32 %345 to i64
  call void @__sanitizer_cov_trace_switch(i64 %346, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %345, label %if.then35.i.if.end54.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb39.i
  ]

if.then35.i.if.end54.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

sw.bb.i:                                          ; preds = %if.then35.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rf_timing.i.i) #7
  %347 = ptrtoint ptr %rf_timing.i.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 119, ptr %rf_timing.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %348 = load i32, ptr @rt_global_debug_component, align 4
  %and.i.i80 = and i32 %348, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i80)
  %tobool.not.i.i81 = icmp eq i32 %and.i.i80, 0
  br i1 %tobool.not.i.i81, label %sw.bb.i._rtl92e_dm_start_hw_fsync.exit.i_crit_edge, label %do.end.i.i83

sw.bb.i._rtl92e_dm_start_hw_fsync.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_start_hw_fsync.exit.i

do.end.i.i83:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i.i82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.173) #10
  br label %_rtl92e_dm_start_hw_fsync.exit.i

_rtl92e_dm_start_hw_fsync.exit.i:                 ; preds = %do.end.i.i83, %sw.bb.i._rtl92e_dm_start_hw_fsync.exit.i_crit_edge
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3124, i32 noundef 1180439247) #7
  %349 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %rtllib.i13, align 8
  %SetHwRegHandler.i.i = getelementptr inbounds %struct.rtllib_device, ptr %350, i32 0, i32 203
  %351 = ptrtoint ptr %SetHwRegHandler.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %SetHwRegHandler.i.i, align 8
  call void %352(ptr noundef %dev, i8 noundef zeroext 84, ptr noundef nonnull %rf_timing.i.i) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3131, i8 noundef zeroext 65) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rf_timing.i.i) #7
  br label %if.end54.sink.split.i

sw.bb39.i:                                        ; preds = %if.then35.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %353 = load i32, ptr @rt_global_debug_component, align 4
  %and.i167.i = and i32 %353, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167.i)
  %tobool.not.i168.i = icmp eq i32 %and.i167.i, 0
  br i1 %tobool.not.i168.i, label %sw.bb39.i.do.end4.i.i85_crit_edge, label %do.end.i170.i

sw.bb39.i.do.end4.i.i85_crit_edge:                ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i.i85

do.end.i170.i:                                    ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i169.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.174) #10
  br label %do.end4.i.i85

do.end4.i.i85:                                    ; preds = %do.end.i170.i, %sw.bb39.i.do.end4.i.i85_crit_edge
  %fsync_timer.i.i = getelementptr i8, ptr %dev, i32 31840
  %call5.i.i84 = call i32 @del_timer_sync(ptr noundef %fsync_timer.i.i) #7
  %bswitch_fsync.i.i = getelementptr i8, ptr %dev, i32 36188
  %354 = ptrtoint ptr %bswitch_fsync.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %bswitch_fsync.i.i, align 8, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %355)
  %tobool6.not.i.i = icmp eq i8 %355, 0
  br i1 %tobool6.not.i.i, label %do.end4.i.i85._rtl92e_dm_end_sw_fsync.exit.i_crit_edge, label %if.then7.i.i86

do.end4.i.i85._rtl92e_dm_end_sw_fsync.exit.i_crit_edge: ; preds = %do.end4.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_end_sw_fsync.exit.i

if.then7.i.i86:                                   ; preds = %do.end4.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  %356 = ptrtoint ptr %bswitch_fsync.i.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 0, ptr %bswitch_fsync.i.i, align 8
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3126, i8 noundef zeroext 92) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3134, i8 noundef zeroext -106) #7
  br label %_rtl92e_dm_end_sw_fsync.exit.i

_rtl92e_dm_end_sw_fsync.exit.i:                   ; preds = %if.then7.i.i86, %do.end4.i.i85._rtl92e_dm_end_sw_fsync.exit.i_crit_edge
  %ContinueDiffCount.i.i = getelementptr i8, ptr %dev, i32 36184
  %357 = ptrtoint ptr %ContinueDiffCount.i.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 0, ptr %ContinueDiffCount.i.i, align 4
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3124, i32 noundef 1180455629) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rf_timing.i171.i) #7
  %358 = ptrtoint ptr %rf_timing.i171.i to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 119, ptr %rf_timing.i171.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %359 = load i32, ptr @rt_global_debug_component, align 4
  %and.i172.i = and i32 %359, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i172.i)
  %tobool.not.i173.i = icmp eq i32 %and.i172.i, 0
  br i1 %tobool.not.i173.i, label %_rtl92e_dm_end_sw_fsync.exit.i._rtl92e_dm_start_hw_fsync.exit179.i_crit_edge, label %do.end.i175.i

_rtl92e_dm_end_sw_fsync.exit.i._rtl92e_dm_start_hw_fsync.exit179.i_crit_edge: ; preds = %_rtl92e_dm_end_sw_fsync.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_start_hw_fsync.exit179.i

do.end.i175.i:                                    ; preds = %_rtl92e_dm_end_sw_fsync.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i174.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.173) #10
  br label %_rtl92e_dm_start_hw_fsync.exit179.i

_rtl92e_dm_start_hw_fsync.exit179.i:              ; preds = %do.end.i175.i, %_rtl92e_dm_end_sw_fsync.exit.i._rtl92e_dm_start_hw_fsync.exit179.i_crit_edge
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3124, i32 noundef 1180439247) #7
  %360 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %rtllib.i13, align 8
  %SetHwRegHandler.i177.i = getelementptr inbounds %struct.rtllib_device, ptr %361, i32 0, i32 203
  %362 = ptrtoint ptr %SetHwRegHandler.i177.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %SetHwRegHandler.i177.i, align 8
  call void %363(ptr noundef %dev, i8 noundef zeroext 84, ptr noundef nonnull %rf_timing.i171.i) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3131, i8 noundef zeroext 65) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rf_timing.i171.i) #7
  br label %if.end54.sink.split.i

if.else.i87:                                      ; preds = %if.then29.i
  %364 = zext i32 %345 to i64
  call void @__sanitizer_cov_trace_switch(i64 %364, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %345, label %if.else.i87.if.end54.i_crit_edge [
    i32 0, label %sw.bb45.i
    i32 1, label %sw.bb48.i
  ]

if.else.i87.if.end54.i_crit_edge:                 ; preds = %if.else.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

sw.bb45.i:                                        ; preds = %if.else.i87
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @_rtl92e_dm_start_sw_fsync(ptr noundef %dev) #7
  br label %if.end54.sink.split.i

sw.bb48.i:                                        ; preds = %if.else.i87
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rf_timing.i180.i) #7
  %365 = ptrtoint ptr %rf_timing.i180.i to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 -86, ptr %rf_timing.i180.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %366 = load i32, ptr @rt_global_debug_component, align 4
  %and.i181.i = and i32 %366, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i181.i)
  %tobool.not.i182.i = icmp eq i32 %and.i181.i, 0
  br i1 %tobool.not.i182.i, label %sw.bb48.i._rtl92e_dm_end_hw_fsync.exit.i_crit_edge, label %do.end.i184.i

sw.bb48.i._rtl92e_dm_end_hw_fsync.exit.i_crit_edge: ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_end_hw_fsync.exit.i

do.end.i184.i:                                    ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i183.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.176) #10
  br label %_rtl92e_dm_end_hw_fsync.exit.i

_rtl92e_dm_end_hw_fsync.exit.i:                   ; preds = %do.end.i184.i, %sw.bb48.i._rtl92e_dm_end_hw_fsync.exit.i_crit_edge
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3124, i32 noundef 1180455629) #7
  %367 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %rtllib.i13, align 8
  %SetHwRegHandler.i186.i = getelementptr inbounds %struct.rtllib_device, ptr %368, i32 0, i32 203
  %369 = ptrtoint ptr %SetHwRegHandler.i186.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %SetHwRegHandler.i186.i, align 8
  call void %370(ptr noundef %dev, i8 noundef zeroext 84, ptr noundef nonnull %rf_timing.i180.i) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3131, i8 noundef zeroext 73) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rf_timing.i180.i) #7
  call fastcc void @_rtl92e_dm_start_sw_fsync(ptr noundef %dev) #7
  br label %if.end54.sink.split.i

if.end54.sink.split.i:                            ; preds = %_rtl92e_dm_end_hw_fsync.exit.i, %sw.bb45.i, %_rtl92e_dm_start_hw_fsync.exit179.i, %_rtl92e_dm_start_hw_fsync.exit.i
  %.sink.i88 = phi i32 [ 2, %sw.bb45.i ], [ 2, %_rtl92e_dm_end_hw_fsync.exit.i ], [ 1, %_rtl92e_dm_start_hw_fsync.exit.i ], [ 1, %_rtl92e_dm_start_hw_fsync.exit179.i ]
  %371 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %rtllib.i13, align 8
  %fsync_state47.i = getelementptr inbounds %struct.rtllib_device, ptr %372, i32 0, i32 152
  %373 = ptrtoint ptr %fsync_state47.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %.sink.i88, ptr %fsync_state47.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end54.sink.split.i, %if.else.i87.if.end54.i_crit_edge, %if.then35.i.if.end54.i_crit_edge
  %framesyncMonitor.i = getelementptr i8, ptr %dev, i32 36196
  %374 = ptrtoint ptr %framesyncMonitor.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %framesyncMonitor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %375)
  %tobool55.not.i = icmp eq i8 %375, 0
  br i1 %tobool55.not.i, label %if.end54.i.if.end108.i_crit_edge, label %if.then56.i

if.end54.i.if.end108.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108.i

if.then56.i:                                      ; preds = %if.end54.i
  %376 = load i8, ptr @_rtl92e_dm_check_fsync.reg_c38_State, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %376)
  %cmp58.not.i = icmp eq i8 %376, 2
  br i1 %cmp58.not.i, label %if.then56.i.if.end108.i_crit_edge, label %if.then56.i.if.end108.sink.split.i_crit_edge

if.then56.i.if.end108.sink.split.i_crit_edge:     ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108.sink.split.i

if.then56.i.if.end108.i_crit_edge:                ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108.i

if.else63.i:                                      ; preds = %land.lhs.true.i79.if.else63.i_crit_edge, %do.end22.i.if.else63.i_crit_edge
  %fsync_state65.i = getelementptr inbounds %struct.rtllib_device, ptr %335, i32 0, i32 152
  %377 = ptrtoint ptr %fsync_state65.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %fsync_state65.i, align 4
  %379 = zext i32 %378 to i64
  call void @__sanitizer_cov_trace_switch(i64 %379, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %378, label %if.else63.i.sw.epilog74.i_crit_edge [
    i32 1, label %sw.bb66.i
    i32 2, label %sw.bb69.i
  ]

if.else63.i.sw.epilog74.i_crit_edge:              ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog74.i

sw.bb66.i:                                        ; preds = %if.else63.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rf_timing.i188.i) #7
  %380 = ptrtoint ptr %rf_timing.i188.i to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 -86, ptr %rf_timing.i188.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %381 = load i32, ptr @rt_global_debug_component, align 4
  %and.i189.i = and i32 %381, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i189.i)
  %tobool.not.i190.i = icmp eq i32 %and.i189.i, 0
  br i1 %tobool.not.i190.i, label %sw.bb66.i._rtl92e_dm_end_hw_fsync.exit196.i_crit_edge, label %do.end.i192.i

sw.bb66.i._rtl92e_dm_end_hw_fsync.exit196.i_crit_edge: ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_end_hw_fsync.exit196.i

do.end.i192.i:                                    ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i191.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.176) #10
  br label %_rtl92e_dm_end_hw_fsync.exit196.i

_rtl92e_dm_end_hw_fsync.exit196.i:                ; preds = %do.end.i192.i, %sw.bb66.i._rtl92e_dm_end_hw_fsync.exit196.i_crit_edge
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3124, i32 noundef 1180455629) #7
  %382 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %rtllib.i13, align 8
  %SetHwRegHandler.i194.i = getelementptr inbounds %struct.rtllib_device, ptr %383, i32 0, i32 203
  %384 = ptrtoint ptr %SetHwRegHandler.i194.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %SetHwRegHandler.i194.i, align 8
  call void %385(ptr noundef %dev, i8 noundef zeroext 84, ptr noundef nonnull %rf_timing.i188.i) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3131, i8 noundef zeroext 73) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rf_timing.i188.i) #7
  br label %sw.epilog74.sink.split.i

sw.bb69.i:                                        ; preds = %if.else63.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %386 = load i32, ptr @rt_global_debug_component, align 4
  %and.i197.i = and i32 %386, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i197.i)
  %tobool.not.i198.i = icmp eq i32 %and.i197.i, 0
  br i1 %tobool.not.i198.i, label %sw.bb69.i.do.end4.i205.i_crit_edge, label %do.end.i200.i

sw.bb69.i.do.end4.i205.i_crit_edge:               ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i205.i

do.end.i200.i:                                    ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i199.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.174) #10
  br label %do.end4.i205.i

do.end4.i205.i:                                   ; preds = %do.end.i200.i, %sw.bb69.i.do.end4.i205.i_crit_edge
  %fsync_timer.i201.i = getelementptr i8, ptr %dev, i32 31840
  %call5.i202.i = call i32 @del_timer_sync(ptr noundef %fsync_timer.i201.i) #7
  %bswitch_fsync.i203.i = getelementptr i8, ptr %dev, i32 36188
  %387 = ptrtoint ptr %bswitch_fsync.i203.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %bswitch_fsync.i203.i, align 8, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %388)
  %tobool6.not.i204.i = icmp eq i8 %388, 0
  br i1 %tobool6.not.i204.i, label %do.end4.i205.i._rtl92e_dm_end_sw_fsync.exit208.i_crit_edge, label %if.then7.i206.i

do.end4.i205.i._rtl92e_dm_end_sw_fsync.exit208.i_crit_edge: ; preds = %do.end4.i205.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_end_sw_fsync.exit208.i

if.then7.i206.i:                                  ; preds = %do.end4.i205.i
  call void @__sanitizer_cov_trace_pc() #9
  %389 = ptrtoint ptr %bswitch_fsync.i203.i to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 0, ptr %bswitch_fsync.i203.i, align 8
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3126, i8 noundef zeroext 92) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3134, i8 noundef zeroext -106) #7
  br label %_rtl92e_dm_end_sw_fsync.exit208.i

_rtl92e_dm_end_sw_fsync.exit208.i:                ; preds = %if.then7.i206.i, %do.end4.i205.i._rtl92e_dm_end_sw_fsync.exit208.i_crit_edge
  %ContinueDiffCount.i207.i = getelementptr i8, ptr %dev, i32 36184
  %390 = ptrtoint ptr %ContinueDiffCount.i207.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 0, ptr %ContinueDiffCount.i207.i, align 4
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3124, i32 noundef 1180455629) #7
  br label %sw.epilog74.sink.split.i

sw.epilog74.sink.split.i:                         ; preds = %_rtl92e_dm_end_sw_fsync.exit208.i, %_rtl92e_dm_end_hw_fsync.exit196.i
  %391 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %rtllib.i13, align 8
  %fsync_state71.i = getelementptr inbounds %struct.rtllib_device, ptr %392, i32 0, i32 152
  %393 = ptrtoint ptr %fsync_state71.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 0, ptr %fsync_state71.i, align 4
  br label %sw.epilog74.i

sw.epilog74.i:                                    ; preds = %sw.epilog74.sink.split.i, %if.else63.i.sw.epilog74.i_crit_edge
  %framesyncMonitor75.i = getelementptr i8, ptr %dev, i32 36196
  %394 = ptrtoint ptr %framesyncMonitor75.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %framesyncMonitor75.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %395)
  %tobool76.not.i = icmp eq i8 %395, 0
  br i1 %tobool76.not.i, label %sw.epilog74.i.if.end108.i_crit_edge, label %if.then77.i

sw.epilog74.i.if.end108.i_crit_edge:              ; preds = %sw.epilog74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108.i

if.then77.i:                                      ; preds = %sw.epilog74.i
  %396 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %rtllib.i13, align 8
  %state79.i = getelementptr inbounds %struct.rtllib_device, ptr %397, i32 0, i32 90
  %398 = ptrtoint ptr %state79.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %state79.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %399)
  %cmp80.i = icmp eq i32 %399, 5
  br i1 %cmp80.i, label %if.then82.i, label %if.else101.i

if.then82.i:                                      ; preds = %if.then77.i
  %undecorated_smoothed_pwdb.i89 = getelementptr i8, ptr %dev, i32 36028
  %400 = ptrtoint ptr %undecorated_smoothed_pwdb.i89 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %undecorated_smoothed_pwdb.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %401)
  %cmp83.i = icmp slt i32 %401, 21
  br i1 %cmp83.i, label %if.then85.i, label %if.else91.i

if.then85.i:                                      ; preds = %if.then82.i
  %402 = load i8, ptr @_rtl92e_dm_check_fsync.reg_c38_State, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %402)
  %cmp87.not.i = icmp eq i8 %402, 1
  br i1 %cmp87.not.i, label %if.then85.i.if.end108.i_crit_edge, label %if.then85.i.if.end108.sink.split.i_crit_edge

if.then85.i.if.end108.sink.split.i_crit_edge:     ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108.sink.split.i

if.then85.i.if.end108.i_crit_edge:                ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108.i

if.else91.i:                                      ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %401)
  %cmp93.i = icmp ugt i32 %401, 24
  br i1 %cmp93.i, label %if.then95.i, label %if.else91.i.if.end108.i_crit_edge

if.else91.i.if.end108.i_crit_edge:                ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108.i

if.then95.i:                                      ; preds = %if.else91.i
  %403 = load i8, ptr @_rtl92e_dm_check_fsync.reg_c38_State, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %403)
  %tobool96.not.i = icmp eq i8 %403, 0
  br i1 %tobool96.not.i, label %if.then95.i.if.end108.i_crit_edge, label %if.then95.i.if.end108.sink.split.sink.split.i_crit_edge

if.then95.i.if.end108.sink.split.sink.split.i_crit_edge: ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108.sink.split.sink.split.i

if.then95.i.if.end108.i_crit_edge:                ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108.i

if.else101.i:                                     ; preds = %if.then77.i
  %404 = load i8, ptr @_rtl92e_dm_check_fsync.reg_c38_State, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %404)
  %tobool102.not.i = icmp eq i8 %404, 0
  br i1 %tobool102.not.i, label %if.else101.i.if.end108.i_crit_edge, label %if.else101.i.if.end108.sink.split.sink.split.i_crit_edge

if.else101.i.if.end108.sink.split.sink.split.i_crit_edge: ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108.sink.split.sink.split.i

if.else101.i.if.end108.i_crit_edge:               ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108.i

if.end108.sink.split.sink.split.i:                ; preds = %if.else101.i.if.end108.sink.split.sink.split.i_crit_edge, %if.then95.i.if.end108.sink.split.sink.split.i_crit_edge
  %framesync.i = getelementptr i8, ptr %dev, i32 36189
  %405 = ptrtoint ptr %framesync.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %framesync.i, align 1
  br label %if.end108.sink.split.i

if.end108.sink.split.i:                           ; preds = %if.end108.sink.split.sink.split.i, %if.then85.i.if.end108.sink.split.i_crit_edge, %if.then56.i.if.end108.sink.split.i_crit_edge
  %.sink212.i = phi i8 [ -107, %if.then56.i.if.end108.sink.split.i_crit_edge ], [ -112, %if.then85.i.if.end108.sink.split.i_crit_edge ], [ %406, %if.end108.sink.split.sink.split.i ]
  %.sink211.i = phi i8 [ 2, %if.then56.i.if.end108.sink.split.i_crit_edge ], [ 1, %if.then85.i.if.end108.sink.split.i_crit_edge ], [ 0, %if.end108.sink.split.sink.split.i ]
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3128, i8 noundef zeroext %.sink212.i) #7
  store i8 %.sink211.i, ptr @_rtl92e_dm_check_fsync.reg_c38_State, align 1
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.end108.sink.split.i, %if.else101.i.if.end108.i_crit_edge, %if.then95.i.if.end108.i_crit_edge, %if.else91.i.if.end108.i_crit_edge, %if.then85.i.if.end108.i_crit_edge, %sw.epilog74.i.if.end108.i_crit_edge, %if.then56.i.if.end108.i_crit_edge, %if.end54.i.if.end108.i_crit_edge
  %framesyncMonitor109.i = getelementptr i8, ptr %dev, i32 36196
  %407 = ptrtoint ptr %framesyncMonitor109.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %framesyncMonitor109.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %408)
  %tobool110.not.i = icmp eq i8 %408, 0
  br i1 %tobool110.not.i, label %if.else118.i, label %if.then111.i

if.then111.i:                                     ; preds = %if.end108.i
  %reset_count.i = getelementptr i8, ptr %dev, i32 36200
  %409 = ptrtoint ptr %reset_count.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %reset_count.i, align 4
  %411 = load i32, ptr @_rtl92e_dm_check_fsync.reset_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %410, i32 %411)
  %cmp112.not.i = icmp eq i32 %410, %411
  br i1 %cmp112.not.i, label %if.then111.i._rtl92e_dm_check_fsync.exit_crit_edge, label %if.then114.i

if.then111.i._rtl92e_dm_check_fsync.exit_crit_edge: ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_fsync.exit

if.then114.i:                                     ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #9
  %framesync115.i = getelementptr i8, ptr %dev, i32 36189
  %412 = ptrtoint ptr %framesync115.i to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %framesync115.i, align 1
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3128, i8 noundef zeroext %413) #7
  store i8 0, ptr @_rtl92e_dm_check_fsync.reg_c38_State, align 1
  %414 = ptrtoint ptr %reset_count.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %reset_count.i, align 4
  store i32 %415, ptr @_rtl92e_dm_check_fsync.reset_cnt, align 4
  br label %_rtl92e_dm_check_fsync.exit

if.else118.i:                                     ; preds = %if.end108.i
  %416 = load i8, ptr @_rtl92e_dm_check_fsync.reg_c38_State, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %416)
  %tobool119.not.i = icmp eq i8 %416, 0
  br i1 %tobool119.not.i, label %if.else118.i._rtl92e_dm_check_fsync.exit_crit_edge, label %if.then120.i

if.else118.i._rtl92e_dm_check_fsync.exit_crit_edge: ; preds = %if.else118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_check_fsync.exit

if.then120.i:                                     ; preds = %if.else118.i
  call void @__sanitizer_cov_trace_pc() #9
  %framesync121.i = getelementptr i8, ptr %dev, i32 36189
  %417 = ptrtoint ptr %framesync121.i to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %framesync121.i, align 1
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3128, i8 noundef zeroext %418) #7
  store i8 0, ptr @_rtl92e_dm_check_fsync.reg_c38_State, align 1
  br label %_rtl92e_dm_check_fsync.exit

_rtl92e_dm_check_fsync.exit:                      ; preds = %if.then120.i, %if.else118.i._rtl92e_dm_check_fsync.exit_crit_edge, %if.then114.i, %if.then111.i._rtl92e_dm_check_fsync.exit_crit_edge
  %undecorated_smoothed_pwdb.i90 = getelementptr i8, ptr %dev, i32 36028
  %419 = ptrtoint ptr %undecorated_smoothed_pwdb.i90 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %undecorated_smoothed_pwdb.i90, align 8
  %conv.i91 = trunc i32 %420 to i8
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 812, i8 noundef zeroext %conv.i91) #7
  %421 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %rtllib.i13, align 8
  %pHTInfo1.i93 = getelementptr inbounds %struct.rtllib_device, ptr %422, i32 0, i32 27
  %423 = ptrtoint ptr %pHTInfo1.i93 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %pHTInfo1.i93, align 8
  %bCTSToSelfEnable.i = getelementptr inbounds %struct.rtllib_device, ptr %422, i32 0, i32 144
  %425 = ptrtoint ptr %bCTSToSelfEnable.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %bCTSToSelfEnable.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %426)
  %tobool.not.i94 = icmp eq i8 %426, 0
  br i1 %tobool.not.i94, label %if.then.i97, label %if.end.i100

if.then.i97:                                      ; preds = %_rtl92e_dm_check_fsync.exit
  call void @__sanitizer_cov_trace_pc() #9
  %IOTAction.i95 = getelementptr inbounds %struct.rt_hi_throughput, ptr %424, i32 0, i32 51
  %427 = ptrtoint ptr %IOTAction.i95 to i32
  call void @__asan_loadN_noabort(i32 %427, i32 4)
  %428 = load i32, ptr %IOTAction.i95, align 1
  %and.i96 = and i32 %428, -513
  store i32 %and.i96, ptr %IOTAction.i95, align 1
  br label %cleanup

if.end.i100:                                      ; preds = %_rtl92e_dm_check_fsync.exit
  %IOTPeer.i98 = getelementptr inbounds %struct.rt_hi_throughput, ptr %424, i32 0, i32 50
  %429 = ptrtoint ptr %IOTPeer.i98 to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %IOTPeer.i98, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %430)
  %cmp.i99 = icmp eq i8 %430, 3
  br i1 %cmp.i99, label %if.then4.i105, label %if.end.i100.cleanup_crit_edge

if.end.i100.cleanup_crit_edge:                    ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4.i105:                                    ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #9
  %431 = ptrtoint ptr %txbytesunicast98.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %txbytesunicast98.i, align 4
  %433 = load i32, ptr @_rtl92e_dm_cts_to_self.lastTxOkCnt, align 4
  %sub.i102 = sub i32 %432, %433
  %434 = ptrtoint ptr %rxbytesunicast100.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %rxbytesunicast100.i, align 8
  %436 = load i32, ptr @_rtl92e_dm_cts_to_self.lastRxOkCnt, align 4
  %sub6.i = sub i32 %435, %436
  %mul.i104 = shl i32 %sub.i102, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i, i32 %mul.i104)
  %cmp7.i = icmp ugt i32 %sub6.i, %mul.i104
  %IOTAction10.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %424, i32 0, i32 51
  %437 = ptrtoint ptr %IOTAction10.i to i32
  call void @__asan_loadN_noabort(i32 %437, i32 4)
  %438 = load i32, ptr %IOTAction10.i, align 1
  %and11.i = and i32 %438, -513
  %masksel.i = select i1 %cmp7.i, i32 0, i32 512
  %or.sink.i = or i32 %masksel.i, %and11.i
  store i32 %or.sink.i, ptr %IOTAction10.i, align 1
  %439 = ptrtoint ptr %txbytesunicast98.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %txbytesunicast98.i, align 4
  store i32 %440, ptr @_rtl92e_dm_cts_to_self.lastTxOkCnt, align 4
  %441 = ptrtoint ptr %rxbytesunicast100.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %rxbytesunicast100.i, align 8
  store i32 %442, ptr @_rtl92e_dm_cts_to_self.lastRxOkCnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i105, %if.end.i100.cleanup_crit_edge, %if.then.i97, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_dm_txpower_tracking_wq(ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  %tx_cmd.i = alloca %struct.dcmd_txcmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %data, i32 316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %dev1 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %IC_Cut = getelementptr i8, ptr %data, i32 4822
  %4 = ptrtoint ptr %IC_Cut to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %IC_Cut, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ugt i8 %5, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tx_cmd.i) #7
  %6 = getelementptr inbounds %struct.dcmd_txcmd, ptr %tx_cmd.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.dcmd_txcmd, ptr %tx_cmd.i, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %8 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.do.end4.i_crit_edge, label %do.end.i

if.then.do.end4.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then.do.end4.i_crit_edge
  tail call void @rtl92e_writeb(ptr noundef %3, i32 noundef 285, i8 noundef zeroext 0) #7
  tail call void @rtl92e_writeb(ptr noundef %3, i32 noundef 319, i8 noundef zeroext 0) #7
  %rtllib.i = getelementptr i8, ptr %3, i32 31316
  %9 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtllib.i, align 8
  %bdynamic_txpower_enable.i = getelementptr inbounds %struct.rtllib_device, ptr %10, i32 0, i32 143
  %11 = ptrtoint ptr %bdynamic_txpower_enable.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %bdynamic_txpower_enable.i, align 4
  %Pwr_Track.i = getelementptr i8, ptr %3, i32 36020
  %12 = ptrtoint ptr %Pwr_Track.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %Pwr_Track.i, align 8
  %shr.i = lshr i32 %13, 24
  %rf_type.i = getelementptr i8, ptr %3, i32 35821
  %14 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rf_type.i, align 1
  %conv5.i = zext i8 %15 to i32
  %shl.i = shl nuw nsw i32 %conv5.i, 8
  %or.i = or i32 %shl.i, %shr.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %16 = load i32, ptr @rt_global_debug_component, align 4
  %and8.i = and i32 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %do.end4.i.do.end19.i_crit_edge, label %do.end13.i

do.end4.i.do.end19.i_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19.i

do.end13.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %shr.i) #10
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end13.i, %do.end4.i.do.end19.i_crit_edge
  %bResetInProgress.i = getelementptr i8, ptr %3, i32 36214
  %TSSI_13dBm152.i = getelementptr i8, ptr %3, i32 36016
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp.i564.i = icmp eq i8 %15, 1
  %rfa_txpowertrackingindex.i565.i = getelementptr i8, ptr %3, i32 36149
  %rfa_txpowertrackingindex_real26.i.i = getelementptr i8, ptr %3, i32 36150
  %rfc_txpowertrackingindex.i567.i = getelementptr i8, ptr %3, i32 36152
  %rfc_txpowertrackingindex_real.i572.i = getelementptr i8, ptr %3, i32 36153
  %rfa_txpowertracking_default269.i = getelementptr i8, ptr %3, i32 36151
  %CCKPresentAttentuation_difference273.i = getelementptr i8, ptr %3, i32 36026
  %CurrentChannelBW.i = getelementptr i8, ptr %3, i32 31420
  %CCKPresentAttentuation290.i = getelementptr i8, ptr %3, i32 36027
  %bcck_in_ch14333.i = getelementptr i8, ptr %3, i32 36155
  br label %for.body.i

for.body.i:                                       ; preds = %for.end436.i.for.body.i_crit_edge, %do.end19.i
  %j.0588.i = phi i32 [ 0, %do.end19.i ], [ %inc438.i, %for.end436.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %tx_cmd.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -7340027, ptr %tx_cmd.i, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %6, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %7, align 4
  %call22.i = call zeroext i1 @rtl92e_send_cmd_pkt(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %tx_cmd.i, i32 noundef 12) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #7
  br label %for.body26.i

for.cond23.i:                                     ; preds = %if.end46.i
  %inc435.i = add nuw nsw i32 %i.0580.i, 1
  %exitcond.not.i = icmp eq i32 %inc435.i, 31
  br i1 %exitcond.not.i, label %for.cond23.i.for.end436.i_crit_edge, label %for.cond23.i.for.body26.i_crit_edge

for.cond23.i.for.body26.i_crit_edge:              ; preds = %for.cond23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26.i

for.cond23.i.for.end436.i_crit_edge:              ; preds = %for.cond23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end436.i

for.body26.i:                                     ; preds = %for.cond23.i.for.body26.i_crit_edge, %for.body.i
  %i.0580.i = phi i32 [ 0, %for.body.i ], [ %inc435.i, %for.cond23.i.for.body26.i_crit_edge ]
  %call27.i = call zeroext i8 @rtl92e_readb(ptr noundef %3, i32 noundef 285) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call27.i)
  %cmp29.i = icmp eq i8 %call27.i, 0
  br i1 %cmp29.i, label %if.then31.i, label %if.end64.i

if.then31.i:                                      ; preds = %for.body26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #7
  %22 = ptrtoint ptr %bResetInProgress.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bResetInProgress.i, align 2, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool32.not.i = icmp eq i8 %23, 0
  br i1 %tobool32.not.i, label %if.end46.i, label %do.body34.i

do.body34.i:                                      ; preds = %if.then31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %24 = load i32, ptr @rt_global_debug_component, align 4
  %and35.i = and i32 %24, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %do.body34.i.do.end45.i_crit_edge, label %do.end40.i

do.body34.i.do.end45.i_crit_edge:                 ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45.i

do.end40.i:                                       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #10
  br label %do.end45.i

do.end45.i:                                       ; preds = %do.end40.i, %do.body34.i.do.end45.i_crit_edge
  call void @rtl92e_writeb(ptr noundef %3, i32 noundef 285, i8 noundef zeroext 0) #7
  call void @rtl92e_writeb(ptr noundef %3, i32 noundef 319, i8 noundef zeroext 0) #7
  br label %_rtl92e_dm_tx_power_tracking_callback_tssi.exit

if.end46.i:                                       ; preds = %if.then31.i
  %25 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rtllib.i, align 8
  %eRFPowerState.i = getelementptr inbounds %struct.rtllib_device, ptr %26, i32 0, i32 23
  %27 = ptrtoint ptr %eRFPowerState.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %eRFPowerState.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp48.not.i = icmp eq i32 %28, 0
  br i1 %cmp48.not.i, label %for.cond23.i, label %do.body51.i

do.body51.i:                                      ; preds = %if.end46.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %29 = load i32, ptr @rt_global_debug_component, align 4
  %and52.i = and i32 %29, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %do.body51.i.do.end62.i_crit_edge, label %do.end57.i

do.body51.i.do.end62.i_crit_edge:                 ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62.i

do.end57.i:                                       ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #9
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #10
  br label %do.end62.i

do.end62.i:                                       ; preds = %do.end57.i, %do.body51.i.do.end62.i_crit_edge
  call void @rtl92e_writeb(ptr noundef %3, i32 noundef 285, i8 noundef zeroext 0) #7
  call void @rtl92e_writeb(ptr noundef %3, i32 noundef 319, i8 noundef zeroext 0) #7
  br label %_rtl92e_dm_tx_power_tracking_callback_tssi.exit

if.end64.i:                                       ; preds = %for.body26.i
  %call65.i = call zeroext i16 @rtl92e_readw(ptr noundef %3, i32 noundef 316) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call65.i)
  %cmp67.i = icmp eq i16 %call65.i, 0
  br i1 %cmp67.i, label %if.then69.i, label %do.body82.i

if.then69.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_writeb(ptr noundef %3, i32 noundef 285, i8 noundef zeroext 0) #7
  call void @rtl92e_writeb(ptr noundef %3, i32 noundef 319, i8 noundef zeroext 0) #7
  br label %_rtl92e_dm_tx_power_tracking_callback_tssi.exit

do.body82.1.i:                                    ; preds = %do.end95.i
  %call78.1.i = call zeroext i8 @rtl92e_readb(ptr noundef %3, i32 noundef 309) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %30 = load i32, ptr @rt_global_debug_component, align 4
  %and83.1.i = and i32 %30, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.1.i)
  %tobool84.not.1.i = icmp eq i32 %and83.1.i, 0
  br i1 %tobool84.not.1.i, label %do.body82.1.i.do.end95.1.i_crit_edge, label %do.end88.1.i

do.body82.1.i.do.end95.1.i_crit_edge:             ; preds = %do.body82.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95.1.i

do.end88.1.i:                                     ; preds = %do.body82.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv91.1.i = zext i8 %call78.1.i to i32
  %call92.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv91.1.i) #10
  br label %do.end95.1.i

do.end95.1.i:                                     ; preds = %do.end88.1.i, %do.body82.1.i.do.end95.1.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %call78.1.i)
  %cmp98.1.i = icmp ult i8 %call78.1.i, 21
  br i1 %cmp98.1.i, label %do.end95.1.i.if.then103.i_crit_edge, label %do.body82.2.i

do.end95.1.i.if.then103.i_crit_edge:              ; preds = %do.end95.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then103.i

do.body82.2.i:                                    ; preds = %do.end95.1.i
  %call78.2.i = call zeroext i8 @rtl92e_readb(ptr noundef %3, i32 noundef 310) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %31 = load i32, ptr @rt_global_debug_component, align 4
  %and83.2.i = and i32 %31, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.2.i)
  %tobool84.not.2.i = icmp eq i32 %and83.2.i, 0
  br i1 %tobool84.not.2.i, label %do.body82.2.i.do.end95.2.i_crit_edge, label %do.end88.2.i

do.body82.2.i.do.end95.2.i_crit_edge:             ; preds = %do.body82.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95.2.i

do.end88.2.i:                                     ; preds = %do.body82.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv91.2.i = zext i8 %call78.2.i to i32
  %call92.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv91.2.i) #10
  br label %do.end95.2.i

do.end95.2.i:                                     ; preds = %do.end88.2.i, %do.body82.2.i.do.end95.2.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %call78.2.i)
  %cmp98.2.i = icmp ult i8 %call78.2.i, 21
  br i1 %cmp98.2.i, label %do.end95.2.i.if.then103.i_crit_edge, label %do.body82.3.i

do.end95.2.i.if.then103.i_crit_edge:              ; preds = %do.end95.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then103.i

do.body82.3.i:                                    ; preds = %do.end95.2.i
  %call78.3.i = call zeroext i8 @rtl92e_readb(ptr noundef %3, i32 noundef 311) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %32 = load i32, ptr @rt_global_debug_component, align 4
  %and83.3.i = and i32 %32, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.3.i)
  %tobool84.not.3.i = icmp eq i32 %and83.3.i, 0
  br i1 %tobool84.not.3.i, label %do.body82.3.i.do.end95.3.i_crit_edge, label %do.end88.3.i

do.body82.3.i.do.end95.3.i_crit_edge:             ; preds = %do.body82.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95.3.i

do.end88.3.i:                                     ; preds = %do.body82.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv91.3.i = zext i8 %call78.3.i to i32
  %call92.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv91.3.i) #10
  br label %do.end95.3.i

do.end95.3.i:                                     ; preds = %do.end88.3.i, %do.body82.3.i.do.end95.3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %call78.3.i)
  %cmp98.3.i = icmp ult i8 %call78.3.i, 21
  br i1 %cmp98.3.i, label %do.end95.3.i.if.then103.i_crit_edge, label %do.body82.4.i

do.end95.3.i.if.then103.i_crit_edge:              ; preds = %do.end95.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then103.i

do.body82.4.i:                                    ; preds = %do.end95.3.i
  %call79.4.i = call zeroext i8 @rtl92e_readb(ptr noundef %3, i32 noundef 318) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %33 = load i32, ptr @rt_global_debug_component, align 4
  %and83.4.i = and i32 %33, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.4.i)
  %tobool84.not.4.i = icmp eq i32 %and83.4.i, 0
  br i1 %tobool84.not.4.i, label %do.body82.4.i.do.end95.4.i_crit_edge, label %do.end88.4.i

do.body82.4.i.do.end95.4.i_crit_edge:             ; preds = %do.body82.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95.4.i

do.end88.4.i:                                     ; preds = %do.body82.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv91.4.i = zext i8 %call79.4.i to i32
  %call92.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv91.4.i) #10
  br label %do.end95.4.i

do.end95.4.i:                                     ; preds = %do.end88.4.i, %do.body82.4.i.do.end95.4.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %call79.4.i)
  %cmp98.4.i = icmp ult i8 %call79.4.i, 21
  br i1 %cmp98.4.i, label %do.end95.4.i.if.then103.i_crit_edge, label %for.cond71.4.i

do.end95.4.i.if.then103.i_crit_edge:              ; preds = %do.end95.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then103.i

for.cond71.4.i:                                   ; preds = %do.end95.4.i
  %conv130.i = zext i8 %call78.i to i16
  %conv130.1.i = zext i8 %call78.1.i to i16
  %add132.1.i = add nuw nsw i16 %conv130.1.i, %conv130.i
  %conv130.2.i = zext i8 %call78.2.i to i16
  %add132.2.i = add nuw nsw i16 %add132.1.i, %conv130.2.i
  %conv130.3.i = zext i8 %call78.3.i to i16
  %add132.3.i = add nuw nsw i16 %add132.2.i, %conv130.3.i
  %conv130.4.i = zext i8 %call79.4.i to i16
  %add132.4.i = add nuw nsw i16 %add132.3.i, %conv130.4.i
  %mul.i = mul nuw nsw i16 %add132.4.i, 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %34 = load i32, ptr @rt_global_debug_component, align 4
  %and140.i = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140.i)
  %tobool141.not.i = icmp eq i32 %and140.i, 0
  br i1 %tobool141.not.i, label %for.cond71.4.i.do.end151.i_crit_edge, label %do.end145.i

for.cond71.4.i.do.end151.i_crit_edge:             ; preds = %for.cond71.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end151.i

do.body82.i:                                      ; preds = %if.end64.i
  %call78.i = call zeroext i8 @rtl92e_readb(ptr noundef %3, i32 noundef 308) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %35 = load i32, ptr @rt_global_debug_component, align 4
  %and83.i = and i32 %35, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %do.body82.i.do.end95.i_crit_edge, label %do.end88.i

do.body82.i.do.end95.i_crit_edge:                 ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95.i

do.end88.i:                                       ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv91.i = zext i8 %call78.i to i32
  %call92.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv91.i) #10
  br label %do.end95.i

do.end95.i:                                       ; preds = %do.end88.i, %do.body82.i.do.end95.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %call78.i)
  %cmp98.i = icmp ult i8 %call78.i, 21
  br i1 %cmp98.i, label %do.end95.i.if.then103.i_crit_edge, label %do.body82.1.i

do.end95.i.if.then103.i_crit_edge:                ; preds = %do.end95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then103.i

if.then103.i:                                     ; preds = %do.end95.i.if.then103.i_crit_edge, %do.end95.4.i.if.then103.i_crit_edge, %do.end95.3.i.if.then103.i_crit_edge, %do.end95.2.i.if.then103.i_crit_edge, %do.end95.1.i.if.then103.i_crit_edge
  call void @rtl92e_writeb(ptr noundef %3, i32 noundef 285, i8 noundef zeroext 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %36 = load i32, ptr @rt_global_debug_component, align 4
  %and105.i = and i32 %36, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool106.not.i = icmp eq i32 %and105.i, 0
  br i1 %tobool106.not.i, label %if.then103.i.for.end436.i_crit_edge, label %do.end110.i

if.then103.i.for.end436.i_crit_edge:              ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end436.i

do.end110.i:                                      ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #9
  %call112.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %for.end436.i

do.end145.i:                                      ; preds = %for.cond71.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv147.i = zext i16 %mul.i to i32
  %call148.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %conv147.i) #10
  br label %do.end151.i

do.end151.i:                                      ; preds = %do.end145.i, %for.cond71.4.i.do.end151.i_crit_edge
  %37 = ptrtoint ptr %TSSI_13dBm152.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %TSSI_13dBm152.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %39 = load i32, ptr @rt_global_debug_component, align 4
  %and154.i = and i32 %39, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154.i)
  %tobool155.not.i = icmp eq i32 %and154.i, 0
  %.pre.i = zext i16 %38 to i32
  br i1 %tobool155.not.i, label %do.end151.i.do.end165.i_crit_edge, label %do.end159.i

do.end151.i.do.end165.i_crit_edge:                ; preds = %do.end151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end165.i

do.end159.i:                                      ; preds = %do.end151.i
  call void @__sanitizer_cov_trace_pc() #9
  %call162.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %.pre.i) #10
  br label %do.end165.i

do.end165.i:                                      ; preds = %do.end159.i, %do.end151.i.do.end165.i_crit_edge
  %conv166.i = zext i16 %mul.i to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %mul.i, i16 %38)
  %cmp168.i = icmp ugt i16 %mul.i, %38
  %sub.i = sub nsw i32 %conv166.i, %.pre.i
  %sub176.i = sub nsw i32 %.pre.i, %conv166.i
  %delta.0.i = select i1 %cmp168.i, i32 %sub.i, i32 %sub176.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 301, i32 %delta.0.i)
  %cmp178.i = icmp ult i32 %delta.0.i, 301
  br i1 %cmp178.i, label %if.then180.i, label %if.end247.i

if.then180.i:                                     ; preds = %do.end165.i
  %40 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rtllib.i, align 8
  %bdynamic_txpower_enable182.i = getelementptr inbounds %struct.rtllib_device, ptr %41, i32 0, i32 143
  %42 = ptrtoint ptr %bdynamic_txpower_enable182.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %bdynamic_txpower_enable182.i, align 4
  call void @rtl92e_writeb(ptr noundef %3, i32 noundef 285, i8 noundef zeroext 0) #7
  call void @rtl92e_writeb(ptr noundef %3, i32 noundef 319, i8 noundef zeroext 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %43 = load i32, ptr @rt_global_debug_component, align 4
  %and184.i = and i32 %43, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184.i)
  %tobool185.not.i = icmp eq i32 %and184.i, 0
  br i1 %tobool185.not.i, label %if.then180.i.do.body195.i_crit_edge, label %do.end189.i

if.then180.i.do.body195.i_crit_edge:              ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body195.i

do.end189.i:                                      ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #9
  %call191.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #10
  br label %do.body195.i

do.body195.i:                                     ; preds = %do.end189.i, %if.then180.i.do.body195.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %44 = load i32, ptr @rt_global_debug_component, align 4
  %and196.i = and i32 %44, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196.i)
  %tobool197.not.i = icmp eq i32 %and196.i, 0
  br i1 %tobool197.not.i, label %do.body195.i.do.body208.i_crit_edge, label %do.end201.i

do.body195.i.do.body208.i_crit_edge:              ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body208.i

do.end201.i:                                      ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %rfa_txpowertrackingindex.i565.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rfa_txpowertrackingindex.i565.i, align 1
  %conv203.i = zext i8 %46 to i32
  %call204.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %conv203.i) #10
  br label %do.body208.i

do.body208.i:                                     ; preds = %do.end201.i, %do.body195.i.do.body208.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %47 = load i32, ptr @rt_global_debug_component, align 4
  %and209.i = and i32 %47, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209.i)
  %tobool210.not.i = icmp eq i32 %and209.i, 0
  br i1 %tobool210.not.i, label %do.body208.i.do.body221.i_crit_edge, label %do.end214.i

do.body208.i.do.body221.i_crit_edge:              ; preds = %do.body208.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body221.i

do.end214.i:                                      ; preds = %do.body208.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %rfa_txpowertrackingindex_real26.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rfa_txpowertrackingindex_real26.i.i, align 2
  %conv216.i = zext i8 %49 to i32
  %call217.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %conv216.i) #10
  br label %do.body221.i

do.body221.i:                                     ; preds = %do.end214.i, %do.body208.i.do.body221.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %50 = load i32, ptr @rt_global_debug_component, align 4
  %and222.i = and i32 %50, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222.i)
  %tobool223.not.i = icmp eq i32 %and222.i, 0
  br i1 %tobool223.not.i, label %do.body221.i.do.body234.i_crit_edge, label %do.end227.i

do.body221.i.do.body234.i_crit_edge:              ; preds = %do.body221.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body234.i

do.end227.i:                                      ; preds = %do.body221.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %CCKPresentAttentuation_difference273.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %CCKPresentAttentuation_difference273.i, align 2
  %conv229.i = sext i8 %52 to i32
  %call230.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %conv229.i) #10
  br label %do.body234.i

do.body234.i:                                     ; preds = %do.end227.i, %do.body221.i.do.body234.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %53 = load i32, ptr @rt_global_debug_component, align 4
  %and235.i = and i32 %53, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235.i)
  %tobool236.not.i = icmp eq i32 %and235.i, 0
  br i1 %tobool236.not.i, label %do.body234.i._rtl92e_dm_tx_power_tracking_callback_tssi.exit_crit_edge, label %do.end240.i

do.body234.i._rtl92e_dm_tx_power_tracking_callback_tssi.exit_crit_edge: ; preds = %do.body234.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_tx_power_tracking_callback_tssi.exit

do.end240.i:                                      ; preds = %do.body234.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %CCKPresentAttentuation290.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %CCKPresentAttentuation290.i, align 1
  %conv242.i = sext i8 %55 to i32
  %call243.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv242.i) #10
  br label %_rtl92e_dm_tx_power_tracking_callback_tssi.exit

if.end247.i:                                      ; preds = %do.end165.i
  %sub250.i = add nsw i32 %.pre.i, -300
  call void @__sanitizer_cov_trace_cmp4(i32 %sub250.i, i32 %conv166.i)
  %cmp251.i = icmp sgt i32 %sub250.i, %conv166.i
  %56 = ptrtoint ptr %rfa_txpowertrackingindex.i565.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %rfa_txpowertrackingindex.i565.i, align 1
  br i1 %cmp251.i, label %if.then253.i, label %if.else254.i

if.then253.i:                                     ; preds = %if.end247.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp3.not.i.i = icmp eq i8 %57, 0
  br i1 %cmp.i564.i, label %if.then.i.i, label %if.else30.i.i

if.then.i.i:                                      ; preds = %if.then253.i
  br i1 %cmp3.not.i.i, label %if.then.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.if.else.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %58 = ptrtoint ptr %rfc_txpowertrackingindex.i567.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rfc_txpowertrackingindex.i567.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp6.not.i.i = icmp eq i8 %59, 0
  br i1 %cmp6.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then8.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true.i.i
  %dec.i.i = add i8 %57, -1
  %60 = ptrtoint ptr %rfa_txpowertrackingindex.i565.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %dec.i.i, ptr %rfa_txpowertrackingindex.i565.i, align 1
  %61 = ptrtoint ptr %rfa_txpowertrackingindex_real26.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %rfa_txpowertrackingindex_real26.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %62)
  %cmp11.i.i = icmp ugt i8 %62, 4
  br i1 %cmp11.i.i, label %if.then13.i.i, label %if.then8.i.i.if.end.i.i_crit_edge

if.then8.i.i.if.end.i.i_crit_edge:                ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then13.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec15.i.i = add i8 %62, -1
  %63 = ptrtoint ptr %rfa_txpowertrackingindex_real26.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %dec15.i.i, ptr %rfa_txpowertrackingindex_real26.i.i, align 2
  %idxprom.i.i = zext i8 %dec15.i.i to i32
  %arrayidx.i.i = getelementptr [37 x i32], ptr @dm_tx_bb_gain, i32 0, i32 %idxprom.i.i
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i.i, align 4
  call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3200, i32 noundef -1, i32 noundef %65) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then13.i.i, %if.then8.i.i.if.end.i.i_crit_edge
  %66 = ptrtoint ptr %rfc_txpowertrackingindex.i567.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rfc_txpowertrackingindex.i567.i, align 4
  %dec18.i.i = add i8 %67, -1
  store i8 %dec18.i.i, ptr %rfc_txpowertrackingindex.i567.i, align 4
  %68 = ptrtoint ptr %rfc_txpowertrackingindex_real.i572.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %rfc_txpowertrackingindex_real.i572.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %69)
  %cmp20.i.i = icmp ugt i8 %69, 4
  br i1 %cmp20.i.i, label %if.then22.i.i, label %if.end.i.i.if.end274.i_crit_edge

if.end.i.i.if.end274.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end274.i

if.then22.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec24.i.i = add i8 %69, -1
  %70 = ptrtoint ptr %rfc_txpowertrackingindex_real.i572.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %dec24.i.i, ptr %rfc_txpowertrackingindex_real.i572.i, align 1
  %idxprom26.i.i = zext i8 %dec24.i.i to i32
  %arrayidx27.i.i = getelementptr [37 x i32], ptr @dm_tx_bb_gain, i32 0, i32 %idxprom26.i.i
  %71 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx27.i.i, align 4
  br label %if.then259.sink.split.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.then.i.i.if.else.i.i_crit_edge
  call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3200, i32 noundef -1, i32 noundef 1698693525) #7
  br label %if.then259.sink.split.i

if.else30.i.i:                                    ; preds = %if.then253.i
  br i1 %cmp3.not.i.i, label %if.else30.i.i.if.else266.sink.split.i_crit_edge, label %if.then35.i.i

if.else30.i.i.if.else266.sink.split.i_crit_edge:  ; preds = %if.else30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else266.sink.split.i

if.then35.i.i:                                    ; preds = %if.else30.i.i
  %dec37.i.i = add i8 %57, -1
  %73 = ptrtoint ptr %rfa_txpowertrackingindex.i565.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %dec37.i.i, ptr %rfa_txpowertrackingindex.i565.i, align 1
  %74 = ptrtoint ptr %rfa_txpowertrackingindex_real26.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rfa_txpowertrackingindex_real26.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %75)
  %cmp40.i.i = icmp ugt i8 %75, 4
  br i1 %cmp40.i.i, label %if.then42.i.i, label %if.then35.i.i.if.end274.i_crit_edge

if.then35.i.i.if.end274.i_crit_edge:              ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end274.i

if.then42.i.i:                                    ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec44.i.i = add i8 %75, -1
  br label %if.else266.sink.split.sink.split.i

if.else254.i:                                     ; preds = %if.end247.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %57)
  %cmp3.i.i = icmp ult i8 %57, 36
  br i1 %cmp.i564.i, label %if.then.i566.i, label %if.else18.i.i

if.then.i566.i:                                   ; preds = %if.else254.i
  br i1 %cmp3.i.i, label %land.lhs.true.i568.i, label %if.then.i566.i.if.else.i574.i_crit_edge

if.then.i566.i.if.else.i574.i_crit_edge:          ; preds = %if.then.i566.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i574.i

land.lhs.true.i568.i:                             ; preds = %if.then.i566.i
  %76 = ptrtoint ptr %rfc_txpowertrackingindex.i567.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %rfc_txpowertrackingindex.i567.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %77)
  %cmp6.i.i = icmp ult i8 %77, 36
  br i1 %cmp6.i.i, label %if.then8.i573.i, label %land.lhs.true.i568.i.if.else.i574.i_crit_edge

land.lhs.true.i568.i.if.else.i574.i_crit_edge:    ; preds = %land.lhs.true.i568.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i574.i

if.then8.i573.i:                                  ; preds = %land.lhs.true.i568.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i.i = add nuw nsw i8 %57, 1
  %78 = ptrtoint ptr %rfa_txpowertrackingindex.i565.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %inc.i.i, ptr %rfa_txpowertrackingindex.i565.i, align 1
  %79 = ptrtoint ptr %rfa_txpowertrackingindex_real26.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %rfa_txpowertrackingindex_real26.i.i, align 2
  %inc10.i.i = add i8 %80, 1
  store i8 %inc10.i.i, ptr %rfa_txpowertrackingindex_real26.i.i, align 2
  %idxprom.i570.i = zext i8 %inc10.i.i to i32
  %arrayidx.i571.i = getelementptr [37 x i32], ptr @dm_tx_bb_gain, i32 0, i32 %idxprom.i570.i
  %81 = ptrtoint ptr %arrayidx.i571.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i571.i, align 4
  call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3200, i32 noundef -1, i32 noundef %82) #7
  %83 = ptrtoint ptr %rfc_txpowertrackingindex.i567.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %rfc_txpowertrackingindex.i567.i, align 4
  %inc13.i.i = add i8 %84, 1
  store i8 %inc13.i.i, ptr %rfc_txpowertrackingindex.i567.i, align 4
  %85 = ptrtoint ptr %rfc_txpowertrackingindex_real.i572.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %rfc_txpowertrackingindex_real.i572.i, align 1
  %inc14.i.i = add i8 %86, 1
  store i8 %inc14.i.i, ptr %rfc_txpowertrackingindex_real.i572.i, align 1
  %idxprom16.i.i = zext i8 %inc14.i.i to i32
  %arrayidx17.i.i = getelementptr [37 x i32], ptr @dm_tx_bb_gain, i32 0, i32 %idxprom16.i.i
  %87 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx17.i.i, align 4
  br label %if.then259.sink.split.i

if.else.i574.i:                                   ; preds = %land.lhs.true.i568.i.if.else.i574.i_crit_edge, %if.then.i566.i.if.else.i574.i_crit_edge
  call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3200, i32 noundef -1, i32 noundef 268435520) #7
  br label %if.then259.sink.split.i

if.else18.i.i:                                    ; preds = %if.else254.i
  br i1 %cmp3.i.i, label %if.then23.i.i, label %if.else18.i.i.if.else266.sink.split.i_crit_edge

if.else18.i.i.if.else266.sink.split.i_crit_edge:  ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else266.sink.split.i

if.then23.i.i:                                    ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc25.i.i = add nuw nsw i8 %57, 1
  %89 = ptrtoint ptr %rfa_txpowertrackingindex.i565.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %inc25.i.i, ptr %rfa_txpowertrackingindex.i565.i, align 1
  %90 = ptrtoint ptr %rfa_txpowertrackingindex_real26.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %rfa_txpowertrackingindex_real26.i.i, align 2
  %inc27.i.i = add i8 %91, 1
  br label %if.else266.sink.split.sink.split.i

if.then259.sink.split.i:                          ; preds = %if.else.i574.i, %if.then8.i573.i, %if.else.i.i, %if.then22.i.i
  %.sink.i = phi i32 [ 268435520, %if.else.i574.i ], [ %88, %if.then8.i573.i ], [ 1698693525, %if.else.i.i ], [ %72, %if.then22.i.i ]
  call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3216, i32 noundef -1, i32 noundef %.sink.i) #7
  br label %if.end274.i

if.else266.sink.split.sink.split.i:               ; preds = %if.then23.i.i, %if.then42.i.i
  %inc27.i.sink630.i = phi i8 [ %inc27.i.i, %if.then23.i.i ], [ %dec44.i.i, %if.then42.i.i ]
  %92 = ptrtoint ptr %rfa_txpowertrackingindex_real26.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %inc27.i.sink630.i, ptr %rfa_txpowertrackingindex_real26.i.i, align 2
  %idxprom29.i.i = zext i8 %inc27.i.sink630.i to i32
  %arrayidx30.i.i = getelementptr [37 x i32], ptr @dm_tx_bb_gain, i32 0, i32 %idxprom29.i.i
  %93 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx30.i.i, align 4
  br label %if.else266.sink.split.i

if.else266.sink.split.i:                          ; preds = %if.else266.sink.split.sink.split.i, %if.else18.i.i.if.else266.sink.split.i_crit_edge, %if.else30.i.i.if.else266.sink.split.i_crit_edge
  %.sink623.i = phi i32 [ 1698693525, %if.else30.i.i.if.else266.sink.split.i_crit_edge ], [ 268435520, %if.else18.i.i.if.else266.sink.split.i_crit_edge ], [ %94, %if.else266.sink.split.sink.split.i ]
  call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3200, i32 noundef -1, i32 noundef %.sink623.i) #7
  br label %if.end274.i

if.end274.i:                                      ; preds = %if.else266.sink.split.i, %if.then259.sink.split.i, %if.then35.i.i.if.end274.i_crit_edge, %if.end.i.i.if.end274.i_crit_edge
  %.sink624.in.i = phi ptr [ %rfa_txpowertrackingindex.i565.i, %if.then259.sink.split.i ], [ %rfa_txpowertrackingindex.i565.i, %if.end.i.i.if.end274.i_crit_edge ], [ %rfa_txpowertrackingindex_real26.i.i, %if.else266.sink.split.i ], [ %rfa_txpowertrackingindex_real26.i.i, %if.then35.i.i.if.end274.i_crit_edge ]
  %95 = ptrtoint ptr %.sink624.in.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %.sink624.i = load i8, ptr %.sink624.in.i, align 1
  %96 = ptrtoint ptr %rfa_txpowertracking_default269.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %rfa_txpowertracking_default269.i, align 1
  %sub271.i = sub i8 %.sink624.i, %97
  %98 = ptrtoint ptr %CCKPresentAttentuation_difference273.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %sub271.i, ptr %CCKPresentAttentuation_difference273.i, align 2
  %99 = ptrtoint ptr %CurrentChannelBW.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %CurrentChannelBW.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp275.i = icmp eq i32 %100, 0
  %spec.select.v = select i1 %cmp275.i, i32 36024, i32 36025
  %spec.select = getelementptr i8, ptr %3, i32 %spec.select.v
  %101 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %101)
  %.sink627.i = load i8, ptr %spec.select, align 1
  %add288.i = add i8 %.sink627.i, %sub271.i
  %102 = ptrtoint ptr %CCKPresentAttentuation290.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %add288.i, ptr %CCKPresentAttentuation290.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %add288.i)
  %cmp294.i = icmp sgt i8 %add288.i, 22
  br i1 %cmp294.i, label %if.end274.i.if.then314.sink.split.i_crit_edge, label %if.end298.i

if.end274.i.if.then314.sink.split.i_crit_edge:    ; preds = %if.end274.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then314.sink.split.i

if.end298.i:                                      ; preds = %if.end274.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add288.i)
  %cmp301.i = icmp slt i8 %add288.i, 0
  br i1 %cmp301.i, label %if.end298.i.if.then314.sink.split.i_crit_edge, label %if.end298.i.if.then314.i_crit_edge

if.end298.i.if.then314.i_crit_edge:               ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then314.i

if.end298.i.if.then314.sink.split.i_crit_edge:    ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then314.sink.split.i

if.then314.sink.split.i:                          ; preds = %if.end298.i.if.then314.sink.split.i_crit_edge, %if.end274.i.if.then314.sink.split.i_crit_edge
  %.sink628.i = phi i8 [ 22, %if.end274.i.if.then314.sink.split.i_crit_edge ], [ 0, %if.end298.i.if.then314.sink.split.i_crit_edge ]
  %103 = ptrtoint ptr %CCKPresentAttentuation290.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %.sink628.i, ptr %CCKPresentAttentuation290.i, align 1
  br label %if.then314.i

if.then314.i:                                     ; preds = %if.then314.sink.split.i, %if.end298.i.if.then314.i_crit_edge
  %104 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rtllib.i, align 8
  %channel.i = getelementptr inbounds %struct.rtllib_device, ptr %105, i32 0, i32 89, i32 1
  %106 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %channel.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %107)
  %cmp317.i = icmp eq i8 %107, 14
  %108 = ptrtoint ptr %bcck_in_ch14333.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %bcck_in_ch14333.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool320.not.i = icmp eq i8 %109, 0
  br i1 %cmp317.i, label %land.lhs.true319.i, label %land.lhs.true332.i

land.lhs.true319.i:                               ; preds = %if.then314.i
  br i1 %tobool320.not.i, label %if.then321.i, label %land.lhs.true319.i.if.else340.i_crit_edge

land.lhs.true319.i.if.else340.i_crit_edge:        ; preds = %land.lhs.true319.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else340.i

if.then321.i:                                     ; preds = %land.lhs.true319.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %bcck_in_ch14333.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %bcck_in_ch14333.i, align 1
  br label %do.body346.i

land.lhs.true332.i:                               ; preds = %if.then314.i
  br i1 %tobool320.not.i, label %land.lhs.true332.i.if.else340.i_crit_edge, label %if.then336.i

land.lhs.true332.i.if.else340.i_crit_edge:        ; preds = %land.lhs.true332.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else340.i

if.then336.i:                                     ; preds = %land.lhs.true332.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %bcck_in_ch14333.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %bcck_in_ch14333.i, align 1
  br label %do.body346.i

if.else340.i:                                     ; preds = %land.lhs.true332.i.if.else340.i_crit_edge, %land.lhs.true319.i.if.else340.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool342.i = icmp ne i8 %109, 0
  br label %do.body346.i

do.body346.i:                                     ; preds = %if.else340.i, %if.then336.i, %if.then321.i
  %.sink629.i = phi i1 [ false, %if.then336.i ], [ %tobool342.i, %if.else340.i ], [ true, %if.then321.i ]
  call void @rtl92e_dm_cck_txpower_adjust(ptr noundef %3, i1 noundef zeroext %.sink629.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %112 = load i32, ptr @rt_global_debug_component, align 4
  %and347.i = and i32 %112, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and347.i)
  %tobool348.not.i = icmp eq i32 %and347.i, 0
  br i1 %tobool348.not.i, label %do.body346.i.do.body360.i_crit_edge, label %do.end352.i

do.body346.i.do.body360.i_crit_edge:              ; preds = %do.body346.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body360.i

do.end352.i:                                      ; preds = %do.body346.i
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %rfa_txpowertrackingindex.i565.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %rfa_txpowertrackingindex.i565.i, align 1
  %conv355.i = zext i8 %114 to i32
  %call356.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %conv355.i) #10
  br label %do.body360.i

do.body360.i:                                     ; preds = %do.end352.i, %do.body346.i.do.body360.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %115 = load i32, ptr @rt_global_debug_component, align 4
  %and361.i = and i32 %115, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and361.i)
  %tobool362.not.i = icmp eq i32 %and361.i, 0
  br i1 %tobool362.not.i, label %do.body360.i.do.body374.i_crit_edge, label %do.end366.i

do.body360.i.do.body374.i_crit_edge:              ; preds = %do.body360.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body374.i

do.end366.i:                                      ; preds = %do.body360.i
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %rfa_txpowertrackingindex_real26.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %rfa_txpowertrackingindex_real26.i.i, align 2
  %conv369.i = zext i8 %117 to i32
  %call370.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %conv369.i) #10
  br label %do.body374.i

do.body374.i:                                     ; preds = %do.end366.i, %do.body360.i.do.body374.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %118 = load i32, ptr @rt_global_debug_component, align 4
  %and375.i = and i32 %118, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and375.i)
  %tobool376.not.i = icmp eq i32 %and375.i, 0
  br i1 %tobool376.not.i, label %do.body374.i.do.body388.i_crit_edge, label %do.end380.i

do.body374.i.do.body388.i_crit_edge:              ; preds = %do.body374.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body388.i

do.end380.i:                                      ; preds = %do.body374.i
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %CCKPresentAttentuation_difference273.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %CCKPresentAttentuation_difference273.i, align 2
  %conv383.i = sext i8 %120 to i32
  %call384.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %conv383.i) #10
  br label %do.body388.i

do.body388.i:                                     ; preds = %do.end380.i, %do.body374.i.do.body388.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %121 = load i32, ptr @rt_global_debug_component, align 4
  %and389.i = and i32 %121, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and389.i)
  %tobool390.not.i = icmp eq i32 %and389.i, 0
  br i1 %tobool390.not.i, label %do.body388.i.do.end401.i_crit_edge, label %do.end394.i

do.body388.i.do.end401.i_crit_edge:               ; preds = %do.body388.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end401.i

do.end394.i:                                      ; preds = %do.body388.i
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %CCKPresentAttentuation290.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %CCKPresentAttentuation290.i, align 1
  %conv397.i = sext i8 %123 to i32
  %call398.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv397.i) #10
  br label %do.end401.i

do.end401.i:                                      ; preds = %do.end394.i, %do.body388.i.do.end401.i_crit_edge
  %124 = ptrtoint ptr %CCKPresentAttentuation_difference273.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %CCKPresentAttentuation_difference273.i, align 2
  %126 = add i8 %125, -24
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %126)
  %127 = icmp ult i8 %126, -35
  br i1 %127, label %if.then410.i, label %if.end425.i

if.then410.i:                                     ; preds = %do.end401.i
  %128 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rtllib.i, align 8
  %bdynamic_txpower_enable412.i = getelementptr inbounds %struct.rtllib_device, ptr %129, i32 0, i32 143
  %130 = ptrtoint ptr %bdynamic_txpower_enable412.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %bdynamic_txpower_enable412.i, align 4
  call void @rtl92e_writeb(ptr noundef %3, i32 noundef 285, i8 noundef zeroext 0) #7
  call void @rtl92e_writeb(ptr noundef %3, i32 noundef 319, i8 noundef zeroext 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %131 = load i32, ptr @rt_global_debug_component, align 4
  %and414.i = and i32 %131, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and414.i)
  %tobool415.not.i = icmp eq i32 %and414.i, 0
  br i1 %tobool415.not.i, label %if.then410.i._rtl92e_dm_tx_power_tracking_callback_tssi.exit_crit_edge, label %do.end419.i

if.then410.i._rtl92e_dm_tx_power_tracking_callback_tssi.exit_crit_edge: ; preds = %if.then410.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_dm_tx_power_tracking_callback_tssi.exit

do.end419.i:                                      ; preds = %if.then410.i
  call void @__sanitizer_cov_trace_pc() #9
  %call421.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #10
  br label %_rtl92e_dm_tx_power_tracking_callback_tssi.exit

if.end425.i:                                      ; preds = %do.end401.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_writeb(ptr noundef %3, i32 noundef 285, i8 noundef zeroext 0) #7
  br label %for.end436.i

for.end436.i:                                     ; preds = %if.end425.i, %do.end110.i, %if.then103.i.for.end436.i_crit_edge, %for.cond23.i.for.end436.i_crit_edge
  call void @rtl92e_writeb(ptr noundef %3, i32 noundef 319, i8 noundef zeroext 0) #7
  %inc438.i = add nuw nsw i32 %j.0588.i, 1
  %exitcond593.not.i = icmp eq i32 %inc438.i, 31
  br i1 %exitcond593.not.i, label %for.end439.i, label %for.end436.i.for.body.i_crit_edge

for.end436.i.for.body.i_crit_edge:                ; preds = %for.end436.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end439.i:                                     ; preds = %for.end436.i
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rtllib.i, align 8
  %bdynamic_txpower_enable441.i = getelementptr inbounds %struct.rtllib_device, ptr %133, i32 0, i32 143
  %134 = ptrtoint ptr %bdynamic_txpower_enable441.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %bdynamic_txpower_enable441.i, align 4
  call void @rtl92e_writeb(ptr noundef %3, i32 noundef 285, i8 noundef zeroext 0) #7
  br label %_rtl92e_dm_tx_power_tracking_callback_tssi.exit

_rtl92e_dm_tx_power_tracking_callback_tssi.exit:  ; preds = %for.end439.i, %do.end419.i, %if.then410.i._rtl92e_dm_tx_power_tracking_callback_tssi.exit_crit_edge, %do.end240.i, %do.body234.i._rtl92e_dm_tx_power_tracking_callback_tssi.exit_crit_edge, %if.then69.i, %do.end62.i, %do.end45.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tx_cmd.i) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %btxpower_trackingInit.i = getelementptr i8, ptr %3, i32 36157
  %135 = ptrtoint ptr %btxpower_trackingInit.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %btxpower_trackingInit.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.not.i5 = icmp eq i8 %136, 0
  br i1 %tobool.not.i5, label %if.then.i, label %if.end46.i10

if.then.i:                                        ; preds = %if.else
  %call1.i = tail call i32 @rtl92e_get_bb_reg(ptr noundef %3, i32 noundef 3200, i32 noundef -1) #7
  %OFDM_index.i = getelementptr i8, ptr %3, i32 36158
  br label %for.body.i6

for.body.i6:                                      ; preds = %for.inc.i.for.body.i6_crit_edge, %if.then.i
  %i.0301.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %for.inc.i.for.body.i6_crit_edge ]
  %arrayidx.i = getelementptr [19 x i32], ptr @OFDMSwingTable, i32 0, i32 %i.0301.i
  %137 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %138)
  %cmp2.i = icmp eq i32 %call1.i, %138
  br i1 %cmp2.i, label %if.then3.i, label %for.body.i6.for.inc.i_crit_edge

for.body.i6.for.inc.i_crit_edge:                  ; preds = %for.body.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i6
  %conv.i = trunc i32 %i.0301.i to i8
  %139 = ptrtoint ptr %OFDM_index.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv.i, ptr %OFDM_index.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %140 = load i32, ptr @rt_global_debug_component, align 4
  %and.i7 = and i32 %140, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool5.not.i = icmp eq i32 %and.i7, 0
  br i1 %tobool5.not.i, label %if.then3.i.for.inc.i_crit_edge, label %do.end.i8

if.then3.i.for.inc.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end.i8:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef 3200, i32 noundef %call1.i, i32 noundef %i.0301.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i8, %if.then3.i.for.inc.i_crit_edge, %for.body.i6.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0301.i, 1
  %exitcond.not.i9 = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i9, label %for.end.i, label %for.inc.i.for.body.i6_crit_edge

for.inc.i.for.body.i6_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i6

for.end.i:                                        ; preds = %for.inc.i
  %call15.i = tail call i32 @rtl92e_get_bb_reg(ptr noundef %3, i32 noundef 2592, i32 noundef 16711680) #7
  %141 = zext i32 %call15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %call15.i, label %for.end.i.for.end44.i_crit_edge [
    i32 54, label %for.end.i.if.then25.i_crit_edge
    i32 48, label %if.then25.fold.split.i
    i32 43, label %if.then25.fold.split306.i
    i32 38, label %if.then25.fold.split307.i
    i32 34, label %if.then25.fold.split308.i
    i32 31, label %if.then25.fold.split309.i
    i32 27, label %if.then25.fold.split310.i
    i32 24, label %if.then25.fold.split311.i
    i32 22, label %if.then25.fold.split312.i
    i32 19, label %if.then25.fold.split313.i
    i32 17, label %if.then25.fold.split314.i
    i32 15, label %if.then25.fold.split315.i
  ]

for.end.i.if.then25.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

for.end.i.for.end44.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44.i

if.then25.fold.split.i:                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.then25.fold.split306.i:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.then25.fold.split307.i:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.then25.fold.split308.i:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.then25.fold.split309.i:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.then25.fold.split310.i:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.then25.fold.split311.i:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.then25.fold.split312.i:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.then25.fold.split313.i:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.then25.fold.split314.i:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.then25.fold.split315.i:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.then25.i:                                      ; preds = %if.then25.fold.split315.i, %if.then25.fold.split314.i, %if.then25.fold.split313.i, %if.then25.fold.split312.i, %if.then25.fold.split311.i, %if.then25.fold.split310.i, %if.then25.fold.split309.i, %if.then25.fold.split308.i, %if.then25.fold.split307.i, %if.then25.fold.split306.i, %if.then25.fold.split.i, %for.end.i.if.then25.i_crit_edge
  %i.1303.lcssa.i = phi i32 [ 0, %for.end.i.if.then25.i_crit_edge ], [ 1, %if.then25.fold.split.i ], [ 2, %if.then25.fold.split306.i ], [ 3, %if.then25.fold.split307.i ], [ 4, %if.then25.fold.split308.i ], [ 5, %if.then25.fold.split309.i ], [ 6, %if.then25.fold.split310.i ], [ 7, %if.then25.fold.split311.i ], [ 8, %if.then25.fold.split312.i ], [ 9, %if.then25.fold.split313.i ], [ 10, %if.then25.fold.split314.i ], [ 11, %if.then25.fold.split315.i ]
  %conv26.i = trunc i32 %i.1303.lcssa.i to i8
  %CCK_index.i = getelementptr i8, ptr %3, i32 36160
  %142 = ptrtoint ptr %CCK_index.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv26.i, ptr %CCK_index.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %143 = load i32, ptr @rt_global_debug_component, align 4
  %and28.i = and i32 %143, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.then25.i.for.end44.i_crit_edge, label %do.end33.i

if.then25.i.for.end44.i_crit_edge:                ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44.i

do.end33.i:                                       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef 2592, i32 noundef %call15.i, i32 noundef %i.1303.lcssa.i) #10
  br label %for.end44.i

for.end44.i:                                      ; preds = %do.end33.i, %if.then25.i.for.end44.i_crit_edge, %for.end.i.for.end44.i_crit_edge
  %144 = ptrtoint ptr %btxpower_trackingInit.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %btxpower_trackingInit.i, align 1
  br label %if.end

if.end46.i10:                                     ; preds = %if.else
  %call47.i = tail call i32 @rtl92e_get_rf_reg(ptr noundef %3, i32 noundef 0, i32 noundef 18, i32 noundef 120) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %145 = load i32, ptr @rt_global_debug_component, align 4
  %and49.i = and i32 %145, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end46.i10.do.end59.i_crit_edge, label %do.end54.i

if.end46.i10.do.end59.i_crit_edge:                ; preds = %if.end46.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59.i

do.end54.i:                                       ; preds = %if.end46.i10
  call void @__sanitizer_cov_trace_pc() #9
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %call47.i) #10
  br label %do.end59.i

do.end59.i:                                       ; preds = %do.end54.i, %if.end46.i10.do.end59.i_crit_edge
  %146 = add i32 %call47.i, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %146)
  %147 = icmp ult i32 %146, -11
  br i1 %147, label %do.end59.i.if.end_crit_edge, label %if.end65.i

do.end59.i.if.end_crit_edge:                      ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end65.i:                                       ; preds = %do.end59.i
  %148 = tail call i32 @llvm.umin.i32(i32 %call47.i, i32 12) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %149 = load i32, ptr @rt_global_debug_component, align 4
  %and71.i = and i32 %149, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %if.end65.i.do.end81.i_crit_edge, label %do.end76.i

if.end65.i.do.end81.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end81.i

do.end76.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %call78.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %148) #10
  br label %do.end81.i

do.end81.i:                                       ; preds = %do.end76.i, %if.end65.i.do.end81.i_crit_edge
  %ThermalMeter.i = getelementptr i8, ptr %3, i32 35970
  %150 = ptrtoint ptr %ThermalMeter.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 9, ptr %ThermalMeter.i, align 2
  %arrayidx84.i = getelementptr i8, ptr %3, i32 35971
  %151 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 9, ptr %arrayidx84.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %148)
  %cmp90.i = icmp ult i32 %148, 10
  br i1 %cmp90.i, label %if.then92.i, label %if.else.i

if.then92.i:                                      ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  %152 = trunc i32 %148 to i8
  %conv98.i = xor i8 %152, 15
  %sub100.i = sub nuw nsw i8 9, %152
  %153 = tail call i8 @llvm.umin.i8(i8 %conv98.i, i8 11) #7
  br label %if.end136.i

if.else.i:                                        ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv123.i = add nuw nsw i32 %148, 247
  %conv124.i = and i32 %conv123.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv124.i)
  %cmp125.i = icmp ugt i32 %conv124.i, 5
  %154 = trunc i32 %148 to i8
  %conv131.i = xor i8 %154, 15
  %tmpOFDMindex.0.i = select i1 %cmp125.i, i8 0, i8 %conv131.i
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.else.i, %if.then92.i
  %tmpCCK40Mindex.0.i = phi i8 [ %sub100.i, %if.then92.i ], [ 0, %if.else.i ]
  %tmpCCK20Mindex.1.i = phi i8 [ %153, %if.then92.i ], [ %tmpOFDMindex.0.i, %if.else.i ]
  %tmpOFDMindex.1.i = phi i8 [ %conv98.i, %if.then92.i ], [ %tmpOFDMindex.0.i, %if.else.i ]
  %CurrentChannelBW.i12 = getelementptr i8, ptr %3, i32 31420
  %155 = ptrtoint ptr %CurrentChannelBW.i12 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %CurrentChannelBW.i12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp137.not.i = icmp eq i32 %156, 0
  %tmpCCK20Mindex.1.tmpCCK40Mindex.0.i = select i1 %cmp137.not.i, i8 %tmpCCK20Mindex.1.i, i8 %tmpCCK40Mindex.0.i
  %Record_CCK_20Mindex.i = getelementptr i8, ptr %3, i32 36161
  %157 = ptrtoint ptr %Record_CCK_20Mindex.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %tmpCCK20Mindex.1.i, ptr %Record_CCK_20Mindex.i, align 1
  %Record_CCK_40Mindex.i = getelementptr i8, ptr %3, i32 36162
  %158 = ptrtoint ptr %Record_CCK_40Mindex.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %tmpCCK40Mindex.0.i, ptr %Record_CCK_40Mindex.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %159 = load i32, ptr @rt_global_debug_component, align 4
  %and143.i = and i32 %159, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143.i)
  %tobool144.not.i = icmp eq i32 %and143.i, 0
  br i1 %tobool144.not.i, label %if.end136.i.do.end157.i_crit_edge, label %do.end148.i

if.end136.i.do.end157.i_crit_edge:                ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end157.i

do.end148.i:                                      ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv151.i = zext i8 %tmpCCK20Mindex.1.i to i32
  %conv153.i = zext i8 %tmpCCK40Mindex.0.i to i32
  %call154.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %conv151.i, i32 noundef %conv153.i) #10
  br label %do.end157.i

do.end157.i:                                      ; preds = %do.end148.i, %if.end136.i.do.end157.i_crit_edge
  %rtllib.i13 = getelementptr i8, ptr %3, i32 31316
  %160 = ptrtoint ptr %rtllib.i13 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %rtllib.i13, align 8
  %channel.i14 = getelementptr inbounds %struct.rtllib_device, ptr %161, i32 0, i32 89, i32 1
  %162 = ptrtoint ptr %channel.i14 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %channel.i14, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %163)
  %cmp159.i = icmp eq i8 %163, 14
  %bcck_in_ch14.i = getelementptr i8, ptr %3, i32 36155
  %164 = ptrtoint ptr %bcck_in_ch14.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %bcck_in_ch14.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool161.not.i = icmp eq i8 %165, 0
  br i1 %cmp159.i, label %land.lhs.true.i, label %land.lhs.true171.i

land.lhs.true.i:                                  ; preds = %do.end157.i
  br i1 %tobool161.not.i, label %land.lhs.true.i.if.end178.i.thread_crit_edge, label %land.lhs.true.i.if.end178.i_crit_edge

land.lhs.true.i.if.end178.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178.i

land.lhs.true.i.if.end178.i.thread_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178.i.thread

land.lhs.true171.i:                               ; preds = %do.end157.i
  br i1 %tobool161.not.i, label %land.lhs.true171.i.if.end178.i_crit_edge, label %land.lhs.true171.i.if.end178.i.thread_crit_edge

land.lhs.true171.i.if.end178.i.thread_crit_edge:  ; preds = %land.lhs.true171.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178.i.thread

land.lhs.true171.i.if.end178.i_crit_edge:         ; preds = %land.lhs.true171.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178.i

if.end178.i:                                      ; preds = %land.lhs.true171.i.if.end178.i_crit_edge, %land.lhs.true.i.if.end178.i_crit_edge
  %CCK_index179.i = getelementptr i8, ptr %3, i32 36160
  %166 = ptrtoint ptr %CCK_index179.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %CCK_index179.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %167, i8 %tmpCCK20Mindex.1.tmpCCK40Mindex.0.i)
  %cmp182.not.i = icmp eq i8 %167, %tmpCCK20Mindex.1.tmpCCK40Mindex.0.i
  br i1 %cmp182.not.i, label %if.end178.i.if.end191.i_crit_edge, label %if.end178.i.if.end186.thread.i_crit_edge

if.end178.i.if.end186.thread.i_crit_edge:         ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186.thread.i

if.end178.i.if.end191.i_crit_edge:                ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191.i

if.end178.i.thread:                               ; preds = %land.lhs.true171.i.if.end178.i.thread_crit_edge, %land.lhs.true.i.if.end178.i.thread_crit_edge
  %.sink.i15 = phi i8 [ 1, %land.lhs.true.i.if.end178.i.thread_crit_edge ], [ 0, %land.lhs.true171.i.if.end178.i.thread_crit_edge ]
  %168 = ptrtoint ptr %bcck_in_ch14.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %.sink.i15, ptr %bcck_in_ch14.i, align 1
  %CCK_index179.i17 = getelementptr i8, ptr %3, i32 36160
  %169 = ptrtoint ptr %CCK_index179.i17 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %CCK_index179.i17, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %170, i8 %tmpCCK20Mindex.1.tmpCCK40Mindex.0.i)
  %cmp182.not.i18 = icmp eq i8 %170, %tmpCCK20Mindex.1.tmpCCK40Mindex.0.i
  br i1 %cmp182.not.i18, label %if.end178.i.thread.if.then188.i_crit_edge, label %if.end178.i.thread.if.end186.thread.i_crit_edge

if.end178.i.thread.if.end186.thread.i_crit_edge:  ; preds = %if.end178.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186.thread.i

if.end178.i.thread.if.then188.i_crit_edge:        ; preds = %if.end178.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then188.i

if.end186.thread.i:                               ; preds = %if.end178.i.thread.if.end186.thread.i_crit_edge, %if.end178.i.if.end186.thread.i_crit_edge
  %CCK_index179.i20 = phi ptr [ %CCK_index179.i17, %if.end178.i.thread.if.end186.thread.i_crit_edge ], [ %CCK_index179.i, %if.end178.i.if.end186.thread.i_crit_edge ]
  %171 = ptrtoint ptr %CCK_index179.i20 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %tmpCCK20Mindex.1.tmpCCK40Mindex.0.i, ptr %CCK_index179.i20, align 4
  br label %if.then188.i

if.then188.i:                                     ; preds = %if.end186.thread.i, %if.end178.i.thread.if.then188.i_crit_edge
  %172 = ptrtoint ptr %bcck_in_ch14.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %bcck_in_ch14.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool190.i = icmp ne i8 %173, 0
  tail call void @rtl92e_dm_cck_txpower_adjust(ptr noundef %3, i1 noundef zeroext %tobool190.i) #7
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.then188.i, %if.end178.i.if.end191.i_crit_edge
  %OFDM_index192.i = getelementptr i8, ptr %3, i32 36158
  %174 = ptrtoint ptr %OFDM_index192.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %OFDM_index192.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %175, i8 %tmpOFDMindex.1.i)
  %cmp196.not.i = icmp eq i8 %175, %tmpOFDMindex.1.i
  br i1 %cmp196.not.i, label %if.end191.i.if.end223.i_crit_edge, label %if.then198.i

if.end191.i.if.end223.i_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end223.i

if.then198.i:                                     ; preds = %if.end191.i
  %conv195.i = zext i8 %tmpOFDMindex.1.i to i32
  %176 = ptrtoint ptr %OFDM_index192.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %tmpOFDMindex.1.i, ptr %OFDM_index192.i, align 2
  %arrayidx203.i = getelementptr [19 x i32], ptr @OFDMSwingTable, i32 0, i32 %conv195.i
  %177 = ptrtoint ptr %arrayidx203.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx203.i, align 4
  tail call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3200, i32 noundef -1, i32 noundef %178) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %179 = load i32, ptr @rt_global_debug_component, align 4
  %and205.i = and i32 %179, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205.i)
  %tobool206.not.i = icmp eq i32 %and205.i, 0
  br i1 %tobool206.not.i, label %if.then198.i.if.end223.i_crit_edge, label %do.end210.i

if.then198.i.if.end223.i_crit_edge:               ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end223.i

do.end210.i:                                      ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #9
  %180 = ptrtoint ptr %OFDM_index192.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %OFDM_index192.i, align 2
  %conv214.i = zext i8 %181 to i32
  %arrayidx218.i = getelementptr [19 x i32], ptr @OFDMSwingTable, i32 0, i32 %conv214.i
  %182 = ptrtoint ptr %arrayidx218.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx218.i, align 4
  %call219.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %conv214.i, i32 noundef %183) #10
  br label %if.end223.i

if.end223.i:                                      ; preds = %do.end210.i, %if.then198.i.if.end223.i_crit_edge, %if.end191.i.if.end223.i_crit_edge
  %txpower_count.i = getelementptr i8, ptr %3, i32 36156
  %184 = ptrtoint ptr %txpower_count.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %txpower_count.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end223.i, %do.end59.i.if.end_crit_edge, %for.end44.i, %_rtl92e_dm_tx_power_tracking_callback_tssi.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_dm_init_txpower_tracking(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #9
  %btxpower_tracking.i = getelementptr i8, ptr %dev, i32 36154
  %2 = ptrtoint ptr %btxpower_tracking.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %btxpower_tracking.i, align 2
  %txpower_count.i = getelementptr i8, ptr %dev, i32 36156
  %3 = ptrtoint ptr %txpower_count.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %txpower_count.i, align 8
  %btxpower_trackingInit.i = getelementptr i8, ptr %dev, i32 36157
  %4 = ptrtoint ptr %btxpower_trackingInit.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %btxpower_trackingInit.i, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %rtllib.i = getelementptr i8, ptr %dev, i32 31316
  %5 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtllib.i, align 8
  %FwRWRF.i = getelementptr inbounds %struct.rtllib_device, ptr %6, i32 0, i32 155
  %7 = ptrtoint ptr %FwRWRF.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %FwRWRF.i, align 8, !range !385
  %9 = getelementptr i8, ptr %dev, i32 36154
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %8, ptr %9, align 2
  %txpower_count.i4 = getelementptr i8, ptr %dev, i32 36156
  %11 = ptrtoint ptr %txpower_count.i4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %txpower_count.i4, align 8
  %btxpower_trackingInit.i5 = getelementptr i8, ptr %dev, i32 36157
  %12 = ptrtoint ptr %btxpower_trackingInit.i5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %btxpower_trackingInit.i5, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %13 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.else.if.end_crit_edge, label %do.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %14 = zext i8 %8 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %14) #10
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.else.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_dm_cck_txpower_adjust(ptr noundef %dev, i1 noundef zeroext %binch14) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #9
  %CCKPresentAttentuation.i = getelementptr i8, ptr %dev, i32 36027
  %2 = ptrtoint ptr %CCKPresentAttentuation.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %CCKPresentAttentuation.i, align 1
  %idxprom38.i = zext i8 %3 to i32
  %dm_cck_tx_bb_gain_ch14.dm_cck_tx_bb_gain.i = select i1 %binch14, ptr @dm_cck_tx_bb_gain_ch14, ptr @dm_cck_tx_bb_gain
  %arrayidx39.i = getelementptr [23 x [8 x i8]], ptr %dm_cck_tx_bb_gain_ch14.dm_cck_tx_bb_gain.i, i32 0, i32 %idxprom38.i
  %4 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx39.i, align 1
  %conv41.i = zext i8 %5 to i32
  %arrayidx44.i = getelementptr [23 x [8 x i8]], ptr %dm_cck_tx_bb_gain_ch14.dm_cck_tx_bb_gain.i, i32 0, i32 %idxprom38.i, i32 1
  %6 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %7 to i32
  %shl46.i = shl nuw nsw i32 %conv45.i, 8
  %add47.i = or i32 %shl46.i, %conv41.i
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 2592, i32 noundef -65536, i32 noundef %add47.i) #7
  %arrayidx50.i = getelementptr [23 x [8 x i8]], ptr %dm_cck_tx_bb_gain_ch14.dm_cck_tx_bb_gain.i, i32 0, i32 %idxprom38.i, i32 2
  %8 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx50.i, align 1
  %conv51.i = zext i8 %9 to i32
  %arrayidx54.i = getelementptr [23 x [8 x i8]], ptr %dm_cck_tx_bb_gain_ch14.dm_cck_tx_bb_gain.i, i32 0, i32 %idxprom38.i, i32 3
  %10 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx54.i, align 1
  %conv55.i = zext i8 %11 to i32
  %shl56.i = shl nuw nsw i32 %conv55.i, 8
  %add57.i = or i32 %shl56.i, %conv51.i
  %arrayidx60.i = getelementptr [23 x [8 x i8]], ptr %dm_cck_tx_bb_gain_ch14.dm_cck_tx_bb_gain.i, i32 0, i32 %idxprom38.i, i32 4
  %12 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx60.i, align 1
  %conv61.i = zext i8 %13 to i32
  %shl62.i = shl nuw nsw i32 %conv61.i, 16
  %add63.i = or i32 %add57.i, %shl62.i
  %arrayidx66.i = getelementptr [23 x [8 x i8]], ptr %dm_cck_tx_bb_gain_ch14.dm_cck_tx_bb_gain.i, i32 0, i32 %idxprom38.i, i32 5
  %14 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx66.i, align 1
  %conv67.i = zext i8 %15 to i32
  %shl68.i = shl nuw i32 %conv67.i, 24
  %add69.i = or i32 %add63.i, %shl68.i
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 2596, i32 noundef -1, i32 noundef %add69.i) #7
  %arrayidx72.i = getelementptr [23 x [8 x i8]], ptr %dm_cck_tx_bb_gain_ch14.dm_cck_tx_bb_gain.i, i32 0, i32 %idxprom38.i, i32 6
  %16 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %17 to i32
  %arrayidx76.i = getelementptr [23 x [8 x i8]], ptr %dm_cck_tx_bb_gain_ch14.dm_cck_tx_bb_gain.i, i32 0, i32 %idxprom38.i, i32 7
  %18 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx76.i, align 1
  %conv77.i = zext i8 %19 to i32
  %shl78.i = shl nuw nsw i32 %conv77.i, 8
  %add79.i = or i32 %shl78.i, %conv73.i
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 2600, i32 noundef 65535, i32 noundef %add79.i) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %CCK_index75.i = getelementptr i8, ptr %dev, i32 36160
  %20 = ptrtoint ptr %CCK_index75.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %CCK_index75.i, align 4
  %idxprom76.i = zext i8 %21 to i32
  br i1 %binch14, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %arrayidx.i = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom76.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %23 to i32
  %arrayidx5.i = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom76.i, i32 1
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %25 to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 8
  %add.i = or i32 %shl.i, %conv.i
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 2592, i32 noundef -65536, i32 noundef %add.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %26 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %26, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.then.i.do.end12.i_crit_edge, label %do.end.i

if.then.i.do.end12.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef 2592, i32 noundef %add.i) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %if.then.i.do.end12.i_crit_edge
  %27 = ptrtoint ptr %CCK_index75.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %CCK_index75.i, align 4
  %idxprom14.i = zext i8 %28 to i32
  %arrayidx16.i = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom14.i, i32 2
  %29 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %30 to i32
  %arrayidx21.i = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom14.i, i32 3
  %31 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %32 to i32
  %shl23.i = shl nuw nsw i32 %conv22.i, 8
  %add24.i = or i32 %shl23.i, %conv17.i
  %arrayidx28.i = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom14.i, i32 4
  %33 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %34 to i32
  %shl30.i = shl nuw nsw i32 %conv29.i, 16
  %add31.i = or i32 %add24.i, %shl30.i
  %arrayidx35.i = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom14.i, i32 5
  %35 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx35.i, align 1
  %conv36.i = zext i8 %36 to i32
  %shl37.i = shl nuw i32 %conv36.i, 24
  %add38.i = or i32 %add31.i, %shl37.i
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 2596, i32 noundef -1, i32 noundef %add38.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %37 = load i32, ptr @rt_global_debug_component, align 4
  %and40.i = and i32 %37, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %do.end12.i.do.end50.i_crit_edge, label %do.end45.i

do.end12.i.do.end50.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50.i

do.end45.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef 2596, i32 noundef %add38.i) #10
  br label %do.end50.i

do.end50.i:                                       ; preds = %do.end45.i, %do.end12.i.do.end50.i_crit_edge
  %38 = ptrtoint ptr %CCK_index75.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %CCK_index75.i, align 4
  %idxprom52.i = zext i8 %39 to i32
  %arrayidx54.i6 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom52.i, i32 6
  %40 = ptrtoint ptr %arrayidx54.i6 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx54.i6, align 1
  %conv55.i7 = zext i8 %41 to i32
  %arrayidx59.i = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom52.i, i32 7
  %42 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx59.i, align 1
  %conv60.i = zext i8 %43 to i32
  %shl61.i = shl nuw nsw i32 %conv60.i, 8
  %add62.i = or i32 %shl61.i, %conv55.i7
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 2600, i32 noundef 65535, i32 noundef %add62.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %44 = load i32, ptr @rt_global_debug_component, align 4
  %and64.i = and i32 %44, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %do.end50.i.if.end_crit_edge, label %do.end69.i

do.end50.i.if.end_crit_edge:                      ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end69.i:                                       ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef 2600, i32 noundef %add62.i) #10
  br label %if.end

if.else.i:                                        ; preds = %if.else
  %arrayidx77.i = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom76.i
  %45 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx77.i, align 1
  %conv79.i = zext i8 %46 to i32
  %arrayidx83.i = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom76.i, i32 1
  %47 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx83.i, align 1
  %conv84.i = zext i8 %48 to i32
  %shl85.i = shl nuw nsw i32 %conv84.i, 8
  %add86.i = or i32 %shl85.i, %conv79.i
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 2592, i32 noundef -65536, i32 noundef %add86.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %49 = load i32, ptr @rt_global_debug_component, align 4
  %and88.i = and i32 %49, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %if.else.i.do.end98.i_crit_edge, label %do.end93.i

if.else.i.do.end98.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end98.i

do.end93.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %call95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef 2592, i32 noundef %add86.i) #10
  br label %do.end98.i

do.end98.i:                                       ; preds = %do.end93.i, %if.else.i.do.end98.i_crit_edge
  %50 = ptrtoint ptr %CCK_index75.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %CCK_index75.i, align 4
  %idxprom100.i = zext i8 %51 to i32
  %arrayidx102.i = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom100.i, i32 2
  %52 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx102.i, align 1
  %conv103.i = zext i8 %53 to i32
  %arrayidx107.i = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom100.i, i32 3
  %54 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx107.i, align 1
  %conv108.i = zext i8 %55 to i32
  %shl109.i = shl nuw nsw i32 %conv108.i, 8
  %add110.i = or i32 %shl109.i, %conv103.i
  %arrayidx114.i = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom100.i, i32 4
  %56 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx114.i, align 1
  %conv115.i = zext i8 %57 to i32
  %shl116.i = shl nuw nsw i32 %conv115.i, 16
  %add117.i = or i32 %add110.i, %shl116.i
  %arrayidx121.i = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom100.i, i32 5
  %58 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx121.i, align 1
  %conv122.i = zext i8 %59 to i32
  %shl123.i = shl nuw i32 %conv122.i, 24
  %add124.i = or i32 %add117.i, %shl123.i
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 2596, i32 noundef -1, i32 noundef %add124.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %60 = load i32, ptr @rt_global_debug_component, align 4
  %and126.i = and i32 %60, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126.i)
  %tobool127.not.i = icmp eq i32 %and126.i, 0
  br i1 %tobool127.not.i, label %do.end98.i.do.end136.i_crit_edge, label %do.end131.i

do.end98.i.do.end136.i_crit_edge:                 ; preds = %do.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end136.i

do.end131.i:                                      ; preds = %do.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  %call133.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef 2596, i32 noundef %add124.i) #10
  br label %do.end136.i

do.end136.i:                                      ; preds = %do.end131.i, %do.end98.i.do.end136.i_crit_edge
  %61 = ptrtoint ptr %CCK_index75.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %CCK_index75.i, align 4
  %idxprom138.i = zext i8 %62 to i32
  %arrayidx140.i = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom138.i, i32 6
  %63 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx140.i, align 1
  %conv141.i = zext i8 %64 to i32
  %arrayidx145.i = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom138.i, i32 7
  %65 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx145.i, align 1
  %conv146.i = zext i8 %66 to i32
  %shl147.i = shl nuw nsw i32 %conv146.i, 8
  %add148.i = or i32 %shl147.i, %conv141.i
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 2600, i32 noundef 65535, i32 noundef %add148.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %67 = load i32, ptr @rt_global_debug_component, align 4
  %and150.i = and i32 %67, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.i)
  %tobool151.not.i = icmp eq i32 %and150.i, 0
  br i1 %tobool151.not.i, label %do.end136.i.if.end_crit_edge, label %do.end155.i

do.end136.i.if.end_crit_edge:                     ; preds = %do.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end155.i:                                      ; preds = %do.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  %call157.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef 2600, i32 noundef %add148.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end155.i, %do.end136.i.if.end_crit_edge, %do.end69.i, %do.end50.i.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_dm_restore_state(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %last_ratr = getelementptr i8, ptr %dev, i32 31772
  %0 = ptrtoint ptr %last_ratr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_ratr, align 4
  %up = getelementptr i8, ptr %dev, i32 30794
  %2 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %4 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end7:                                          ; preds = %entry
  %rate_adaptive = getelementptr i8, ptr %dev, i32 31712
  %5 = ptrtoint ptr %rate_adaptive to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rate_adaptive, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %7 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtllib, align 8
  %mode = getelementptr inbounds %struct.rtllib_device, ptr %8, i32 0, i32 92
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %10, label %if.end11.cleanup_crit_edge [
    i32 16, label %if.end11.if.end16_crit_edge
    i32 32, label %if.end11.if.end16_crit_edge50
  ]

if.end11.if.end16_crit_edge50:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11.if.end16_crit_edge, %if.end11.if.end16_crit_edge50
  %rf_type = getelementptr i8, ptr %dev, i32 35821
  %12 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp17 = icmp eq i8 %13, 0
  %and20 = and i32 %1, -267386881
  %spec.select = select i1 %cmp17, i32 %and20, i32 %1
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 800, i32 noundef %spec.select) #7
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 792, i8 noundef zeroext 1) #7
  %btxpower_trackingInit = getelementptr i8, ptr %dev, i32 36157
  %14 = ptrtoint ptr %btxpower_trackingInit to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %btxpower_trackingInit, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool22.not = icmp eq i8 %15, 0
  br i1 %tobool22.not, label %if.end16.if.end27_crit_edge, label %land.lhs.true

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end16
  %btxpower_tracking = getelementptr i8, ptr %dev, i32 36154
  %16 = ptrtoint ptr %btxpower_tracking to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %btxpower_tracking, align 2, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool24.not = icmp eq i8 %17, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end27_crit_edge, label %if.then26

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then26:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %18 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %18, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then26.do.end4.i_crit_edge, label %do.end.i

if.then26.do.end4.i_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then26.do.end4.i_crit_edge
  %rfa_txpowertrackingindex.i = getelementptr i8, ptr %dev, i32 36149
  %19 = ptrtoint ptr %rfa_txpowertrackingindex.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rfa_txpowertrackingindex.i, align 1
  %idxprom.i = zext i8 %20 to i32
  %arrayidx.i = getelementptr [37 x i32], ptr @dm_tx_bb_gain, i32 0, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 3200, i32 noundef -1, i32 noundef %22) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %23 = load i32, ptr @rt_global_debug_component, align 4
  %and6.i = and i32 %23, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %do.end4.i.do.body20.i_crit_edge, label %do.end11.i

do.end4.i.do.body20.i_crit_edge:                  ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20.i

do.end11.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %rfa_txpowertrackingindex.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rfa_txpowertrackingindex.i, align 1
  %idxprom14.i = zext i8 %25 to i32
  %arrayidx15.i = getelementptr [37 x i32], ptr @dm_tx_bb_gain, i32 0, i32 %idxprom14.i
  %26 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx15.i, align 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %27) #10
  br label %do.body20.i

do.body20.i:                                      ; preds = %do.end11.i, %do.end4.i.do.body20.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %28 = load i32, ptr @rt_global_debug_component, align 4
  %and21.i = and i32 %28, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %do.body20.i.do.body33.i_crit_edge, label %do.end26.i

do.body20.i.do.body33.i_crit_edge:                ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body33.i

do.end26.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %rfa_txpowertrackingindex.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rfa_txpowertrackingindex.i, align 1
  %conv.i = zext i8 %30 to i32
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %conv.i) #10
  br label %do.body33.i

do.body33.i:                                      ; preds = %do.end26.i, %do.body20.i.do.body33.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %31 = load i32, ptr @rt_global_debug_component, align 4
  %and34.i = and i32 %31, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %do.body33.i.do.body47.i_crit_edge, label %do.end39.i

do.body33.i.do.body47.i_crit_edge:                ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47.i

do.end39.i:                                       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %rfa_txpowertrackingindex.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rfa_txpowertrackingindex.i, align 1
  %conv42.i = zext i8 %33 to i32
  %add.i = sub nsw i32 12, %conv42.i
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, i32 noundef %add.i) #10
  br label %do.body47.i

do.body47.i:                                      ; preds = %do.end39.i, %do.body33.i.do.body47.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %34 = load i32, ptr @rt_global_debug_component, align 4
  %and48.i = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %do.body47.i.do.end59.i_crit_edge, label %do.end53.i

do.body47.i.do.end59.i_crit_edge:                 ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59.i

do.end53.i:                                       ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #9
  %CCKPresentAttentuation.i = getelementptr i8, ptr %dev, i32 36027
  %35 = ptrtoint ptr %CCKPresentAttentuation.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %CCKPresentAttentuation.i, align 1
  %conv55.i = sext i8 %36 to i32
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %conv55.i) #10
  br label %do.end59.i

do.end59.i:                                       ; preds = %do.end53.i, %do.body47.i.do.end59.i_crit_edge
  %bcck_in_ch14.i = getelementptr i8, ptr %dev, i32 36155
  %37 = ptrtoint ptr %bcck_in_ch14.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bcck_in_ch14.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool60.i = icmp ne i8 %38, 0
  tail call void @rtl92e_dm_cck_txpower_adjust(ptr noundef %dev, i1 noundef zeroext %tobool60.i) #7
  %rfc_txpowertrackingindex.i = getelementptr i8, ptr %dev, i32 36152
  %39 = ptrtoint ptr %rfc_txpowertrackingindex.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rfc_txpowertrackingindex.i, align 4
  %idxprom61.i = zext i8 %40 to i32
  %arrayidx62.i = getelementptr [37 x i32], ptr @dm_tx_bb_gain, i32 0, i32 %idxprom61.i
  %41 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx62.i, align 4
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 3216, i32 noundef -1, i32 noundef %42) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %43 = load i32, ptr @rt_global_debug_component, align 4
  %and64.i = and i32 %43, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %do.end59.i.do.body78.i_crit_edge, label %do.end69.i

do.end59.i.do.body78.i_crit_edge:                 ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body78.i

do.end69.i:                                       ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %rfc_txpowertrackingindex.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rfc_txpowertrackingindex.i, align 4
  %idxprom72.i = zext i8 %45 to i32
  %arrayidx73.i = getelementptr [37 x i32], ptr @dm_tx_bb_gain, i32 0, i32 %idxprom72.i
  %46 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx73.i, align 4
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %47) #10
  br label %do.body78.i

do.body78.i:                                      ; preds = %do.end69.i, %do.end59.i.do.body78.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %48 = load i32, ptr @rt_global_debug_component, align 4
  %and79.i = and i32 %48, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %do.body78.i.do.body92.i_crit_edge, label %do.end84.i

do.body78.i.do.body92.i_crit_edge:                ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body92.i

do.end84.i:                                       ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %rfc_txpowertrackingindex.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %rfc_txpowertrackingindex.i, align 4
  %conv87.i = zext i8 %50 to i32
  %call88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %conv87.i) #10
  br label %do.body92.i

do.body92.i:                                      ; preds = %do.end84.i, %do.body78.i.do.body92.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %51 = load i32, ptr @rt_global_debug_component, align 4
  %and93.i = and i32 %51, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  br i1 %tobool94.not.i, label %do.body92.i.if.end27_crit_edge, label %do.end98.i

do.body92.i.if.end27_crit_edge:                   ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end98.i:                                       ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %rfc_txpowertrackingindex.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rfc_txpowertrackingindex.i, align 4
  %conv101.i = zext i8 %53 to i32
  %add103.i = sub nsw i32 12, %conv101.i
  %call104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %add103.i) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end98.i, %do.body92.i.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end16.if.end27_crit_edge
  %54 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp.i = icmp eq i8 %54, 1
  br i1 %cmp.i, label %if.end27.cleanup_crit_edge, label %if.end.i

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end27
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 8) #7
  %initgain_backup.i = getelementptr i8, ptr %dev, i32 36163
  %55 = ptrtoint ptr %initgain_backup.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %initgain_backup.i, align 1
  %conv2.i = zext i8 %56 to i32
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 3152, i32 noundef 127, i32 noundef %conv2.i) #7
  %xbagccore1.i = getelementptr i8, ptr %dev, i32 36164
  %57 = ptrtoint ptr %xbagccore1.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %xbagccore1.i, align 1
  %conv4.i = zext i8 %58 to i32
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 3160, i32 noundef 127, i32 noundef %conv4.i) #7
  %xcagccore1.i = getelementptr i8, ptr %dev, i32 36165
  %59 = ptrtoint ptr %xcagccore1.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %xcagccore1.i, align 1
  %conv6.i = zext i8 %60 to i32
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 3168, i32 noundef 127, i32 noundef %conv6.i) #7
  %xdagccore1.i = getelementptr i8, ptr %dev, i32 36166
  %61 = ptrtoint ptr %xdagccore1.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %xdagccore1.i, align 1
  %conv8.i = zext i8 %62 to i32
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 3176, i32 noundef 127, i32 noundef %conv8.i) #7
  %cca.i = getelementptr i8, ptr %dev, i32 36167
  %63 = ptrtoint ptr %cca.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %cca.i, align 1
  %conv10.i = zext i8 %64 to i32
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 2568, i32 noundef 16711680, i32 noundef %conv10.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %65 = load i32, ptr @rt_global_debug_component, align 4
  %and.i42 = and i32 %65, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.not.i43 = icmp eq i32 %and.i42, 0
  br i1 %tobool.not.i43, label %if.end.i.do.body20.i48_crit_edge, label %do.end.i45

if.end.i.do.body20.i48_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20.i48

do.end.i45:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %initgain_backup.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %initgain_backup.i, align 1
  %conv15.i = zext i8 %67 to i32
  %call16.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %conv15.i) #10
  br label %do.body20.i48

do.body20.i48:                                    ; preds = %do.end.i45, %if.end.i.do.body20.i48_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %68 = load i32, ptr @rt_global_debug_component, align 4
  %and21.i46 = and i32 %68, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i46)
  %tobool22.not.i47 = icmp eq i32 %and21.i46, 0
  br i1 %tobool22.not.i47, label %do.body20.i48.do.body35.i_crit_edge, label %do.end26.i49

do.body20.i48.do.body35.i_crit_edge:              ; preds = %do.body20.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35.i

do.end26.i49:                                     ; preds = %do.body20.i48
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %xbagccore1.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %xbagccore1.i, align 1
  %conv30.i = zext i8 %70 to i32
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %conv30.i) #10
  br label %do.body35.i

do.body35.i:                                      ; preds = %do.end26.i49, %do.body20.i48.do.body35.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %71 = load i32, ptr @rt_global_debug_component, align 4
  %and36.i = and i32 %71, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %do.body35.i.do.body50.i_crit_edge, label %do.end41.i

do.body35.i.do.body50.i_crit_edge:                ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50.i

do.end41.i:                                       ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %xcagccore1.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %xcagccore1.i, align 1
  %conv45.i = zext i8 %73 to i32
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %conv45.i) #10
  br label %do.body50.i

do.body50.i:                                      ; preds = %do.end41.i, %do.body35.i.do.body50.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %74 = load i32, ptr @rt_global_debug_component, align 4
  %and51.i = and i32 %74, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %do.body50.i.do.body65.i_crit_edge, label %do.end56.i

do.body50.i.do.body65.i_crit_edge:                ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body65.i

do.end56.i:                                       ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %xdagccore1.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %xdagccore1.i, align 1
  %conv60.i = zext i8 %76 to i32
  %call61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, i32 noundef %conv60.i) #10
  br label %do.body65.i

do.body65.i:                                      ; preds = %do.end56.i, %do.body50.i.do.body65.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %77 = load i32, ptr @rt_global_debug_component, align 4
  %and66.i = and i32 %77, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %do.body65.i.do.end79.i_crit_edge, label %do.end71.i

do.body65.i.do.end79.i_crit_edge:                 ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end79.i

do.end71.i:                                       ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %cca.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cca.i, align 1
  %conv75.i = zext i8 %79 to i32
  %call76.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %conv75.i) #10
  br label %do.end79.i

do.end79.i:                                       ; preds = %do.end71.i, %do.body65.i.do.end79.i_crit_edge
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end79.i, %if.end27.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_writeb(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_dm_backup_state(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bswitch_fsync = getelementptr i8, ptr %dev, i32 36188
  %0 = ptrtoint ptr %bswitch_fsync to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bswitch_fsync, align 8
  %bfsync_processing = getelementptr i8, ptr %dev, i32 36175
  %1 = ptrtoint ptr %bfsync_processing to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bfsync_processing, align 1
  %2 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp = icmp eq i8 %2, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 8) #7
  %call2 = tail call i32 @rtl92e_get_bb_reg(ptr noundef %dev, i32 noundef 3152, i32 noundef 255) #7
  %conv3 = trunc i32 %call2 to i8
  %initgain_backup = getelementptr i8, ptr %dev, i32 36163
  %3 = ptrtoint ptr %initgain_backup to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %initgain_backup, align 1
  %call4 = tail call i32 @rtl92e_get_bb_reg(ptr noundef %dev, i32 noundef 3160, i32 noundef 255) #7
  %conv5 = trunc i32 %call4 to i8
  %xbagccore1 = getelementptr i8, ptr %dev, i32 36164
  %4 = ptrtoint ptr %xbagccore1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv5, ptr %xbagccore1, align 1
  %call7 = tail call i32 @rtl92e_get_bb_reg(ptr noundef %dev, i32 noundef 3168, i32 noundef 255) #7
  %conv8 = trunc i32 %call7 to i8
  %xcagccore1 = getelementptr i8, ptr %dev, i32 36165
  %5 = ptrtoint ptr %xcagccore1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv8, ptr %xcagccore1, align 1
  %call10 = tail call i32 @rtl92e_get_bb_reg(ptr noundef %dev, i32 noundef 3176, i32 noundef 255) #7
  %conv11 = trunc i32 %call10 to i8
  %xdagccore1 = getelementptr i8, ptr %dev, i32 36166
  %6 = ptrtoint ptr %xdagccore1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv11, ptr %xdagccore1, align 1
  %call13 = tail call i32 @rtl92e_get_bb_reg(ptr noundef %dev, i32 noundef 2568, i32 noundef 16711680) #7
  %conv14 = trunc i32 %call13 to i8
  %cca = getelementptr i8, ptr %dev, i32 36167
  %7 = ptrtoint ptr %cca to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv14, ptr %cca, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %8 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.body25_crit_edge, label %do.end

if.end.do.body25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %initgain_backup to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %initgain_backup, align 1
  %conv20 = zext i8 %10 to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv20) #10
  br label %do.body25

do.body25:                                        ; preds = %do.end, %if.end.do.body25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %11 = load i32, ptr @rt_global_debug_component, align 4
  %and26 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.do.body40_crit_edge, label %do.end31

do.body25.do.body40_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %xbagccore1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %xbagccore1, align 1
  %conv35 = zext i8 %13 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv35) #10
  br label %do.body40

do.body40:                                        ; preds = %do.end31, %do.body25.do.body40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %14 = load i32, ptr @rt_global_debug_component, align 4
  %and41 = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body40.do.body55_crit_edge, label %do.end46

do.body40.do.body55_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %xcagccore1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %xcagccore1, align 1
  %conv50 = zext i8 %16 to i32
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv50) #10
  br label %do.body55

do.body55:                                        ; preds = %do.end46, %do.body40.do.body55_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %17 = load i32, ptr @rt_global_debug_component, align 4
  %and56 = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body55.do.body70_crit_edge, label %do.end61

do.body55.do.body70_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body70

do.end61:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %xdagccore1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %xdagccore1, align 1
  %conv65 = zext i8 %19 to i32
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv65) #10
  br label %do.body70

do.body70:                                        ; preds = %do.end61, %do.body55.do.body70_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %20 = load i32, ptr @rt_global_debug_component, align 4
  %and71 = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body70.cleanup_crit_edge, label %do.end76

do.body70.cleanup_crit_edge:                      ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end76:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %cca to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cca, align 1
  %conv80 = zext i8 %22 to i32
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv80) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %do.body70.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_bb_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92e_get_bb_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_dm_rf_pathcheck_wq(ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %data, i32 216
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %dev1 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call2 = tail call zeroext i8 @rtl92e_readb(ptr noundef %3, i32 noundef 3076) #7
  %brfpath_rxenable = getelementptr i8, ptr %data, i32 4897
  %and = and i8 %call2, 1
  %4 = ptrtoint ptr %brfpath_rxenable to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %and, ptr %brfpath_rxenable, align 1
  %and.1 = lshr i8 %call2, 1
  %and.1.lobit = and i8 %and.1, 1
  %arrayidx8.1 = getelementptr i8, ptr %data, i32 4898
  %5 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %and.1.lobit, ptr %arrayidx8.1, align 1
  %and.2 = lshr i8 %call2, 2
  %and.2.lobit = and i8 %and.2, 1
  %arrayidx8.2 = getelementptr i8, ptr %data, i32 4899
  %6 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %and.2.lobit, ptr %arrayidx8.2, align 1
  %7 = lshr i8 %call2, 3
  %.lobit = and i8 %7, 1
  %arrayidx8.3 = getelementptr i8, ptr %data, i32 4900
  %8 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.lobit, ptr %arrayidx8.3, align 1
  %9 = load i8, ptr @DM_RxPathSelTable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %entry.cleanup_crit_edge, label %if.end11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %entry
  %rf_type.i = getelementptr i8, ptr %3, i32 35821
  %10 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.not.i = icmp eq i8 %11, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end11
  %.b.i = load i1, ptr @_rtl92e_dm_rx_path_sel_byrssi.cck_Rx_Path_initialized, align 1
  br i1 %.b.i, label %if.end.i.if.end6.i_crit_edge, label %if.then2.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call zeroext i8 @rtl92e_readb(ptr noundef %3, i32 noundef 2567) #7
  %12 = and i8 %call3.i, 15
  store i8 %12, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 2), align 2
  store i1 true, ptr @_rtl92e_dm_rx_path_sel_byrssi.cck_Rx_Path_initialized, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i.if.end6.i_crit_edge
  store i8 15, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5), align 1
  %call7.i = tail call zeroext i8 @rtl92e_readb(ptr noundef %3, i32 noundef 3076) #7
  %neg.i = xor i8 %call7.i, -1
  %13 = load i8, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5), align 1
  %and10.i = and i8 %13, %neg.i
  store i8 %and10.i, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5), align 1
  %rtllib.i = getelementptr i8, ptr %3, i32 31316
  %14 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtllib.i, align 8
  %mode.i = getelementptr inbounds %struct.rtllib_device, ptr %15, i32 0, i32 92
  %16 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp12.i = icmp eq i32 %17, 2
  br i1 %cmp12.i, label %if.then14.i, label %if.end6.i.if.end15.i_crit_edge

if.end6.i.if.end15.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  store i8 1, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 1), align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.end6.i.if.end15.i_crit_edge
  %arrayidx.i = getelementptr i8, ptr %3, i32 34256
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  store i8 %19, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 7, i32 0), align 1
  %arrayidx22.i = getelementptr i8, ptr %3, i32 35997
  %20 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx22.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not.i = icmp eq i8 %21, 0
  %not.tobool23.not.i = xor i1 %tobool23.not.i, true
  %rf_num.1.i = zext i1 %not.tobool23.not.i to i8
  %tmp_max_rssi.1.i = select i1 %tobool23.not.i, i8 0, i8 %19
  %arrayidx.1.i = getelementptr i8, ptr %3, i32 34257
  %22 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.1.i, align 1
  store i8 %23, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 7, i32 1), align 4
  %arrayidx22.1.i = getelementptr i8, ptr %3, i32 35998
  %24 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx22.1.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool23.not.1.i = icmp eq i8 %25, 0
  br i1 %tobool23.not.1.i, label %if.end15.i.for.inc.1.i_crit_edge, label %if.then24.1.i

if.end15.i.for.inc.1.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then24.1.i:                                    ; preds = %if.end15.i
  br i1 %tobool23.not.i, label %if.then24.1.i.for.inc.1.i_crit_edge, label %if.else.1.i

if.then24.1.i.for.inc.1.i_crit_edge:              ; preds = %if.then24.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.else.1.i:                                      ; preds = %if.then24.1.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %tmp_max_rssi.1.i)
  %cmp37.not.1.i = icmp ult i8 %23, %tmp_max_rssi.1.i
  %not.cmp37.not.1.i = xor i1 %cmp37.not.1.i, true
  %max_rssi_index.0.i.0.1.i = zext i1 %not.cmp37.not.1.i to i8
  %i.0.min_rssi_index.0.1.i = zext i1 %cmp37.not.1.i to i8
  %26 = tail call i8 @llvm.umax.i8(i8 %23, i8 %tmp_max_rssi.1.i) #7
  %27 = tail call i8 @llvm.umin.i8(i8 %23, i8 %tmp_max_rssi.1.i) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.else.1.i, %if.then24.1.i.for.inc.1.i_crit_edge, %if.end15.i.for.inc.1.i_crit_edge
  %max_rssi_index.1.1.i = phi i8 [ 0, %if.end15.i.for.inc.1.i_crit_edge ], [ 1, %if.then24.1.i.for.inc.1.i_crit_edge ], [ %max_rssi_index.0.i.0.1.i, %if.else.1.i ]
  %min_rssi_index.1.1.i = phi i8 [ 0, %if.end15.i.for.inc.1.i_crit_edge ], [ 1, %if.then24.1.i.for.inc.1.i_crit_edge ], [ %i.0.min_rssi_index.0.1.i, %if.else.1.i ]
  %rf_num.1.1.i = phi i8 [ %rf_num.1.i, %if.end15.i.for.inc.1.i_crit_edge ], [ 1, %if.then24.1.i.for.inc.1.i_crit_edge ], [ 2, %if.else.1.i ]
  %tmp_max_rssi.1.1.i = phi i8 [ %tmp_max_rssi.1.i, %if.end15.i.for.inc.1.i_crit_edge ], [ %23, %if.then24.1.i.for.inc.1.i_crit_edge ], [ %26, %if.else.1.i ]
  %tmp_min_rssi.1.1.i = phi i8 [ %tmp_max_rssi.1.i, %if.end15.i.for.inc.1.i_crit_edge ], [ %23, %if.then24.1.i.for.inc.1.i_crit_edge ], [ %27, %if.else.1.i ]
  %arrayidx.2.i = getelementptr i8, ptr %3, i32 34258
  %28 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.2.i, align 1
  store i8 %29, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 7, i32 2), align 1
  %arrayidx22.2.i = getelementptr i8, ptr %3, i32 35999
  %30 = ptrtoint ptr %arrayidx22.2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx22.2.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool23.not.2.i = icmp eq i8 %31, 0
  br i1 %tobool23.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then24.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.then24.2.i:                                    ; preds = %for.inc.1.i
  %trunc = trunc i8 %rf_num.1.1.i to i2
  %32 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.193)
  switch i2 %trunc, label %if.else42.2.i [
    i2 0, label %if.then24.2.i.for.inc.2.i_crit_edge
    i2 1, label %if.then34.2.i
  ]

if.then24.2.i.for.inc.2.i_crit_edge:              ; preds = %if.then24.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.else42.2.i:                                    ; preds = %if.then24.2.i
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %tmp_max_rssi.1.1.i)
  %cmp45.2.i = icmp ugt i8 %29, %tmp_max_rssi.1.1.i
  br i1 %cmp45.2.i, label %if.else42.2.i.for.inc.2.i_crit_edge, label %if.else48.2.i

if.else42.2.i.for.inc.2.i_crit_edge:              ; preds = %if.else42.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.else48.2.i:                                    ; preds = %if.else42.2.i
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %tmp_max_rssi.1.1.i)
  %cmp51.2.i = icmp eq i8 %29, %tmp_max_rssi.1.1.i
  br i1 %cmp51.2.i, label %if.else48.2.i.for.inc.2.i_crit_edge, label %if.else54.2.i

if.else48.2.i.for.inc.2.i_crit_edge:              ; preds = %if.else48.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.else54.2.i:                                    ; preds = %if.else48.2.i
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %tmp_min_rssi.1.1.i)
  %cmp61.2.i = icmp ugt i8 %29, %tmp_min_rssi.1.1.i
  br i1 %cmp61.2.i, label %if.else54.2.i.for.inc.2.i_crit_edge, label %if.else64.2.i

if.else54.2.i.for.inc.2.i_crit_edge:              ; preds = %if.else54.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.else64.2.i:                                    ; preds = %if.else54.2.i
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %tmp_min_rssi.1.1.i)
  %cmp67.2.i = icmp eq i8 %29, %tmp_min_rssi.1.1.i
  br i1 %cmp67.2.i, label %if.else64.2.i.for.inc.2.i_crit_edge, label %if.else99.2.i

if.else64.2.i.for.inc.2.i_crit_edge:              ; preds = %if.else64.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.else99.2.i:                                    ; preds = %if.else64.2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %tmp_min_rssi.1.1.i)
  %cmp102.2.i = icmp ult i8 %29, %tmp_min_rssi.1.1.i
  %spec.select429.2.i = select i1 %cmp102.2.i, i8 2, i8 %min_rssi_index.1.1.i
  %33 = tail call i8 @llvm.umin.i8(i8 %29, i8 %tmp_min_rssi.1.1.i) #7
  br label %for.inc.2.i

if.then34.2.i:                                    ; preds = %if.then24.2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %tmp_max_rssi.1.1.i)
  %cmp37.not.2.i = icmp ult i8 %29, %tmp_max_rssi.1.1.i
  %max_rssi_index.0.i.0.2.i = select i1 %cmp37.not.2.i, i8 %max_rssi_index.1.1.i, i8 2
  %i.0.min_rssi_index.0.2.i = select i1 %cmp37.not.2.i, i8 2, i8 %min_rssi_index.1.1.i
  %34 = tail call i8 @llvm.umax.i8(i8 %29, i8 %tmp_max_rssi.1.1.i) #7
  %.tmp_min_rssi.0.2.i = select i1 %cmp37.not.2.i, i8 %29, i8 %tmp_min_rssi.1.1.i
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then34.2.i, %if.else99.2.i, %if.else64.2.i.for.inc.2.i_crit_edge, %if.else54.2.i.for.inc.2.i_crit_edge, %if.else48.2.i.for.inc.2.i_crit_edge, %if.else42.2.i.for.inc.2.i_crit_edge, %if.then24.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %max_rssi_index.1.2.i = phi i8 [ %max_rssi_index.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ 2, %if.then24.2.i.for.inc.2.i_crit_edge ], [ %max_rssi_index.0.i.0.2.i, %if.then34.2.i ], [ 2, %if.else42.2.i.for.inc.2.i_crit_edge ], [ %max_rssi_index.1.1.i, %if.else48.2.i.for.inc.2.i_crit_edge ], [ %max_rssi_index.1.1.i, %if.else54.2.i.for.inc.2.i_crit_edge ], [ %max_rssi_index.1.1.i, %if.else99.2.i ], [ %max_rssi_index.1.1.i, %if.else64.2.i.for.inc.2.i_crit_edge ]
  %min_rssi_index.1.2.i = phi i8 [ %min_rssi_index.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ 2, %if.then24.2.i.for.inc.2.i_crit_edge ], [ %i.0.min_rssi_index.0.2.i, %if.then34.2.i ], [ %min_rssi_index.1.1.i, %if.else42.2.i.for.inc.2.i_crit_edge ], [ %min_rssi_index.1.1.i, %if.else48.2.i.for.inc.2.i_crit_edge ], [ %min_rssi_index.1.1.i, %if.else54.2.i.for.inc.2.i_crit_edge ], [ %spec.select429.2.i, %if.else99.2.i ], [ %min_rssi_index.1.1.i, %if.else64.2.i.for.inc.2.i_crit_edge ]
  %sec_rssi_index.1.2.i = phi i8 [ %min_rssi_index.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ 2, %if.then24.2.i.for.inc.2.i_crit_edge ], [ %i.0.min_rssi_index.0.2.i, %if.then34.2.i ], [ %max_rssi_index.1.1.i, %if.else42.2.i.for.inc.2.i_crit_edge ], [ 2, %if.else48.2.i.for.inc.2.i_crit_edge ], [ 2, %if.else54.2.i.for.inc.2.i_crit_edge ], [ %min_rssi_index.1.1.i, %if.else99.2.i ], [ 2, %if.else64.2.i.for.inc.2.i_crit_edge ]
  %rf_num.1.2.i = phi i8 [ %rf_num.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ 1, %if.then24.2.i.for.inc.2.i_crit_edge ], [ 2, %if.then34.2.i ], [ 3, %if.else42.2.i.for.inc.2.i_crit_edge ], [ 3, %if.else48.2.i.for.inc.2.i_crit_edge ], [ 3, %if.else54.2.i.for.inc.2.i_crit_edge ], [ 3, %if.else99.2.i ], [ 3, %if.else64.2.i.for.inc.2.i_crit_edge ]
  %tmp_max_rssi.1.2.i = phi i8 [ %tmp_max_rssi.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %29, %if.then24.2.i.for.inc.2.i_crit_edge ], [ %34, %if.then34.2.i ], [ %29, %if.else42.2.i.for.inc.2.i_crit_edge ], [ %tmp_max_rssi.1.1.i, %if.else48.2.i.for.inc.2.i_crit_edge ], [ %tmp_max_rssi.1.1.i, %if.else54.2.i.for.inc.2.i_crit_edge ], [ %tmp_max_rssi.1.1.i, %if.else99.2.i ], [ %tmp_max_rssi.1.1.i, %if.else64.2.i.for.inc.2.i_crit_edge ]
  %tmp_min_rssi.1.2.i = phi i8 [ %tmp_min_rssi.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %29, %if.then24.2.i.for.inc.2.i_crit_edge ], [ %.tmp_min_rssi.0.2.i, %if.then34.2.i ], [ %tmp_min_rssi.1.1.i, %if.else42.2.i.for.inc.2.i_crit_edge ], [ %tmp_min_rssi.1.1.i, %if.else48.2.i.for.inc.2.i_crit_edge ], [ %tmp_min_rssi.1.1.i, %if.else54.2.i.for.inc.2.i_crit_edge ], [ %33, %if.else99.2.i ], [ %tmp_min_rssi.1.1.i, %if.else64.2.i.for.inc.2.i_crit_edge ]
  %tmp_sec_rssi.1.2.i = phi i8 [ %tmp_min_rssi.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %29, %if.then24.2.i.for.inc.2.i_crit_edge ], [ %.tmp_min_rssi.0.2.i, %if.then34.2.i ], [ %tmp_max_rssi.1.1.i, %if.else42.2.i.for.inc.2.i_crit_edge ], [ %tmp_max_rssi.1.1.i, %if.else48.2.i.for.inc.2.i_crit_edge ], [ %29, %if.else54.2.i.for.inc.2.i_crit_edge ], [ %tmp_min_rssi.1.1.i, %if.else99.2.i ], [ %tmp_min_rssi.1.1.i, %if.else64.2.i.for.inc.2.i_crit_edge ]
  %arrayidx.3.i = getelementptr i8, ptr %3, i32 34259
  %35 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.3.i, align 1
  store i8 %36, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 7, i32 3), align 2
  %arrayidx22.3.i = getelementptr i8, ptr %3, i32 36000
  %37 = ptrtoint ptr %arrayidx22.3.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx22.3.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool23.not.3.i = icmp eq i8 %38, 0
  br i1 %tobool23.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then24.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.then24.3.i:                                    ; preds = %for.inc.2.i
  %39 = zext i8 %rf_num.1.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.194)
  switch i8 %rf_num.1.2.i, label %if.else42.3.i [
    i8 0, label %if.then24.3.i.for.inc.3.i_crit_edge
    i8 1, label %if.then34.3.i
  ]

if.then24.3.i.for.inc.3.i_crit_edge:              ; preds = %if.then24.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.else42.3.i:                                    ; preds = %if.then24.3.i
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %tmp_max_rssi.1.2.i)
  %cmp45.3.i = icmp ugt i8 %36, %tmp_max_rssi.1.2.i
  br i1 %cmp45.3.i, label %if.else42.3.i.for.inc.3.i_crit_edge, label %if.else48.3.i

if.else42.3.i.for.inc.3.i_crit_edge:              ; preds = %if.else42.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.else48.3.i:                                    ; preds = %if.else42.3.i
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %tmp_max_rssi.1.2.i)
  %cmp51.3.i = icmp eq i8 %36, %tmp_max_rssi.1.2.i
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %tmp_sec_rssi.1.2.i)
  %cmp61.3.i = icmp ugt i8 %36, %tmp_sec_rssi.1.2.i
  %or.cond.i = select i1 %cmp51.3.i, i1 true, i1 %cmp61.3.i
  br i1 %or.cond.i, label %if.else48.3.i.for.inc.3.i_crit_edge, label %if.else64.3.i

if.else48.3.i.for.inc.3.i_crit_edge:              ; preds = %if.else48.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.else64.3.i:                                    ; preds = %if.else48.3.i
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %tmp_sec_rssi.1.2.i)
  %cmp67.3.i = icmp eq i8 %36, %tmp_sec_rssi.1.2.i
  br i1 %cmp67.3.i, label %if.then69.3.i, label %if.else76.3.i

if.else76.3.i:                                    ; preds = %if.else64.3.i
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %tmp_sec_rssi.1.2.i)
  %cmp79.3.i = icmp ult i8 %36, %tmp_sec_rssi.1.2.i
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %tmp_min_rssi.1.2.i)
  %cmp84.3.i = icmp ugt i8 %36, %tmp_min_rssi.1.2.i
  %or.cond426.3.i = select i1 %cmp79.3.i, i1 %cmp84.3.i, i1 false
  br i1 %or.cond426.3.i, label %if.else76.3.i.for.inc.3.i_crit_edge, label %if.else87.3.i

if.else76.3.i.for.inc.3.i_crit_edge:              ; preds = %if.else76.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.else87.3.i:                                    ; preds = %if.else76.3.i
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %tmp_min_rssi.1.2.i)
  %cmp90.3.i = icmp eq i8 %36, %tmp_min_rssi.1.2.i
  br i1 %cmp90.3.i, label %if.then92.3.i, label %if.else99.3.i

if.else99.3.i:                                    ; preds = %if.else87.3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %tmp_min_rssi.1.2.i)
  %cmp102.3.i = icmp ult i8 %36, %tmp_min_rssi.1.2.i
  %spec.select429.3.i = select i1 %cmp102.3.i, i8 3, i8 %min_rssi_index.1.2.i
  %40 = tail call i8 @llvm.umin.i8(i8 %36, i8 %tmp_min_rssi.1.2.i) #7
  br label %for.inc.3.i

if.then92.3.i:                                    ; preds = %if.else87.3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp1(i8 %tmp_sec_rssi.1.2.i, i8 %tmp_min_rssi.1.2.i)
  %cmp95.3.i = icmp eq i8 %tmp_sec_rssi.1.2.i, %tmp_min_rssi.1.2.i
  %spec.select427.3.i = select i1 %cmp95.3.i, i8 3, i8 %min_rssi_index.1.2.i
  br label %for.inc.3.i

if.then69.3.i:                                    ; preds = %if.else64.3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp1(i8 %tmp_sec_rssi.1.2.i, i8 %tmp_min_rssi.1.2.i)
  %cmp72.3.i = icmp eq i8 %tmp_sec_rssi.1.2.i, %tmp_min_rssi.1.2.i
  %spec.select.3.i = select i1 %cmp72.3.i, i8 3, i8 %sec_rssi_index.1.2.i
  br label %for.inc.3.i

if.then34.3.i:                                    ; preds = %if.then24.3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %tmp_max_rssi.1.2.i)
  %cmp37.not.3.i = icmp ult i8 %36, %tmp_max_rssi.1.2.i
  %max_rssi_index.0.i.0.3.i = select i1 %cmp37.not.3.i, i8 %max_rssi_index.1.2.i, i8 3
  %i.0.min_rssi_index.0.3.i = select i1 %cmp37.not.3.i, i8 3, i8 %min_rssi_index.1.2.i
  %i.0.sec_rssi_index.0.3.i = select i1 %cmp37.not.3.i, i8 3, i8 %sec_rssi_index.1.2.i
  %41 = tail call i8 @llvm.umax.i8(i8 %36, i8 %tmp_max_rssi.1.2.i) #7
  %.tmp_min_rssi.0.3.i = select i1 %cmp37.not.3.i, i8 %36, i8 %tmp_min_rssi.1.2.i
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then34.3.i, %if.then69.3.i, %if.then92.3.i, %if.else99.3.i, %if.else76.3.i.for.inc.3.i_crit_edge, %if.else48.3.i.for.inc.3.i_crit_edge, %if.else42.3.i.for.inc.3.i_crit_edge, %if.then24.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %max_rssi_index.1.3.i = phi i8 [ %max_rssi_index.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ 3, %if.then24.3.i.for.inc.3.i_crit_edge ], [ %max_rssi_index.0.i.0.3.i, %if.then34.3.i ], [ 3, %if.else42.3.i.for.inc.3.i_crit_edge ], [ %max_rssi_index.1.2.i, %if.else48.3.i.for.inc.3.i_crit_edge ], [ %max_rssi_index.1.2.i, %if.then69.3.i ], [ %max_rssi_index.1.2.i, %if.else76.3.i.for.inc.3.i_crit_edge ], [ %max_rssi_index.1.2.i, %if.then92.3.i ], [ %max_rssi_index.1.2.i, %if.else99.3.i ]
  %min_rssi_index.1.3.i = phi i8 [ %min_rssi_index.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ 3, %if.then24.3.i.for.inc.3.i_crit_edge ], [ %i.0.min_rssi_index.0.3.i, %if.then34.3.i ], [ %min_rssi_index.1.2.i, %if.else42.3.i.for.inc.3.i_crit_edge ], [ %min_rssi_index.1.2.i, %if.else48.3.i.for.inc.3.i_crit_edge ], [ %min_rssi_index.1.2.i, %if.then69.3.i ], [ %min_rssi_index.1.2.i, %if.else76.3.i.for.inc.3.i_crit_edge ], [ %spec.select427.3.i, %if.then92.3.i ], [ %spec.select429.3.i, %if.else99.3.i ]
  %sec_rssi_index.1.3.i = phi i8 [ %sec_rssi_index.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ 3, %if.then24.3.i.for.inc.3.i_crit_edge ], [ %i.0.sec_rssi_index.0.3.i, %if.then34.3.i ], [ %max_rssi_index.1.2.i, %if.else42.3.i.for.inc.3.i_crit_edge ], [ 3, %if.else48.3.i.for.inc.3.i_crit_edge ], [ %spec.select.3.i, %if.then69.3.i ], [ %sec_rssi_index.1.2.i, %if.else76.3.i.for.inc.3.i_crit_edge ], [ %sec_rssi_index.1.2.i, %if.then92.3.i ], [ %sec_rssi_index.1.2.i, %if.else99.3.i ]
  %tmp_max_rssi.1.3.i = phi i8 [ %tmp_max_rssi.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ %36, %if.then24.3.i.for.inc.3.i_crit_edge ], [ %41, %if.then34.3.i ], [ %36, %if.else42.3.i.for.inc.3.i_crit_edge ], [ %tmp_max_rssi.1.2.i, %if.else48.3.i.for.inc.3.i_crit_edge ], [ %tmp_max_rssi.1.2.i, %if.then69.3.i ], [ %tmp_max_rssi.1.2.i, %if.else76.3.i.for.inc.3.i_crit_edge ], [ %tmp_max_rssi.1.2.i, %if.then92.3.i ], [ %tmp_max_rssi.1.2.i, %if.else99.3.i ]
  %tmp_min_rssi.1.3.i = phi i8 [ %tmp_min_rssi.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ %36, %if.then24.3.i.for.inc.3.i_crit_edge ], [ %.tmp_min_rssi.0.3.i, %if.then34.3.i ], [ %tmp_min_rssi.1.2.i, %if.else42.3.i.for.inc.3.i_crit_edge ], [ %tmp_min_rssi.1.2.i, %if.else48.3.i.for.inc.3.i_crit_edge ], [ %tmp_min_rssi.1.2.i, %if.then69.3.i ], [ %tmp_min_rssi.1.2.i, %if.else76.3.i.for.inc.3.i_crit_edge ], [ %tmp_min_rssi.1.2.i, %if.then92.3.i ], [ %40, %if.else99.3.i ]
  %42 = load i8, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp117.i = icmp eq i8 %42, 1
  br i1 %cmp117.i, label %for.body124.preheader.i, label %for.inc.3.i.if.end202.thread.i_crit_edge

for.inc.3.i.if.end202.thread.i_crit_edge:         ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end202.thread.i

for.body124.preheader.i:                          ; preds = %for.inc.3.i
  %43 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx22.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool128.not.i = icmp eq i8 %44, 0
  br i1 %tobool128.not.i, label %for.inc199.i, label %for.inc199.thread.i

for.inc199.i:                                     ; preds = %for.body124.preheader.i
  %45 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx22.1.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool128.not.1.i = icmp eq i8 %46, 0
  br i1 %tobool128.not.1.i, label %for.inc199.1.thread.i, label %if.then129.1.i

for.inc199.thread.i:                              ; preds = %for.body124.preheader.i
  %47 = load i32, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 9, i32 0), align 4
  %48 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx22.1.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool128.not.1475.i = icmp eq i8 %49, 0
  br i1 %tobool128.not.1475.i, label %for.inc199.thread.i.for.inc199.1.i_crit_edge, label %for.inc199.1.i.thread

for.inc199.thread.i.for.inc199.1.i_crit_edge:     ; preds = %for.inc199.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc199.1.i

if.then129.1.i:                                   ; preds = %for.inc199.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = load i32, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 9, i32 1), align 4
  br label %for.inc199.1.i

for.inc199.1.i:                                   ; preds = %if.then129.1.i, %for.inc199.thread.i.for.inc199.1.i_crit_edge
  %tmp_cck_max_pwdb.1.1.i = phi i32 [ %50, %if.then129.1.i ], [ %47, %for.inc199.thread.i.for.inc199.1.i_crit_edge ]
  %cck_rx_ver2_max_index.1.1.i = phi i8 [ 1, %if.then129.1.i ], [ 0, %for.inc199.thread.i.for.inc199.1.i_crit_edge ]
  %51 = ptrtoint ptr %arrayidx22.2.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx22.2.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool128.not.2.i = icmp eq i8 %52, 0
  br i1 %tobool128.not.2.i, label %for.inc199.1.i.for.inc199.2.i_crit_edge, label %if.then141.2.i

for.inc199.1.i.for.inc199.2.i_crit_edge:          ; preds = %for.inc199.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc199.2.i

for.inc199.1.i.thread:                            ; preds = %for.inc199.thread.i
  %53 = load i32, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 9, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %47)
  %cmp142.not.1.i = icmp slt i32 %53, %47
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 %47) #7
  %55 = tail call i32 @llvm.smin.i32(i32 %53, i32 %47) #7
  %not.cmp142.not.1.i = xor i1 %cmp142.not.1.i, true
  %cck_rx_ver2_max_index.0.i.1.1.i = zext i1 %not.cmp142.not.1.i to i8
  %i.1.cck_rx_ver2_sec_index.0.1.i = zext i1 %cmp142.not.1.i to i8
  %56 = ptrtoint ptr %arrayidx22.2.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx22.2.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool128.not.2.i31 = icmp eq i8 %57, 0
  br i1 %tobool128.not.2.i31, label %for.inc199.1.i.thread.for.inc199.2.i_crit_edge, label %if.else147.2.i

for.inc199.1.i.thread.for.inc199.2.i_crit_edge:   ; preds = %for.inc199.1.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc199.2.i

for.inc199.1.thread.i:                            ; preds = %for.inc199.i
  %58 = ptrtoint ptr %arrayidx22.2.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx22.2.i, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool128.not.2491.i = icmp eq i8 %59, 0
  br i1 %tobool128.not.2491.i, label %for.inc199.2.thread.i, label %if.then129.2.thread.i

if.then129.2.thread.i:                            ; preds = %for.inc199.1.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = load i32, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 9, i32 2), align 4
  br label %for.inc199.2.i

if.else147.2.i:                                   ; preds = %for.inc199.1.i.thread
  %61 = load i32, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 9, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %54)
  %cmp148.2.i = icmp sgt i32 %61, %54
  br i1 %cmp148.2.i, label %if.else147.2.i.for.inc199.2.i_crit_edge, label %if.else151.2.i

if.else147.2.i.for.inc199.2.i_crit_edge:          ; preds = %if.else147.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc199.2.i

if.else151.2.i:                                   ; preds = %if.else147.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %54)
  %cmp152.2.i = icmp eq i32 %61, %54
  br i1 %cmp152.2.i, label %if.else151.2.i.for.inc199.2.i_crit_edge, label %if.else155.2.i

if.else151.2.i.for.inc199.2.i_crit_edge:          ; preds = %if.else151.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc199.2.i

if.else155.2.i:                                   ; preds = %if.else151.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %55)
  %cmp159.2.i = icmp sgt i32 %61, %55
  br i1 %cmp159.2.i, label %if.else155.2.i.for.inc199.2.i_crit_edge, label %if.else162.2.i

if.else155.2.i.for.inc199.2.i_crit_edge:          ; preds = %if.else155.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc199.2.i

if.else162.2.i:                                   ; preds = %if.else155.2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %55)
  %cmp163.2.i = icmp eq i32 %61, %55
  %spec.select22 = select i1 %cmp163.2.i, i8 2, i8 %i.1.cck_rx_ver2_sec_index.0.1.i
  br label %for.inc199.2.i

if.then141.2.i:                                   ; preds = %for.inc199.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = load i32, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 9, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %tmp_cck_max_pwdb.1.1.i)
  %cmp142.not.2.i = icmp slt i32 %62, %tmp_cck_max_pwdb.1.1.i
  %63 = tail call i32 @llvm.smax.i32(i32 %62, i32 %tmp_cck_max_pwdb.1.1.i) #7
  %64 = call i32 @llvm.smin.i32(i32 %62, i32 %tmp_cck_max_pwdb.1.1.i)
  %cck_rx_ver2_max_index.0.i.1.2.i = select i1 %cmp142.not.2.i, i8 %cck_rx_ver2_max_index.1.1.i, i8 2
  %i.1.cck_rx_ver2_sec_index.0.2.i = select i1 %cmp142.not.2.i, i8 2, i8 %cck_rx_ver2_max_index.1.1.i
  br label %for.inc199.2.i

for.inc199.2.i:                                   ; preds = %if.then141.2.i, %if.else162.2.i, %if.else155.2.i.for.inc199.2.i_crit_edge, %if.else151.2.i.for.inc199.2.i_crit_edge, %if.else147.2.i.for.inc199.2.i_crit_edge, %if.then129.2.thread.i, %for.inc199.1.i.thread.for.inc199.2.i_crit_edge, %for.inc199.1.i.for.inc199.2.i_crit_edge
  %cond = phi i1 [ false, %for.inc199.1.i.thread.for.inc199.2.i_crit_edge ], [ false, %if.else162.2.i ], [ false, %if.then141.2.i ], [ false, %if.else155.2.i.for.inc199.2.i_crit_edge ], [ false, %if.else151.2.i.for.inc199.2.i_crit_edge ], [ false, %if.else147.2.i.for.inc199.2.i_crit_edge ], [ true, %if.then129.2.thread.i ], [ true, %for.inc199.1.i.for.inc199.2.i_crit_edge ]
  %tmp_cck_max_pwdb.1.2.i = phi i32 [ %54, %for.inc199.1.i.thread.for.inc199.2.i_crit_edge ], [ %54, %if.else162.2.i ], [ %63, %if.then141.2.i ], [ %54, %if.else155.2.i.for.inc199.2.i_crit_edge ], [ %54, %if.else151.2.i.for.inc199.2.i_crit_edge ], [ %61, %if.else147.2.i.for.inc199.2.i_crit_edge ], [ %60, %if.then129.2.thread.i ], [ %tmp_cck_max_pwdb.1.1.i, %for.inc199.1.i.for.inc199.2.i_crit_edge ]
  %tmp_cck_min_pwdb.1.2.i = phi i32 [ %55, %for.inc199.1.i.thread.for.inc199.2.i_crit_edge ], [ %61, %if.else162.2.i ], [ %64, %if.then141.2.i ], [ %55, %if.else155.2.i.for.inc199.2.i_crit_edge ], [ %55, %if.else151.2.i.for.inc199.2.i_crit_edge ], [ %55, %if.else147.2.i.for.inc199.2.i_crit_edge ], [ %60, %if.then129.2.thread.i ], [ %tmp_cck_max_pwdb.1.1.i, %for.inc199.1.i.for.inc199.2.i_crit_edge ]
  %tmp_cck_sec_pwdb.1.2.i = phi i32 [ %55, %for.inc199.1.i.thread.for.inc199.2.i_crit_edge ], [ %55, %if.else162.2.i ], [ %64, %if.then141.2.i ], [ %61, %if.else155.2.i.for.inc199.2.i_crit_edge ], [ %54, %if.else151.2.i.for.inc199.2.i_crit_edge ], [ %54, %if.else147.2.i.for.inc199.2.i_crit_edge ], [ %60, %if.then129.2.thread.i ], [ %tmp_cck_max_pwdb.1.1.i, %for.inc199.1.i.for.inc199.2.i_crit_edge ]
  %cck_rx_ver2_max_index.1.2.i = phi i8 [ %cck_rx_ver2_max_index.0.i.1.1.i, %for.inc199.1.i.thread.for.inc199.2.i_crit_edge ], [ %cck_rx_ver2_max_index.0.i.1.1.i, %if.else162.2.i ], [ %cck_rx_ver2_max_index.0.i.1.2.i, %if.then141.2.i ], [ %cck_rx_ver2_max_index.0.i.1.1.i, %if.else155.2.i.for.inc199.2.i_crit_edge ], [ %cck_rx_ver2_max_index.0.i.1.1.i, %if.else151.2.i.for.inc199.2.i_crit_edge ], [ 2, %if.else147.2.i.for.inc199.2.i_crit_edge ], [ 2, %if.then129.2.thread.i ], [ %cck_rx_ver2_max_index.1.1.i, %for.inc199.1.i.for.inc199.2.i_crit_edge ]
  %cck_rx_ver2_sec_index.1.2.i = phi i8 [ %i.1.cck_rx_ver2_sec_index.0.1.i, %for.inc199.1.i.thread.for.inc199.2.i_crit_edge ], [ %spec.select22, %if.else162.2.i ], [ %i.1.cck_rx_ver2_sec_index.0.2.i, %if.then141.2.i ], [ 2, %if.else155.2.i.for.inc199.2.i_crit_edge ], [ 2, %if.else151.2.i.for.inc199.2.i_crit_edge ], [ %cck_rx_ver2_max_index.0.i.1.1.i, %if.else147.2.i.for.inc199.2.i_crit_edge ], [ 2, %if.then129.2.thread.i ], [ %cck_rx_ver2_max_index.1.1.i, %for.inc199.1.i.for.inc199.2.i_crit_edge ]
  br i1 %tobool23.not.3.i, label %for.inc199.2.i.for.inc199.3.i_crit_edge, label %if.then129.3.i

for.inc199.2.i.for.inc199.3.i_crit_edge:          ; preds = %for.inc199.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc199.3.i

for.inc199.2.thread.i:                            ; preds = %for.inc199.1.thread.i
  br i1 %tobool23.not.3.i, label %for.inc199.2.thread.i.for.inc199.3.i_crit_edge, label %if.then129.3.thread.i

for.inc199.2.thread.i.for.inc199.3.i_crit_edge:   ; preds = %for.inc199.2.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc199.3.i

if.then129.3.thread.i:                            ; preds = %for.inc199.2.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = load i32, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 9, i32 3), align 4
  br label %for.inc199.3.i

if.then129.3.i:                                   ; preds = %for.inc199.2.i
  %66 = load i32, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 9, i32 3), align 4
  br i1 %cond, label %if.then141.3.i, label %if.else147.3.i

if.else147.3.i:                                   ; preds = %if.then129.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %tmp_cck_max_pwdb.1.2.i)
  %cmp148.3.i = icmp sgt i32 %66, %tmp_cck_max_pwdb.1.2.i
  br i1 %cmp148.3.i, label %if.else147.3.i.for.inc199.3.i_crit_edge, label %if.else151.3.i

if.else147.3.i.for.inc199.3.i_crit_edge:          ; preds = %if.else147.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc199.3.i

if.else151.3.i:                                   ; preds = %if.else147.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %tmp_cck_max_pwdb.1.2.i)
  %cmp152.3.i = icmp eq i32 %66, %tmp_cck_max_pwdb.1.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %tmp_cck_sec_pwdb.1.2.i)
  %cmp159.3.i = icmp sgt i32 %66, %tmp_cck_sec_pwdb.1.2.i
  %or.cond527.i = select i1 %cmp152.3.i, i1 true, i1 %cmp159.3.i
  br i1 %or.cond527.i, label %if.else151.3.i.for.inc199.3.i_crit_edge, label %if.else162.3.i

if.else151.3.i.for.inc199.3.i_crit_edge:          ; preds = %if.else151.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc199.3.i

if.else162.3.i:                                   ; preds = %if.else151.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %tmp_cck_sec_pwdb.1.2.i)
  %cmp163.3.i = icmp eq i32 %66, %tmp_cck_sec_pwdb.1.2.i
  br i1 %cmp163.3.i, label %if.then165.3.i, label %if.else162.3.i.for.inc199.3.i_crit_edge

if.else162.3.i.for.inc199.3.i_crit_edge:          ; preds = %if.else162.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc199.3.i

if.then165.3.i:                                   ; preds = %if.else162.3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp_cck_sec_pwdb.1.2.i, i32 %tmp_cck_min_pwdb.1.2.i)
  %cmp166.3.i = icmp eq i32 %tmp_cck_sec_pwdb.1.2.i, %tmp_cck_min_pwdb.1.2.i
  %spec.select433.3.i = select i1 %cmp166.3.i, i8 3, i8 %cck_rx_ver2_sec_index.1.2.i
  br label %for.inc199.3.i

if.then141.3.i:                                   ; preds = %if.then129.3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %tmp_cck_max_pwdb.1.2.i)
  %cmp142.not.3.i = icmp slt i32 %66, %tmp_cck_max_pwdb.1.2.i
  %67 = tail call i32 @llvm.smax.i32(i32 %66, i32 %tmp_cck_max_pwdb.1.2.i) #7
  %cck_rx_ver2_max_index.0.i.1.3.i = select i1 %cmp142.not.3.i, i8 %cck_rx_ver2_max_index.1.2.i, i8 3
  %i.1.cck_rx_ver2_sec_index.0.3.i = select i1 %cmp142.not.3.i, i8 3, i8 %cck_rx_ver2_sec_index.1.2.i
  br label %for.inc199.3.i

for.inc199.3.i:                                   ; preds = %if.then141.3.i, %if.then165.3.i, %if.else162.3.i.for.inc199.3.i_crit_edge, %if.else151.3.i.for.inc199.3.i_crit_edge, %if.else147.3.i.for.inc199.3.i_crit_edge, %if.then129.3.thread.i, %for.inc199.2.thread.i.for.inc199.3.i_crit_edge, %for.inc199.2.i.for.inc199.3.i_crit_edge
  %tmp_cck_max_pwdb.1.3.i = phi i32 [ %tmp_cck_max_pwdb.1.2.i, %for.inc199.2.i.for.inc199.3.i_crit_edge ], [ %67, %if.then141.3.i ], [ %66, %if.else147.3.i.for.inc199.3.i_crit_edge ], [ %tmp_cck_max_pwdb.1.2.i, %if.else151.3.i.for.inc199.3.i_crit_edge ], [ %tmp_cck_max_pwdb.1.2.i, %if.then165.3.i ], [ 0, %for.inc199.2.thread.i.for.inc199.3.i_crit_edge ], [ %65, %if.then129.3.thread.i ], [ %tmp_cck_max_pwdb.1.2.i, %if.else162.3.i.for.inc199.3.i_crit_edge ]
  %cck_rx_ver2_max_index.1.3.i = phi i8 [ %cck_rx_ver2_max_index.1.2.i, %for.inc199.2.i.for.inc199.3.i_crit_edge ], [ %cck_rx_ver2_max_index.0.i.1.3.i, %if.then141.3.i ], [ 3, %if.else147.3.i.for.inc199.3.i_crit_edge ], [ %cck_rx_ver2_max_index.1.2.i, %if.else151.3.i.for.inc199.3.i_crit_edge ], [ %cck_rx_ver2_max_index.1.2.i, %if.then165.3.i ], [ 0, %for.inc199.2.thread.i.for.inc199.3.i_crit_edge ], [ 3, %if.then129.3.thread.i ], [ %cck_rx_ver2_max_index.1.2.i, %if.else162.3.i.for.inc199.3.i_crit_edge ]
  %cck_rx_ver2_sec_index.1.3.i = phi i8 [ %cck_rx_ver2_sec_index.1.2.i, %for.inc199.2.i.for.inc199.3.i_crit_edge ], [ %i.1.cck_rx_ver2_sec_index.0.3.i, %if.then141.3.i ], [ %cck_rx_ver2_max_index.1.2.i, %if.else147.3.i.for.inc199.3.i_crit_edge ], [ 3, %if.else151.3.i.for.inc199.3.i_crit_edge ], [ %spec.select433.3.i, %if.then165.3.i ], [ 0, %for.inc199.2.thread.i.for.inc199.3.i_crit_edge ], [ 3, %if.then129.3.thread.i ], [ %cck_rx_ver2_sec_index.1.2.i, %if.else162.3.i.for.inc199.3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %tmp_cck_max_pwdb.1.3.i)
  %cmp207.not.i = icmp ne i32 %tmp_cck_max_pwdb.1.3.i, -64
  %spec.select451.i = zext i1 %cmp207.not.i to i8
  br label %if.end202.thread.i

if.end202.thread.i:                               ; preds = %for.inc199.3.i, %for.inc.3.i.if.end202.thread.i_crit_edge
  %update_cck_rx_path.0.i = phi i8 [ %spec.select451.i, %for.inc199.3.i ], [ 0, %for.inc.3.i.if.end202.thread.i_crit_edge ]
  %cck_optional_Rx.0.i = phi i8 [ %cck_rx_ver2_sec_index.1.3.i, %for.inc199.3.i ], [ 3, %for.inc.3.i.if.end202.thread.i_crit_edge ]
  %cck_default_Rx.0.i = phi i8 [ %cck_rx_ver2_max_index.1.3.i, %for.inc199.3.i ], [ 2, %for.inc.3.i.if.end202.thread.i_crit_edge ]
  %conv212.i = zext i8 %tmp_min_rssi.1.3.i to i32
  %68 = load i8, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %tmp_min_rssi.1.3.i, i8 %68)
  %cmp214.i = icmp ult i8 %tmp_min_rssi.1.3.i, %68
  br i1 %cmp214.i, label %land.lhs.true216.i, label %if.end202.thread.i.if.end244.i_crit_edge

if.end202.thread.i.if.end244.i_crit_edge:         ; preds = %if.end202.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end244.i

land.lhs.true216.i:                               ; preds = %if.end202.thread.i
  %69 = load i8, ptr @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %cmp218.i = icmp ult i8 %69, 2
  br i1 %cmp218.i, label %if.then220.i, label %land.lhs.true216.i.if.end244.i_crit_edge

land.lhs.true216.i.if.end244.i_crit_edge:         ; preds = %land.lhs.true216.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end244.i

if.then220.i:                                     ; preds = %land.lhs.true216.i
  %conv221.i = zext i8 %tmp_max_rssi.1.3.i to i32
  %sub.i = sub nsw i32 %conv221.i, %conv212.i
  %70 = load i8, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 4), align 4
  %conv223.i = zext i8 %70 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv223.i)
  %cmp224.not.i = icmp slt i32 %sub.i, %conv223.i
  br i1 %cmp224.not.i, label %if.then220.i.if.end235.i_crit_edge, label %if.then226.i

if.then220.i.if.end235.i_crit_edge:               ; preds = %if.then220.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end235.i

if.then226.i:                                     ; preds = %if.then220.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i8 %tmp_max_rssi.1.3.i, 5
  %idxprom229.i = zext i8 %min_rssi_index.1.3.i to i32
  %arrayidx230.i = getelementptr %struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 8, i32 %idxprom229.i
  %71 = ptrtoint ptr %arrayidx230.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %add.i, ptr %arrayidx230.i, align 1
  %shl.i = shl nuw nsw i32 1, %idxprom229.i
  tail call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3076, i32 noundef %shl.i, i32 noundef 0) #7
  tail call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3332, i32 noundef %shl.i, i32 noundef 0) #7
  %72 = load i8, ptr @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 1
  %inc234.i = add i8 %72, 1
  store i8 %inc234.i, ptr @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 1
  br label %if.end235.i

if.end235.i:                                      ; preds = %if.then226.i, %if.then220.i.if.end235.i_crit_edge
  %73 = load i8, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp237.i = icmp eq i8 %73, 0
  br i1 %cmp237.i, label %if.then239.i, label %if.end235.i.if.end244.i_crit_edge

if.end235.i.if.end244.i_crit_edge:                ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end244.i

if.then239.i:                                     ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp_max_rssi.1.3.i)
  %tobool240.not.i = icmp eq i8 %tmp_max_rssi.1.3.i, 0
  br i1 %tobool240.not.i, label %if.then239.i.if.end244.i_crit_edge, label %if.then239.i.if.then246.i_crit_edge

if.then239.i.if.then246.i_crit_edge:              ; preds = %if.then239.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then246.i

if.then239.i.if.end244.i_crit_edge:               ; preds = %if.then239.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end244.i

if.end244.i:                                      ; preds = %if.then239.i.if.end244.i_crit_edge, %if.end235.i.if.end244.i_crit_edge, %land.lhs.true216.i.if.end244.i_crit_edge, %if.end202.thread.i.if.end244.i_crit_edge
  %cck_default_Rx.1.i = phi i8 [ %cck_default_Rx.0.i, %if.end235.i.if.end244.i_crit_edge ], [ %cck_default_Rx.0.i, %land.lhs.true216.i.if.end244.i_crit_edge ], [ %cck_default_Rx.0.i, %if.end202.thread.i.if.end244.i_crit_edge ], [ %max_rssi_index.1.3.i, %if.then239.i.if.end244.i_crit_edge ]
  %cck_optional_Rx.1.i = phi i8 [ %cck_optional_Rx.0.i, %if.end235.i.if.end244.i_crit_edge ], [ %cck_optional_Rx.0.i, %land.lhs.true216.i.if.end244.i_crit_edge ], [ %cck_optional_Rx.0.i, %if.end202.thread.i.if.end244.i_crit_edge ], [ %sec_rssi_index.1.3.i, %if.then239.i.if.end244.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %update_cck_rx_path.0.i)
  %tobool245.not.i = icmp eq i8 %update_cck_rx_path.0.i, 0
  br i1 %tobool245.not.i, label %if.end244.i.if.end252.i_crit_edge, label %if.end244.i.if.then246.i_crit_edge

if.end244.i.if.then246.i_crit_edge:               ; preds = %if.end244.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then246.i

if.end244.i.if.end252.i_crit_edge:                ; preds = %if.end244.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end252.i

if.then246.i:                                     ; preds = %if.end244.i.if.then246.i_crit_edge, %if.then239.i.if.then246.i_crit_edge
  %cck_optional_Rx.1450.i = phi i8 [ %cck_optional_Rx.1.i, %if.end244.i.if.then246.i_crit_edge ], [ %sec_rssi_index.1.3.i, %if.then239.i.if.then246.i_crit_edge ]
  %cck_default_Rx.1449.i = phi i8 [ %cck_default_Rx.1.i, %if.end244.i.if.then246.i_crit_edge ], [ %max_rssi_index.1.3.i, %if.then239.i.if.then246.i_crit_edge ]
  %shl248.i = shl nuw nsw i8 %cck_default_Rx.1449.i, 2
  %or.i = or i8 %shl248.i, %cck_optional_Rx.1450.i
  store i8 %or.i, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 2), align 2
  %conv251.i = zext i8 %or.i to i32
  tail call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 2564, i32 noundef 251658240, i32 noundef %conv251.i) #7
  br label %if.end252.i

if.end252.i:                                      ; preds = %if.then246.i, %if.end244.i.if.end252.i_crit_edge
  %74 = load i8, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool253.not.i = icmp eq i8 %74, 0
  br i1 %tobool253.not.i, label %if.end252.i.cleanup_crit_edge, label %for.body259.preheader.i

if.end252.i.cleanup_crit_edge:                    ; preds = %if.end252.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body259.preheader.i:                          ; preds = %if.end252.i
  %75 = and i8 %74, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool263.not.i = icmp eq i8 %75, 0
  br i1 %tobool263.not.i, label %for.body259.preheader.i.for.inc280.i_crit_edge, label %if.then264.i

for.body259.preheader.i.for.inc280.i_crit_edge:   ; preds = %for.body259.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc280.i

if.then264.i:                                     ; preds = %for.body259.preheader.i
  %76 = load i8, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 8, i32 0), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %tmp_max_rssi.1.3.i, i8 %76)
  %cmp269.not.i = icmp ult i8 %tmp_max_rssi.1.3.i, %76
  br i1 %cmp269.not.i, label %if.then264.i.for.inc280.i_crit_edge, label %if.then271.i

if.then264.i.for.inc280.i_crit_edge:              ; preds = %if.then264.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc280.i

if.then271.i:                                     ; preds = %if.then264.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3076, i32 noundef 1, i32 noundef 1) #7
  tail call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3332, i32 noundef 1, i32 noundef 1) #7
  store i8 100, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 8, i32 0), align 1
  %77 = load i8, ptr @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 1
  %dec.i = add i8 %77, -1
  store i8 %dec.i, ptr @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 1
  br label %for.inc280.i

for.inc280.i:                                     ; preds = %if.then271.i, %if.then264.i.for.inc280.i_crit_edge, %for.body259.preheader.i.for.inc280.i_crit_edge
  %78 = load i8, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5), align 1
  %79 = and i8 %78, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool263.not.1.i = icmp eq i8 %79, 0
  br i1 %tobool263.not.1.i, label %for.inc280.i.for.inc280.1.i_crit_edge, label %if.then264.1.i

for.inc280.i.for.inc280.1.i_crit_edge:            ; preds = %for.inc280.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc280.1.i

if.then264.1.i:                                   ; preds = %for.inc280.i
  %80 = load i8, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 8, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %tmp_max_rssi.1.3.i, i8 %80)
  %cmp269.not.1.i = icmp ult i8 %tmp_max_rssi.1.3.i, %80
  br i1 %cmp269.not.1.i, label %if.then264.1.i.for.inc280.1.i_crit_edge, label %if.then271.1.i

if.then264.1.i.for.inc280.1.i_crit_edge:          ; preds = %if.then264.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc280.1.i

if.then271.1.i:                                   ; preds = %if.then264.1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3076, i32 noundef 2, i32 noundef 1) #7
  tail call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3332, i32 noundef 2, i32 noundef 1) #7
  store i8 100, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 8, i32 1), align 4
  %81 = load i8, ptr @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 1
  %dec.1.i = add i8 %81, -1
  store i8 %dec.1.i, ptr @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 1
  br label %for.inc280.1.i

for.inc280.1.i:                                   ; preds = %if.then271.1.i, %if.then264.1.i.for.inc280.1.i_crit_edge, %for.inc280.i.for.inc280.1.i_crit_edge
  %82 = load i8, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5), align 1
  %83 = and i8 %82, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool263.not.2.i = icmp eq i8 %83, 0
  br i1 %tobool263.not.2.i, label %for.inc280.1.i.for.inc280.2.i_crit_edge, label %if.then264.2.i

for.inc280.1.i.for.inc280.2.i_crit_edge:          ; preds = %for.inc280.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc280.2.i

if.then264.2.i:                                   ; preds = %for.inc280.1.i
  %84 = load i8, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 8, i32 2), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %tmp_max_rssi.1.3.i, i8 %84)
  %cmp269.not.2.i = icmp ult i8 %tmp_max_rssi.1.3.i, %84
  br i1 %cmp269.not.2.i, label %if.then264.2.i.for.inc280.2.i_crit_edge, label %if.then271.2.i

if.then264.2.i.for.inc280.2.i_crit_edge:          ; preds = %if.then264.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc280.2.i

if.then271.2.i:                                   ; preds = %if.then264.2.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3076, i32 noundef 4, i32 noundef 1) #7
  tail call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3332, i32 noundef 4, i32 noundef 1) #7
  store i8 100, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 8, i32 2), align 1
  %85 = load i8, ptr @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 1
  %dec.2.i = add i8 %85, -1
  store i8 %dec.2.i, ptr @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 1
  br label %for.inc280.2.i

for.inc280.2.i:                                   ; preds = %if.then271.2.i, %if.then264.2.i.for.inc280.2.i_crit_edge, %for.inc280.1.i.for.inc280.2.i_crit_edge
  %86 = load i8, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5), align 1
  %87 = and i8 %86, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool263.not.3.i = icmp eq i8 %87, 0
  br i1 %tobool263.not.3.i, label %for.inc280.2.i.cleanup_crit_edge, label %if.then264.3.i

for.inc280.2.i.cleanup_crit_edge:                 ; preds = %for.inc280.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then264.3.i:                                   ; preds = %for.inc280.2.i
  %88 = load i8, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 8, i32 3), align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %tmp_max_rssi.1.3.i, i8 %88)
  %cmp269.not.3.i = icmp ult i8 %tmp_max_rssi.1.3.i, %88
  br i1 %cmp269.not.3.i, label %if.then264.3.i.cleanup_crit_edge, label %if.then271.3.i

if.then264.3.i.cleanup_crit_edge:                 ; preds = %if.then264.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then271.3.i:                                   ; preds = %if.then264.3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3076, i32 noundef 8, i32 noundef 1) #7
  tail call void @rtl92e_set_bb_reg(ptr noundef %3, i32 noundef 3332, i32 noundef 8, i32 noundef 1) #7
  store i8 100, ptr getelementptr inbounds (%struct.drx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 8, i32 3), align 2
  %89 = load i8, ptr @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 1
  %dec.3.i = add i8 %89, -1
  store i8 %dec.3.i, ptr @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then271.3.i, %if.then264.3.i.cleanup_crit_edge, %for.inc280.2.i.cleanup_crit_edge, %if.end252.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92e_readb(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92e_readl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_send_cmd_pkt(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtl92e_readw(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92e_get_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92e_dm_ctrl_initgain_byrssi_highpwr(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %undecorated_smoothed_pwdb = getelementptr i8, ptr %dev, i32 36028
  %0 = ptrtoint ptr %undecorated_smoothed_pwdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %undecorated_smoothed_pwdb, align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2 = icmp slt i32 %1, %3
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %4)
  %cmp4.not = icmp slt i32 %1, %4
  %5 = load i8, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 8), align 1
  br i1 %cmp4.not, label %if.else17, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp6 = icmp eq i8 %5, 1
  br i1 %cmp6, label %land.lhs.true8, label %if.then5.if.end12_crit_edge

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true8:                                   ; preds = %if.then5
  %reset_count = getelementptr i8, ptr %dev, i32 36200
  %6 = ptrtoint ptr %reset_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reset_count, align 4
  %8 = load i32, ptr @_rtl92e_dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp9 = icmp eq i32 %7, %8
  br i1 %cmp9, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end12_crit_edge

land.lhs.true8.if.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true8.if.end12_crit_edge, %if.then5.if.end12_crit_edge
  store i8 1, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 8), align 1
  %CurrentChannelBW = getelementptr i8, ptr %dev, i32 31420
  %9 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %CurrentChannelBW, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13.not = icmp eq i32 %10, 0
  br i1 %cmp13.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3207, i8 noundef zeroext 16) #7
  br label %if.end42

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3120, i8 noundef zeroext 67) #7
  br label %if.end42

if.else17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp19 = icmp eq i8 %5, 0
  br i1 %cmp19, label %land.lhs.true21, label %if.else17.if.end26_crit_edge

if.else17.if.end26_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true21:                                  ; preds = %if.else17
  %reset_count22 = getelementptr i8, ptr %dev, i32 36200
  %11 = ptrtoint ptr %reset_count22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reset_count22, align 4
  %13 = load i32, ptr @_rtl92e_dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp23 = icmp eq i32 %12, %13
  br i1 %cmp23, label %land.lhs.true21.cleanup_crit_edge, label %land.lhs.true21.if.end26_crit_edge

land.lhs.true21.if.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true21.if.end26_crit_edge, %if.else17.if.end26_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 8), align 1
  %14 = ptrtoint ptr %undecorated_smoothed_pwdb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %undecorated_smoothed_pwdb, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %2)
  %cmp28 = icmp slt i32 %15, %2
  br i1 %cmp28, label %land.lhs.true30, label %if.end26.if.end42_crit_edge

if.end26.if.end42_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

land.lhs.true30:                                  ; preds = %if.end26
  %16 = load i32, ptr getelementptr inbounds (%struct.dig_t, ptr @dm_digtable, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %16)
  %cmp32.not = icmp slt i32 %15, %16
  br i1 %cmp32.not, label %land.lhs.true30.if.end42_crit_edge, label %if.then34

land.lhs.true30.if.end42_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then34:                                        ; preds = %land.lhs.true30
  %CurrentChannelBW35 = getelementptr i8, ptr %dev, i32 31420
  %17 = ptrtoint ptr %CurrentChannelBW35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %CurrentChannelBW35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp36.not = icmp eq i32 %18, 0
  br i1 %cmp36.not, label %if.else39, label %if.then38

if.then38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3207, i8 noundef zeroext 32) #7
  br label %if.end42

if.else39:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 3120, i8 noundef zeroext 68) #7
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.then38, %land.lhs.true30.if.end42_crit_edge, %if.end26.if.end42_crit_edge, %if.else, %if.then15
  %reset_count43 = getelementptr i8, ptr %dev, i32 36200
  %19 = ptrtoint ptr %reset_count43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reset_count43, align 4
  store i32 %20, ptr @_rtl92e_dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %land.lhs.true21.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtllib_act_scanning(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_set_rf_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl92e_dm_fsync_timer_callback(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %t, i32 -524
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %dev1 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %state = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 90
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp eq i32 %5, 5
  br i1 %cmp, label %land.lhs.true, label %entry.if.else118_crit_edge

entry.if.else118_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else118

land.lhs.true:                                    ; preds = %entry
  %bfsync_enable = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 148
  %6 = ptrtoint ptr %bfsync_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bfsync_enable, align 1, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true.if.else118_crit_edge, label %land.lhs.true4

land.lhs.true.if.else118_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else118

land.lhs.true4:                                   ; preds = %land.lhs.true
  %pHTInfo = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pHTInfo, align 8
  %IOTAction = getelementptr inbounds %struct.rt_hi_throughput, ptr %9, i32 0, i32 51
  %10 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %IOTAction, align 1
  %and = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true4.if.else118_crit_edge, label %for.cond.preheader

land.lhs.true4.if.else118_crit_edge:              ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else118

for.cond.preheader:                               ; preds = %land.lhs.true4
  %fsync_rate_bitmap = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 146
  %12 = ptrtoint ptr %fsync_rate_bitmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fsync_rate_bitmap, align 4
  %arrayidx = getelementptr i8, ptr %t, i32 832
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %rate_index.0241 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %rate_count.0240 = phi i32 [ 0, %for.cond.preheader ], [ %rate_count.1, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %rate_index.0241
  %and9 = and i32 %13, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx12 = getelementptr [32 x i32], ptr %arrayidx, i32 0, i32 %rate_index.0241
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %15, %rate_count.0240
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body.for.inc_crit_edge
  %rate_count.1 = phi i32 [ %add, %if.then11 ], [ %rate_count.0240, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %rate_index.0241, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %rate_record = getelementptr i8, ptr %t, i32 4336
  %16 = ptrtoint ptr %rate_record to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate_record, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rate_count.1, i32 %17)
  %cmp13 = icmp ult i32 %rate_count.1, %17
  %sub = xor i32 %rate_count.1, -1
  %add16 = add i32 %17, %sub
  %sub18 = sub i32 %rate_count.1, %17
  %rate_count_diff.0 = select i1 %cmp13, i32 %add16, i32 %sub18
  %rateCountDiffRecord = getelementptr i8, ptr %t, i32 4340
  %18 = ptrtoint ptr %rateCountDiffRecord to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rateCountDiffRecord, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %rate_count_diff.0)
  %cmp20 = icmp ugt i32 %19, %rate_count_diff.0
  br i1 %cmp20, label %if.then21, label %for.end.if.end38.sink.split_crit_edge

for.end.if.end38.sink.split_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.sink.split

if.then21:                                        ; preds = %for.end
  %sub23 = sub i32 %19, %rate_count_diff.0
  %fsync_seconddiff_ratethreshold = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 151
  %20 = ptrtoint ptr %fsync_seconddiff_ratethreshold to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fsync_seconddiff_ratethreshold, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %21)
  %cmp25.not = icmp ult i32 %sub23, %21
  %ContinueDiffCount29 = getelementptr i8, ptr %t, i32 4344
  br i1 %cmp25.not, label %if.then21.if.end30_crit_edge, label %if.then26

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %ContinueDiffCount29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ContinueDiffCount29, align 4
  %inc27 = add i32 %23, 1
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then21.if.end30_crit_edge
  %.sink = phi i32 [ %inc27, %if.then26 ], [ 0, %if.then21.if.end30_crit_edge ]
  %24 = ptrtoint ptr %ContinueDiffCount29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %ContinueDiffCount29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.sink)
  %cmp32 = icmp ugt i32 %.sink, 1
  br i1 %cmp32, label %if.end30.if.end38.sink.split_crit_edge, label %if.end30.if.end38_crit_edge

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end30.if.end38.sink.split_crit_edge:           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %if.end30.if.end38.sink.split_crit_edge, %for.end.if.end38.sink.split_crit_edge
  %ContinueDiffCount31.sink = getelementptr i8, ptr %t, i32 4344
  %25 = ptrtoint ptr %ContinueDiffCount31.sink to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ContinueDiffCount31.sink, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.end30.if.end38_crit_edge
  %bSwitchFromCountDiff.1.off0 = phi i1 [ false, %if.end30.if.end38_crit_edge ], [ %cmp20, %if.end38.sink.split ]
  %fsync_firstdiff_ratethreshold = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 150
  %26 = ptrtoint ptr %fsync_firstdiff_ratethreshold to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fsync_firstdiff_ratethreshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rate_count_diff.0, i32 %27)
  %cmp40.not = icmp ugt i32 %rate_count_diff.0, %27
  br i1 %cmp40.not, label %if.end38.if.end43_crit_edge, label %if.then41

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %ContinueDiffCount42 = getelementptr i8, ptr %t, i32 4344
  %28 = ptrtoint ptr %ContinueDiffCount42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ContinueDiffCount42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38.if.end43_crit_edge
  %bSwitchFromCountDiff.2.off0 = phi i1 [ true, %if.then41 ], [ %bSwitchFromCountDiff.1.off0, %if.end38.if.end43_crit_edge ]
  %29 = ptrtoint ptr %rate_record to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %rate_count.1, ptr %rate_record, align 4
  %30 = ptrtoint ptr %rateCountDiffRecord to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %rate_count_diff.0, ptr %rateCountDiffRecord, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %31 = load i32, ptr @rt_global_debug_component, align 4
  %and46 = and i32 %31, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end43.do.end55_crit_edge, label %do.end

if.end43.do.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

do.end:                                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %bswitch_fsync = getelementptr i8, ptr %t, i32 4348
  %32 = ptrtoint ptr %bswitch_fsync to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bswitch_fsync, align 8, !range !385
  %34 = zext i8 %33 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef %rate_count.1, i32 noundef %rate_count.1, i32 noundef %rate_count_diff.0, i32 noundef %34) #10
  br label %do.end55

do.end55:                                         ; preds = %do.end, %if.end43.do.end55_crit_edge
  %undecorated_smoothed_pwdb = getelementptr i8, ptr %t, i32 4188
  %35 = ptrtoint ptr %undecorated_smoothed_pwdb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %undecorated_smoothed_pwdb, align 8
  %37 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rtllib, align 8
  %fsync_rssi_threshold = getelementptr inbounds %struct.rtllib_device, ptr %38, i32 0, i32 147
  %39 = ptrtoint ptr %fsync_rssi_threshold to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fsync_rssi_threshold, align 8
  %conv57 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv57)
  %cmp58 = icmp sgt i32 %36, %conv57
  %brmerge.demorgan = and i1 %bSwitchFromCountDiff.2.off0, %cmp58
  br i1 %brmerge.demorgan, label %if.then63, label %if.else72

if.then63:                                        ; preds = %do.end55
  %bswitch_fsync64 = getelementptr i8, ptr %t, i32 4348
  %41 = ptrtoint ptr %bswitch_fsync64 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bswitch_fsync64, align 8, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool65.not = icmp eq i8 %42, 0
  %43 = xor i8 %42, 1
  %44 = ptrtoint ptr %bswitch_fsync64 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %bswitch_fsync64, align 8
  %. = select i1 %tobool65.not, i8 28, i8 92
  %.245 = select i1 %tobool65.not, i8 -112, i8 -106
  tail call void @rtl92e_writeb(ptr noundef %3, i32 noundef 3126, i8 noundef zeroext %.) #7
  tail call void @rtl92e_writeb(ptr noundef %3, i32 noundef 3134, i8 noundef zeroext %.245) #7
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %t, i32 0, i32 1
  %45 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.not, label %if.then63.if.end94_crit_edge, label %if.then91

if.then63.if.end94_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.else72:                                        ; preds = %do.end55
  br i1 %cmp58, label %if.else72.if.else102_crit_edge, label %if.then79

if.else72.if.else102_crit_edge:                   ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else102

if.then79:                                        ; preds = %if.else72
  %bswitch_fsync80 = getelementptr i8, ptr %t, i32 4348
  %47 = ptrtoint ptr %bswitch_fsync80 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bswitch_fsync80, align 8, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool81.not = icmp eq i8 %48, 0
  br i1 %tobool81.not, label %if.then79.if.else102_crit_edge, label %if.then82

if.then79.if.else102_crit_edge:                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else102

if.then82:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %bswitch_fsync80 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %bswitch_fsync80, align 8
  tail call void @rtl92e_writeb(ptr noundef %3, i32 noundef 3126, i8 noundef zeroext 92) #7
  tail call void @rtl92e_writeb(ptr noundef %3, i32 noundef 3134, i8 noundef zeroext -106) #7
  br label %if.else102

if.then91:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  %call93 = tail call i32 @del_timer_sync(ptr noundef %t) #7
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.then63.if.end94_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %51 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rtllib, align 8
  %fsync_time_interval = getelementptr inbounds %struct.rtllib_device, ptr %52, i32 0, i32 145
  %53 = ptrtoint ptr %fsync_time_interval to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fsync_time_interval, align 8
  %fsync_multiple_timeinterval = getelementptr inbounds %struct.rtllib_device, ptr %52, i32 0, i32 149
  %55 = ptrtoint ptr %fsync_multiple_timeinterval to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %fsync_multiple_timeinterval, align 2
  %conv97 = zext i8 %56 to i32
  %mul = mul i32 %54, %conv97
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #7
  %add99 = add i32 %call2.i, %50
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %57 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add99, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #7
  br label %do.body126

if.else102:                                       ; preds = %if.then82, %if.then79.if.else102_crit_edge, %if.else72.if.else102_crit_edge
  %pprev.i.i237 = getelementptr inbounds %struct.hlist_node, ptr %t, i32 0, i32 1
  %58 = ptrtoint ptr %pprev.i.i237 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %pprev.i.i237, align 4
  %tobool.not.i.i238.not = icmp eq ptr %59, null
  br i1 %tobool.not.i.i238.not, label %if.else102.if.end109_crit_edge, label %if.then106

if.else102.if.end109_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then106:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #9
  %call108 = tail call i32 @del_timer_sync(ptr noundef %t) #7
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.else102.if.end109_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %61 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rtllib, align 8
  %fsync_time_interval111 = getelementptr inbounds %struct.rtllib_device, ptr %62, i32 0, i32 145
  %63 = ptrtoint ptr %fsync_time_interval111 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fsync_time_interval111, align 8
  %call2.i233 = tail call i32 @__msecs_to_jiffies(i32 noundef %64) #7
  %add113 = add i32 %call2.i233, %60
  %expires115 = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %65 = ptrtoint ptr %expires115 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add113, ptr %expires115, align 4
  tail call void @add_timer(ptr noundef %t) #7
  br label %do.body126

if.else118:                                       ; preds = %land.lhs.true4.if.else118_crit_edge, %land.lhs.true.if.else118_crit_edge, %entry.if.else118_crit_edge
  %bswitch_fsync119 = getelementptr i8, ptr %t, i32 4348
  %66 = ptrtoint ptr %bswitch_fsync119 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bswitch_fsync119, align 8, !range !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool120.not = icmp eq i8 %67, 0
  br i1 %tobool120.not, label %if.else118.if.end123_crit_edge, label %if.then121

if.else118.if.end123_crit_edge:                   ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then121:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %bswitch_fsync119 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %bswitch_fsync119, align 8
  tail call void @rtl92e_writeb(ptr noundef %3, i32 noundef 3126, i8 noundef zeroext 92) #7
  tail call void @rtl92e_writeb(ptr noundef %3, i32 noundef 3134, i8 noundef zeroext -106) #7
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.else118.if.end123_crit_edge
  %ContinueDiffCount124 = getelementptr i8, ptr %t, i32 4344
  %69 = ptrtoint ptr %ContinueDiffCount124 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %ContinueDiffCount124, align 4
  tail call void @rtl92e_writel(ptr noundef %3, i32 noundef 3124, i32 noundef 1180455629) #7
  br label %do.body126

do.body126:                                       ; preds = %if.end123, %if.end109, %if.end94
  %rate_count_diff.1 = phi i32 [ 0, %if.end123 ], [ %rate_count_diff.0, %if.end109 ], [ %rate_count_diff.0, %if.end94 ]
  %rate_count.2 = phi i32 [ 0, %if.end123 ], [ %rate_count.1, %if.end109 ], [ %rate_count.1, %if.end94 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %70 = load i32, ptr @rt_global_debug_component, align 4
  %and127 = and i32 %70, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %do.body126.do.body139_crit_edge, label %do.end132

do.body126.do.body139_crit_edge:                  ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body139

do.end132:                                        ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #9
  %ContinueDiffCount134 = getelementptr i8, ptr %t, i32 4344
  %71 = ptrtoint ptr %ContinueDiffCount134 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ContinueDiffCount134, align 4
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, i32 noundef %72) #10
  br label %do.body139

do.body139:                                       ; preds = %do.end132, %do.body126.do.body139_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %73 = load i32, ptr @rt_global_debug_component, align 4
  %and140 = and i32 %73, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.body139.do.end154_crit_edge, label %do.end145

do.body139.do.end154_crit_edge:                   ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end154

do.end145:                                        ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #9
  %rate_record147 = getelementptr i8, ptr %t, i32 4336
  %74 = ptrtoint ptr %rate_record147 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rate_record147, align 4
  %bswitch_fsync148 = getelementptr i8, ptr %t, i32 4348
  %76 = ptrtoint ptr %bswitch_fsync148 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bswitch_fsync148, align 8, !range !385
  %78 = zext i8 %77 to i32
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef %75, i32 noundef %rate_count.2, i32 noundef %rate_count_diff.1, i32 noundef %78) #10
  br label %do.end154

do.end154:                                        ; preds = %do.end145, %do.body139.do.end154_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92e_dm_start_sw_fsync(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.175) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %rate_record = getelementptr i8, ptr %dev, i32 36176
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %1 = call ptr @memset(ptr %rate_record, i32 0, i32 13)
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %mode = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 92
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp eq i32 %5, 16
  %fsync_firstdiff_ratethreshold = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 150
  %. = select i1 %cmp, i32 600, i32 200
  %.56 = select i1 %cmp, i32 65535, i32 200
  %6 = ptrtoint ptr %fsync_firstdiff_ratethreshold to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %fsync_firstdiff_ratethreshold, align 4
  %7 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtllib, align 8
  %fsync_seconddiff_ratethreshold11 = getelementptr inbounds %struct.rtllib_device, ptr %8, i32 0, i32 151
  %9 = ptrtoint ptr %fsync_seconddiff_ratethreshold11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.56, ptr %fsync_seconddiff_ratethreshold11, align 8
  %10 = load ptr, ptr %rtllib, align 8
  %fsync_rate_bitmap = getelementptr inbounds %struct.rtllib_device, ptr %10, i32 0, i32 146
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end4
  %rateIndex.052 = phi i32 [ 0, %do.end4 ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %rateIndex.052
  %11 = ptrtoint ptr %fsync_rate_bitmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fsync_rate_bitmap, align 4
  %and15 = and i32 %12, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %if.then17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx18 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 43, i32 7, i32 1, i32 %rateIndex.052
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx18, align 4
  %15 = ptrtoint ptr %rate_record to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate_record, align 4
  %add = add i32 %16, %14
  store i32 %add, ptr %rate_record, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %rateIndex.052, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %fsync_timer = getelementptr i8, ptr %dev, i32 31840
  %pprev.i.i = getelementptr i8, ptr %dev, i32 31844
  %17 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.not, label %for.end.if.end26_crit_edge, label %if.then23

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 @del_timer_sync(ptr noundef %fsync_timer) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %for.end.if.end26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %20 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rtllib, align 8
  %fsync_time_interval = getelementptr inbounds %struct.rtllib_device, ptr %21, i32 0, i32 145
  %22 = ptrtoint ptr %fsync_time_interval to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fsync_time_interval, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %23) #7
  %add29 = add i32 %call2.i, %19
  %expires = getelementptr i8, ptr %dev, i32 31848
  %24 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add29, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %fsync_timer) #7
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 3124, i32 noundef 1180439245) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_tx_power(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 193)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 193)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !167, !169, !170, !171, !172, !174, !176, !177, !178, !180, !182, !184, !185, !186, !187, !189, !190, !192, !193, !195, !196, !197, !199, !200, !202, !203, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !304, !305, !306, !308, !310, !311, !312, !314, !316, !318, !320, !322, !324, !325, !327, !328, !329, !330, !332, !333, !334, !336, !337, !339, !341, !343, !344, !345, !346, !348, !349, !350, !352, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !371, !372, !374, !375}
!llvm.module.flags = !{!376, !377, !378, !379, !380, !381, !382, !383}
!llvm.ident = !{!384}

!0 = !{ptr @dm_tx_bb_gain, !1, !"dm_tx_bb_gain", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 49, i32 11}
!2 = !{ptr @dm_cck_tx_bb_gain, !3, !"dm_cck_tx_bb_gain", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 89, i32 10}
!4 = !{ptr @dm_cck_tx_bb_gain_ch14, !5, !"dm_cck_tx_bb_gain_ch14", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 115, i32 10}
!6 = !{ptr @rtl92e_dm_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 223, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rtl92e_dm_init.__key.1, !7, !"__key", i1 false, i1 false}
!10 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1179, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rtl92e_dm_restore_state._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @rtl92e_dm_restore_state._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1255, i32 2}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rtl92e_dm_backup_state._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @rtl92e_dm_backup_state._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1257, i32 2}
!24 = !{ptr @rtl92e_dm_backup_state._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rtl92e_dm_backup_state._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1259, i32 2}
!28 = !{ptr @rtl92e_dm_backup_state._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rtl92e_dm_backup_state._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1261, i32 2}
!32 = !{ptr @rtl92e_dm_backup_state._entry.14, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rtl92e_dm_backup_state._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1263, i32 2}
!36 = !{ptr @rtl92e_dm_backup_state._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rtl92e_dm_backup_state._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @dm_digtable, !39, !"dm_digtable", i1 false, i1 false}
!39 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 145, i32 14}
!40 = !{ptr @DM_RxPathSelTable, !41, !"DM_RxPathSelTable", i1 false, i1 false}
!41 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 147, i32 21}
!42 = !{ptr @_rtl92e_dm_check_ac_dc_power.ac_dc_script, !43, !"ac_dc_script", i1 false, i1 false}
!43 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 263, i32 20}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 264, i32 40}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 265, i32 25}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 266, i32 4}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 267, i32 4}
!52 = !{ptr @_rtl92e_dm_check_ac_dc_power.envp, !53, !"envp", i1 false, i1 false}
!53 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 265, i32 15}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 271, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @_rtl92e_dm_check_ac_dc_power._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @_rtl92e_dm_check_ac_dc_power._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"ping_rssi_state", i1 false, i1 false}
!60 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 333, i32 12}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 336, i32 3}
!63 = !{ptr @_rtl92e_dm_check_rate_adaptive._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @_rtl92e_dm_check_rate_adaptive._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 426, i32 4}
!67 = !{ptr @_rtl92e_dm_check_rate_adaptive._entry.27, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @_rtl92e_dm_check_rate_adaptive._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 631, i32 2}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 640, i32 2}
!76 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.32, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.34, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 659, i32 6}
!80 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.35, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.37, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 666, i32 6}
!84 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.38, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.40, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 692, i32 5}
!88 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.41, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.43, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 705, i32 5}
!92 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.44, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.46, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 716, i32 4}
!96 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.47, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.49, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 720, i32 4}
!100 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.50, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.52, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 732, i32 5}
!104 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.53, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.55, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 734, i32 5}
!108 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.56, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.58, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 737, i32 5}
!112 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.59, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.61, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 740, i32 5}
!116 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.62, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.64, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 743, i32 5}
!120 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.65, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.67, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.68, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 788, i32 4}
!124 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.69, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.70, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 791, i32 4}
!127 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.71, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.72, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 794, i32 4}
!130 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.73, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.74, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 797, i32 4}
!133 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.75, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.77, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 806, i32 5}
!136 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry.76, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @_rtl92e_dm_tx_power_tracking_callback_tssi._entry_ptr.78, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.79, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 837, i32 5}
!140 = !{ptr @.str.80, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.82, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 848, i32 5}
!145 = !{ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.81, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr.83, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.85, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 860, i32 2}
!149 = !{ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.84, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr.86, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.88, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 865, i32 2}
!153 = !{ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.87, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr.89, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.91, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 897, i32 2}
!157 = !{ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.90, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr.92, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.94, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 922, i32 3}
!161 = !{ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry.93, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @_rtl92e_dm_tx_power_tracking_cb_thermal._entry_ptr.95, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @OFDMSwingTable, !164, !"OFDMSwingTable", i1 false, i1 false}
!164 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 470, i32 12}
!165 = !{ptr @CCKSwingTable_Ch1_Ch13, !166, !"CCKSwingTable_Ch1_Ch13", i1 false, i1 false}
!166 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 492, i32 11}
!167 = !{ptr @.str.96, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 963, i32 2}
!169 = !{ptr @.str.97, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @_rtl92e_dm_init_tx_power_tracking_thermal._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @_rtl92e_dm_init_tx_power_tracking_thermal._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @_rtl92e_dm_check_tx_power_tracking_tssi.tx_power_track_counter, !173, !"tx_power_track_counter", i1 false, i1 false}
!173 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 980, i32 13}
!174 = !{ptr @.str.98, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 982, i32 2}
!176 = !{ptr @_rtl92e_dm_check_tx_power_tracking_tssi._entry, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @_rtl92e_dm_check_tx_power_tracking_tssi._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!178 = distinct !{null, !179, !"TM_Trigger", i1 false, i1 false}
!179 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1000, i32 12}
!180 = !{ptr @.str.99, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1023, i32 19}
!182 = !{ptr @.str.100, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1089, i32 3}
!184 = !{ptr @.str.101, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.102, !188, !"_entry", i1 false, i1 false}
!188 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1097, i32 3}
!189 = !{ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr.103, !188, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.104, !191, !"_entry", i1 false, i1 false}
!191 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1104, i32 3}
!192 = !{ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr.105, !191, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.107, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1112, i32 3}
!195 = !{ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.106, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr.108, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.109, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1119, i32 3}
!199 = !{ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr.110, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry.111, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1125, i32 3}
!202 = !{ptr @_rtl92e_dm_cck_tx_power_adjust_thermal_meter._entry_ptr.112, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @CCKSwingTable_Ch14, !204, !"CCKSwingTable_Ch14", i1 false, i1 false}
!204 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 507, i32 11}
!205 = !{ptr @.str.113, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1144, i32 2}
!207 = !{ptr @.str.114, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.116, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1147, i32 2}
!212 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry.115, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr.117, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.119, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1149, i32 2}
!216 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry.118, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr.120, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.122, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1152, i32 2}
!220 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry.121, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr.123, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.125, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1155, i32 2}
!224 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry.124, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr.126, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.128, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1162, i32 2}
!228 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry.127, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr.129, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.131, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1164, i32 2}
!232 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry.130, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr.132, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.134, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1167, i32 2}
!236 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry.133, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @_rtl92e_dm_tx_power_reset_recovery._entry_ptr.135, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.136, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1222, i32 2}
!240 = !{ptr @.str.137, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @_rtl92e_dm_bb_initialgain_restore._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @_rtl92e_dm_bb_initialgain_restore._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.139, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1224, i32 2}
!245 = !{ptr @_rtl92e_dm_bb_initialgain_restore._entry.138, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @_rtl92e_dm_bb_initialgain_restore._entry_ptr.140, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.142, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1226, i32 2}
!249 = !{ptr @_rtl92e_dm_bb_initialgain_restore._entry.141, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @_rtl92e_dm_bb_initialgain_restore._entry_ptr.143, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.145, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1228, i32 2}
!253 = !{ptr @_rtl92e_dm_bb_initialgain_restore._entry.144, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @_rtl92e_dm_bb_initialgain_restore._entry_ptr.146, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.148, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1230, i32 2}
!257 = !{ptr @_rtl92e_dm_bb_initialgain_restore._entry.147, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @_rtl92e_dm_bb_initialgain_restore._entry_ptr.149, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @_rtl92e_dm_ctrl_initgain_byrssi_false_alarm.reset_cnt, !260, !"reset_cnt", i1 false, i1 false}
!260 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1366, i32 13}
!261 = !{ptr @_rtl92e_dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr, !262, !"reset_cnt_highpwr", i1 false, i1 false}
!262 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1454, i32 13}
!263 = !{ptr @_rtl92e_dm_ctrl_initgain_byrssi_driver.fw_dig, !264, !"fw_dig", i1 false, i1 false}
!264 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1333, i32 12}
!265 = distinct !{null, !266, !"initialized", i1 false, i1 false}
!266 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1496, i32 12}
!267 = distinct !{null, !268, !"force_write", i1 false, i1 false}
!268 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1496, i32 25}
!269 = !{ptr @_rtl92e_dm_initial_gain.reset_cnt, !270, !"reset_cnt", i1 false, i1 false}
!270 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1497, i32 13}
!271 = !{ptr @_rtl92e_dm_pd_th.initialized, !272, !"initialized", i1 false, i1 false}
!272 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1552, i32 12}
!273 = distinct !{null, !274, !"force_write", i1 false, i1 false}
!274 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1552, i32 25}
!275 = !{ptr @_rtl92e_dm_pd_th.reset_cnt, !276, !"reset_cnt", i1 false, i1 false}
!276 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1553, i32 13}
!277 = distinct !{null, !278, !"initialized", i1 false, i1 false}
!278 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1620, i32 12}
!279 = distinct !{null, !280, !"force_write", i1 false, i1 false}
!280 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1620, i32 25}
!281 = !{ptr @_rtl92e_dm_cs_ratio.reset_cnt, !282, !"reset_cnt", i1 false, i1 false}
!282 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1621, i32 13}
!283 = !{ptr @_rtl92e_dm_check_edca_turbo.lastTxOkCnt, !284, !"lastTxOkCnt", i1 false, i1 false}
!284 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1675, i32 23}
!285 = !{ptr @_rtl92e_dm_check_edca_turbo.lastRxOkCnt, !286, !"lastRxOkCnt", i1 false, i1 false}
!286 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1676, i32 23}
!287 = !{ptr @edca_setting_UL, !288, !"edca_setting_UL", i1 false, i1 false}
!288 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 38, i32 12}
!289 = !{ptr @edca_setting_DL_GMode, !290, !"edca_setting_DL_GMode", i1 false, i1 false}
!290 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 27, i32 12}
!291 = !{ptr @edca_setting_DL, !292, !"edca_setting_DL", i1 false, i1 false}
!292 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 16, i32 12}
!293 = !{ptr @_rtl92e_dm_cts_to_self.lastTxOkCnt, !294, !"lastTxOkCnt", i1 false, i1 false}
!294 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1763, i32 23}
!295 = !{ptr @_rtl92e_dm_cts_to_self.lastRxOkCnt, !296, !"lastRxOkCnt", i1 false, i1 false}
!296 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1764, i32 23}
!297 = !{ptr @_rtl92e_dm_check_rf_ctrl_gpio.RadioPowerPath, !298, !"RadioPowerPath", i1 false, i1 false}
!298 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1804, i32 20}
!299 = !{ptr @_rtl92e_dm_check_rf_ctrl_gpio.envp, !300, !"envp", i1 false, i1 false}
!300 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1805, i32 15}
!301 = !{ptr @.str.150, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1823, i32 3}
!303 = !{ptr @.str.151, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @_rtl92e_dm_check_rf_ctrl_gpio._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @_rtl92e_dm_check_rf_ctrl_gpio._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.152, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1824, i32 20}
!308 = !{ptr @.str.154, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1828, i32 3}
!310 = !{ptr @_rtl92e_dm_check_rf_ctrl_gpio._entry.153, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @_rtl92e_dm_check_rf_ctrl_gpio._entry_ptr.155, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.156, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1829, i32 20}
!314 = !{ptr @.str.157, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1839, i32 14}
!316 = !{ptr @.str.158, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1841, i32 14}
!318 = !{ptr @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, !319, !"disabled_rf_cnt", i1 false, i1 false}
!319 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1907, i32 12}
!320 = distinct !{null, !321, !"cck_Rx_Path_initialized", i1 false, i1 false}
!321 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 1907, i32 29}
!322 = !{ptr @_rtl92e_dm_init_fsync.__key, !323, !"__key", i1 false, i1 false}
!323 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 2114, i32 2}
!324 = !{ptr @.str.159, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.160, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 2176, i32 3}
!327 = !{ptr @.str.161, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @_rtl92e_dm_fsync_timer_callback._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @_rtl92e_dm_fsync_timer_callback._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.163, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 2223, i32 2}
!332 = !{ptr @_rtl92e_dm_fsync_timer_callback._entry.162, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @_rtl92e_dm_fsync_timer_callback._entry_ptr.164, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @_rtl92e_dm_fsync_timer_callback._entry.165, !335, !"_entry", i1 false, i1 false}
!335 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 2224, i32 2}
!336 = !{ptr @_rtl92e_dm_fsync_timer_callback._entry_ptr.166, !335, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @_rtl92e_dm_check_fsync.reg_c38_State, !338, !"reg_c38_State", i1 false, i1 false}
!338 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 2315, i32 12}
!339 = !{ptr @_rtl92e_dm_check_fsync.reset_cnt, !340, !"reset_cnt", i1 false, i1 false}
!340 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 2316, i32 13}
!341 = !{ptr @.str.167, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 2318, i32 2}
!343 = !{ptr @.str.168, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @_rtl92e_dm_check_fsync._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @_rtl92e_dm_check_fsync._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.170, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 2323, i32 2}
!348 = !{ptr @_rtl92e_dm_check_fsync._entry.169, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @_rtl92e_dm_check_fsync._entry_ptr.171, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.172, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 2235, i32 2}
!352 = !{ptr @.str.173, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @_rtl92e_dm_start_hw_fsync._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @_rtl92e_dm_start_hw_fsync._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.174, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 2258, i32 2}
!357 = !{ptr @_rtl92e_dm_end_sw_fsync._entry, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @_rtl92e_dm_end_sw_fsync._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.175, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 2279, i32 2}
!361 = !{ptr @_rtl92e_dm_start_sw_fsync._entry, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @_rtl92e_dm_start_sw_fsync._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.176, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 2247, i32 2}
!365 = !{ptr @_rtl92e_dm_end_hw_fsync._entry, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @_rtl92e_dm_end_hw_fsync._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.177, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 2464, i32 2}
!369 = !{ptr @.str.178, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @_rtl92e_dm_dynamic_tx_power._entry, !368, !"_entry", i1 false, i1 false}
!371 = !{ptr @_rtl92e_dm_dynamic_tx_power._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.180, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c", i32 2487, i32 3}
!374 = !{ptr @_rtl92e_dm_dynamic_tx_power._entry.179, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @_rtl92e_dm_dynamic_tx_power._entry_ptr.181, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{i32 1, !"wchar_size", i32 2}
!377 = !{i32 1, !"min_enum_size", i32 4}
!378 = !{i32 8, !"branch-target-enforcement", i32 0}
!379 = !{i32 8, !"sign-return-address", i32 0}
!380 = !{i32 8, !"sign-return-address-all", i32 0}
!381 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!382 = !{i32 7, !"uwtable", i32 1}
!383 = !{i32 7, !"frame-pointer", i32 2}
!384 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!385 = !{i8 0, i8 2}
