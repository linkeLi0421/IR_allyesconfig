; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtl8192e/rtl_cam.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtl8192e/rtl_cam.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd] }
%struct.sw_chnl_cmd = type { i32, i32, i32, i32 }
%struct.rt_hi_throughput = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capab_ele, %struct.ht_info_ele, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32, i8, i8, i8, i8 }>
%struct.ht_capab_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct.ht_info_ele = type { i8, [5 x i8], [16 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@hwwep = external dso_local local_unnamed_addr global i32, align 4
@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@rtl92e_enable_hw_security_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017rtl819xE:%s:, hwsec:%d, pairwise_key:%d, SECR_value:%x\0A\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtl92e_enable_hw_security_config\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/staging/rtl8192e/rtl8192e/rtl_cam.c\00", [52 x i8] zeroinitializer }, align 32
@rtl92e_enable_hw_security_config._entry_ptr = internal global ptr @rtl92e_enable_hw_security_config._entry, section ".printk_index", align 4
@rtl92e_set_swcam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\017rtl819xE:===========>%s():EntryNo is %d,KeyIndex is %d,KeyType is %d,is_mesh is %d\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtl92e_set_swcam\00", [47 x i8] zeroinitializer }, align 32
@rtl92e_set_swcam._entry_ptr = internal global ptr @rtl92e_set_swcam._entry, section ".printk_index", align 4
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(): RF is OFF.\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.rtl92e_set_key = private unnamed_addr constant [15 x i8] c"rtl92e_set_key\00", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): Invalid CAM entry\0A\00", [39 x i8] zeroinitializer }, align 32
@rtl92e_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.rtl92e_set_key, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\017rtl819xE:====>to %s, dev:%p, EntryNo:%d, KeyIndex:%d,KeyType:%d, MacAddr %pM\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@rtl92e_set_key._entry_ptr = internal global ptr @rtl92e_set_key._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl92e_set_key._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.rtl92e_set_key, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017rtl819xE:=========>after set key, usconfig:%x\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@rtl92e_set_key._entry_ptr.10 = internal global ptr @rtl92e_set_key._entry.8, section ".printk_index", align 4
@rtl92e_cam_restore.CAM_CONST_ADDR = internal global { [4 x [6 x i8]], [40 x i8] } { [4 x [6 x i8]] [[6 x i8] zeroinitializer, [6 x i8] c"\00\00\00\00\00\01", [6 x i8] c"\00\00\00\00\00\02", [6 x i8] c"\00\00\00\00\00\03"], [40 x i8] zeroinitializer }, align 32
@rtl92e_cam_restore.CAM_CONST_BROAD = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@rtl92e_cam_restore._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017rtl819xE:%s:\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl92e_cam_restore\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_cam_restore._entry_ptr = internal global ptr @rtl92e_cam_restore._entry, section ".printk_index", align 4
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): ADHOC TKIP: missing key entry.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): ADHOC CCMP: missing key entry.\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 7, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 50, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 63, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 95, i32 22 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 106, i32 20 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 110, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 147, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"CAM_CONST_ADDR\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 156, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"CAM_CONST_BROAD\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 162, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 166, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 227, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [47 x i8] c"../drivers/staging/rtl8192e/rtl8192e/rtl_cam.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 251, i32 10 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @rtl92e_cam_restore._entry, ptr @rtl92e_cam_restore._entry_ptr, ptr @rtl92e_enable_hw_security_config._entry, ptr @rtl92e_enable_hw_security_config._entry_ptr, ptr @rtl92e_set_key._entry, ptr @rtl92e_set_key._entry.8, ptr @rtl92e_set_key._entry_ptr, ptr @rtl92e_set_key._entry_ptr.10, ptr @rtl92e_set_swcam._entry, ptr @rtl92e_set_swcam._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @rtl92e_cam_restore.CAM_CONST_ADDR, ptr @rtl92e_cam_restore.CAM_CONST_BROAD, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_enable_hw_security_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_swcam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_key._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_cam_restore.CAM_CONST_ADDR to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_cam_restore.CAM_CONST_BROAD to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_cam_restore._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_cam_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 160, i32 noundef -1073741824) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_enable_hw_security_config(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %pairwise_key_type = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %pairwise_key_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pairwise_key_type, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.if.else_crit_edge [
    i16 1, label %entry.land.lhs.true_crit_edge
    i16 5, label %entry.land.lhs.true_crit_edge66
  ]

entry.land.lhs.true_crit_edge66:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge66
  %auth_mode = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 64
  %5 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp7.not = icmp eq i32 %6, 2
  br i1 %cmp7.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %iw_mode = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 56
  %7 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp14 = icmp eq i32 %8, 1
  br i1 %cmp14, label %land.lhs.true16, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

land.lhs.true16:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %9 = and i16 %3, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  %spec.select = select i1 %tobool.not, i8 12, i8 15
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true16, %if.else.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge
  %SECR_value.0 = phi i8 [ 12, %if.else.if.end26_crit_edge ], [ 15, %land.lhs.true.if.end26_crit_edge ], [ %spec.select, %land.lhs.true16 ]
  %hwsec_active = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %hwsec_active to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %hwsec_active, align 2
  %pHTInfo = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 27
  %11 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pHTInfo, align 8
  %IOTAction = getelementptr inbounds %struct.rt_hi_throughput, ptr %12, i32 0, i32 51
  %13 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %IOTAction, align 1
  %and27 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %lor.lhs.false29, label %if.end26.if.then31_crit_edge

if.end26.if.then31_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then31

lor.lhs.false29:                                  ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hwwep to i32))
  %15 = load i32, ptr @hwwep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool30.not = icmp eq i32 %15, 0
  br i1 %tobool30.not, label %lor.lhs.false29.if.then31_crit_edge, label %lor.lhs.false29.do.body_crit_edge

lor.lhs.false29.do.body_crit_edge:                ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false29.if.then31_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false29.if.then31_crit_edge, %if.end26.if.then31_crit_edge
  %16 = ptrtoint ptr %hwsec_active to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %hwsec_active, align 2
  %17 = and i8 %SECR_value.0, 7
  br label %do.body

do.body:                                          ; preds = %if.then31, %lor.lhs.false29.do.body_crit_edge
  %SECR_value.1 = phi i8 [ %17, %if.then31 ], [ %SECR_value.0, %lor.lhs.false29.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %18 = load i32, ptr @rt_global_debug_component, align 4
  %and37 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body.do.end49_crit_edge, label %do.end

do.body.do.end49_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end49

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %hwsec_active to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hwsec_active, align 2
  %conv42 = zext i8 %20 to i32
  %conv44 = zext i16 %3 to i32
  %conv45 = zext i8 %SECR_value.1 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv42, i32 noundef %conv44, i32 noundef %conv45) #6
  br label %do.end49

do.end49:                                         ; preds = %do.end, %do.body.do.end49_crit_edge
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 176, i8 noundef zeroext %SECR_value.1) #3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_writeb(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_set_swcam(ptr nocapture noundef readonly %dev, i8 noundef zeroext %EntryNo, i8 noundef zeroext %KeyIndex, i16 noundef zeroext %KeyType, ptr nocapture noundef readonly %MacAddr, i8 noundef zeroext %DefaultKey, ptr nocapture noundef readonly %KeyContent, i8 noundef zeroext %is_mesh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %2 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i8 %EntryNo to i32
  %conv2 = zext i8 %KeyIndex to i32
  %conv3 = zext i16 %KeyType to i32
  %conv4 = zext i8 %is_mesh to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4) #6
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %EntryNo)
  %cmp = icmp ult i8 %EntryNo, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_mesh)
  %tobool12.not = icmp eq i8 %is_mesh, 0
  %or.cond = and i1 %cmp, %tobool12.not
  br i1 %or.cond, label %if.then13, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then13:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #5
  %conv8 = zext i8 %EntryNo to i32
  %arrayidx = getelementptr %struct.rtllib_device, ptr %1, i32 0, i32 82, i32 %conv8
  %bused = getelementptr %struct.rtllib_device, ptr %1, i32 0, i32 82, i32 %conv8, i32 1
  %3 = ptrtoint ptr %bused to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %bused, align 2
  %key_index = getelementptr %struct.rtllib_device, ptr %1, i32 0, i32 82, i32 %conv8, i32 5
  %4 = ptrtoint ptr %key_index to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %KeyIndex, ptr %key_index, align 1
  %key_type = getelementptr %struct.rtllib_device, ptr %1, i32 0, i32 82, i32 %conv8, i32 3
  %5 = ptrtoint ptr %key_type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %KeyType, ptr %key_type, align 4
  %6 = call ptr @memcpy(ptr %arrayidx, ptr %MacAddr, i32 6)
  %useDK = getelementptr %struct.rtllib_device, ptr %1, i32 0, i32 82, i32 %conv8, i32 4
  %7 = ptrtoint ptr %useDK to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %DefaultKey, ptr %useDK, align 2
  %key_buf = getelementptr %struct.rtllib_device, ptr %1, i32 0, i32 82, i32 %conv8, i32 2
  %8 = call ptr @memcpy(ptr %key_buf, ptr %KeyContent, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext %EntryNo, i8 noundef zeroext %KeyIndex, i16 noundef zeroext %KeyType, ptr noundef %MacAddr, i8 noundef zeroext %DefaultKey, ptr noundef readonly %KeyContent) local_unnamed_addr #0 align 64 {
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
  %3 = load i8, ptr %PowerSaveControl, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then:                                          ; preds = %entry
  %eRFPowerState = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %eRFPowerState to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eRFPowerState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then2, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

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
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.rtl92e_set_key) #6
  br label %cleanup

if.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  %ips_mutex = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 123
  tail call void @mutex_lock_nested(ptr noundef %ips_mutex, i32 noundef 0) #3
  tail call void @rtl92e_ips_leave(ptr noundef %dev) #3
  %8 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtllib, align 8
  %ips_mutex8 = getelementptr inbounds %struct.rtllib_device, ptr %9, i32 0, i32 123
  tail call void @mutex_unlock(ptr noundef %ips_mutex8) #3
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %10 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtllib, align 8
  %is_set_key = getelementptr inbounds %struct.rtllib_device, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %is_set_key to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %is_set_key, align 4
  %conv = zext i8 %EntryNo to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %EntryNo)
  %cmp12 = icmp ugt i8 %EntryNo, 31
  br i1 %cmp12, label %if.then14, label %do.body

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rtl92e_set_key) #6
  br label %cleanup

do.body:                                          ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %13 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.body.do.end25_crit_edge, label %do.end

do.body.do.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %conv20 = zext i8 %KeyIndex to i32
  %conv21 = zext i16 %KeyType to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtl92e_set_key, ptr noundef %dev, i32 noundef %conv, i32 noundef %conv20, i32 noundef %conv21, ptr noundef %MacAddr) #6
  br label %do.end25

do.end25:                                         ; preds = %do.end, %do.body.do.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %DefaultKey)
  %tobool26.not = icmp eq i8 %DefaultKey, 0
  %shl = shl i16 %KeyType, 2
  %narrow = select i1 %tobool26.not, i8 %KeyIndex, i8 0
  %or34 = zext i8 %narrow to i16
  %usConfig.0.in = or i16 %shl, %or34
  %usConfig.0 = or i16 %usConfig.0.in, -32768
  %mul = shl nuw nsw i32 %conv, 3
  %add.ptr64 = getelementptr i8, ptr %MacAddr, i32 2
  %add.ptr66 = getelementptr i8, ptr %MacAddr, i32 3
  %add.ptr70 = getelementptr i8, ptr %MacAddr, i32 4
  %add.ptr74 = getelementptr i8, ptr %MacAddr, i32 5
  %add.ptr53 = getelementptr i8, ptr %MacAddr, i32 1
  %conv57 = zext i16 %usConfig.0 to i32
  %cmp79.not = icmp eq ptr %KeyContent, null
  %add.ptr83 = getelementptr i32, ptr %KeyContent, i32 -2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end25
  %indvars.iv = phi i32 [ 0, %do.end25 ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %i.0145 = phi i8 [ 0, %do.end25 ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %indvars.iv, %mul
  %or46 = or i32 %add, -2147418112
  %trunc = trunc i8 %i.0145 to i7
  %14 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.15)
  switch i7 %trunc, label %if.else78 [
    i7 0, label %if.then50
    i7 1, label %if.then63
  ]

if.then50:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %MacAddr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %MacAddr, align 1
  %conv51 = zext i8 %16 to i32
  %shl52 = shl nuw nsw i32 %conv51, 16
  %17 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr53, align 1
  %conv54 = zext i8 %18 to i32
  %shl55 = shl nuw i32 %conv54, 24
  %or56 = or i32 %shl52, %conv57
  %or58 = or i32 %or56, %shl55
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 164, i32 noundef %or58) #3
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 160, i32 noundef %or46) #3
  br label %for.inc

if.then63:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr64, align 1
  %conv65 = zext i8 %20 to i32
  %21 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr66, align 1
  %conv67 = zext i8 %22 to i32
  %shl68 = shl nuw nsw i32 %conv67, 8
  %or69 = or i32 %shl68, %conv65
  %23 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr70, align 1
  %conv71 = zext i8 %24 to i32
  %shl72 = shl nuw nsw i32 %conv71, 16
  %or73 = or i32 %or69, %shl72
  %25 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr74, align 1
  %conv75 = zext i8 %26 to i32
  %shl76 = shl nuw i32 %conv75, 24
  %or77 = or i32 %or73, %shl76
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 164, i32 noundef %or77) #3
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 160, i32 noundef %or46) #3
  br label %for.inc

if.else78:                                        ; preds = %for.body
  br i1 %cmp79.not, label %if.else78.for.inc_crit_edge, label %if.then81

if.else78.for.inc_crit_edge:                      ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then81:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr84 = getelementptr i32, ptr %add.ptr83, i32 %indvars.iv
  %27 = ptrtoint ptr %add.ptr84 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr84, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 164, i32 noundef %28) #3
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 160, i32 noundef %or46) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 21474800) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then81, %if.else78.for.inc_crit_edge, %if.then63, %if.then50
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %inc = add nuw nsw i8 %i.0145, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %do.body88, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

do.body88:                                        ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %30 = load i32, ptr @rt_global_debug_component, align 4
  %and89 = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body88.cleanup_crit_edge, label %do.end94

do.body88.cleanup_crit_edge:                      ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end94:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #5
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv57) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end94, %do.body88.cleanup_crit_edge, %if.then14, %if.then5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_ips_leave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_cam_restore(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %current_network = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %2 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #6
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtllib, align 8
  %pairwise_key_type = getelementptr inbounds %struct.rtllib_device, ptr %4, i32 0, i32 79
  %5 = ptrtoint ptr %pairwise_key_type to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pairwise_key_type, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %6, label %do.end4.if.end87_crit_edge [
    i16 1, label %do.end4.if.then12_crit_edge
    i16 5, label %do.end4.if.then12_crit_edge265
    i16 2, label %if.then35
    i16 4, label %if.then62
  ]

do.end4.if.then12_crit_edge265:                   ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then12

do.end4.if.then12_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then12

do.end4.if.end87_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end87

if.then12:                                        ; preds = %do.end4.if.then12_crit_edge, %do.end4.if.then12_crit_edge265
  %8 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtllib, align 8
  %bused = getelementptr %struct.rtllib_device, ptr %9, i32 0, i32 82, i32 0, i32 1
  %10 = ptrtoint ptr %bused to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bused, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool20.not = icmp eq i8 %11, 0
  br i1 %tobool20.not, label %if.then12.for.inc_crit_edge, label %if.then21

if.then12.for.inc_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then21:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  %pairwise_key_type23 = getelementptr inbounds %struct.rtllib_device, ptr %9, i32 0, i32 79
  %12 = ptrtoint ptr %pairwise_key_type23 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pairwise_key_type23, align 2
  %key_buf = getelementptr %struct.rtllib_device, ptr %9, i32 0, i32 82, i32 0, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 0, i16 noundef zeroext %13, ptr noundef nonnull @rtl92e_cam_restore.CAM_CONST_ADDR, i8 noundef zeroext 0, ptr noundef %key_buf)
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %if.then12.for.inc_crit_edge
  %14 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtllib, align 8
  %bused.1 = getelementptr %struct.rtllib_device, ptr %15, i32 0, i32 82, i32 1, i32 1
  %16 = ptrtoint ptr %bused.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bused.1, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool20.not.1 = icmp eq i8 %17, 0
  br i1 %tobool20.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then21.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1

if.then21.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %pairwise_key_type23.1 = getelementptr inbounds %struct.rtllib_device, ptr %15, i32 0, i32 79
  %18 = ptrtoint ptr %pairwise_key_type23.1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pairwise_key_type23.1, align 2
  %key_buf.1 = getelementptr %struct.rtllib_device, ptr %15, i32 0, i32 82, i32 1, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 1, i16 noundef zeroext %19, ptr noundef getelementptr inbounds ([4 x [6 x i8]], ptr @rtl92e_cam_restore.CAM_CONST_ADDR, i32 0, i32 1), i8 noundef zeroext 0, ptr noundef %key_buf.1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then21.1, %for.inc.for.inc.1_crit_edge
  %20 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rtllib, align 8
  %bused.2 = getelementptr %struct.rtllib_device, ptr %21, i32 0, i32 82, i32 2, i32 1
  %22 = ptrtoint ptr %bused.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bused.2, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool20.not.2 = icmp eq i8 %23, 0
  br i1 %tobool20.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then21.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2

if.then21.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %pairwise_key_type23.2 = getelementptr inbounds %struct.rtllib_device, ptr %21, i32 0, i32 79
  %24 = ptrtoint ptr %pairwise_key_type23.2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pairwise_key_type23.2, align 2
  %key_buf.2 = getelementptr %struct.rtllib_device, ptr %21, i32 0, i32 82, i32 2, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 2, i16 noundef zeroext %25, ptr noundef getelementptr inbounds ([4 x [6 x i8]], ptr @rtl92e_cam_restore.CAM_CONST_ADDR, i32 0, i32 2), i8 noundef zeroext 0, ptr noundef %key_buf.2)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then21.2, %for.inc.1.for.inc.2_crit_edge
  %26 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtllib, align 8
  %bused.3 = getelementptr %struct.rtllib_device, ptr %27, i32 0, i32 82, i32 3, i32 1
  %28 = ptrtoint ptr %bused.3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bused.3, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool20.not.3 = icmp eq i8 %29, 0
  br i1 %tobool20.not.3, label %for.inc.2.if.end87_crit_edge, label %if.then21.3

for.inc.2.if.end87_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end87

if.then21.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  %pairwise_key_type23.3 = getelementptr inbounds %struct.rtllib_device, ptr %27, i32 0, i32 79
  %30 = ptrtoint ptr %pairwise_key_type23.3 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pairwise_key_type23.3, align 2
  %key_buf.3 = getelementptr %struct.rtllib_device, ptr %27, i32 0, i32 82, i32 3, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext 3, i16 noundef zeroext %31, ptr noundef getelementptr inbounds ([4 x [6 x i8]], ptr @rtl92e_cam_restore.CAM_CONST_ADDR, i32 0, i32 3), i8 noundef zeroext 0, ptr noundef %key_buf.3)
  br label %if.end87

if.then35:                                        ; preds = %do.end4
  %iw_mode = getelementptr inbounds %struct.rtllib_device, ptr %4, i32 0, i32 56
  %32 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp37 = icmp eq i32 %33, 1
  br i1 %cmp37, label %if.then39, label %if.else47

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #5
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %34 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_addr, align 64
  %key_buf45 = getelementptr %struct.rtllib_device, ptr %4, i32 0, i32 82, i32 4, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %35, i8 noundef zeroext 0, ptr noundef %key_buf45)
  br label %if.end87

if.else47:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #5
  %key_buf53 = getelementptr %struct.rtllib_device, ptr %4, i32 0, i32 82, i32 4, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %current_network, i8 noundef zeroext 0, ptr noundef %key_buf53)
  br label %if.end87

if.then62:                                        ; preds = %do.end4
  %iw_mode64 = getelementptr inbounds %struct.rtllib_device, ptr %4, i32 0, i32 56
  %36 = ptrtoint ptr %iw_mode64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iw_mode64, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp65 = icmp eq i32 %37, 1
  br i1 %cmp65, label %if.then67, label %if.else76

if.then67:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #5
  %dev_addr70 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %38 = ptrtoint ptr %dev_addr70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr70, align 64
  %key_buf74 = getelementptr %struct.rtllib_device, ptr %4, i32 0, i32 82, i32 4, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef %39, i8 noundef zeroext 0, ptr noundef %key_buf74)
  br label %if.end87

if.else76:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #5
  %key_buf82 = getelementptr %struct.rtllib_device, ptr %4, i32 0, i32 82, i32 4, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef %current_network, i8 noundef zeroext 0, ptr noundef %key_buf82)
  br label %if.end87

if.end87:                                         ; preds = %if.else76, %if.then67, %if.else47, %if.then39, %if.then21.3, %for.inc.2.if.end87_crit_edge, %do.end4.if.end87_crit_edge
  %40 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rtllib, align 8
  %group_key_type = getelementptr inbounds %struct.rtllib_device, ptr %41, i32 0, i32 80
  %42 = ptrtoint ptr %group_key_type to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %group_key_type, align 4
  %44 = zext i16 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %43, label %if.end87.cleanup_crit_edge [
    i16 2, label %for.body97.preheader
    i16 4, label %for.body149.preheader
  ]

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body149.preheader:                            ; preds = %if.end87
  %45 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rtllib, align 8
  %bused154 = getelementptr %struct.rtllib_device, ptr %46, i32 0, i32 82, i32 1, i32 1
  %47 = ptrtoint ptr %bused154 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bused154, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool155.not = icmp eq i8 %48, 0
  br i1 %tobool155.not, label %for.body149.preheader.for.inc166_crit_edge, label %if.then156

for.body149.preheader.for.inc166_crit_edge:       ; preds = %for.body149.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc166

for.body97.preheader:                             ; preds = %if.end87
  %49 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rtllib, align 8
  %bused102 = getelementptr %struct.rtllib_device, ptr %50, i32 0, i32 82, i32 1, i32 1
  %51 = ptrtoint ptr %bused102 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bused102, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool103.not = icmp eq i8 %52, 0
  br i1 %tobool103.not, label %for.body97.preheader.for.inc114_crit_edge, label %if.then104

for.body97.preheader.for.inc114_crit_edge:        ; preds = %for.body97.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc114

if.then104:                                       ; preds = %for.body97.preheader
  call void @__sanitizer_cov_trace_pc() #5
  %group_key_type106 = getelementptr inbounds %struct.rtllib_device, ptr %50, i32 0, i32 80
  %53 = ptrtoint ptr %group_key_type106 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %group_key_type106, align 4
  %key_buf111 = getelementptr %struct.rtllib_device, ptr %50, i32 0, i32 82, i32 1, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 1, i16 noundef zeroext %54, ptr noundef nonnull @rtl92e_cam_restore.CAM_CONST_BROAD, i8 noundef zeroext 0, ptr noundef %key_buf111)
  br label %for.inc114

for.inc114:                                       ; preds = %if.then104, %for.body97.preheader.for.inc114_crit_edge
  %55 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rtllib, align 8
  %bused102.1 = getelementptr %struct.rtllib_device, ptr %56, i32 0, i32 82, i32 2, i32 1
  %57 = ptrtoint ptr %bused102.1 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bused102.1, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool103.not.1 = icmp eq i8 %58, 0
  br i1 %tobool103.not.1, label %for.inc114.for.inc114.1_crit_edge, label %if.then104.1

for.inc114.for.inc114.1_crit_edge:                ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc114.1

if.then104.1:                                     ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #5
  %group_key_type106.1 = getelementptr inbounds %struct.rtllib_device, ptr %56, i32 0, i32 80
  %59 = ptrtoint ptr %group_key_type106.1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %group_key_type106.1, align 4
  %key_buf111.1 = getelementptr %struct.rtllib_device, ptr %56, i32 0, i32 82, i32 2, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 2, i16 noundef zeroext %60, ptr noundef nonnull @rtl92e_cam_restore.CAM_CONST_BROAD, i8 noundef zeroext 0, ptr noundef %key_buf111.1)
  br label %for.inc114.1

for.inc114.1:                                     ; preds = %if.then104.1, %for.inc114.for.inc114.1_crit_edge
  %61 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rtllib, align 8
  %bused102.2 = getelementptr %struct.rtllib_device, ptr %62, i32 0, i32 82, i32 3, i32 1
  %63 = ptrtoint ptr %bused102.2 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bused102.2, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool103.not.2 = icmp eq i8 %64, 0
  br i1 %tobool103.not.2, label %for.inc114.1.for.inc114.2_crit_edge, label %if.then104.2

for.inc114.1.for.inc114.2_crit_edge:              ; preds = %for.inc114.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc114.2

if.then104.2:                                     ; preds = %for.inc114.1
  call void @__sanitizer_cov_trace_pc() #5
  %group_key_type106.2 = getelementptr inbounds %struct.rtllib_device, ptr %62, i32 0, i32 80
  %65 = ptrtoint ptr %group_key_type106.2 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %group_key_type106.2, align 4
  %key_buf111.2 = getelementptr %struct.rtllib_device, ptr %62, i32 0, i32 82, i32 3, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext 3, i16 noundef zeroext %66, ptr noundef nonnull @rtl92e_cam_restore.CAM_CONST_BROAD, i8 noundef zeroext 0, ptr noundef %key_buf111.2)
  br label %for.inc114.2

for.inc114.2:                                     ; preds = %if.then104.2, %for.inc114.1.for.inc114.2_crit_edge
  %67 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rtllib, align 8
  %iw_mode118 = getelementptr inbounds %struct.rtllib_device, ptr %68, i32 0, i32 56
  %69 = ptrtoint ptr %iw_mode118 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %iw_mode118, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp119 = icmp eq i32 %70, 1
  br i1 %cmp119, label %if.then121, label %for.inc114.2.cleanup_crit_edge

for.inc114.2.cleanup_crit_edge:                   ; preds = %for.inc114.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then121:                                       ; preds = %for.inc114.2
  %bused125 = getelementptr inbounds %struct.rtllib_device, ptr %68, i32 0, i32 82, i32 0, i32 1
  %71 = ptrtoint ptr %bused125 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %bused125, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool126.not = icmp eq i8 %72, 0
  br i1 %tobool126.not, label %if.else135, label %if.then127

if.then127:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #5
  %group_key_type129 = getelementptr inbounds %struct.rtllib_device, ptr %68, i32 0, i32 80
  %73 = ptrtoint ptr %group_key_type129 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %group_key_type129, align 4
  %key_buf133 = getelementptr inbounds %struct.rtllib_device, ptr %68, i32 0, i32 82, i32 0, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 0, i16 noundef zeroext %74, ptr noundef nonnull @rtl92e_cam_restore.CAM_CONST_ADDR, i8 noundef zeroext 0, ptr noundef %key_buf133)
  br label %cleanup

if.else135:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12) #6
  br label %cleanup

if.then156:                                       ; preds = %for.body149.preheader
  call void @__sanitizer_cov_trace_pc() #5
  %group_key_type158 = getelementptr inbounds %struct.rtllib_device, ptr %46, i32 0, i32 80
  %75 = ptrtoint ptr %group_key_type158 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %group_key_type158, align 4
  %key_buf163 = getelementptr %struct.rtllib_device, ptr %46, i32 0, i32 82, i32 1, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 1, i16 noundef zeroext %76, ptr noundef nonnull @rtl92e_cam_restore.CAM_CONST_BROAD, i8 noundef zeroext 0, ptr noundef %key_buf163)
  br label %for.inc166

for.inc166:                                       ; preds = %if.then156, %for.body149.preheader.for.inc166_crit_edge
  %77 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rtllib, align 8
  %bused154.1 = getelementptr %struct.rtllib_device, ptr %78, i32 0, i32 82, i32 2, i32 1
  %79 = ptrtoint ptr %bused154.1 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bused154.1, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool155.not.1 = icmp eq i8 %80, 0
  br i1 %tobool155.not.1, label %for.inc166.for.inc166.1_crit_edge, label %if.then156.1

for.inc166.for.inc166.1_crit_edge:                ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc166.1

if.then156.1:                                     ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #5
  %group_key_type158.1 = getelementptr inbounds %struct.rtllib_device, ptr %78, i32 0, i32 80
  %81 = ptrtoint ptr %group_key_type158.1 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %group_key_type158.1, align 4
  %key_buf163.1 = getelementptr %struct.rtllib_device, ptr %78, i32 0, i32 82, i32 2, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 2, i16 noundef zeroext %82, ptr noundef nonnull @rtl92e_cam_restore.CAM_CONST_BROAD, i8 noundef zeroext 0, ptr noundef %key_buf163.1)
  br label %for.inc166.1

for.inc166.1:                                     ; preds = %if.then156.1, %for.inc166.for.inc166.1_crit_edge
  %83 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rtllib, align 8
  %bused154.2 = getelementptr %struct.rtllib_device, ptr %84, i32 0, i32 82, i32 3, i32 1
  %85 = ptrtoint ptr %bused154.2 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bused154.2, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool155.not.2 = icmp eq i8 %86, 0
  br i1 %tobool155.not.2, label %for.inc166.1.for.inc166.2_crit_edge, label %if.then156.2

for.inc166.1.for.inc166.2_crit_edge:              ; preds = %for.inc166.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc166.2

if.then156.2:                                     ; preds = %for.inc166.1
  call void @__sanitizer_cov_trace_pc() #5
  %group_key_type158.2 = getelementptr inbounds %struct.rtllib_device, ptr %84, i32 0, i32 80
  %87 = ptrtoint ptr %group_key_type158.2 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %group_key_type158.2, align 4
  %key_buf163.2 = getelementptr %struct.rtllib_device, ptr %84, i32 0, i32 82, i32 3, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext 3, i16 noundef zeroext %88, ptr noundef nonnull @rtl92e_cam_restore.CAM_CONST_BROAD, i8 noundef zeroext 0, ptr noundef %key_buf163.2)
  br label %for.inc166.2

for.inc166.2:                                     ; preds = %if.then156.2, %for.inc166.1.for.inc166.2_crit_edge
  %89 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rtllib, align 8
  %iw_mode170 = getelementptr inbounds %struct.rtllib_device, ptr %90, i32 0, i32 56
  %91 = ptrtoint ptr %iw_mode170 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %iw_mode170, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp171 = icmp eq i32 %92, 1
  br i1 %cmp171, label %if.then173, label %for.inc166.2.cleanup_crit_edge

for.inc166.2.cleanup_crit_edge:                   ; preds = %for.inc166.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then173:                                       ; preds = %for.inc166.2
  %bused177 = getelementptr inbounds %struct.rtllib_device, ptr %90, i32 0, i32 82, i32 0, i32 1
  %93 = ptrtoint ptr %bused177 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bused177, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool178.not = icmp eq i8 %94, 0
  br i1 %tobool178.not, label %if.else187, label %if.then179

if.then179:                                       ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #5
  %group_key_type181 = getelementptr inbounds %struct.rtllib_device, ptr %90, i32 0, i32 80
  %95 = ptrtoint ptr %group_key_type181 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %group_key_type181, align 4
  %key_buf185 = getelementptr inbounds %struct.rtllib_device, ptr %90, i32 0, i32 82, i32 0, i32 2
  tail call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 0, i16 noundef zeroext %96, ptr noundef nonnull @rtl92e_cam_restore.CAM_CONST_ADDR, i8 noundef zeroext 0, ptr noundef %key_buf185)
  br label %cleanup

if.else187:                                       ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else187, %if.then179, %for.inc166.2.cleanup_crit_edge, %if.else135, %if.then127, %for.inc114.2.cleanup_crit_edge, %if.end87.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !17, !19, !20, !21, !23, !24, !25, !27, !29, !31, !32, !33, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_cam.c", i32 50, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl92e_enable_hw_security_config._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl92e_enable_hw_security_config._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_cam.c", i32 63, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rtl92e_set_swcam._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @rtl92e_set_swcam._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_cam.c", i32 95, i32 22}
!13 = !{ptr @__func__.rtl92e_set_key, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_cam.c", i32 96, i32 10}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_cam.c", i32 106, i32 20}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_cam.c", i32 110, i32 2}
!19 = !{ptr @rtl92e_set_key._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @rtl92e_set_key._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_cam.c", i32 147, i32 2}
!23 = !{ptr @rtl92e_set_key._entry.8, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @rtl92e_set_key._entry_ptr.10, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @rtl92e_cam_restore.CAM_CONST_ADDR, !26, !"CAM_CONST_ADDR", i1 false, i1 false}
!26 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_cam.c", i32 156, i32 12}
!27 = !{ptr @rtl92e_cam_restore.CAM_CONST_BROAD, !28, !"CAM_CONST_BROAD", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_cam.c", i32 162, i32 12}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_cam.c", i32 166, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rtl92e_cam_restore._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @rtl92e_cam_restore._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_cam.c", i32 227, i32 10}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_cam.c", i32 251, i32 10}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i8 0, i8 2}
