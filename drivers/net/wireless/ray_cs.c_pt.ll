; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ray_cs.c_pt.bc'
source_filename = "../drivers/net/wireless/ray_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iw_handler_def = type { ptr, i16, i16, i16, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iw_priv_args = type { i32, i16, i16, [16 x i8] }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.scb = type { i8, i8 }
%struct.ccs = type { i8, i8, i8, %union.anon.121 }
%union.anon.121 = type { [13 x i8] }
%struct.start_network_cmd = type { i8, [6 x i8], i8, i8, i8 }
%struct.rcs = type { i8, i8, i8, %union.anon.122 }
%union.anon.122 = type { [13 x i8] }
%struct.ray_dev_t = type { i32, i32, ptr, ptr, ptr, ptr, %struct.timer_list, i32, i32, i32, %union.anon.120, i32, [8 x i8], [12 x i8], %struct.startup_res_6, i32, [6 x i8], [6 x i8], i8, i8, %struct.net_device_stats, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i32, %struct.beacon_rx, %struct.iw_statistics, %struct.iw_spy_data, %struct.iw_public_data }
%union.anon.120 = type { %struct.b5_startup_params }
%struct.b5_startup_params = type { i8, i8, [32 x i8], i8, i8, [6 x i8], [2 x i8], [2 x i8], [2 x i8], i8, i8, i8, i8, i8, i8, [2 x i8], [2 x i8], [2 x i8], i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8] }
%struct.startup_res_6 = type { i8, [6 x i8], i8, [8 x i8], [12 x i8], i8, i8, [3 x i8], i8, i8 }
%struct.beacon_rx = type { %struct.mac_header, [8 x i8], [2 x i8], [2 x i8], [321 x i8] }
%struct.mac_header = type { i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [2 x i8] }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_public_data = type { ptr, ptr }
%struct.join_network_cmd = type { i8, [6 x i8], i8, i8, i8 }
%struct.tx_requested_cmd = type { [2 x i8], [2 x i8], [2 x i8], [3 x i8], i8, i8, i8, i8 }
%struct.tx_msg = type { %struct.tib_structure, %struct.phy_header, %struct.mac_header, [1 x i8] }
%struct.tib_structure = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], i8, [2 x i8], [2 x i8], i8, i8, i8, [2 x i8] }
%struct.phy_header = type { [2 x i8], i8, i8 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.rx_packet_cmd = type { [2 x i8], [2 x i8], i8, i8, [2 x i8] }
%struct.ray_rx_msg = type { %struct.mac_header, [0 x i8] }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.update_param_cmd = type { i8, i8, i8 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.iw_freq = type { i32, i16, i8, i8 }
%struct.iw_point = type { ptr, i16, i16 }
%struct.iw_range = type { i32, i32, i32, i16, i8, i8, [6 x i32], i32, %struct.iw_quality, %struct.iw_quality, i8, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [8 x i16], i8, i8, i8, i16, i8, [8 x i32], i8, i8, i16, i16, i16, i32, i32, i32, i32, i16, i8, [32 x %struct.iw_freq], i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iw_param = type { i32, i8, i8, i16 }
%struct.freq_hop_element = type { i8, i8, [2 x i8], i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.100 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.102 = type { ptr }

@__UNIQUE_ID_author345 = internal constant [49 x i8] c"ray_cs.author=Corey Thomas <corey@world.std.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description346 = internal constant [55 x i8] c"ray_cs.description=Raylink/WebGear wireless LAN driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file347 = internal constant [40 x i8] c"ray_cs.file=drivers/net/wireless/ray_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license348 = internal constant [19 x i8] c"ray_cs.license=GPL\00", section ".modinfo", align 1
@__param_str_net_type = internal constant [16 x i8] c"ray_cs.net_type\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@net_type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_net_type = internal constant %struct.kernel_param { ptr @__param_str_net_type, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @net_type } }, section "__param", align 4
@__UNIQUE_ID_net_typetype349 = internal constant [29 x i8] c"ray_cs.parmtype=net_type:int\00", section ".modinfo", align 1
@__param_str_hop_dwell = internal constant [17 x i8] c"ray_cs.hop_dwell\00", align 1
@hop_dwell = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_hop_dwell = internal constant %struct.kernel_param { ptr @__param_str_hop_dwell, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @hop_dwell } }, section "__param", align 4
@__UNIQUE_ID_hop_dwelltype350 = internal constant [30 x i8] c"ray_cs.parmtype=hop_dwell:int\00", section ".modinfo", align 1
@__param_str_beacon_period = internal constant [21 x i8] c"ray_cs.beacon_period\00", align 1
@beacon_period = internal global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@__param_beacon_period = internal constant %struct.kernel_param { ptr @__param_str_beacon_period, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @beacon_period } }, section "__param", align 4
@__UNIQUE_ID_beacon_periodtype351 = internal constant [34 x i8] c"ray_cs.parmtype=beacon_period:int\00", section ".modinfo", align 1
@__param_str_psm = internal constant [11 x i8] c"ray_cs.psm\00", align 1
@psm = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_psm = internal constant %struct.kernel_param { ptr @__param_str_psm, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @psm } }, section "__param", align 4
@__UNIQUE_ID_psmtype352 = internal constant [24 x i8] c"ray_cs.parmtype=psm:int\00", section ".modinfo", align 1
@__param_str_essid = internal constant [13 x i8] c"ray_cs.essid\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@essid = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_essid = internal constant %struct.kernel_param { ptr @__param_str_essid, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @essid } }, section "__param", align 4
@__UNIQUE_ID_essidtype353 = internal constant [28 x i8] c"ray_cs.parmtype=essid:charp\00", section ".modinfo", align 1
@__param_str_translate = internal constant [17 x i8] c"ray_cs.translate\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@translate = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_translate = internal constant %struct.kernel_param { ptr @__param_str_translate, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @translate } }, section "__param", align 4
@__UNIQUE_ID_translatetype354 = internal constant [31 x i8] c"ray_cs.parmtype=translate:bool\00", section ".modinfo", align 1
@__param_str_country = internal constant [15 x i8] c"ray_cs.country\00", align 1
@country = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_country = internal constant %struct.kernel_param { ptr @__param_str_country, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @country } }, section "__param", align 4
@__UNIQUE_ID_countrytype355 = internal constant [28 x i8] c"ray_cs.parmtype=country:int\00", section ".modinfo", align 1
@__param_str_sniffer = internal constant [15 x i8] c"ray_cs.sniffer\00", align 1
@sniffer = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_sniffer = internal constant %struct.kernel_param { ptr @__param_str_sniffer, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @sniffer } }, section "__param", align 4
@__UNIQUE_ID_sniffertype356 = internal constant [28 x i8] c"ray_cs.parmtype=sniffer:int\00", section ".modinfo", align 1
@__param_str_bc = internal constant [10 x i8] c"ray_cs.bc\00", align 1
@bc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_bc = internal constant %struct.kernel_param { ptr @__param_str_bc, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @bc } }, section "__param", align 4
@__UNIQUE_ID_bctype357 = internal constant [23 x i8] c"ray_cs.parmtype=bc:int\00", section ".modinfo", align 1
@__param_str_phy_addr = internal constant [16 x i8] c"ray_cs.phy_addr\00", align 1
@phy_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_phy_addr = internal constant %struct.kernel_param { ptr @__param_str_phy_addr, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @phy_addr } }, section "__param", align 4
@__UNIQUE_ID_phy_addrtype358 = internal constant [31 x i8] c"ray_cs.parmtype=phy_addr:charp\00", section ".modinfo", align 1
@__param_str_ray_mem_speed = internal constant [21 x i8] c"ray_cs.ray_mem_speed\00", align 1
@ray_mem_speed = internal global { i32, [28 x i8] } { i32 500, [28 x i8] zeroinitializer }, align 32
@__param_ray_mem_speed = internal constant %struct.kernel_param { ptr @__param_str_ray_mem_speed, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @ray_mem_speed } }, section "__param", align 4
@__UNIQUE_ID_ray_mem_speedtype359 = internal constant [34 x i8] c"ray_cs.parmtype=ray_mem_speed:int\00", section ".modinfo", align 1
@exit_ray_cs.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ray_cs\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exit_ray_cs\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/wireless/ray_cs.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ray_cs: cleanup_module\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"driver/ray_cs\00", [18 x i8] zeroinitializer }, align 32
@ray_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @ray_probe, ptr @ray_detach, ptr @ray_suspend, ptr @ray_resume, ptr null, ptr @ray_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_ray_cs__494_2814_init_ray_cs6 = internal global ptr @init_ray_cs, section ".initcall6.init", align 4
@__exitcall_exit_ray_cs = internal global ptr @exit_ray_cs, section ".exitcall.exit", align 4
@ray_ids = internal constant { [2 x %struct.pcmcia_device_id], [56 x i8] } { [2 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 3, i16 422, i16 0, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ray_probe.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ray_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ray_attach()\0A\00", [18 x i8] zeroinitializer }, align 32
@ray_probe.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ray_attach p_dev = %p,  dev = %p,  local = %p, intr = %p\0A\00", [38 x i8] zeroinitializer }, align 32
@ray_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @ray_dev_init, ptr null, ptr @ray_open, ptr @ray_dev_close, ptr @ray_dev_start_xmit, ptr null, ptr null, ptr null, ptr @set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ray_dev_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ray_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ray_handler_def = internal constant { %struct.iw_handler_def, [40 x i8] } { %struct.iw_handler_def { ptr @ray_handler, i16 38, i16 4, i16 3, ptr @ray_private_handler, ptr @ray_private_args, ptr @ray_get_wireless_stats }, [40 x i8] zeroinitializer }, align 32
@ray_probe.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ray_cs ray_attach calling ether_setup.)\0A\00", [55 x i8] zeroinitializer }, align 32
@ray_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&local->timer)\00", [16 x i8] zeroinitializer }, align 32
@this_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ray_interrupt.__UNIQUE_ID_ddebug429 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 1, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ray_interrupt\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ray_cs: interrupt for *dev=%p\0A\00", [33 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 1, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ray_cs interrupt from device not present or suspended.\0A\00", [40 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug431 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.13, i8 1, i8 -49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ray_cs interrupt bad rcsindex = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug432 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.14, i8 1, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ray_cs interrupt download_startup_parameters OK\0A\00", [47 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug433 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.15, i8 1, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ray_cs interrupt download_startup_parameters fail\0A\00", [45 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug434 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.16, i8 1, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ray_cs interrupt update params done\0A\00", [59 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug435 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.17, i8 1, i8 -42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ray_cs interrupt update params failed - reason %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug436 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.18, i8 1, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ray_cs interrupt report params done\0A\00", [59 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug437 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.19, i8 1, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ray_cs interrupt CCS Update Multicast List done\0A\00", [47 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug438 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.20, i8 1, i8 -39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ray_cs interrupt update power save mode done\0A\00", [50 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug439 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.21, i8 1, i8 -36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ray_cs interrupt network \22%s\22 started\0A\00", [57 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug440 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.22, i8 1, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ray_cs interrupt network \22%s\22 joined\0A\00", [58 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ray_interrupt.__UNIQUE_ID_ddebug441 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.23, i8 1, i8 -28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ray_cs interrupt network \22%s\22 start failed\0A\00", [52 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug442 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.24, i8 1, i8 -27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ray_cs interrupt network \22%s\22 join failed\0A\00", [53 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug443 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.25, i8 1, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ray_cs association successful\0A\00", [33 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug444 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.26, i8 1, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ray_cs association failed,\0A\00", [36 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug445 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.27, i8 1, i8 -22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ray_cs interrupt tx request complete\0A\00", [58 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug446 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.28, i8 1, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ray_cs interrupt tx request failed\0A\00", [60 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug447 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.29, i8 1, i8 -20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ray_cs interrupt mem test done\0A\00", [32 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug448 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.30, i8 1, i8 -19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ray_cs interrupt Unexpected CCS returned - Shutdown\0A\00", [43 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug449 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.31, i8 1, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ray_cs interrupt dump memory done\0A\00", [61 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug450 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.32, i8 1, i8 -17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ray_cs interrupt DING - raylink timer expired\0A\00", [49 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug451 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.33, i8 1, i8 -16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ray_cs interrupt Unexpected CCS 0x%x returned 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug452 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.34, i8 1, i8 -13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ray_cs interrupt rejoin net complete\0A\00", [58 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug453 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.35, i8 1, i8 -10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ray_cs new BSSID = %pm\0A\00", [40 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug454 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.36, i8 1, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ray_cs interrupt roaming initiated\0A\00", [60 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug455 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.37, i8 1, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ray_cs interrupt japan call sign rx\0A\00", [59 x i8] zeroinitializer }, align 32
@ray_interrupt.__UNIQUE_ID_ddebug456 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.38, i8 1, i8 -6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ray_cs Unexpected interrupt for RCS 0x%x cmd = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@authenticate.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 2, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"authenticate\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ray_cs Starting authentication.\0A\00", [63 x i8] zeroinitializer }, align 32
@authenticate.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 2, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ray_cs authenticate - device not present\0A\00", [54 x i8] zeroinitializer }, align 32
@build_auth_frame.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 2, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"build_auth_frame\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ray_cs send authenticate - No free tx ccs\0A\00", [53 x i8] zeroinitializer }, align 32
@build_auth_frame.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.44, i8 2, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"ray_cs send authentication request failed - ECF not ready for intr\0A\00", [60 x i8] zeroinitializer }, align 32
@get_free_tx_ccs.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 1, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_free_tx_ccs\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ray_cs get_free_tx_ccs - device not present\0A\00", [51 x i8] zeroinitializer }, align 32
@get_free_tx_ccs.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 1, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ray_cs tx_ccs_lock busy\0A\00", [39 x i8] zeroinitializer }, align 32
@get_free_tx_ccs.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.48, i8 1, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ray_cs ERROR no free tx CCS for raylink card\0A\00", [50 x i8] zeroinitializer }, align 32
@interrupt_ecf.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 1, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"interrupt_ecf\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ray_cs interrupt_ecf - device not present\0A\00", [53 x i8] zeroinitializer }, align 32
@interrupt_ecf.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.51, i8 1, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"interrupt_ecf(local=%p, ccs = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@interrupt_ecf.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.52, i8 1, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ray_cs interrupt_ecf card not ready for interrupt\0A\00", [45 x i8] zeroinitializer }, align 32
@authenticate_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 1633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016ray_cs Authentication with access point failed - timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"authenticate_timeout\00", [43 x i8] zeroinitializer }, align 32
@authenticate_timeout._entry_ptr = internal global ptr @authenticate_timeout._entry, section ".printk_index", align 4
@start_net.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"start_net\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ray_cs start_net - device not present\0A\00", [57 x i8] zeroinitializer }, align 32
@start_net.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.57, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ray start net failed - card not ready for intr\0A\00", [48 x i8] zeroinitializer }, align 32
@get_free_ccs.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 1, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_free_ccs\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ray_cs get_free_ccs - device not present\0A\00", [54 x i8] zeroinitializer }, align 32
@get_free_ccs.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.60, i8 1, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ray_cs ccs_lock busy\0A\00", [42 x i8] zeroinitializer }, align 32
@get_free_ccs.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.61, i8 1, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ray_cs ERROR no free CCS for raylink card\0A\00", [53 x i8] zeroinitializer }, align 32
@join_net.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"join_net\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ray_cs join_net - device not present\0A\00", [58 x i8] zeroinitializer }, align 32
@join_net.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.64, i8 0, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ray join net failed - card not ready for intr\0A\00", [49 x i8] zeroinitializer }, align 32
@ray_rx.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 1, i8 -2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ray_rx\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ray_rx process rx packet\0A\00", [38 x i8] zeroinitializer }, align 32
@ray_rx.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.67, i8 2, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ray_rx data type\0A\00", [46 x i8] zeroinitializer }, align 32
@ray_rx.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.68, i8 2, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ray_rx authentic type\0A\00", [41 x i8] zeroinitializer }, align 32
@ray_rx.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.69, i8 2, i8 4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ray_rx deauth type\0A\00", [44 x i8] zeroinitializer }, align 32
@ray_rx.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.70, i8 2, i8 6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ray_cs rx NULL msg\0A\00", [44 x i8] zeroinitializer }, align 32
@ray_rx.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.71, i8 2, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ray_rx beacon type\0A\00", [44 x i8] zeroinitializer }, align 32
@ray_rx.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.72, i8 2, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ray_cs unknown pkt type %2x\0A\00", [35 x i8] zeroinitializer }, align 32
@rx_data.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 2, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx_data\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ray_cs invalid packet length %d received\0A\00", [54 x i8] zeroinitializer }, align 32
@rx_data.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 2, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rx_data.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.75, i8 2, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ray_cs rx_data packet\0A\00", [41 x i8] zeroinitializer }, align 32
@rx_data.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.76, i8 2, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ray_cs rx'ed fragment\0A\00", [41 x i8] zeroinitializer }, align 32
@rx_data.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.77, i8 2, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ray_cs rx_data fragment lengths don't add up\0A\00", [50 x i8] zeroinitializer }, align 32
@rx_data.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.78, i8 2, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ray_cs rx_data could not allocate skb\0A\00", [57 x i8] zeroinitializer }, align 32
@rx_data.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.79, i8 2, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ray_cs rx_data total_len = %x, rx_len = %x\0A\00", [52 x i8] zeroinitializer }, align 32
@rx_data.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.80, i8 2, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ray_cs rx_data in fragment loop\0A\00", [63 x i8] zeroinitializer }, align 32
@release_frag_chain.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.13, i8 2, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"release_frag_chain\00", [45 x i8] zeroinitializer }, align 32
@untranslate.org_bridge = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\00\00\F8", [29 x i8] zeroinitializer }, align 32
@untranslate.org_1042 = internal constant { [3 x i8], [29 x i8] } zeroinitializer, align 32
@untranslate.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 2, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"untranslate\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ray_cs untranslate NOT SNAP %02x %02x %02x\0A\00", [52 x i8] zeroinitializer }, align 32
@untranslate.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.84, i8 2, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ray_cs untranslate Bridge encap\0A\00", [63 x i8] zeroinitializer }, align 32
@untranslate.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.85, i8 2, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ray_cs untranslate RFC IPX/AARP\0A\00", [63 x i8] zeroinitializer }, align 32
@untranslate.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.86, i8 2, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ray_cs untranslate RFC default\0A\00", [32 x i8] zeroinitializer }, align 32
@untranslate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.2, i32 2331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ray_cs untranslate very confused by packet\0A\00", [52 x i8] zeroinitializer }, align 32
@untranslate._entry_ptr = internal global ptr @untranslate._entry, section ".printk_index", align 4
@untranslate.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.88, i8 2, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"untranslate after skb_pull(%d), skb->data = %p\0A\00", [48 x i8] zeroinitializer }, align 32
@rx_authenticate.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 2, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_authenticate\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ray_cs rx_auth var= %6ph\0A\00", [38 x i8] zeroinitializer }, align 32
@rx_authenticate.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.91, i8 2, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ray_cs Sending authentication response.\0A\00", [55 x i8] zeroinitializer }, align 32
@rx_authenticate.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.92, i8 2, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Authentication successful\0A\00", [37 x i8] zeroinitializer }, align 32
@rx_authenticate.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.93, i8 2, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Authentication refused\0A\00", [40 x i8] zeroinitializer }, align 32
@associate.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 2, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"associate\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ray_cs associate - device not present\0A\00", [57 x i8] zeroinitializer }, align 32
@associate.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.96, i8 2, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ray_cs associate - No free ccs\0A\00", [32 x i8] zeroinitializer }, align 32
@associate.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.97, i8 2, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ray_cs Starting association with access point\0A\00", [49 x i8] zeroinitializer }, align 32
@associate.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.98, i8 2, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ray_cs associate failed - ECF not ready for intr\0A\00", [46 x i8] zeroinitializer }, align 32
@rx_deauthenticate.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.2, ptr @.str.100, i8 2, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_deauthenticate\00", [46 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Deauthentication frame received\0A\00", [63 x i8] zeroinitializer }, align 32
@ray_get_stats.__UNIQUE_ID_ddebug416 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.102, i8 1, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ray_get_stats\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ray_cs net_device_stats - device not present\0A\00", [50 x i8] zeroinitializer }, align 32
@ray_dev_init.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 0, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ray_dev_init\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ray_dev_init(dev=%p)\0A\00", [42 x i8] zeroinitializer }, align 32
@ray_dev_init.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.105, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ray_dev_init - device not present\0A\00", [61 x i8] zeroinitializer }, align 32
@ray_dev_init.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.106, i8 0, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"ray_dev_init: postponing card init to ray_open() ; Status = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ray_dev_init.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.107, i8 0, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ray_dev_init ending\0A\00", [43 x i8] zeroinitializer }, align 32
@ray_open.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.109, i8 1, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ray_open\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ray_open('%s')\0A\00", [16 x i8] zeroinitializer }, align 32
@ray_open.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.110, i8 1, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ray_open: doing init now !\0A\00", [36 x i8] zeroinitializer }, align 32
@ray_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.108, ptr @.str.2, i32 1496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016ray_dev_init dl_startup_params failed - returns 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@ray_open._entry_ptr = internal global ptr @ray_open._entry, section ".printk_index", align 4
@ray_open.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.112, i8 1, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ray_open ending\0A\00", [47 x i8] zeroinitializer }, align 32
@dl_startup_params.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.2, ptr @.str.114, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dl_startup_params\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dl_startup_params entered\0A\00", [37 x i8] zeroinitializer }, align 32
@dl_startup_params.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.2, ptr @.str.115, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ray_cs dl_startup_params - device not present\0A\00", [49 x i8] zeroinitializer }, align 32
@dl_startup_params.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.2, ptr @.str.116, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dl_startup_params start ccsindex = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@dl_startup_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.113, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016ray dl_startup_params failed - ECF not ready for intr\0A\00", [39 x i8] zeroinitializer }, align 32
@dl_startup_params._entry_ptr = internal global ptr @dl_startup_params._entry, section ".printk_index", align 4
@dl_startup_params.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.2, ptr @.str.118, i8 0, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ray_cs dl_startup_params started timer for verify_dl_startup\0A\00", [34 x i8] zeroinitializer }, align 32
@verify_dl_startup.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.2, ptr @.str.120, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"verify_dl_startup\00", [46 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ray_cs verify_dl_startup - device not present\0A\00", [49 x i8] zeroinitializer }, align 32
@verify_dl_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.2, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016Download startup params failed.  Status = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@verify_dl_startup._entry_ptr = internal global ptr @verify_dl_startup._entry, section ".printk_index", align 4
@ray_dev_close.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.2, ptr @.str.123, i8 1, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ray_dev_close\00", [18 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ray_dev_close('%s')\0A\00", [43 x i8] zeroinitializer }, align 32
@ray_dev_start_xmit.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.124, ptr @.str.2, ptr @.str.125, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ray_dev_start_xmit\00", [45 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ray_dev_start_xmit - device not present\0A\00", [55 x i8] zeroinitializer }, align 32
@ray_dev_start_xmit.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.124, ptr @.str.2, ptr @.str.126, i8 0, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ray_dev_start_xmit(skb=%p, dev=%p)\0A\00", [60 x i8] zeroinitializer }, align 32
@ray_dev_start_xmit.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.124, ptr @.str.2, ptr @.str.127, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ray_cs Sending authentication request.\0A\00", [56 x i8] zeroinitializer }, align 32
@ray_hw_xmit.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.128, ptr @.str.2, ptr @.str.129, i8 0, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ray_hw_xmit\00", [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ray_hw_xmit(data=%p, len=%d, dev=%p)\0A\00", [58 x i8] zeroinitializer }, align 32
@ray_hw_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.2, i32 874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ray_hw_xmit packet too large: %d bytes\0A\00", [54 x i8] zeroinitializer }, align 32
@ray_hw_xmit._entry_ptr = internal global ptr @ray_hw_xmit._entry, section ".printk_index", align 4
@ray_hw_xmit.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.128, ptr @.str.2, ptr @.str.131, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ray_hw_xmit tx_ccs table busy\0A\00", [33 x i8] zeroinitializer }, align 32
@ray_hw_xmit.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.128, ptr @.str.2, ptr @.str.132, i8 0, i8 -36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ray_hw_xmit No free tx ccs\0A\00", [36 x i8] zeroinitializer }, align 32
@ray_hw_xmit.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.128, ptr @.str.2, ptr @.str.133, i8 0, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ray_hw_xmit default_tx_rate = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@ray_hw_xmit.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.128, ptr @.str.2, ptr @.str.134, i8 0, i8 -25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ray_hw_xmit failed - ECF not ready for intr\0A\00", [51 x i8] zeroinitializer }, align 32
@translate_frame.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.2, ptr @.str.136, i8 0, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"translate_frame\00", [16 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ray_cs translate_frame DIX II\0A\00", [33 x i8] zeroinitializer }, align 32
@eth2_llc = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\AA\03\00\00\00", [26 x i8] zeroinitializer }, align 32
@translate_frame.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.2, ptr @.str.137, i8 0, i8 -17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ray_cs translate_frame 802\0A\00", [36 x i8] zeroinitializer }, align 32
@translate_frame.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.2, ptr @.str.138, i8 0, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ray_cs translate_frame evil IPX\0A\00", [63 x i8] zeroinitializer }, align 32
@set_multicast_list.__UNIQUE_ID_ddebug426 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.139, ptr @.str.2, ptr @.str.140, i8 1, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_multicast_list\00", [45 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ray_cs set_multicast_list(%p)\0A\00", [33 x i8] zeroinitializer }, align 32
@set_multicast_list.__UNIQUE_ID_ddebug427 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.139, ptr @.str.2, ptr @.str.141, i8 1, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ray_cs set_multicast_list promisc on\0A\00", [58 x i8] zeroinitializer }, align 32
@set_multicast_list.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.139, ptr @.str.2, ptr @.str.142, i8 1, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ray_cs set_multicast_list promisc off\0A\00", [57 x i8] zeroinitializer }, align 32
@ray_update_parm.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.143, ptr @.str.2, ptr @.str.144, i8 1, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ray_update_parm\00", [16 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ray_update_parm - device not present\0A\00", [58 x i8] zeroinitializer }, align 32
@ray_update_parm.__UNIQUE_ID_ddebug418 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.143, ptr @.str.2, ptr @.str.145, i8 1, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ray_update_parm - No free ccs\0A\00", [33 x i8] zeroinitializer }, align 32
@ray_update_parm.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.143, ptr @.str.2, ptr @.str.98, i8 1, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ray_update_multi_list.__UNIQUE_ID_ddebug420 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.2, ptr @.str.147, i8 1, i8 -76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ray_update_multi_list\00", [42 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ray_update_multi_list - device not present\0A\00", [52 x i8] zeroinitializer }, align 32
@ray_update_multi_list.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.2, ptr @.str.148, i8 1, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ray_update_multi_list(%p)\0A\00", [37 x i8] zeroinitializer }, align 32
@ray_update_multi_list.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.2, ptr @.str.149, i8 1, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ray_update_multi - No free ccs\0A\00", [32 x i8] zeroinitializer }, align 32
@ray_update_multi_list.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.2, ptr @.str.150, i8 1, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ray_update_multi add addr %pm\0A\00", [33 x i8] zeroinitializer }, align 32
@ray_update_multi_list.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.2, ptr @.str.151, i8 1, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ray_cs update_multi %d addresses in list\0A\00", [54 x i8] zeroinitializer }, align 32
@ray_update_multi_list.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.2, ptr @.str.152, i8 1, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ray_cs update_multi failed - ECF not ready for intr\0A\00", [43 x i8] zeroinitializer }, align 32
@ray_dev_config.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.2, ptr @.str.154, i8 0, i8 -55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ray_dev_config\00", [17 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ray_dev_config(dev=%p,ifmap=%p)\0A\00", [63 x i8] zeroinitializer }, align 32
@ray_dev_config.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.2, ptr @.str.155, i8 0, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ray_dev_config - device not present\0A\00", [59 x i8] zeroinitializer }, align 32
@ray_handler = internal constant { [38 x ptr], [40 x i8] } { [38 x ptr] [ptr @ray_commit, ptr @ray_get_name, ptr null, ptr null, ptr @ray_set_freq, ptr @ray_get_freq, ptr @ray_set_mode, ptr @ray_get_mode, ptr null, ptr null, ptr null, ptr @ray_get_range, ptr null, ptr null, ptr null, ptr null, ptr @iw_handler_set_spy, ptr @iw_handler_get_spy, ptr @iw_handler_set_thrspy, ptr @iw_handler_get_thrspy, ptr null, ptr @ray_get_wap, ptr null, ptr null, ptr null, ptr null, ptr @ray_set_essid, ptr @ray_get_essid, ptr null, ptr null, ptr null, ptr null, ptr @ray_set_rate, ptr @ray_get_rate, ptr @ray_set_rts, ptr @ray_get_rts, ptr @ray_set_frag, ptr @ray_get_frag], [40 x i8] zeroinitializer }, align 32
@ray_private_handler = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @ray_set_framing, ptr @ray_get_framing, ptr null, ptr @ray_get_country], [16 x i8] zeroinitializer }, align 32
@ray_private_args = internal constant { [3 x %struct.iw_priv_args], [56 x i8] } { [3 x %struct.iw_priv_args] [%struct.iw_priv_args { i32 35808, i16 6145, i16 0, [16 x i8] c"set_framing\00\00\00\00\00" }, %struct.iw_priv_args { i32 35809, i16 0, i16 6145, [16 x i8] c"get_framing\00\00\00\00\00" }, %struct.iw_priv_args { i32 35811, i16 0, i16 6145, [16 x i8] c"get_country\00\00\00\00\00" }], [56 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IEEE 802.11-FH\00", [17 x i8] zeroinitializer }, align 32
@hop_pattern_length = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01OO\17\17\1B##/\17", [22 x i8] zeroinitializer }, align 32
@ray_config.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.157, ptr @.str.2, ptr @.str.158, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ray_config\00", [21 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ray_config\0A\00", [20 x i8] zeroinitializer }, align 32
@ray_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.157, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016ray_cs Detected: %s%s%s%s\0A\00", [35 x i8] zeroinitializer }, align 32
@ray_config._entry_ptr = internal global ptr @ray_config._entry, section ".printk_index", align 4
@.str.160 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@ray_config.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.157, ptr @.str.2, ptr @.str.161, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ray_config sram=%p\0A\00", [44 x i8] zeroinitializer }, align 32
@ray_config.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.157, ptr @.str.2, ptr @.str.162, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ray_config rmem=%p\0A\00", [44 x i8] zeroinitializer }, align 32
@ray_config.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.157, ptr @.str.2, ptr @.str.163, i8 0, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ray_config amem=%p\0A\00", [44 x i8] zeroinitializer }, align 32
@ray_config._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.157, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ray_config register_netdev() failed\0A\00", [59 x i8] zeroinitializer }, align 32
@ray_config._entry_ptr.166 = internal global ptr @ray_config._entry.164, section ".printk_index", align 4
@ray_config._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.157, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: RayLink, irq %d, hw_addr %pM\0A\00", [60 x i8] zeroinitializer }, align 32
@ray_config._entry_ptr.169 = internal global ptr @ray_config._entry.167, section ".printk_index", align 4
@ray_init.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.2, ptr @.str.171, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ray_init\00", [23 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ray_init(0x%p)\0A\00", [16 x i8] zeroinitializer }, align 32
@ray_init.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.2, ptr @.str.172, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ray_init - device not present\0A\00", [33 x i8] zeroinitializer }, align 32
@ray_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.170, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016ray_init ERROR card status = %2x\0A\00", [60 x i8] zeroinitializer }, align 32
@ray_init._entry_ptr = internal global ptr @ray_init._entry, section ".printk_index", align 4
@ray_init.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.2, ptr @.str.174, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ray_init firmware version %d.%d\0A\00", [63 x i8] zeroinitializer }, align 32
@ray_init.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.2, ptr @.str.175, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ray_init tib_length = 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@ray_init.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.2, ptr @.str.176, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ray_init ending\0A\00", [47 x i8] zeroinitializer }, align 32
@b5_default_startup_parms = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\00\00LINUX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\7F\FF\00\80\01\00\01\07\A3\1D\82N\7F\FF\04\E28\A4\05\08\02\08\00\0C\BD2\FF\FF\05\FF\01\0BO\00?\00\0F\04\08((\07\00\02\02\00\00\00\02\00\00\00\00\00\00\00", [62 x i8] zeroinitializer }, align 32
@b4_default_startup_parms = internal constant { <{ [85 x i8], [8 x i8] }>, [35 x i8] } { <{ [85 x i8], [8 x i8] }> <{ [85 x i8] c"\00\00LINUX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\7F\FF\02\00\00\01\01\07\A3\1D\82\CE\7F\FF\FB\1E\C7\\\05\04\02\04\00\0C\BDN\FF\FF\05\FF\01\0BN?\0F\04\08((\07\00\02\02", [8 x i8] zeroinitializer }>, [35 x i8] zeroinitializer }, align 32
@ray_release.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.178, ptr @.str.2, ptr @.str.179, i8 0, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ray_release\00", [20 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ray_release\0A\00", [19 x i8] zeroinitializer }, align 32
@ray_release.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.178, ptr @.str.2, ptr @.str.180, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ray_release ending\0A\00", [44 x i8] zeroinitializer }, align 32
@ray_detach.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.181, ptr @.str.2, ptr @.str.182, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ray_detach\00", [21 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ray_detach\0A\00", [20 x i8] zeroinitializer }, align 32
@ray_detach.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.181, ptr @.str.2, ptr @.str.183, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ray_cs ray_detach ending\0A\00", [38 x i8] zeroinitializer }, align 32
@ray_reset.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.184, ptr @.str.2, ptr @.str.185, i8 1, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ray_reset\00", [22 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ray_reset entered\0A\00", [45 x i8] zeroinitializer }, align 32
@init_ray_cs.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.186, ptr @.str.2, ptr @.str.187, i8 2, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.186 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_ray_cs\00", [20 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@rcsid = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Raylink/WebGear wireless LAN - Corey <Thomas corey@world.std.com>\00", [62 x i8] zeroinitializer }, align 32
@init_ray_cs.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.186, ptr @.str.2, ptr @.str.188, i8 2, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.188 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"raylink init_module register_pcmcia_driver returns 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"driver/ray_cs/ray_cs\00", [43 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"driver/ray_cs/essid\00", [44 x i8] zeroinitializer }, align 32
@ray_cs_essid_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr null, ptr null, ptr null, ptr @ray_cs_essid_proc_write, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"driver/ray_cs/net_type\00", [41 x i8] zeroinitializer }, align 32
@int_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr null, ptr null, ptr null, ptr @int_proc_write, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"driver/ray_cs/translate\00", [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Raylink Wireless LAN driver status\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Firmware version     = \00", [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"4 - Use dump_cis for more details\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%2d.%02d.%02d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s network ESSID = \22%s\22\0A\00", [39 x i8] zeroinitializer }, align 32
@nettype = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.214, ptr @.str.215], [24 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BSSID                = %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Country code         = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Card status          = %s\0A\00", [37 x i8] zeroinitializer }, align 32
@card_status = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.223, ptr @.str.223, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.223, ptr @.str.226, ptr @.str.227, ptr @.str.228], [60 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Framing mode         = %s\0A\00", [37 x i8] zeroinitializer }, align 32
@framing = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.229, ptr @.str.230], [24 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Last pkt signal lvl  = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Beacon Interval      = %d Kus\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Parse beacon failed at essid element id = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Supported rate codes = \00", [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x \00", [24 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Parse beacon failed at rates element\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Hop dwell            = %d Kus\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hop set              = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hop pattern          = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hop index            = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Parse beacon failed at FH param element\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No beacons received\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Adhoc\00", [26 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Infra \00", [25 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Card inserted - uninitialized\00", [34 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Card not downloaded\00", [44 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Waiting for download parameters\00", [32 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Card doing acquisition\00", [41 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Acquisition complete\00", [43 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Authentication complete\00", [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Association complete\00", [43 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Card init error\00", [16 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Download parameters error\00", [38 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Acquisition failed\00", [45 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Authentication refused\00", [41 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Association failed\00", [45 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Encapsulation\00", [18 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Translation\00", [20 x i8] zeroinitializer }, align 32
@ray_cs_essid_proc_write.proc_essid = internal global { [33 x i8], [63 x i8] } zeroinitializer, align 32
@.str.233 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@int_proc_write.proc_number = internal global { [10 x i8], [22 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 14]
@__sancov_gen_cov_switch_values.234 = internal global [6 x i64] [i64 4, i64 8, i64 128, i64 129, i64 130, i64 131]
@__sancov_gen_cov_switch_values.235 = internal global [7 x i64] [i64 5, i64 8, i64 8, i64 72, i64 128, i64 176, i64 192]
@__sancov_gen_cov_switch_values.236 = internal global [4 x i64] [i64 2, i64 16, i64 33011, i64 33079]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 32, i64 4294967292, i64 4294967294]
@__sancov_gen_cov_switch_values.238 = internal global [5 x i64] [i64 3, i64 32, i64 4294967293, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 16, i64 33011, i64 33079]
@__sancov_gen_cov_switch_values.240 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 32, i64 1000000, i64 2000000]
@___asan_gen_.242 = private unnamed_addr constant [9 x i8] c"net_type\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 118, i32 12 }
@___asan_gen_.245 = private unnamed_addr constant [10 x i8] c"hop_dwell\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 121, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant [14 x i8] c"beacon_period\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 124, i32 12 }
@___asan_gen_.251 = private unnamed_addr constant [4 x i8] c"psm\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 127, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant [6 x i8] c"essid\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 130, i32 14 }
@___asan_gen_.257 = private unnamed_addr constant [10 x i8] c"translate\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 133, i32 13 }
@___asan_gen_.260 = private unnamed_addr constant [8 x i8] c"country\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 135, i32 12 }
@___asan_gen_.263 = private unnamed_addr constant [8 x i8] c"sniffer\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 137, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 139, i32 12 }
@___asan_gen_.269 = private unnamed_addr constant [9 x i8] c"phy_addr\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 151, i32 14 }
@___asan_gen_.272 = private unnamed_addr constant [14 x i8] c"ray_mem_speed\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 153, i32 21 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2805, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2808, i32 22 }
@___asan_gen_.290 = private unnamed_addr constant [11 x i8] c"ray_driver\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2766, i32 29 }
@___asan_gen_.293 = private unnamed_addr constant [8 x i8] c"ray_ids\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2759, i32 38 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 274, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 298, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [15 x i8] c"ray_netdev_ops\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 257, i32 36 }
@___asan_gen_.308 = private unnamed_addr constant [16 x i8] c"ray_handler_def\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1463, i32 36 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 310, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 313, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [12 x i8] c"this_device\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 156, i32 30 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1841, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1846, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1853, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1865, i32 5 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1868, i32 5 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1873, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1878, i32 5 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1884, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1887, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1891, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1904, i32 6 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1908, i32 6 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1935, i32 6 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1940, i32 6 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1951, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1953, i32 5 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1960, i32 5 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1963, i32 5 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1971, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1974, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1978, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1981, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1985, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1999, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2009, i32 5 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2016, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2021, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2024, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2400, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2402, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2663, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2695, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1574, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1579, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1592, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1545, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1548, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1555, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1632, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 675, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 686, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1606, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1610, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1623, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 704, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 716, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2043, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2056, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2060, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2067, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2074, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2077, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2090, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2119, i32 5 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2137, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2140, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2158, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2170, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2178, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2211, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2386, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant [11 x i8] c"org_bridge\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2277, i32 21 }
@___asan_gen_.545 = private unnamed_addr constant [9 x i8] c"org_1042\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2278, i32 21 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2298, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2307, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2316, i32 5 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2323, i32 5 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2331, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2339, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2429, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2431, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2445, i32 6 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2451, i32 6 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2471, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2477, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2480, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2486, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2508, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1681, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 772, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 774, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 788, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 797, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1480, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1490, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1494, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1506, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 523, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 525, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 543, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 547, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 558, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 634, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 654, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1517, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 825, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 830, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 832, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 871, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 873, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 879, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 882, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 920, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 925, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 942, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant [9 x i8] c"eth2_llc\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 244, i32 17 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 958, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 960, i32 4 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1793, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1797, i32 4 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1805, i32 4 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1714, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1719, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1747, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1750, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1752, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1768, i32 4 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1776, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1781, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 807, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 809, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant [12 x i8] c"ray_handler\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1418, i32 25 }
@___asan_gen_.791 = private unnamed_addr constant [20 x i8] c"ray_private_handler\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1447, i32 25 }
@___asan_gen_.794 = private unnamed_addr constant [17 x i8] c"ray_private_args\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1453, i32 34 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1019, i32 21 }
@___asan_gen_.800 = private unnamed_addr constant [19 x i8] c"hop_pattern_length\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 246, i32 19 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 352, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 355, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 414, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 415, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 416, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 425, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 430, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 464, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 466, i32 3 }
@___asan_gen_.848 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 479, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 488, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 494, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 510, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant [25 x i8] c"b5_default_startup_parms\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 174, i32 20 }
@___asan_gen_.866 = private unnamed_addr constant [25 x i8] c"b4_default_startup_parms\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 209, i32 20 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 729, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 738, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 327, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 341, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1533, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2780, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant [6 x i8] c"rcsid\00", align 1
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 254, i32 19 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2782, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2790, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2791, i32 14 }
@___asan_gen_.911 = private unnamed_addr constant [22 x i8] c"ray_cs_essid_proc_ops\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2720, i32 30 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2792, i32 19 }
@___asan_gen_.917 = private unnamed_addr constant [13 x i8] c"int_proc_ops\00", align 1
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2753, i32 30 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2794, i32 19 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2570, i32 14 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2573, i32 14 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2575, i32 15 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2577, i32 17 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2583, i32 16 }
@___asan_gen_.938 = private unnamed_addr constant [8 x i8] c"nettype\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2542, i32 20 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2587, i32 16 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2589, i32 16 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2597, i32 16 }
@___asan_gen_.950 = private unnamed_addr constant [12 x i8] c"card_status\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2525, i32 20 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2599, i32 16 }
@___asan_gen_.956 = private unnamed_addr constant [8 x i8] c"framing\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2543, i32 20 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2601, i32 16 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2605, i32 17 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2614, i32 8 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2620, i32 16 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2622, i32 19 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2626, i32 16 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2632, i32 18 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2635, i32 18 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2637, i32 18 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2639, i32 18 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2644, i32 6 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2648, i32 15 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2542, i32 34 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2542, i32 43 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2526, i32 2 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2527, i32 2 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2528, i32 2 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2529, i32 2 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2530, i32 2 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2531, i32 2 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2532, i32 2 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2533, i32 2 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2534, i32 2 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2535, i32 2 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2537, i32 2 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2538, i32 2 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2539, i32 2 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2543, i32 34 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2543, i32 51 }
@___asan_gen_.1046 = private unnamed_addr constant [11 x i8] c"proc_essid\00", align 1
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2708, i32 14 }
@___asan_gen_.1049 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1050 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1050, i32 156, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant [12 x i8] c"proc_number\00", align 1
@___asan_gen_.1053 = private constant [33 x i8] c"../drivers/net/wireless/ray_cs.c\00", align 1
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2728, i32 14 }
@llvm.compiler.used = appending global [310 x ptr] [ptr @__UNIQUE_ID_author345, ptr @__UNIQUE_ID_bctype357, ptr @__UNIQUE_ID_beacon_periodtype351, ptr @__UNIQUE_ID_countrytype355, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_essidtype353, ptr @__UNIQUE_ID_file347, ptr @__UNIQUE_ID_hop_dwelltype350, ptr @__UNIQUE_ID_license348, ptr @__UNIQUE_ID_net_typetype349, ptr @__UNIQUE_ID_phy_addrtype358, ptr @__UNIQUE_ID_psmtype352, ptr @__UNIQUE_ID_ray_mem_speedtype359, ptr @__UNIQUE_ID_sniffertype356, ptr @__UNIQUE_ID_translatetype354, ptr @__exitcall_exit_ray_cs, ptr @__initcall__kmod_ray_cs__494_2814_init_ray_cs6, ptr @__param_bc, ptr @__param_beacon_period, ptr @__param_country, ptr @__param_essid, ptr @__param_hop_dwell, ptr @__param_net_type, ptr @__param_phy_addr, ptr @__param_psm, ptr @__param_ray_mem_speed, ptr @__param_sniffer, ptr @__param_translate, ptr @authenticate_timeout._entry, ptr @authenticate_timeout._entry_ptr, ptr @dl_startup_params._entry, ptr @dl_startup_params._entry_ptr, ptr @exit_ray_cs, ptr @ray_config._entry, ptr @ray_config._entry.164, ptr @ray_config._entry.167, ptr @ray_config._entry_ptr, ptr @ray_config._entry_ptr.166, ptr @ray_config._entry_ptr.169, ptr @ray_hw_xmit._entry, ptr @ray_hw_xmit._entry_ptr, ptr @ray_init._entry, ptr @ray_init._entry_ptr, ptr @ray_open._entry, ptr @ray_open._entry_ptr, ptr @untranslate._entry, ptr @untranslate._entry_ptr, ptr @verify_dl_startup._entry, ptr @verify_dl_startup._entry_ptr, ptr @net_type, ptr @hop_dwell, ptr @beacon_period, ptr @psm, ptr @essid, ptr @translate, ptr @country, ptr @sniffer, ptr @bc, ptr @phy_addr, ptr @ray_mem_speed, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ray_driver, ptr @ray_ids, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ray_netdev_ops, ptr @ray_handler_def, ptr @.str.8, ptr @ray_probe.__key, ptr @.str.9, ptr @this_device, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @untranslate.org_bridge, ptr @untranslate.org_1042, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @eth2_llc, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @ray_handler, ptr @ray_private_handler, ptr @ray_private_args, ptr @.str.156, ptr @hop_pattern_length, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.168, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @b5_default_startup_parms, ptr @b4_default_startup_parms, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @rcsid, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @ray_cs_essid_proc_ops, ptr @.str.191, ptr @int_proc_ops, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @nettype, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @card_status, ptr @.str.201, ptr @framing, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @ray_cs_essid_proc_write.proc_essid, ptr @.str.233, ptr @int_proc_write.proc_number], section "llvm.metadata"
@0 = internal global [271 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hop_dwell to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beacon_period to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @essid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @translate to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @country to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sniffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_mem_speed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_ids to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_handler_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @this_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @authenticate_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @untranslate.org_bridge to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @untranslate.org_1042 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @untranslate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl_startup_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_dl_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_hw_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth2_llc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_handler to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_private_handler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_private_args to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hop_pattern_length to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_config._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_config._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b5_default_startup_parms to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b4_default_startup_parms to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsid to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_cs_essid_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nettype to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_status to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @framing to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ray_cs_essid_proc_write.proc_essid to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_proc_write.proc_number to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_ray_cs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exit_ray_cs.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exit_ray_cs, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exit_ray_cs.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.3) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str.4, ptr noundef null) #16
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @ray_driver) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_proc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_ray_cs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_ray_cs.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_ray_cs, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_ray_cs.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.187, ptr noundef nonnull @rcsid) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @ray_driver) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_ray_cs.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_ray_cs, %if.then16)) #16
          to label %do.end19 [label %if.then16], !srcloc !708

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_ray_cs.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.188, i32 noundef %call3) #16
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool20.not = icmp eq i32 %call3, 0
  br i1 %tobool20.not, label %if.end22, label %do.end19.cleanup_crit_edge

do.end19.cleanup_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end22:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #18
  %call23 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.4, ptr noundef null) #16
  %call24 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.189, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @ray_cs_proc_show, ptr noundef null) #16
  %call25 = tail call ptr @proc_create(ptr noundef nonnull @.str.190, i16 noundef zeroext 128, ptr noundef null, ptr noundef nonnull @ray_cs_essid_proc_ops) #16
  %call26 = tail call ptr @proc_create_data(ptr noundef nonnull @.str.191, i16 noundef zeroext 128, ptr noundef null, ptr noundef nonnull @int_proc_ops, ptr noundef nonnull @net_type) #16
  %call27 = tail call ptr @proc_create_data(ptr noundef nonnull @.str.192, i16 noundef zeroext 128, ptr noundef null, ptr noundef nonnull @int_proc_ops, ptr noundef nonnull @translate) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end19.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ray_probe(ptr noundef %p_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_probe.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_probe, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_probe.__UNIQUE_ID_ddebug360, ptr noundef %dev3, ptr noundef nonnull @.str.6) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef 872, i32 noundef 1, i32 noundef 1) #16
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %finder = getelementptr i8, ptr %call4, i32 2324
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %p_dev, ptr %finder, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %1 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %end, align 4
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 10
  %4 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config_flags, align 4
  %or11 = or i32 %5, 1
  store i32 %or11, ptr %config_flags, align 4
  %config_index = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 12
  %6 = ptrtoint ptr %config_index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %config_index, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 22
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %priv, align 8
  store ptr %p_dev, ptr %finder, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %add.ptr.i, align 4
  %authentication_state = getelementptr i8, ptr %call4, i32 2308
  %9 = ptrtoint ptr %authentication_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %authentication_state, align 4
  %num_multi = getelementptr i8, ptr %call4, i32 2548
  %10 = ptrtoint ptr %num_multi to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %num_multi, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_probe.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_probe, %if.then25)) #16
          to label %do.end29 [label %if.then25], !srcloc !708

if.then25:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %dev26 = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_probe.__UNIQUE_ID_ddebug361, ptr noundef %dev26, ptr noundef nonnull @.str.7, ptr noundef %p_dev, ptr noundef nonnull %call4, ptr noundef %add.ptr.i, ptr noundef nonnull @ray_interrupt) #16
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %if.end7
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 16
  %11 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ray_netdev_ops, ptr %netdev_ops, align 8
  %wireless_handlers = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 42
  %12 = ptrtoint ptr %wireless_handlers to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ray_handler_def, ptr %wireless_handlers, align 8
  %spy_data = getelementptr i8, ptr %call4, i32 3068
  %wireless_data = getelementptr i8, ptr %call4, i32 3168
  %13 = ptrtoint ptr %wireless_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spy_data, ptr %wireless_data, align 4
  %wireless_data32 = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 43
  %14 = ptrtoint ptr %wireless_data32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %wireless_data, ptr %wireless_data32, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_probe.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_probe, %if.then45)) #16
          to label %do.end49 [label %if.then45], !srcloc !708

if.then45:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #18
  %dev46 = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_probe.__UNIQUE_ID_ddebug362, ptr noundef %dev46, ptr noundef nonnull @.str.8) #16
  br label %do.end49

do.end49:                                         ; preds = %if.then45, %do.end29
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %16, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %timer = getelementptr i8, ptr %call4, i32 2328
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @ray_probe.__key) #16
  store ptr %p_dev, ptr @this_device, align 4
  %call53 = tail call fastcc i32 @ray_config(ptr noundef %p_dev)
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call53, %do.end49 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ray_detach(ptr noundef %link) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_detach.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_detach, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_detach.__UNIQUE_ID_ddebug363, ptr noundef %dev3, ptr noundef nonnull @.str.182) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  store ptr null, ptr @this_device, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call fastcc void @ray_release(ptr noundef %link)
  %timer = getelementptr i8, ptr %1, i32 2328
  %call5 = tail call i32 @del_timer_sync(ptr noundef %timer) #16
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %do.end.do.body10_crit_edge, label %if.then8

do.end.do.body10_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body10

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @unregister_netdev(ptr noundef %1) #16
  tail call void @free_netdev(ptr noundef %1) #16
  br label %do.body10

do.body10:                                        ; preds = %if.then8, %do.end.do.body10_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_detach.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_detach, %if.then22)) #16
          to label %do.end26 [label %if.then22], !srcloc !708

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  %dev23 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_detach.__UNIQUE_ID_ddebug364, ptr noundef %dev23, ptr noundef nonnull @.str.183) #16
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ray_suspend(ptr nocapture noundef readonly %link) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void @netif_device_detach(ptr noundef %3) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ray_resume(ptr nocapture noundef readonly %link) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_reset.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_resume, %if.then.i)) #16
          to label %ray_reset.exit [label %if.then.i], !srcloc !708

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ray_reset.__UNIQUE_ID_ddebug406, ptr noundef nonnull @.str.185) #16
  br label %ray_reset.exit

ray_reset.exit:                                   ; preds = %if.then.i, %if.then
  tail call void @netif_device_attach(ptr noundef %3) #16
  br label %if.end

if.end:                                           ; preds = %ray_reset.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ray_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  %memtmp = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %memtmp) #16
  %0 = call ptr @memset(ptr %memtmp, i32 255, i32 33)
  %cmp = icmp eq ptr %dev_id, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug429, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then4)) #16
          to label %do.end [label %if.then4], !srcloc !708

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug429, ptr noundef nonnull @.str.11, ptr noundef nonnull %dev_id) #16
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %finder = getelementptr i8, ptr %dev_id, i32 2324
  %1 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %finder, align 4
  %call7 = tail call ptr @pcmcia_dev_present(ptr noundef %2) #16
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.body10, label %if.end26

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then22)) #16
          to label %cleanup [label %if.then22], !srcloc !708

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug430, ptr noundef nonnull @.str.12) #16
  br label %cleanup

if.end26:                                         ; preds = %do.end
  %sram = getelementptr i8, ptr %dev_id, i32 2312
  %3 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sram, align 4
  %rcs_index = getelementptr inbounds %struct.scb, ptr %4, i32 0, i32 1
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %rcs_index) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !710
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp30 = icmp slt i8 %5, 0
  br i1 %cmp30, label %do.body33, label %if.end51

do.body33:                                        ; preds = %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug431, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then45)) #16
          to label %do.end50 [label %if.then45], !srcloc !708

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #18
  %dev46 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug431, ptr noundef %dev46, ptr noundef nonnull @.str.13, i32 noundef %conv) #16
  br label %do.end50

do.end50:                                         ; preds = %if.then45, %do.body33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !711
  tail call void @arm_heavy_mb() #16
  %amem.i = getelementptr i8, ptr %dev_id, i32 2316
  %6 = ptrtoint ptr %amem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %amem.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %7, i32 3845
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 0) #16, !srcloc !712
  br label %cleanup

if.end51:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %5)
  %cmp53 = icmp ult i8 %5, 64
  %8 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sram, align 4
  %add.ptr.i844 = getelementptr i8, ptr %9, i32 1024
  br i1 %cmp53, label %if.then55, label %if.else531

if.then55:                                        ; preds = %if.end51
  %add.ptr = getelementptr %struct.ccs, ptr %add.ptr.i844, i32 %conv
  %cmd60 = getelementptr %struct.ccs, ptr %add.ptr.i844, i32 %conv, i32 1
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %cmd60) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !713
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !714
  %conv69 = zext i8 %10 to i32
  %12 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %do.body508 [
    i8 1, label %sw.bb
    i8 2, label %do.body111
    i8 3, label %do.body157
    i8 4, label %do.body175
    i8 5, label %do.body193
    i8 6, label %if.then55.sw.bb210_crit_edge
    i8 7, label %if.then55.sw.bb210_crit_edge882
    i8 8, label %sw.bb348
    i8 9, label %sw.bb392
    i8 10, label %do.body437
    i8 11, label %do.body455
    i8 12, label %do.body473
    i8 14, label %do.body491
  ]

if.then55.sw.bb210_crit_edge882:                  ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb210

if.then55.sw.bb210_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb210

sw.bb:                                            ; preds = %if.then55
  %timer = getelementptr i8, ptr %dev_id, i32 2328
  %call70 = tail call i32 @del_timer(ptr noundef %timer) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp72 = icmp eq i8 %11, 2
  br i1 %cmp72, label %do.body75, label %do.body92

do.body75:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug432, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then87)) #16
          to label %do.body527 [label %if.then87], !srcloc !708

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #18
  %dev88 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug432, ptr noundef %dev88, ptr noundef nonnull @.str.14) #16
  br label %do.body527

do.body92:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug433, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then104)) #16
          to label %do.body527 [label %if.then104], !srcloc !708

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #18
  %dev105 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug433, ptr noundef %dev105, ptr noundef nonnull @.str.15) #16
  br label %do.body527

do.body111:                                       ; preds = %if.then55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug434, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then123)) #16
          to label %do.end127 [label %if.then123], !srcloc !708

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #18
  %dev124 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug434, ptr noundef %dev124, ptr noundef nonnull @.str.16) #16
  br label %do.end127

do.end127:                                        ; preds = %if.then123, %do.body111
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp129.not = icmp eq i8 %11, 2
  br i1 %cmp129.not, label %do.end127.do.body527_crit_edge, label %if.then131

do.end127.do.body527_crit_edge:                   ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body527

if.then131:                                       ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #18
  %failure_cause = getelementptr %struct.ccs, ptr %add.ptr.i844, i32 %conv, i32 3, i32 0, i32 2
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %failure_cause) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !715
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug435, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then149)) #16
          to label %do.body527 [label %if.then149], !srcloc !708

if.then149:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #18
  %dev150 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  %conv151 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug435, ptr noundef %dev150, ptr noundef nonnull @.str.17, i32 noundef %conv151) #16
  br label %do.body527

do.body157:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug436, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then169)) #16
          to label %do.body527 [label %if.then169], !srcloc !708

if.then169:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #18
  %dev170 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug436, ptr noundef %dev170, ptr noundef nonnull @.str.18) #16
  br label %do.body527

do.body175:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug437, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then187)) #16
          to label %do.body527 [label %if.then187], !srcloc !708

if.then187:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #18
  %dev188 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug437, ptr noundef %dev188, ptr noundef nonnull @.str.19) #16
  br label %do.body527

do.body193:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug438, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then205)) #16
          to label %do.body527 [label %if.then205], !srcloc !708

if.then205:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #18
  %dev206 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug438, ptr noundef %dev206, ptr noundef nonnull @.str.20) #16
  br label %do.body527

sw.bb210:                                         ; preds = %if.then55.sw.bb210_crit_edge, %if.then55.sw.bb210_crit_edge882
  %a_current_ess_id = getelementptr i8, ptr %dev_id, i32 2390
  %14 = call ptr @memcpy(ptr %memtmp, ptr %a_current_ess_id, i32 32)
  %arrayidx = getelementptr inbounds [33 x i8], ptr %memtmp, i32 0, i32 32
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp213 = icmp eq i8 %11, 2
  br i1 %cmp213, label %if.then215, label %if.else296

if.then215:                                       ; preds = %sw.bb210
  %var218 = getelementptr %struct.ccs, ptr %add.ptr.i844, i32 %conv, i32 3
  %net_initiated = getelementptr inbounds %struct.start_network_cmd, ptr %var218, i32 0, i32 2
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %net_initiated) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !716
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp223 = icmp eq i8 %16, 1
  br i1 %cmp223, label %do.body226, label %do.body245

do.body226:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug439, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then238)) #16
          to label %if.end263 [label %if.then238], !srcloc !708

if.then238:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #18
  %dev239 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug439, ptr noundef %dev239, ptr noundef nonnull @.str.21, ptr noundef nonnull %memtmp) #16
  br label %if.end263

do.body245:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug440, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then257)) #16
          to label %if.end263 [label %if.then257], !srcloc !708

if.then257:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #18
  %dev258 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug440, ptr noundef %dev258, ptr noundef nonnull @.str.22, ptr noundef nonnull %memtmp) #16
  br label %if.end263

if.end263:                                        ; preds = %if.then257, %do.body245, %if.then238, %do.body226
  %bss_id = getelementptr i8, ptr %dev_id, i32 2552
  %bssid = getelementptr inbounds %struct.start_network_cmd, ptr %var218, i32 0, i32 1
  call void @mmiocpy(ptr noundef %bss_id, ptr noundef %bssid, i32 noundef 6) #16
  %fw_ver = getelementptr i8, ptr %dev_id, i32 2662
  %17 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fw_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %18)
  %cmp267 = icmp eq i8 %18, 85
  br i1 %cmp267, label %if.end263.if.end279_crit_edge, label %if.else270

if.end263.if.end279_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end279

if.else270:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #18
  %net_default_tx_rate274 = getelementptr inbounds %struct.start_network_cmd, ptr %var218, i32 0, i32 3
  %19 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %net_default_tx_rate274) #16, !srcloc !709
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !717
  br label %if.end279

if.end279:                                        ; preds = %if.else270, %if.end263.if.end279_crit_edge
  %.sink = phi i8 [ %19, %if.else270 ], [ 3, %if.end263.if.end279_crit_edge ]
  %20 = getelementptr i8, ptr %dev_id, i32 2564
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %20, align 4
  %encryption = getelementptr inbounds %struct.start_network_cmd, ptr %var218, i32 0, i32 4
  %22 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %encryption) #16, !srcloc !709
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !718
  %encryption286 = getelementptr i8, ptr %dev_id, i32 2565
  %23 = ptrtoint ptr %encryption286 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %encryption286, align 1
  %24 = load i32, ptr @sniffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool287.not = icmp eq i32 %24, 0
  br i1 %tobool287.not, label %land.lhs.true, label %if.end279.if.end295_crit_edge

if.end279.if.end295_crit_edge:                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end295

land.lhs.true:                                    ; preds = %if.end279
  %net_type = getelementptr i8, ptr %dev_id, i32 2660
  %25 = ptrtoint ptr %net_type to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %net_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp289 = icmp eq i8 %26, 1
  br i1 %cmp289, label %land.lhs.true291, label %land.lhs.true.if.end295_crit_edge

land.lhs.true.if.end295_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end295

land.lhs.true291:                                 ; preds = %land.lhs.true
  %a_acting_as_ap_status = getelementptr i8, ptr %dev_id, i32 2389
  %27 = ptrtoint ptr %a_acting_as_ap_status to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %a_acting_as_ap_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool293.not = icmp eq i8 %28, 0
  br i1 %tobool293.not, label %if.then294, label %land.lhs.true291.if.end295_crit_edge

land.lhs.true291.if.end295_crit_edge:             ; preds = %land.lhs.true291
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end295

if.then294:                                       ; preds = %land.lhs.true291
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @authenticate(ptr noundef %add.ptr.i)
  br label %if.end295

if.end295:                                        ; preds = %if.then294, %land.lhs.true291.if.end295_crit_edge, %land.lhs.true.if.end295_crit_edge, %if.end279.if.end295_crit_edge
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %add.ptr.i, align 4
  br label %do.body527

if.else296:                                       ; preds = %sw.bb210
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 14, ptr %add.ptr.i, align 4
  %timer298 = getelementptr i8, ptr %dev_id, i32 2328
  %call299 = tail call i32 @del_timer(ptr noundef %timer298) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %31, 500
  %expires = getelementptr i8, ptr %dev_id, i32 2336
  %32 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %expires, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %11)
  %cmp302 = icmp eq i8 %11, 6
  br i1 %cmp302, label %do.body305, label %do.body325

do.body305:                                       ; preds = %if.else296
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug441, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then317)) #16
          to label %if.end345 [label %if.then317], !srcloc !708

if.then317:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #18
  %dev318 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug441, ptr noundef %dev318, ptr noundef nonnull @.str.23, ptr noundef nonnull %memtmp) #16
  br label %if.end345

do.body325:                                       ; preds = %if.else296
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug442, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then337)) #16
          to label %if.end345 [label %if.then337], !srcloc !708

if.then337:                                       ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #18
  %dev338 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug442, ptr noundef %dev338, ptr noundef nonnull @.str.24, ptr noundef nonnull %memtmp) #16
  br label %if.end345

if.end345:                                        ; preds = %if.then337, %do.body325, %if.then317, %do.body305
  %join_net.sink = phi ptr [ @start_net, %do.body305 ], [ @start_net, %if.then317 ], [ @join_net, %do.body325 ], [ @join_net, %if.then337 ]
  %function344 = getelementptr i8, ptr %dev_id, i32 2340
  %33 = ptrtoint ptr %function344 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %join_net.sink, ptr %function344, align 4
  call void @add_timer(ptr noundef %timer298) #16
  br label %do.body527

sw.bb348:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp350 = icmp eq i8 %11, 2
  br i1 %cmp350, label %if.then352, label %do.body372

if.then352:                                       ; preds = %sw.bb348
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 6, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug443, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then366)) #16
          to label %do.body527 [label %if.then366], !srcloc !708

if.then366:                                       ; preds = %if.then352
  call void @__sanitizer_cov_trace_pc() #18
  %dev367 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug443, ptr noundef %dev367, ptr noundef nonnull @.str.25) #16
  br label %do.body527

do.body372:                                       ; preds = %sw.bb348
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then384)) #16
          to label %do.end388 [label %if.then384], !srcloc !708

if.then384:                                       ; preds = %do.body372
  call void @__sanitizer_cov_trace_pc() #18
  %dev385 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug444, ptr noundef %dev385, ptr noundef nonnull @.str.26) #16
  br label %do.end388

do.end388:                                        ; preds = %if.then384, %do.body372
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16, ptr %add.ptr.i, align 4
  %timer390 = getelementptr i8, ptr %dev_id, i32 2328
  tail call void @join_net(ptr noundef %timer390)
  br label %do.body527

sw.bb392:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp394 = icmp eq i8 %11, 2
  br i1 %cmp394, label %do.body397, label %do.body415

do.body397:                                       ; preds = %sw.bb392
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug445, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then409)) #16
          to label %if.end432 [label %if.then409], !srcloc !708

if.then409:                                       ; preds = %do.body397
  call void @__sanitizer_cov_trace_pc() #18
  %dev410 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug445, ptr noundef %dev410, ptr noundef nonnull @.str.27) #16
  br label %if.end432

do.body415:                                       ; preds = %sw.bb392
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug446, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then427)) #16
          to label %if.end432 [label %if.then427], !srcloc !708

if.then427:                                       ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #18
  %dev428 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug446, ptr noundef %dev428, ptr noundef nonnull @.str.28) #16
  br label %if.end432

if.end432:                                        ; preds = %if.then427, %do.body415, %if.then409, %do.body397
  %36 = load i32, ptr @sniffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool433.not = icmp eq i32 %36, 0
  br i1 %tobool433.not, label %if.then434, label %if.end432.if.end435_crit_edge

if.end432.if.end435_crit_edge:                    ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end435

if.then434:                                       ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #18
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %37 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %38, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  br label %if.end435

if.end435:                                        ; preds = %if.then434, %if.end432.if.end435_crit_edge
  %_tx.i.i845 = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %39 = ptrtoint ptr %_tx.i.i845 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_tx.i.i845, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %40) #16
  br label %do.body527

do.body437:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug447, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then449)) #16
          to label %do.body527 [label %if.then449], !srcloc !708

if.then449:                                       ; preds = %do.body437
  call void @__sanitizer_cov_trace_pc() #18
  %dev450 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug447, ptr noundef %dev450, ptr noundef nonnull @.str.29) #16
  br label %do.body527

do.body455:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug448, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then467)) #16
          to label %do.body527 [label %if.then467], !srcloc !708

if.then467:                                       ; preds = %do.body455
  call void @__sanitizer_cov_trace_pc() #18
  %dev468 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug448, ptr noundef %dev468, ptr noundef nonnull @.str.30) #16
  br label %do.body527

do.body473:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug449, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then485)) #16
          to label %do.body527 [label %if.then485], !srcloc !708

if.then485:                                       ; preds = %do.body473
  call void @__sanitizer_cov_trace_pc() #18
  %dev486 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug449, ptr noundef %dev486, ptr noundef nonnull @.str.31) #16
  br label %do.body527

do.body491:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug450, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then503)) #16
          to label %do.body527 [label %if.then503], !srcloc !708

if.then503:                                       ; preds = %do.body491
  call void @__sanitizer_cov_trace_pc() #18
  %dev504 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug450, ptr noundef %dev504, ptr noundef nonnull @.str.32) #16
  br label %do.body527

do.body508:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug451, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then520)) #16
          to label %do.body527 [label %if.then520], !srcloc !708

if.then520:                                       ; preds = %do.body508
  call void @__sanitizer_cov_trace_pc() #18
  %dev521 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug451, ptr noundef %dev521, ptr noundef nonnull @.str.33, i32 noundef %conv, i32 noundef %conv69) #16
  br label %do.body527

do.body527:                                       ; preds = %if.then520, %do.body508, %if.then503, %do.body491, %if.then485, %do.body473, %if.then467, %do.body455, %if.then449, %do.body437, %if.end435, %do.end388, %if.then366, %if.then352, %if.end345, %if.end295, %if.then205, %do.body193, %if.then187, %do.body175, %if.then169, %do.body157, %if.then149, %if.then131, %do.end127.do.body527_crit_edge, %if.then104, %do.body92, %if.then87, %do.body75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !719
  call void @arm_heavy_mb() #16
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #16, !srcloc !712
  br label %if.end665

if.else531:                                       ; preds = %if.end51
  %add.ptr534 = getelementptr %struct.rcs, ptr %add.ptr.i844, i32 %conv
  %interrupt_id = getelementptr %struct.rcs, ptr %add.ptr.i844, i32 %conv, i32 1
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %interrupt_id) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !720
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.234)
  switch i8 %41, label %do.body635 [
    i8 -128, label %sw.bb541
    i8 -127, label %do.body543
    i8 -126, label %do.body598
    i8 -125, label %do.body617
  ]

sw.bb541:                                         ; preds = %if.else531
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ray_rx(ptr noundef nonnull %dev_id, ptr noundef %add.ptr.i, ptr noundef %add.ptr534)
  br label %do.body661

do.body543:                                       ; preds = %if.else531
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug452, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then555)) #16
          to label %do.end559 [label %if.then555], !srcloc !708

if.then555:                                       ; preds = %do.body543
  call void @__sanitizer_cov_trace_pc() #18
  %dev556 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug452, ptr noundef %dev556, ptr noundef nonnull @.str.34) #16
  br label %do.end559

do.end559:                                        ; preds = %if.then555, %do.body543
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %add.ptr.i, align 4
  %sparm561 = getelementptr i8, ptr %dev_id, i32 2388
  %44 = ptrtoint ptr %sparm561 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %sparm561, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp563 = icmp eq i8 %45, 0
  br i1 %cmp563, label %if.then565, label %if.else569

if.then565:                                       ; preds = %do.end559
  %46 = load i32, ptr @sniffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool566.not = icmp eq i32 %46, 0
  br i1 %tobool566.not, label %if.then567, label %if.then565.do.body661_crit_edge

if.then565.do.body661_crit_edge:                  ; preds = %if.then565
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body661

if.then567:                                       ; preds = %if.then565
  call void @__sanitizer_cov_trace_pc() #18
  %_tx.i.i848 = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %47 = ptrtoint ptr %_tx.i.i848 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %_tx.i.i848, align 128
  %state.i.i849 = getelementptr inbounds %struct.netdev_queue, ptr %48, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i849) #16
  br label %do.body661

if.else569:                                       ; preds = %do.end559
  %bss_id570 = getelementptr i8, ptr %dev_id, i32 2552
  %bssid572 = getelementptr %struct.rcs, ptr %add.ptr.i844, i32 %conv, i32 3, i32 0, i32 1
  tail call void @mmiocpy(ptr noundef %bss_id570, ptr noundef %bssid572, i32 noundef 6) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug453, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then586)) #16
          to label %do.end592 [label %if.then586], !srcloc !708

if.then586:                                       ; preds = %if.else569
  call void @__sanitizer_cov_trace_pc() #18
  %dev587 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug453, ptr noundef %dev587, ptr noundef nonnull @.str.35, ptr noundef %bss_id570) #16
  br label %do.end592

do.end592:                                        ; preds = %if.then586, %if.else569
  %49 = load i32, ptr @sniffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool593.not = icmp eq i32 %49, 0
  br i1 %tobool593.not, label %if.then594, label %do.end592.do.body661_crit_edge

do.end592.do.body661_crit_edge:                   ; preds = %do.end592
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body661

if.then594:                                       ; preds = %do.end592
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @authenticate(ptr noundef %add.ptr.i)
  br label %do.body661

do.body598:                                       ; preds = %if.else531
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug454, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then610)) #16
          to label %do.end614 [label %if.then610], !srcloc !708

if.then610:                                       ; preds = %do.body598
  call void @__sanitizer_cov_trace_pc() #18
  %dev611 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug454, ptr noundef %dev611, ptr noundef nonnull @.str.36) #16
  br label %do.end614

do.end614:                                        ; preds = %if.then610, %do.body598
  %_tx.i.i850 = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %50 = ptrtoint ptr %_tx.i.i850 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_tx.i.i850, align 128
  %state.i.i851 = getelementptr inbounds %struct.netdev_queue, ptr %51, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i851) #16
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %add.ptr.i, align 4
  br label %do.body661

do.body617:                                       ; preds = %if.else531
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug455, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then629)) #16
          to label %do.body661 [label %if.then629], !srcloc !708

if.then629:                                       ; preds = %do.body617
  call void @__sanitizer_cov_trace_pc() #18
  %dev630 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug455, ptr noundef %dev630, ptr noundef nonnull @.str.37) #16
  br label %do.body661

do.body635:                                       ; preds = %if.else531
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_interrupt.__UNIQUE_ID_ddebug456, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_interrupt, %if.then647)) #16
          to label %do.body661 [label %if.then647], !srcloc !708

if.then647:                                       ; preds = %do.body635
  call void @__sanitizer_cov_trace_pc() #18
  %dev648 = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 21
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %interrupt_id) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !721
  %conv656 = zext i8 %53 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_interrupt.__UNIQUE_ID_ddebug456, ptr noundef %dev648, ptr noundef nonnull @.str.38, i32 noundef %conv, i32 noundef %conv656) #16
  br label %do.body661

do.body661:                                       ; preds = %if.then647, %do.body635, %if.then629, %do.body617, %do.end614, %if.then594, %do.end592.do.body661_crit_edge, %if.then567, %if.then565.do.body661_crit_edge, %sw.bb541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !722
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr534, i8 0) #16, !srcloc !712
  br label %if.end665

if.end665:                                        ; preds = %do.body661, %do.body527
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !711
  call void @arm_heavy_mb() #16
  %amem.i852 = getelementptr i8, ptr %dev_id, i32 2316
  %54 = ptrtoint ptr %amem.i852 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %amem.i852, align 4
  %add.ptr1.i853 = getelementptr i8, ptr %55, i32 3845
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i853, i8 0) #16, !srcloc !712
  br label %cleanup

cleanup:                                          ; preds = %if.end665, %do.end50, %if.then22, %do.body10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end50 ], [ 1, %if.end665 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then22 ], [ 0, %do.body10 ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %memtmp) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ray_config(ptr noundef %link) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_config.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_config, %if.then)) #16
          to label %do.end7 [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_config.__UNIQUE_ID_ddebug365, ptr noundef %dev4, ptr noundef nonnull @.str.158) #16
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %prod_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 19
  %2 = ptrtoint ptr %prod_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prod_id, align 8
  %tobool9.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool9.not, ptr @.str.160, ptr %3
  %arrayidx13 = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %5, null
  %cond20 = select i1 %tobool14.not, ptr @.str.160, ptr %5
  %arrayidx22 = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 19, i32 2
  %6 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx22, align 8
  %tobool23.not = icmp eq ptr %7, null
  %cond29 = select i1 %tobool23.not, ptr @.str.160, ptr %7
  %arrayidx31 = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 19, i32 3
  %8 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %9, null
  %cond38 = select i1 %tobool32.not, ptr @.str.160, ptr %9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull %spec.select, ptr noundef nonnull %cond20, ptr noundef nonnull %cond29, ptr noundef nonnull %cond38) #19
  %call40 = tail call i32 @pcmcia_request_irq(ptr noundef %link, ptr noundef nonnull @ray_interrupt) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %do.end7.failed_crit_edge

do.end7.failed_crit_edge:                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %failed

if.end43:                                         ; preds = %do.end7
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 8
  %irq44 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %12 = ptrtoint ptr %irq44 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %irq44, align 4
  %call45 = tail call i32 @pcmcia_enable_device(ptr noundef %link) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.failed_crit_edge

if.end43.failed_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %failed

if.end48:                                         ; preds = %if.end43
  %arrayidx49 = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx49, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %or = or i32 %16, 65
  store i32 %or, ptr %flags, align 4
  %17 = load ptr, ptr %arrayidx49, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %17, align 4
  %19 = load ptr, ptr %arrayidx49, align 4
  %end = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32768, ptr %end, align 4
  %21 = load ptr, ptr %arrayidx49, align 4
  %22 = load i32, ptr @ray_mem_speed, align 4
  %call56 = tail call i32 @pcmcia_request_window(ptr noundef %link, ptr noundef %21, i32 noundef %22) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end48.failed_crit_edge

if.end48.failed_crit_edge:                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %failed

if.end59:                                         ; preds = %if.end48
  %23 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx49, align 4
  %call62 = tail call i32 @pcmcia_map_mem_page(ptr noundef %link, ptr noundef %24, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end59.failed_crit_edge

if.end59.failed_crit_edge:                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %failed

if.end65:                                         ; preds = %if.end59
  %25 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx49, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %28
  %add.i = add i32 %sub.i, %30
  %call72 = tail call ptr @ioremap(i32 noundef %28, i32 noundef %add.i) #16
  %sram = getelementptr i8, ptr %1, i32 2312
  %31 = ptrtoint ptr %sram to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call72, ptr %sram, align 4
  %arrayidx74 = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 3
  %32 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx74, align 4
  %flags75 = getelementptr inbounds %struct.resource, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %flags75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags75, align 4
  %or76 = or i32 %35, 65
  store i32 %or76, ptr %flags75, align 4
  %36 = load ptr, ptr %arrayidx74, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %36, align 4
  %38 = load ptr, ptr %arrayidx74, align 4
  %end82 = getelementptr inbounds %struct.resource, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %end82 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16384, ptr %end82, align 4
  %40 = load ptr, ptr %arrayidx74, align 4
  %41 = load i32, ptr @ray_mem_speed, align 4
  %call85 = tail call i32 @pcmcia_request_window(ptr noundef %link, ptr noundef %40, i32 noundef %41) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end65.failed_crit_edge

if.end65.failed_crit_edge:                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %failed

if.end88:                                         ; preds = %if.end65
  %42 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx74, align 4
  %call91 = tail call i32 @pcmcia_map_mem_page(ptr noundef %link, ptr noundef %43, i32 noundef 32768) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end88.failed_crit_edge

if.end88.failed_crit_edge:                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #18
  br label %failed

if.end94:                                         ; preds = %if.end88
  %44 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx74, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %end.i286 = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %end.i286 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %end.i286, align 4
  %sub.i287 = sub i32 1, %47
  %add.i288 = add i32 %sub.i287, %49
  %call101 = tail call ptr @ioremap(i32 noundef %47, i32 noundef %add.i288) #16
  %rmem = getelementptr i8, ptr %1, i32 2320
  %50 = ptrtoint ptr %rmem to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call101, ptr %rmem, align 4
  %arrayidx103 = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 4
  %51 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx103, align 4
  %flags104 = getelementptr inbounds %struct.resource, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %flags104 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags104, align 4
  %or105 = or i32 %54, 97
  store i32 %or105, ptr %flags104, align 4
  %55 = load ptr, ptr %arrayidx103, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %55, align 4
  %57 = load ptr, ptr %arrayidx103, align 4
  %end111 = getelementptr inbounds %struct.resource, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %end111 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4096, ptr %end111, align 4
  %59 = load ptr, ptr %arrayidx103, align 4
  %60 = load i32, ptr @ray_mem_speed, align 4
  %call114 = tail call i32 @pcmcia_request_window(ptr noundef %link, ptr noundef %59, i32 noundef %60) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.end94.failed_crit_edge

if.end94.failed_crit_edge:                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %failed

if.end117:                                        ; preds = %if.end94
  %61 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx103, align 4
  %call120 = tail call i32 @pcmcia_map_mem_page(ptr noundef %link, ptr noundef %62, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.end117.failed_crit_edge

if.end117.failed_crit_edge:                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #18
  br label %failed

if.end123:                                        ; preds = %if.end117
  %63 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx103, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %end.i289 = getelementptr inbounds %struct.resource, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %end.i289 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %end.i289, align 4
  %sub.i290 = sub i32 1, %66
  %add.i291 = add i32 %sub.i290, %68
  %call130 = tail call ptr @ioremap(i32 noundef %66, i32 noundef %add.i291) #16
  %amem = getelementptr i8, ptr %1, i32 2316
  %69 = ptrtoint ptr %amem to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call130, ptr %amem, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_config.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_config, %if.then143)) #16
          to label %do.body149 [label %if.then143], !srcloc !708

if.then143:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #18
  %dev144 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %70 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sram, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_config.__UNIQUE_ID_ddebug366, ptr noundef %dev144, ptr noundef nonnull @.str.161, ptr noundef %71) #16
  br label %do.body149

do.body149:                                       ; preds = %if.then143, %if.end123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_config.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_config, %if.then161)) #16
          to label %do.body167 [label %if.then161], !srcloc !708

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #18
  %dev162 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %72 = ptrtoint ptr %rmem to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmem, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_config.__UNIQUE_ID_ddebug367, ptr noundef %dev162, ptr noundef nonnull @.str.162, ptr noundef %73) #16
  br label %do.body167

do.body167:                                       ; preds = %if.then161, %do.body149
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_config.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_config, %if.then179)) #16
          to label %do.end184 [label %if.then179], !srcloc !708

if.then179:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #18
  %dev180 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %74 = ptrtoint ptr %amem to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %amem, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_config.__UNIQUE_ID_ddebug368, ptr noundef %dev180, ptr noundef nonnull @.str.163, ptr noundef %75) #16
  br label %do.end184

do.end184:                                        ; preds = %if.then179, %do.body167
  %call185 = tail call fastcc i32 @ray_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %cmp = icmp slt i32 %call185, 0
  br i1 %cmp, label %if.then186, label %if.end187

if.then186:                                       ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ray_release(ptr noundef %link)
  br label %cleanup

if.end187:                                        ; preds = %do.end184
  %dev188 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %76 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %dev188, ptr %parent, align 8
  %call190 = tail call i32 @register_netdev(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %cmp191.not = icmp eq i32 %call190, 0
  br i1 %cmp191.not, label %do.end201, label %do.end195

do.end195:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #18
  %call197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165) #19
  tail call fastcc void @ray_release(ptr noundef %link)
  br label %cleanup

do.end201:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #18
  %77 = ptrtoint ptr %irq44 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq44, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %79 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_addr, align 64
  %call204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %1, i32 noundef %78, ptr noundef %80) #19
  br label %cleanup

failed:                                           ; preds = %if.end117.failed_crit_edge, %if.end94.failed_crit_edge, %if.end88.failed_crit_edge, %if.end65.failed_crit_edge, %if.end59.failed_crit_edge, %if.end48.failed_crit_edge, %if.end43.failed_crit_edge, %do.end7.failed_crit_edge
  tail call fastcc void @ray_release(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %failed, %do.end201, %do.end195, %if.then186
  %retval.0 = phi i32 [ -19, %failed ], [ -19, %if.then186 ], [ %call190, %do.end195 ], [ 0, %do.end201 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @authenticate(ptr noundef %local) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %finder = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 5
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @authenticate.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@authenticate, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @authenticate.__UNIQUE_ID_ddebug478, ptr noundef %dev, ptr noundef nonnull @.str.40) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #16
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.body6, label %if.end23

do.body6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @authenticate.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@authenticate, %if.then18)) #16
          to label %cleanup [label %if.then18], !srcloc !708

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #18
  %dev19 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @authenticate.__UNIQUE_ID_ddebug479, ptr noundef %dev19, ptr noundef nonnull @.str.41) #16
  br label %cleanup

if.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %timer = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 6
  %call24 = tail call i32 @del_timer(ptr noundef %timer) #16
  %bss_id = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 16
  %call25 = tail call fastcc i32 @build_auth_frame(ptr noundef %local, ptr noundef %bss_id, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  %spec.select = select i1 %tobool26.not, ptr @authenticate_timeout, ptr @join_net
  %2 = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 6, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.select, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 200
  %expires = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #16
  %authentication_state = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 1
  %6 = ptrtoint ptr %authentication_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %authentication_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then18, %do.body6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @start_net(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -24
  %finder = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  %call = tail call ptr @pcmcia_dev_present(ptr noundef %1) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_net.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_net, %if.then6)) #16
          to label %cleanup [label %if.then6], !srcloc !708

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_net.__UNIQUE_ID_ddebug379, ptr noundef %dev, ptr noundef nonnull @.str.56) #16
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = tail call fastcc i32 @get_free_ccs(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %sram.i = getelementptr i8, ptr %t, i32 -16
  %2 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sram.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1024
  %add.ptr12 = getelementptr %struct.ccs, ptr %add.ptr.i, i32 %call8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !723
  tail call void @arm_heavy_mb() #16
  %cmd = getelementptr %struct.ccs, ptr %add.ptr.i, i32 %call8, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd, i8 6) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !724
  tail call void @arm_heavy_mb() #16
  %var = getelementptr %struct.ccs, ptr %add.ptr.i, i32 %call8, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %var, i8 0) #16, !srcloc !712
  %call19 = tail call fastcc i32 @interrupt_ecf(ptr noundef %add.ptr, i32 noundef %call8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end42, label %do.body22

do.body22:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_net.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_net, %if.then34)) #16
          to label %do.body39 [label %if.then34], !srcloc !708

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #18
  %dev35 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_net.__UNIQUE_ID_ddebug380, ptr noundef %dev35, ptr noundef nonnull @.str.57) #16
  br label %do.body39

do.body39:                                        ; preds = %if.then34, %do.body22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !725
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 0) #16, !srcloc !712
  br label %cleanup

if.end42:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %add.ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.body39, %if.end7.cleanup_crit_edge, %if.then6, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @join_net(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -24
  %finder = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  %call = tail call ptr @pcmcia_dev_present(ptr noundef %1) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @join_net.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@join_net, %if.then6)) #16
          to label %cleanup [label %if.then6], !srcloc !708

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @join_net.__UNIQUE_ID_ddebug381, ptr noundef %dev, ptr noundef nonnull @.str.63) #16
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = tail call fastcc i32 @get_free_ccs(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %sram.i = getelementptr i8, ptr %t, i32 -16
  %2 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sram.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1024
  %add.ptr12 = getelementptr %struct.ccs, ptr %add.ptr.i, i32 %call8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !726
  tail call void @arm_heavy_mb() #16
  %cmd = getelementptr %struct.ccs, ptr %add.ptr.i, i32 %call8, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd, i8 7) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !727
  tail call void @arm_heavy_mb() #16
  %var = getelementptr %struct.ccs, ptr %add.ptr.i, i32 %call8, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %var, i8 0) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !728
  tail call void @arm_heavy_mb() #16
  %net_initiated = getelementptr inbounds %struct.join_network_cmd, ptr %var, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %net_initiated, i8 0) #16, !srcloc !712
  %call23 = tail call fastcc i32 @interrupt_ecf(ptr noundef %add.ptr, i32 noundef %call8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end46, label %do.body26

do.body26:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @join_net.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@join_net, %if.then38)) #16
          to label %do.body43 [label %if.then38], !srcloc !708

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #18
  %dev39 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @join_net.__UNIQUE_ID_ddebug382, ptr noundef %dev39, ptr noundef nonnull @.str.64) #16
  br label %do.body43

do.body43:                                        ; preds = %if.then38, %do.body26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !729
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 0) #16, !srcloc !712
  br label %cleanup

if.end46:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %add.ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.body43, %if.end7.cleanup_crit_edge, %if.then6, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ray_rx(ptr noundef %dev, ptr noundef %local, ptr noundef %prcs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_rx.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_rx, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ray_rx.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.66) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %var = getelementptr inbounds %struct.rcs, ptr %prcs, i32 0, i32 3
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %var) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !730
  %conv = zext i8 %0 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx10 = getelementptr %struct.rcs, ptr %prcs, i32 0, i32 3, i32 0, i32 1
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx10) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !731
  %conv14 = zext i8 %1 to i32
  %shl.masked = and i32 %shl, 16128
  %and = or i32 %shl.masked, %conv14
  %rx_data_length = getelementptr inbounds %struct.rcs, ptr %prcs, i32 0, i32 3, i32 0, i32 2
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %rx_data_length) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !732
  %conv22 = zext i8 %2 to i32
  %shl23 = shl nuw nsw i32 %conv22, 8
  %arrayidx28 = getelementptr %struct.rcs, ptr %prcs, i32 0, i32 3, i32 0, i32 3
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx28) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !733
  %conv32 = zext i8 %3 to i32
  %add33 = or i32 %shl23, %conv32
  %rx_sig_lev = getelementptr inbounds %struct.rcs, ptr %prcs, i32 0, i32 3, i32 0, i32 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %rx_sig_lev) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !734
  %last_rsl = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 29
  %5 = ptrtoint ptr %last_rsl to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %last_rsl, align 1
  %rmem = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 4
  %6 = ptrtoint ptr %rmem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmem, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %and
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !735
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.235)
  switch i8 %8, label %do.body143 [
    i8 8, label %do.body46
    i8 -80, label %do.body63
    i8 -64, label %do.body83
    i8 72, label %do.body104
    i8 -128, label %do.body121
  ]

do.body46:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_rx.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_rx, %if.then58)) #16
          to label %do.end61 [label %if.then58], !srcloc !708

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ray_rx.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.67) #16
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %do.body46
  tail call fastcc void @rx_data(ptr noundef %dev, ptr noundef %prcs, i32 noundef %and, i32 noundef %add33)
  br label %sw.epilog

do.body63:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_rx.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_rx, %if.then75)) #16
          to label %do.end78 [label %if.then75], !srcloc !708

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ray_rx.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.68) #16
  br label %do.end78

do.end78:                                         ; preds = %if.then75, %do.body63
  %10 = load i32, ptr @sniffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool79.not = icmp eq i32 %10, 0
  br i1 %tobool79.not, label %if.else, label %if.then80

if.then80:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @rx_data(ptr noundef %dev, ptr noundef %prcs, i32 noundef %and, i32 noundef %add33)
  br label %sw.epilog

if.else:                                          ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @rx_authenticate(ptr noundef %local, i32 noundef %and, i32 noundef %add33)
  br label %sw.epilog

do.body83:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_rx.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_rx, %if.then95)) #16
          to label %do.end98 [label %if.then95], !srcloc !708

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ray_rx.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.69) #16
  br label %do.end98

do.end98:                                         ; preds = %if.then95, %do.body83
  %11 = load i32, ptr @sniffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool99.not = icmp eq i32 %11, 0
  br i1 %tobool99.not, label %if.else101, label %if.then100

if.then100:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @rx_data(ptr noundef %dev, ptr noundef %prcs, i32 noundef %and, i32 noundef %add33)
  br label %sw.epilog

if.else101:                                       ; preds = %do.end98
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_deauthenticate.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_rx, %if.then.i)) #16
          to label %rx_deauthenticate.exit [label %if.then.i], !srcloc !708

if.then.i:                                        ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_deauthenticate.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.100) #16
  br label %rx_deauthenticate.exit

rx_deauthenticate.exit:                           ; preds = %if.then.i, %if.else101
  %authentication_state.i = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 1
  %12 = ptrtoint ptr %authentication_state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %authentication_state.i, align 4
  br label %sw.epilog

do.body104:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_rx.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_rx, %if.then116)) #16
          to label %sw.epilog [label %if.then116], !srcloc !708

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ray_rx.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.70) #16
  br label %sw.epilog

do.body121:                                       ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_rx.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_rx, %if.then133)) #16
          to label %do.end136 [label %if.then133], !srcloc !708

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ray_rx.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.71) #16
  br label %do.end136

do.end136:                                        ; preds = %if.then133, %do.body121
  %13 = load i32, ptr @sniffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool137.not = icmp eq i32 %13, 0
  br i1 %tobool137.not, label %do.end136.if.end139_crit_edge, label %if.then138

do.end136.if.end139_crit_edge:                    ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end139

if.then138:                                       ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @rx_data(ptr noundef %dev, ptr noundef %prcs, i32 noundef %and, i32 noundef %add33)
  br label %if.end139

if.end139:                                        ; preds = %if.then138, %do.end136.if.end139_crit_edge
  %last_bcn = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 31
  %14 = tail call i32 @llvm.umin.i32(i32 %add33, i32 357)
  %add.i = add nuw nsw i32 %14, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 16385
  %15 = ptrtoint ptr %rmem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmem, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %and
  br i1 %cmp.i, label %if.then.i218, label %if.else.i

if.then.i218:                                     ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mmiocpy(ptr noundef %last_bcn, ptr noundef %add.ptr.i, i32 noundef %14) #16
  br label %copy_from_rx_buff.exit

if.else.i:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i = add nsw i32 %add.i, -16384
  %sub3.i = sub nsw i32 %14, %sub.i
  tail call void @mmiocpy(ptr noundef %last_bcn, ptr noundef %add.ptr.i, i32 noundef %sub3.i) #16
  %add.ptr4.i = getelementptr i8, ptr %last_bcn, i32 %14
  %idx.neg.i = sub nsw i32 16384, %add.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %idx.neg.i
  %17 = ptrtoint ptr %rmem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmem, align 4
  tail call void @mmiocpy(ptr noundef %add.ptr5.i, ptr noundef %18, i32 noundef %sub.i) #16
  br label %copy_from_rx_buff.exit

copy_from_rx_buff.exit:                           ; preds = %if.else.i, %if.then.i218
  %beacon_rxed = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 30
  %19 = ptrtoint ptr %beacon_rxed to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %beacon_rxed, align 4
  %call142 = tail call ptr @ray_get_stats(ptr noundef %dev)
  br label %sw.epilog

do.body143:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_rx.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_rx, %if.then155)) #16
          to label %sw.epilog [label %if.then155], !srcloc !708

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #18
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !736
  %conv161 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ray_rx.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.72, i32 noundef %conv161) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then155, %do.body143, %copy_from_rx_buff.exit, %if.then116, %do.body104, %rx_deauthenticate.exit, %if.then100, %if.else, %if.then80, %do.end61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @build_auth_frame(ptr noundef %local, ptr noundef %dest, i32 noundef %auth_type) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @get_free_tx_ccs(ptr noundef %local)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_auth_frame.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@build_auth_frame, %if.then4)) #16
          to label %cleanup [label %if.then4], !srcloc !708

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_auth_frame.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.43) #16
  br label %cleanup

if.end5:                                          ; preds = %entry
  %sram.i = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 2
  %0 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sram.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1024
  %add.ptr = getelementptr %struct.ccs, ptr %add.ptr.i, i32 %call
  %shl = shl i32 %call, 11
  %add = add i32 %shl, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !737
  tail call void @arm_heavy_mb() #16
  %cmd = getelementptr %struct.ccs, ptr %add.ptr.i, i32 %call, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd, i8 9) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !738
  tail call void @arm_heavy_mb() #16
  %2 = lshr exact i32 %add, 8
  %conv = trunc i32 %2 to i8
  %var = getelementptr %struct.ccs, ptr %add.ptr.i, i32 %call, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %var, i8 %conv) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !739
  tail call void @arm_heavy_mb() #16
  %add.ptr19 = getelementptr i8, ptr %var, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 32) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !740
  tail call void @arm_heavy_mb() #16
  %tx_data_length = getelementptr inbounds %struct.tx_requested_cmd, ptr %var, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %tx_data_length, i8 0) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !741
  tail call void @arm_heavy_mb() #16
  %add.ptr31 = getelementptr %struct.tx_requested_cmd, ptr %var, i32 0, i32 1, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 34) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !742
  tail call void @arm_heavy_mb() #16
  %pow_sav_mode = getelementptr inbounds %struct.tx_requested_cmd, ptr %var, i32 0, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %pow_sav_mode, i8 0) #16, !srcloc !712
  %3 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sram.i, align 4
  %add.ptr36 = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !743
  tail call void @arm_heavy_mb() #16
  %mac = getelementptr inbounds %struct.tx_msg, ptr %add.ptr36, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mac, i8 -80) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !744
  tail call void @arm_heavy_mb() #16
  %frame_ctl_2 = getelementptr inbounds %struct.mac_header, ptr %mac, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %frame_ctl_2, i8 0) #16, !srcloc !712
  %addr_1 = getelementptr inbounds %struct.mac_header, ptr %mac, i32 0, i32 4
  tail call void @mmiocpy(ptr noundef %addr_1, ptr noundef %dest, i32 noundef 6) #16
  %addr_2 = getelementptr inbounds %struct.mac_header, ptr %mac, i32 0, i32 5
  %a_mac_addr = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 10, i32 0, i32 5
  tail call void @mmiocpy(ptr noundef %addr_2, ptr noundef %a_mac_addr, i32 noundef 6) #16
  %addr_3 = getelementptr inbounds %struct.mac_header, ptr %mac, i32 0, i32 6
  %bss_id = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 16
  tail call void @mmiocpy(ptr noundef %addr_3, ptr noundef %bss_id, i32 noundef 6) #16
  %var52 = getelementptr inbounds %struct.tx_msg, ptr %add.ptr36, i32 0, i32 3
  tail call void @mmioset(ptr noundef %var52, i32 noundef 0, i32 noundef 6) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !745
  tail call void @arm_heavy_mb() #16
  %conv57 = trunc i32 %auth_type to i8
  %add.ptr60 = getelementptr i8, ptr %var52, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr60, i8 %conv57) #16, !srcloc !712
  %call61 = tail call fastcc i32 @interrupt_ecf(ptr noundef %local, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end5.cleanup_crit_edge, label %do.body64

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body64:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_auth_frame.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@build_auth_frame, %if.then76)) #16
          to label %do.body80 [label %if.then76], !srcloc !708

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_auth_frame.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.44) #16
  br label %do.body80

do.body80:                                        ; preds = %if.then76, %do.body64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !746
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #16, !srcloc !712
  br label %cleanup

cleanup:                                          ; preds = %do.body80, %if.end5.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ -1, %do.body80 ], [ -1, %if.then4 ], [ 0, %if.end5.cleanup_crit_edge ], [ -1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @authenticate_timeout(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @del_timer(ptr noundef %t) #16
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #19
  tail call void @join_net(ptr noundef %t)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_free_tx_ccs(ptr noundef %local) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sram.i = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 2
  %0 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sram.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1024
  %finder = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 5
  %2 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %finder, align 4
  %call1 = tail call ptr @pcmcia_dev_present(ptr noundef %3) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_free_tx_ccs.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_free_tx_ccs, %if.then6)) #16
          to label %cleanup [label %if.then6], !srcloc !708

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_free_tx_ccs.__UNIQUE_ID_ddebug410, ptr noundef %dev, ptr noundef nonnull @.str.46) #16
  br label %cleanup

if.end7:                                          ; preds = %entry
  %tx_ccs_lock = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 7
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %tx_ccs_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.body.preheader, label %do.body11

for.body.preheader:                               ; preds = %if.end7
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !747
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp32 = icmp eq i8 %4, 0
  br i1 %cmp32, label %for.body.preheader.do.body35_crit_edge, label %for.inc

for.body.preheader.do.body35_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

do.body11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_free_tx_ccs.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_free_tx_ccs, %if.then23)) #16
          to label %cleanup [label %if.then23], !srcloc !708

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #18
  %dev24 = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_free_tx_ccs.__UNIQUE_ID_ddebug411, ptr noundef %dev24, ptr noundef nonnull @.str.47) #16
  br label %cleanup

do.body35:                                        ; preds = %for.inc.12.do.body35_crit_edge, %for.inc.11.do.body35_crit_edge, %for.inc.10.do.body35_crit_edge, %for.inc.9.do.body35_crit_edge, %for.inc.8.do.body35_crit_edge, %for.inc.7.do.body35_crit_edge, %for.inc.6.do.body35_crit_edge, %for.inc.5.do.body35_crit_edge, %for.inc.4.do.body35_crit_edge, %for.inc.3.do.body35_crit_edge, %for.inc.2.do.body35_crit_edge, %for.inc.1.do.body35_crit_edge, %for.inc.do.body35_crit_edge, %for.body.preheader.do.body35_crit_edge
  %i.091.lcssa = phi i32 [ 0, %for.body.preheader.do.body35_crit_edge ], [ 1, %for.inc.do.body35_crit_edge ], [ 2, %for.inc.1.do.body35_crit_edge ], [ 3, %for.inc.2.do.body35_crit_edge ], [ 4, %for.inc.3.do.body35_crit_edge ], [ 5, %for.inc.4.do.body35_crit_edge ], [ 6, %for.inc.5.do.body35_crit_edge ], [ 7, %for.inc.6.do.body35_crit_edge ], [ 8, %for.inc.7.do.body35_crit_edge ], [ 9, %for.inc.8.do.body35_crit_edge ], [ 10, %for.inc.9.do.body35_crit_edge ], [ 11, %for.inc.10.do.body35_crit_edge ], [ 12, %for.inc.11.do.body35_crit_edge ], [ 13, %for.inc.12.do.body35_crit_edge ]
  %add.ptr.lcssa = phi ptr [ %add.ptr.i, %for.body.preheader.do.body35_crit_edge ], [ %add.ptr.1, %for.inc.do.body35_crit_edge ], [ %add.ptr.2, %for.inc.1.do.body35_crit_edge ], [ %add.ptr.3, %for.inc.2.do.body35_crit_edge ], [ %add.ptr.4, %for.inc.3.do.body35_crit_edge ], [ %add.ptr.5, %for.inc.4.do.body35_crit_edge ], [ %add.ptr.6, %for.inc.5.do.body35_crit_edge ], [ %add.ptr.7, %for.inc.6.do.body35_crit_edge ], [ %add.ptr.8, %for.inc.7.do.body35_crit_edge ], [ %add.ptr.9, %for.inc.8.do.body35_crit_edge ], [ %add.ptr.10, %for.inc.9.do.body35_crit_edge ], [ %add.ptr.11, %for.inc.10.do.body35_crit_edge ], [ %add.ptr.12, %for.inc.11.do.body35_crit_edge ], [ %add.ptr.13, %for.inc.12.do.body35_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !748
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.lcssa, i8 1) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !749
  tail call void @arm_heavy_mb() #16
  %link44 = getelementptr %struct.ccs, ptr %add.ptr.i, i32 %i.091.lcssa, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %link44, i8 -1) #16, !srcloc !712
  %5 = ptrtoint ptr %tx_ccs_lock to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tx_ccs_lock, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %add.ptr.1 = getelementptr i8, ptr %1, i32 1040
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.1) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !747
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp32.1 = icmp eq i8 %6, 0
  br i1 %cmp32.1, label %for.inc.do.body35_crit_edge, label %for.inc.1

for.inc.do.body35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

for.inc.1:                                        ; preds = %for.inc
  %add.ptr.2 = getelementptr i8, ptr %1, i32 1056
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.2) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !747
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp32.2 = icmp eq i8 %7, 0
  br i1 %cmp32.2, label %for.inc.1.do.body35_crit_edge, label %for.inc.2

for.inc.1.do.body35_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

for.inc.2:                                        ; preds = %for.inc.1
  %add.ptr.3 = getelementptr i8, ptr %1, i32 1072
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.3) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !747
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp32.3 = icmp eq i8 %8, 0
  br i1 %cmp32.3, label %for.inc.2.do.body35_crit_edge, label %for.inc.3

for.inc.2.do.body35_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

for.inc.3:                                        ; preds = %for.inc.2
  %add.ptr.4 = getelementptr i8, ptr %1, i32 1088
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.4) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !747
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp32.4 = icmp eq i8 %9, 0
  br i1 %cmp32.4, label %for.inc.3.do.body35_crit_edge, label %for.inc.4

for.inc.3.do.body35_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

for.inc.4:                                        ; preds = %for.inc.3
  %add.ptr.5 = getelementptr i8, ptr %1, i32 1104
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.5) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !747
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp32.5 = icmp eq i8 %10, 0
  br i1 %cmp32.5, label %for.inc.4.do.body35_crit_edge, label %for.inc.5

for.inc.4.do.body35_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

for.inc.5:                                        ; preds = %for.inc.4
  %add.ptr.6 = getelementptr i8, ptr %1, i32 1120
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.6) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !747
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp32.6 = icmp eq i8 %11, 0
  br i1 %cmp32.6, label %for.inc.5.do.body35_crit_edge, label %for.inc.6

for.inc.5.do.body35_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

for.inc.6:                                        ; preds = %for.inc.5
  %add.ptr.7 = getelementptr i8, ptr %1, i32 1136
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.7) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !747
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp32.7 = icmp eq i8 %12, 0
  br i1 %cmp32.7, label %for.inc.6.do.body35_crit_edge, label %for.inc.7

for.inc.6.do.body35_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

for.inc.7:                                        ; preds = %for.inc.6
  %add.ptr.8 = getelementptr i8, ptr %1, i32 1152
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.8) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !747
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp32.8 = icmp eq i8 %13, 0
  br i1 %cmp32.8, label %for.inc.7.do.body35_crit_edge, label %for.inc.8

for.inc.7.do.body35_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

for.inc.8:                                        ; preds = %for.inc.7
  %add.ptr.9 = getelementptr i8, ptr %1, i32 1168
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.9) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !747
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp32.9 = icmp eq i8 %14, 0
  br i1 %cmp32.9, label %for.inc.8.do.body35_crit_edge, label %for.inc.9

for.inc.8.do.body35_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

for.inc.9:                                        ; preds = %for.inc.8
  %add.ptr.10 = getelementptr i8, ptr %1, i32 1184
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.10) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !747
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp32.10 = icmp eq i8 %15, 0
  br i1 %cmp32.10, label %for.inc.9.do.body35_crit_edge, label %for.inc.10

for.inc.9.do.body35_crit_edge:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

for.inc.10:                                       ; preds = %for.inc.9
  %add.ptr.11 = getelementptr i8, ptr %1, i32 1200
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.11) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !747
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp32.11 = icmp eq i8 %16, 0
  br i1 %cmp32.11, label %for.inc.10.do.body35_crit_edge, label %for.inc.11

for.inc.10.do.body35_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

for.inc.11:                                       ; preds = %for.inc.10
  %add.ptr.12 = getelementptr i8, ptr %1, i32 1216
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.12) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !747
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp32.12 = icmp eq i8 %17, 0
  br i1 %cmp32.12, label %for.inc.11.do.body35_crit_edge, label %for.inc.12

for.inc.11.do.body35_crit_edge:                   ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

for.inc.12:                                       ; preds = %for.inc.11
  %add.ptr.13 = getelementptr i8, ptr %1, i32 1232
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.13) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !747
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp32.13 = icmp eq i8 %18, 0
  br i1 %cmp32.13, label %for.inc.12.do.body35_crit_edge, label %for.inc.13

for.inc.12.do.body35_crit_edge:                   ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

for.inc.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %tx_ccs_lock to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %tx_ccs_lock, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_free_tx_ccs.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_free_tx_ccs, %if.then60)) #16
          to label %cleanup [label %if.then60], !srcloc !708

if.then60:                                        ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #18
  %dev61 = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_free_tx_ccs.__UNIQUE_ID_ddebug412, ptr noundef %dev61, ptr noundef nonnull @.str.48) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %for.inc.13, %do.body35, %if.then23, %do.body11, %if.then6, %do.body
  %retval.0 = phi i32 [ %i.091.lcssa, %do.body35 ], [ -3, %if.then6 ], [ -2, %if.then23 ], [ -1, %if.then60 ], [ -3, %do.body ], [ -2, %do.body11 ], [ -1, %for.inc.13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @interrupt_ecf(ptr noundef %local, i32 noundef %ccs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %finder = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 5
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  %call = tail call ptr @pcmcia_dev_present(ptr noundef %1) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @interrupt_ecf.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@interrupt_ecf, %if.then5)) #16
          to label %cleanup [label %if.then5], !srcloc !708

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @interrupt_ecf.__UNIQUE_ID_ddebug407, ptr noundef %dev, ptr noundef nonnull @.str.50) #16
  br label %cleanup

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @interrupt_ecf.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@interrupt_ecf, %if.then19)) #16
          to label %do.end23 [label %if.then19], !srcloc !708

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  %dev20 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @interrupt_ecf.__UNIQUE_ID_ddebug408, ptr noundef %dev20, ptr noundef nonnull @.str.51, ptr noundef %local, i32 noundef %ccs) #16
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body7
  %amem = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 3
  br label %land.rhs

while.cond:                                       ; preds = %land.rhs
  %dec = add nsw i32 %i.081, -1
  %cond = icmp eq i32 %dec, 0
  br i1 %cond, label %do.body32, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

land.rhs:                                         ; preds = %while.cond.land.rhs_crit_edge, %do.end23
  %i.081 = phi i32 [ 50, %do.end23 ], [ %dec, %while.cond.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %amem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %amem, align 4
  %add.ptr25 = getelementptr i8, ptr %3, i32 3846
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr25) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !750
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool29.not = icmp eq i8 %5, 0
  br i1 %tobool29.not, label %do.body50, label %while.cond

do.body32:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @interrupt_ecf.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@interrupt_ecf, %if.then44)) #16
          to label %cleanup [label %if.then44], !srcloc !708

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #18
  %dev45 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @interrupt_ecf.__UNIQUE_ID_ddebug409, ptr noundef %dev45, ptr noundef nonnull @.str.52) #16
  br label %cleanup

do.body50:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !751
  tail call void @arm_heavy_mb() #16
  %conv53 = trunc i32 %ccs to i8
  %sram = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 2
  %6 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sram, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %conv53) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !752
  tail call void @arm_heavy_mb() #16
  %8 = ptrtoint ptr %amem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %amem, align 4
  %add.ptr60 = getelementptr i8, ptr %9, i32 3846
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr60, i8 1) #16, !srcloc !712
  br label %cleanup

cleanup:                                          ; preds = %do.body50, %if.then44, %do.body32, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %do.body50 ], [ -1, %if.then5 ], [ -1, %if.then44 ], [ -1, %do.body ], [ -1, %do.body32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_free_ccs(ptr noundef %local) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sram.i = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 2
  %0 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sram.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1024
  %finder = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 5
  %2 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %finder, align 4
  %call1 = tail call ptr @pcmcia_dev_present(ptr noundef %3) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_free_ccs.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_free_ccs, %if.then6)) #16
          to label %cleanup [label %if.then6], !srcloc !708

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_free_ccs.__UNIQUE_ID_ddebug413, ptr noundef %dev, ptr noundef nonnull @.str.59) #16
  br label %cleanup

if.end7:                                          ; preds = %entry
  %ccs_lock = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 8
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %ccs_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.for.body_crit_edge, label %do.body11

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

do.body11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_free_ccs.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_free_ccs, %if.then23)) #16
          to label %cleanup [label %if.then23], !srcloc !708

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #18
  %dev24 = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_free_ccs.__UNIQUE_ID_ddebug414, ptr noundef %dev24, ptr noundef nonnull @.str.60) #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.091 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 14, %if.end7.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.ccs, ptr %add.ptr.i, i32 %i.091
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !753
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp32 = icmp eq i8 %4, 0
  br i1 %cmp32, label %do.body35, label %for.inc

do.body35:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !754
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !755
  tail call void @arm_heavy_mb() #16
  %link44 = getelementptr %struct.ccs, ptr %add.ptr.i, i32 %i.091, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %link44, i8 -1) #16, !srcloc !712
  %5 = ptrtoint ptr %ccs_lock to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ccs_lock, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %ccs_lock to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ccs_lock, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_free_ccs.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_free_ccs, %if.then60)) #16
          to label %cleanup [label %if.then60], !srcloc !708

if.then60:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %dev61 = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_free_ccs.__UNIQUE_ID_ddebug415, ptr noundef %dev61, ptr noundef nonnull @.str.61) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %for.end, %do.body35, %if.then23, %do.body11, %if.then6, %do.body
  %retval.0 = phi i32 [ %i.091, %do.body35 ], [ -3, %if.then6 ], [ -2, %if.then23 ], [ -1, %if.then60 ], [ -3, %do.body ], [ -2, %do.body11 ], [ -1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rx_data(ptr noundef %dev, ptr noundef %prcs, i32 noundef %pkt_addr, i32 noundef %rx_len) unnamed_addr #3 align 64 {
entry:
  %linksrcaddr = alloca [6 x i8], align 1
  %wstats342 = alloca %struct.iw_quality, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %last_rsl = getelementptr i8, ptr %dev, i32 2669
  %0 = ptrtoint ptr %last_rsl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %last_rsl, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %linksrcaddr) #16
  %2 = load i32, ptr @sniffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body45_crit_edge

entry.do.body45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body45

if.then:                                          ; preds = %entry
  %3 = load i8, ptr @translate, align 1, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %rx_len)
  %cmp16 = icmp slt i32 %rx_len, 38
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  br i1 %cmp16, label %if.then2.do.body_crit_edge, label %lor.lhs.false

if.then2.do.body_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then2
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  %add5 = add i32 %5, 42
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %rx_len)
  %cmp6 = icmp ult i32 %add5, %rx_len
  br i1 %cmp6, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.do.body45_crit_edge

lor.lhs.false.do.body45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body45

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.then2.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_data.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_data, %if.then14)) #16
          to label %cleanup [label %if.then14], !srcloc !708

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_data.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.74, i32 noundef %rx_len) #16
  br label %cleanup

if.else:                                          ; preds = %if.then
  br i1 %cmp16, label %if.else.do.body26_crit_edge, label %lor.lhs.false18

if.else.do.body26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body26

lor.lhs.false18:                                  ; preds = %if.else
  %mtu19 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %mtu19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu19, align 4
  %add22 = add i32 %7, 42
  call void @__sanitizer_cov_trace_cmp4(i32 %add22, i32 %rx_len)
  %cmp23 = icmp ult i32 %add22, %rx_len
  br i1 %cmp23, label %lor.lhs.false18.do.body26_crit_edge, label %lor.lhs.false18.do.body45_crit_edge

lor.lhs.false18.do.body45_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body45

lor.lhs.false18.do.body26_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body26

do.body26:                                        ; preds = %lor.lhs.false18.do.body26_crit_edge, %if.else.do.body26_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_data.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_data, %if.then38)) #16
          to label %cleanup [label %if.then38], !srcloc !708

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_data.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.74, i32 noundef %rx_len) #16
  br label %cleanup

do.body45:                                        ; preds = %lor.lhs.false18.do.body45_crit_edge, %lor.lhs.false.do.body45_crit_edge, %entry.do.body45_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_data.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_data, %if.then57)) #16
          to label %do.end60 [label %if.then57], !srcloc !708

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_data.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.75) #16
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %do.body45
  %next_frag_rcs_index = getelementptr inbounds %struct.rcs, ptr %prcs, i32 0, i32 3, i32 0, i32 5
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %next_frag_rcs_index) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !757
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp65.not = icmp eq i8 %8, -1
  br i1 %cmp65.not, label %do.end60.if.end166_crit_edge, label %do.body68

do.end60.if.end166_crit_edge:                     ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end166

do.body68:                                        ; preds = %do.end60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_data.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_data, %if.then80)) #16
          to label %do.end83 [label %if.then80], !srcloc !708

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_data.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.76) #16
  br label %do.end83

do.end83:                                         ; preds = %if.then80, %do.body68
  %totalpacketlength = getelementptr inbounds %struct.rcs, ptr %prcs, i32 0, i32 3, i32 0, i32 6
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %totalpacketlength) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !758
  %conv90 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv90, 8
  %arrayidx95 = getelementptr %struct.rcs, ptr %prcs, i32 0, i32 3, i32 0, i32 7
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx95) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !759
  %conv99 = zext i8 %10 to i32
  %add100 = or i32 %shl, %conv99
  %sram.i = getelementptr i8, ptr %dev, i32 2312
  br label %do.body101

do.body101:                                       ; preds = %if.end135, %do.end83
  %tmp.0 = phi i32 [ %add100, %do.end83 ], [ %sub, %if.end135 ]
  %prcslink.0 = phi ptr [ %prcs, %do.end83 ], [ %add.ptr, %if.end135 ]
  %rx_data_length = getelementptr inbounds %struct.rcs, ptr %prcslink.0, i32 0, i32 3, i32 0, i32 2
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %rx_data_length) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !760
  %conv109 = zext i8 %11 to i32
  %shl110.neg514 = mul nsw i32 %conv109, -256
  %arrayidx115 = getelementptr %struct.rcs, ptr %prcslink.0, i32 0, i32 3, i32 0, i32 3
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx115) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !761
  %conv119 = zext i8 %12 to i32
  %add120.neg = add i32 %shl110.neg514, %tmp.0
  %sub = sub i32 %add120.neg, %conv119
  %next_frag_rcs_index124 = getelementptr inbounds %struct.rcs, ptr %prcslink.0, i32 0, i32 3, i32 0, i32 5
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %next_frag_rcs_index124) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !762
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp129 = icmp eq i8 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp132 = icmp slt i32 %sub, 0
  %or.cond = select i1 %cmp129, i1 true, i1 %cmp132
  br i1 %or.cond, label %do.end144, label %if.end135

if.end135:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sram.i, align 4
  %add.ptr.i443 = getelementptr i8, ptr %15, i32 1024
  %link_field = getelementptr inbounds %struct.rcs, ptr %prcslink.0, i32 0, i32 2
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %link_field) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !763
  %conv142 = zext i8 %16 to i32
  %add.ptr = getelementptr %struct.rcs, ptr %add.ptr.i443, i32 %conv142
  br label %do.body101

do.end144:                                        ; preds = %do.body101
  br i1 %cmp132, label %do.body148, label %do.end144.if.end166_crit_edge

do.end144.if.end166_crit_edge:                    ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end166

do.body148:                                       ; preds = %do.end144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_data.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_data, %if.then160)) #16
          to label %do.end163 [label %if.then160], !srcloc !708

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_data.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.77) #16
  br label %do.end163

do.end163:                                        ; preds = %if.then160, %do.body148
  %rx_dropped = getelementptr i8, ptr %dev, i32 2592
  %17 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_dropped, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %rx_dropped, align 4
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %next_frag_rcs_index) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !764
  br label %do.body.i

do.body.i:                                        ; preds = %if.end13.i.do.body.i_crit_edge, %do.end163
  %dec40.i = phi i32 [ 16, %do.end163 ], [ %dec.i, %if.end13.i.do.body.i_crit_edge ]
  %prcslink.038.i = phi ptr [ %prcs, %do.end163 ], [ %add.ptr.i444, %if.end13.i.do.body.i_crit_edge ]
  %rcsindex.0.in37.i = phi i8 [ %19, %do.end163 ], [ %22, %if.end13.i.do.body.i_crit_edge ]
  %rcsindex.039.i = zext i8 %rcsindex.0.in37.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !765
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %prcslink.038.i, i8 0) #16, !srcloc !712
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rcsindex.0.in37.i)
  %cmp.i = icmp slt i8 %rcsindex.0.in37.i, 0
  br i1 %cmp.i, label %do.body4.i, label %if.end13.i

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @release_frag_chain.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_data, %if.then10.i)) #16
          to label %release_frag_chain.exit [label %if.then10.i], !srcloc !708

if.then10.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @release_frag_chain.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.13, i32 noundef %rcsindex.039.i) #16
  br label %release_frag_chain.exit

if.end13.i:                                       ; preds = %do.body.i
  %20 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sram.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 1024
  %add.ptr.i444 = getelementptr %struct.rcs, ptr %add.ptr.i.i, i32 %rcsindex.039.i
  %next_frag_rcs_index18.i = getelementptr %struct.rcs, ptr %add.ptr.i.i, i32 %rcsindex.039.i, i32 3, i32 0, i32 5
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %next_frag_rcs_index18.i) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !766
  %dec.i = add nsw i32 %dec40.i, -1
  %tobool.not.i = icmp eq i32 %dec40.i, 0
  br i1 %tobool.not.i, label %if.end13.i.release_frag_chain.exit_crit_edge, label %if.end13.i.do.body.i_crit_edge

if.end13.i.do.body.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

if.end13.i.release_frag_chain.exit_crit_edge:     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_frag_chain.exit

release_frag_chain.exit:                          ; preds = %if.end13.i.release_frag_chain.exit_crit_edge, %if.then10.i, %do.body4.i
  %prcslink.035.i = phi ptr [ %prcslink.038.i, %do.body4.i ], [ %prcslink.038.i, %if.then10.i ], [ %add.ptr.i444, %if.end13.i.release_frag_chain.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !767
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %prcslink.035.i, i8 0) #16, !srcloc !712
  br label %cleanup

if.end166:                                        ; preds = %do.end144.if.end166_crit_edge, %do.end60.if.end166_crit_edge
  %total_len.0 = phi i32 [ %add100, %do.end144.if.end166_crit_edge ], [ %rx_len, %do.end60.if.end166_crit_edge ]
  %add167 = add i32 %total_len.0, 5
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add167, i32 noundef 2592) #16
  %cmp169 = icmp eq ptr %call.i.i, null
  br i1 %cmp169, label %do.body172, label %if.end203

do.body172:                                       ; preds = %if.end166
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_data.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_data, %if.then184)) #16
          to label %do.end187 [label %if.then184], !srcloc !708

if.then184:                                       ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_data.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.78) #16
  br label %do.end187

do.end187:                                        ; preds = %if.then184, %do.body172
  %rx_dropped189 = getelementptr i8, ptr %dev, i32 2592
  %23 = ptrtoint ptr %rx_dropped189 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_dropped189, align 4
  %inc190 = add i32 %24, 1
  store i32 %inc190, ptr %rx_dropped189, align 4
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %next_frag_rcs_index) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !768
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp199.not = icmp eq i8 %25, -1
  br i1 %cmp199.not, label %do.end187.cleanup_crit_edge, label %if.then201

do.end187.cleanup_crit_edge:                      ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then201:                                       ; preds = %do.end187
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %next_frag_rcs_index) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !764
  %sram.i.i446 = getelementptr i8, ptr %dev, i32 2312
  br label %do.body.i452

do.body.i452:                                     ; preds = %if.end13.i460.do.body.i452_crit_edge, %if.then201
  %dec40.i447 = phi i32 [ 16, %if.then201 ], [ %dec.i458, %if.end13.i460.do.body.i452_crit_edge ]
  %prcslink.038.i448 = phi ptr [ %prcs, %if.then201 ], [ %add.ptr.i456, %if.end13.i460.do.body.i452_crit_edge ]
  %rcsindex.0.in37.i449 = phi i8 [ %26, %if.then201 ], [ %29, %if.end13.i460.do.body.i452_crit_edge ]
  %rcsindex.039.i450 = zext i8 %rcsindex.0.in37.i449 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !765
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %prcslink.038.i448, i8 0) #16, !srcloc !712
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rcsindex.0.in37.i449)
  %cmp.i451 = icmp slt i8 %rcsindex.0.in37.i449, 0
  br i1 %cmp.i451, label %do.body4.i453, label %if.end13.i460

do.body4.i453:                                    ; preds = %do.body.i452
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @release_frag_chain.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_data, %if.then10.i454)) #16
          to label %release_frag_chain.exit462 [label %if.then10.i454], !srcloc !708

if.then10.i454:                                   ; preds = %do.body4.i453
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @release_frag_chain.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.13, i32 noundef %rcsindex.039.i450) #16
  br label %release_frag_chain.exit462

if.end13.i460:                                    ; preds = %do.body.i452
  %27 = ptrtoint ptr %sram.i.i446 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sram.i.i446, align 4
  %add.ptr.i.i455 = getelementptr i8, ptr %28, i32 1024
  %add.ptr.i456 = getelementptr %struct.rcs, ptr %add.ptr.i.i455, i32 %rcsindex.039.i450
  %next_frag_rcs_index18.i457 = getelementptr %struct.rcs, ptr %add.ptr.i.i455, i32 %rcsindex.039.i450, i32 3, i32 0, i32 5
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %next_frag_rcs_index18.i457) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !766
  %dec.i458 = add nsw i32 %dec40.i447, -1
  %tobool.not.i459 = icmp eq i32 %dec40.i447, 0
  br i1 %tobool.not.i459, label %if.end13.i460.release_frag_chain.exit462_crit_edge, label %if.end13.i460.do.body.i452_crit_edge

if.end13.i460.do.body.i452_crit_edge:             ; preds = %if.end13.i460
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i452

if.end13.i460.release_frag_chain.exit462_crit_edge: ; preds = %if.end13.i460
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_frag_chain.exit462

release_frag_chain.exit462:                       ; preds = %if.end13.i460.release_frag_chain.exit462_crit_edge, %if.then10.i454, %do.body4.i453
  %prcslink.035.i461 = phi ptr [ %prcslink.038.i448, %do.body4.i453 ], [ %prcslink.038.i448, %if.then10.i454 ], [ %add.ptr.i456, %if.end13.i460.release_frag_chain.exit462_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !767
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %prcslink.035.i461, i8 0) #16, !srcloc !712
  br label %cleanup

if.end203:                                        ; preds = %if.end166
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %add.ptr.i463 = getelementptr i8, ptr %31, i32 2
  store ptr %add.ptr.i463, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %33, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_data.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_data, %if.then216)) #16
          to label %do.end219 [label %if.then216], !srcloc !708

if.then216:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_data.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.79, i32 noundef %total_len.0, i32 noundef %rx_len) #16
  br label %do.end219

do.end219:                                        ; preds = %if.then216, %if.end203
  %call220 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %total_len.0) #16
  %and = and i32 %pkt_addr, 16383
  %add.i = add i32 %and, %rx_len
  %sub.i = add i32 %add.i, -16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i464 = icmp slt i32 %sub.i, 1
  %rmem.i = getelementptr i8, ptr %dev, i32 2320
  %34 = ptrtoint ptr %rmem.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmem.i, align 4
  %add.ptr.i465 = getelementptr i8, ptr %35, i32 %and
  br i1 %cmp.i464, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mmiocpy(ptr noundef %call220, ptr noundef %add.ptr.i465, i32 noundef %rx_len) #16
  br label %copy_from_rx_buff.exit

if.else.i:                                        ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #18
  %sub3.i = sub i32 %rx_len, %sub.i
  tail call void @mmiocpy(ptr noundef %call220, ptr noundef %add.ptr.i465, i32 noundef %sub3.i) #16
  %add.ptr4.i = getelementptr i8, ptr %call220, i32 %rx_len
  %idx.neg.i = sub i32 16384, %add.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %idx.neg.i
  %36 = ptrtoint ptr %rmem.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmem.i, align 4
  tail call void @mmiocpy(ptr noundef %add.ptr5.i, ptr noundef %37, i32 noundef %sub.i) #16
  br label %copy_from_rx_buff.exit

copy_from_rx_buff.exit:                           ; preds = %if.else.i, %if.then.i
  %add.ptr222 = getelementptr i8, ptr %call220, i32 %rx_len
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %add.ptr.i467 = getelementptr i8, ptr %39, i32 10
  %40 = call ptr @memcpy(ptr %linksrcaddr, ptr %add.ptr.i467, i32 6)
  %41 = load i32, ptr @sniffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool223.not = icmp eq i32 %41, 0
  br i1 %tobool223.not, label %if.then224, label %copy_from_rx_buff.exit.if.end231_crit_edge

copy_from_rx_buff.exit.if.end231_crit_edge:       ; preds = %copy_from_rx_buff.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end231

if.then224:                                       ; preds = %copy_from_rx_buff.exit
  %42 = load i8, ptr @translate, align 1, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool225.not = icmp eq i8 %42, 0
  br i1 %tobool225.not, label %if.then226, label %if.else228

if.then226:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #18
  %call227 = tail call ptr @skb_pull(ptr noundef nonnull %call.i.i, i32 noundef 24) #16
  br label %if.end231

if.else228:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @untranslate(ptr noundef nonnull %call.i.i, i32 noundef %total_len.0)
  br label %if.end231

if.end231:                                        ; preds = %if.else228, %if.then226, %copy_from_rx_buff.exit.if.end231_crit_edge
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %next_frag_rcs_index) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !769
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %cmp240.not = icmp eq i8 %43, -1
  br i1 %cmp240.not, label %if.end231.if.end326_crit_edge, label %if.then242

if.end231.if.end326_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end326

if.then242:                                       ; preds = %if.end231
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_data.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_data, %if.then255)) #16
          to label %do.end258 [label %if.then255], !srcloc !708

if.then255:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_data.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.80) #16
  br label %do.end258

do.end258:                                        ; preds = %if.then255, %if.then242
  %sram.i468 = getelementptr i8, ptr %dev, i32 2312
  br label %do.body259

do.body259:                                       ; preds = %land.rhs.do.body259_crit_edge, %do.end258
  %tmp.1 = phi i32 [ 17, %do.end258 ], [ %dec, %land.rhs.do.body259_crit_edge ]
  %rx_ptr.0 = phi ptr [ %add.ptr222, %do.end258 ], [ %add.ptr312, %land.rhs.do.body259_crit_edge ]
  %prcslink.1 = phi ptr [ %prcs, %do.end258 ], [ %add.ptr269, %land.rhs.do.body259_crit_edge ]
  %44 = ptrtoint ptr %sram.i468 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sram.i468, align 4
  %add.ptr.i469 = getelementptr i8, ptr %45, i32 1024
  %next_frag_rcs_index264 = getelementptr inbounds %struct.rcs, ptr %prcslink.1, i32 0, i32 3, i32 0, i32 5
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %next_frag_rcs_index264) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !770
  %conv268 = zext i8 %46 to i32
  %var272 = getelementptr %struct.rcs, ptr %add.ptr.i469, i32 %conv268, i32 3
  %rx_data_length273 = getelementptr inbounds %struct.rx_packet_cmd, ptr %var272, i32 0, i32 1
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %rx_data_length273) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !771
  %conv278 = zext i8 %47 to i32
  %shl279 = shl nuw nsw i32 %conv278, 8
  %arrayidx284 = getelementptr %struct.rx_packet_cmd, ptr %var272, i32 0, i32 1, i32 1
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx284) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !772
  %conv288 = zext i8 %48 to i32
  %shl279.masked = and i32 %shl279, 16128
  %and290 = or i32 %shl279.masked, %conv288
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %var272) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !773
  %conv298 = zext i8 %49 to i32
  %shl299 = shl nuw nsw i32 %conv298, 8
  %arrayidx304 = getelementptr [2 x i8], ptr %var272, i32 0, i32 1
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx304) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !774
  %conv308 = zext i8 %50 to i32
  %shl299.masked = and i32 %shl299, 16128
  %and310 = or i32 %shl299.masked, %conv308
  %add.i470 = add nuw nsw i32 %and310, %and290
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %add.i470)
  %cmp.i472 = icmp ult i32 %add.i470, 16385
  %51 = ptrtoint ptr %rmem.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmem.i, align 4
  %add.ptr.i474 = getelementptr i8, ptr %52, i32 %and310
  br i1 %cmp.i472, label %if.then.i475, label %if.else.i480

if.then.i475:                                     ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mmiocpy(ptr noundef %rx_ptr.0, ptr noundef %add.ptr.i474, i32 noundef %and290) #16
  br label %copy_from_rx_buff.exit481

if.else.i480:                                     ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i471 = add nsw i32 %add.i470, -16384
  %sub3.i476 = sub nsw i32 %and290, %sub.i471
  tail call void @mmiocpy(ptr noundef %rx_ptr.0, ptr noundef %add.ptr.i474, i32 noundef %sub3.i476) #16
  %add.ptr4.i477 = getelementptr i8, ptr %rx_ptr.0, i32 %and290
  %idx.neg.i478 = sub nsw i32 16384, %add.i470
  %add.ptr5.i479 = getelementptr i8, ptr %add.ptr4.i477, i32 %idx.neg.i478
  %53 = ptrtoint ptr %rmem.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmem.i, align 4
  tail call void @mmiocpy(ptr noundef %add.ptr5.i479, ptr noundef %54, i32 noundef %sub.i471) #16
  br label %copy_from_rx_buff.exit481

copy_from_rx_buff.exit481:                        ; preds = %if.else.i480, %if.then.i475
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.1)
  %tobool314.not = icmp eq i32 %tmp.1, 0
  br i1 %tobool314.not, label %copy_from_rx_buff.exit481.do.end325_crit_edge, label %land.rhs

copy_from_rx_buff.exit481.do.end325_crit_edge:    ; preds = %copy_from_rx_buff.exit481
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end325

land.rhs:                                         ; preds = %copy_from_rx_buff.exit481
  %dec = add nsw i32 %tmp.1, -1
  %add.ptr312 = getelementptr i8, ptr %rx_ptr.0, i32 %and290
  %add.ptr269 = getelementptr %struct.rcs, ptr %add.ptr.i469, i32 %conv268
  %next_frag_rcs_index318 = getelementptr inbounds %struct.rx_packet_cmd, ptr %var272, i32 0, i32 3
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %next_frag_rcs_index318) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !775
  %cmp323.not = icmp eq i8 %55, -1
  br i1 %cmp323.not, label %land.rhs.do.end325_crit_edge, label %land.rhs.do.body259_crit_edge

land.rhs.do.body259_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body259

land.rhs.do.end325_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end325

do.end325:                                        ; preds = %land.rhs.do.end325_crit_edge, %copy_from_rx_buff.exit481.do.end325_crit_edge
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %next_frag_rcs_index) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !764
  br label %do.body.i489

do.body.i489:                                     ; preds = %if.end13.i497.do.body.i489_crit_edge, %do.end325
  %dec40.i484 = phi i32 [ 16, %do.end325 ], [ %dec.i495, %if.end13.i497.do.body.i489_crit_edge ]
  %prcslink.038.i485 = phi ptr [ %prcs, %do.end325 ], [ %add.ptr.i493, %if.end13.i497.do.body.i489_crit_edge ]
  %rcsindex.0.in37.i486 = phi i8 [ %56, %do.end325 ], [ %59, %if.end13.i497.do.body.i489_crit_edge ]
  %rcsindex.039.i487 = zext i8 %rcsindex.0.in37.i486 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !765
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %prcslink.038.i485, i8 0) #16, !srcloc !712
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rcsindex.0.in37.i486)
  %cmp.i488 = icmp slt i8 %rcsindex.0.in37.i486, 0
  br i1 %cmp.i488, label %do.body4.i490, label %if.end13.i497

do.body4.i490:                                    ; preds = %do.body.i489
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @release_frag_chain.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_data, %if.then10.i491)) #16
          to label %release_frag_chain.exit499 [label %if.then10.i491], !srcloc !708

if.then10.i491:                                   ; preds = %do.body4.i490
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @release_frag_chain.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.13, i32 noundef %rcsindex.039.i487) #16
  br label %release_frag_chain.exit499

if.end13.i497:                                    ; preds = %do.body.i489
  %57 = ptrtoint ptr %sram.i468 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sram.i468, align 4
  %add.ptr.i.i492 = getelementptr i8, ptr %58, i32 1024
  %add.ptr.i493 = getelementptr %struct.rcs, ptr %add.ptr.i.i492, i32 %rcsindex.039.i487
  %next_frag_rcs_index18.i494 = getelementptr %struct.rcs, ptr %add.ptr.i.i492, i32 %rcsindex.039.i487, i32 3, i32 0, i32 5
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %next_frag_rcs_index18.i494) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !766
  %dec.i495 = add nsw i32 %dec40.i484, -1
  %tobool.not.i496 = icmp eq i32 %dec40.i484, 0
  br i1 %tobool.not.i496, label %if.end13.i497.release_frag_chain.exit499_crit_edge, label %if.end13.i497.do.body.i489_crit_edge

if.end13.i497.do.body.i489_crit_edge:             ; preds = %if.end13.i497
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i489

if.end13.i497.release_frag_chain.exit499_crit_edge: ; preds = %if.end13.i497
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_frag_chain.exit499

release_frag_chain.exit499:                       ; preds = %if.end13.i497.release_frag_chain.exit499_crit_edge, %if.then10.i491, %do.body4.i490
  %prcslink.035.i498 = phi ptr [ %prcslink.038.i485, %do.body4.i490 ], [ %prcslink.038.i485, %if.then10.i491 ], [ %add.ptr.i493, %if.end13.i497.release_frag_chain.exit499_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !767
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %prcslink.035.i498, i8 0) #16, !srcloc !712
  br label %if.end326

if.end326:                                        ; preds = %release_frag_chain.exit499, %if.end231.if.end326_crit_edge
  %call327 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i, ptr noundef %dev) #16
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %60 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %call327, ptr %protocol, align 8
  %call328 = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i) #16
  %stats329 = getelementptr i8, ptr %dev, i32 2568
  %61 = ptrtoint ptr %stats329 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %stats329, align 4
  %inc330 = add i32 %62, 1
  store i32 %inc330, ptr %stats329, align 4
  %rx_bytes = getelementptr i8, ptr %dev, i32 2576
  %63 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_bytes, align 4
  %add332 = add i32 %64, %total_len.0
  store i32 %add332, ptr %rx_bytes, align 4
  %bss_id = getelementptr i8, ptr %dev, i32 2552
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %linksrcaddr, ptr noundef dereferenceable(6) %bss_id, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool336.not = icmp eq i32 %bcmp, 0
  br i1 %tobool336.not, label %if.then337, label %if.end326.if.end341_crit_edge

if.end326.if.end341_crit_edge:                    ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end341

if.then337:                                       ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #18
  %level = getelementptr i8, ptr %dev, i32 3039
  %65 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %1, ptr %level, align 1
  %updated = getelementptr i8, ptr %dev, i32 3041
  %66 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 2, ptr %updated, align 1
  br label %if.end341

if.end341:                                        ; preds = %if.then337, %if.end326.if.end341_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wstats342) #16
  %67 = getelementptr inbounds %struct.iw_quality, ptr %wstats342, i32 0, i32 1
  %68 = getelementptr inbounds %struct.iw_quality, ptr %wstats342, i32 0, i32 3
  %69 = call ptr @memset(ptr %wstats342, i32 255, i32 3)
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %1, ptr %67, align 1
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 2, ptr %68, align 1
  call void @wireless_spy_update(ptr noundef %dev, ptr noundef nonnull %linksrcaddr, ptr noundef nonnull %wstats342) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wstats342) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end341, %release_frag_chain.exit462, %do.end187.cleanup_crit_edge, %release_frag_chain.exit, %if.then38, %do.body26, %if.then14, %do.body
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %linksrcaddr) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rx_authenticate(ptr noundef %local, i32 noundef %pkt_addr, i32 noundef %rx_len) unnamed_addr #3 align 64 {
entry:
  %buff = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buff) #16
  %0 = call ptr @memset(ptr %buff, i32 255, i32 256)
  %timer = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 6
  %call = tail call i32 @del_timer(ptr noundef %timer) #16
  %and = and i32 %rx_len, 255
  %add.i = add i32 %and, %pkt_addr
  %sub.i = add i32 %add.i, -16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 1
  %rmem.i = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 4
  %1 = ptrtoint ptr %rmem.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %pkt_addr
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @mmiocpy(ptr noundef nonnull %buff, ptr noundef %add.ptr.i, i32 noundef %and) #16
  br label %copy_from_rx_buff.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sub3.i = sub nsw i32 %and, %sub.i
  call void @mmiocpy(ptr noundef nonnull %buff, ptr noundef %add.ptr.i, i32 noundef %sub3.i) #16
  %add.ptr4.i = getelementptr i8, ptr %buff, i32 %and
  %idx.neg.i = sub i32 16384, %add.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %idx.neg.i
  %3 = ptrtoint ptr %rmem.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmem.i, align 4
  call void @mmiocpy(ptr noundef %add.ptr5.i, ptr noundef %4, i32 noundef %sub.i) #16
  br label %copy_from_rx_buff.exit

copy_from_rx_buff.exit:                           ; preds = %if.else.i, %if.then.i
  %sparm = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 10
  %5 = ptrtoint ptr %sparm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sparm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %copy_from_rx_buff.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_authenticate.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_authenticate, %if.then7)) #16
          to label %do.end [label %if.then7], !srcloc !708

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %var = getelementptr inbounds %struct.ray_rx_msg, ptr %buff, i32 0, i32 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_authenticate.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.90, ptr noundef %var) #16
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %arrayidx = getelementptr inbounds %struct.ray_rx_msg, ptr %buff, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp11 = icmp eq i8 %8, 1
  br i1 %cmp11, label %do.body14, label %do.end.if.end99_crit_edge

do.end.if.end99_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

do.body14:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_authenticate.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_authenticate, %if.then26)) #16
          to label %do.end29 [label %if.then26], !srcloc !708

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_authenticate.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.91) #16
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %do.body14
  %addr_2 = getelementptr inbounds %struct.mac_header, ptr %buff, i32 0, i32 5
  %call31 = call fastcc i32 @build_auth_frame(ptr noundef %local, ptr noundef %addr_2, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %do.end29.if.end99_crit_edge

do.end29.if.end99_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

if.then33:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #18
  %authentication_state = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 1
  %9 = ptrtoint ptr %authentication_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %authentication_state, align 4
  %auth_id = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 17
  %10 = call ptr @memcpy(ptr %auth_id, ptr %addr_2, i32 6)
  br label %if.end99

if.else:                                          ; preds = %copy_from_rx_buff.exit
  %authentication_state40 = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 1
  %11 = ptrtoint ptr %authentication_state40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %authentication_state40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp41 = icmp eq i32 %12, 1
  br i1 %cmp41, label %if.then43, label %if.else.if.end99_crit_edge

if.else.if.end99_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

if.then43:                                        ; preds = %if.else
  %arrayidx45 = getelementptr inbounds %struct.ray_rx_msg, ptr %buff, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp47 = icmp eq i8 %14, 2
  br i1 %cmp47, label %if.then49, label %if.then43.if.end99_crit_edge

if.then43.if.end99_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

if.then49:                                        ; preds = %if.then43
  %arrayidx51 = getelementptr inbounds %struct.ray_rx_msg, ptr %buff, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx51, align 1
  %arrayidx54 = getelementptr inbounds %struct.ray_rx_msg, ptr %buff, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx54, align 1
  %or1 = or i8 %18, %16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or1)
  %cmp56 = icmp eq i8 %or1, 0
  br i1 %cmp56, label %do.body59, label %do.body77

do.body59:                                        ; preds = %if.then49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_authenticate.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_authenticate, %if.then71)) #16
          to label %do.end74 [label %if.then71], !srcloc !708

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_authenticate.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.92) #16
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %do.body59
  %19 = ptrtoint ptr %local to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5, ptr %local, align 4
  call fastcc void @associate(ptr noundef %local)
  %20 = ptrtoint ptr %authentication_state40 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %authentication_state40, align 4
  br label %if.end99

do.body77:                                        ; preds = %if.then49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_authenticate.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_authenticate, %if.then89)) #16
          to label %do.end92 [label %if.then89], !srcloc !708

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_authenticate.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.93) #16
  br label %do.end92

do.end92:                                         ; preds = %if.then89, %do.body77
  %21 = ptrtoint ptr %local to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 15, ptr %local, align 4
  call void @join_net(ptr noundef %timer)
  %22 = ptrtoint ptr %authentication_state40 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %authentication_state40, align 4
  br label %if.end99

if.end99:                                         ; preds = %do.end92, %do.end74, %if.then43.if.end99_crit_edge, %if.else.if.end99_crit_edge, %if.then33, %do.end29.if.end99_crit_edge, %do.end.if.end99_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buff) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ray_get_stats(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %finder = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  %sram = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sram, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 256
  %call1 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_get_stats.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_get_stats, %if.then6)) #16
          to label %cleanup [label %if.then6], !srcloc !708

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev7 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_get_stats.__UNIQUE_ID_ddebug416, ptr noundef %dev7, ptr noundef nonnull @.str.102) #16
  br label %cleanup

if.end8:                                          ; preds = %entry
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !776
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool12.not = icmp eq i8 %4, 0
  br i1 %tobool12.not, label %if.end8.if.end28_crit_edge, label %if.then13

if.end8.if.end28_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %mrx_overflow = getelementptr i8, ptr %3, i32 260
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mrx_overflow) #16, !srcloc !777
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !778
  %conv = zext i16 %5 to i32
  %rx_over_errors = getelementptr i8, ptr %dev, i32 2612
  %6 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_over_errors, align 4
  %add = add i32 %7, %conv
  store i32 %add, ptr %rx_over_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !779
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mrx_overflow, i8 0) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !780
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #16, !srcloc !712
  br label %if.end28

if.end28:                                         ; preds = %if.then13, %if.end8.if.end28_crit_edge
  %mrx_checksum_error_for_host = getelementptr i8, ptr %3, i32 257
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %mrx_checksum_error_for_host) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !781
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool34.not = icmp eq i8 %8, 0
  br i1 %tobool34.not, label %if.end28.if.end52_crit_edge, label %if.then35

if.end28.if.end52_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

if.then35:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %mrx_checksum_error = getelementptr i8, ptr %3, i32 262
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mrx_checksum_error) #16, !srcloc !777
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !782
  %conv41 = zext i16 %9 to i32
  %rx_crc_errors = getelementptr i8, ptr %dev, i32 2616
  %10 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_crc_errors, align 4
  %add43 = add i32 %11, %conv41
  store i32 %add43, ptr %rx_crc_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !783
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mrx_checksum_error, i8 0) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !784
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mrx_checksum_error_for_host, i8 0) #16, !srcloc !712
  br label %if.end52

if.end52:                                         ; preds = %if.then35, %if.end28.if.end52_crit_edge
  %rx_hec_error_for_host = getelementptr i8, ptr %3, i32 258
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %rx_hec_error_for_host) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !785
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool58.not = icmp eq i8 %12, 0
  br i1 %tobool58.not, label %if.end52.cleanup_crit_edge, label %if.then59

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then59:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  %rx_hec_error = getelementptr i8, ptr %3, i32 264
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %rx_hec_error) #16, !srcloc !777
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !786
  %conv65 = zext i16 %13 to i32
  %rx_frame_errors = getelementptr i8, ptr %dev, i32 2620
  %14 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_frame_errors, align 4
  %add67 = add i32 %15, %conv65
  store i32 %add67, ptr %rx_frame_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !787
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %rx_hec_error, i8 0) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !788
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %rx_hec_error_for_host, i8 0) #16, !srcloc !712
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.end52.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = getelementptr i8, ptr %dev, i32 2568
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @untranslate(ptr noundef %skb, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %ethertype = getelementptr i8, ptr %1, i32 30
  %2 = ptrtoint ptr %ethertype to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %ethertype, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.i.not.i = icmp eq i16 %6, 0
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %retval.0.i14 = select i1 %cmp.i.not.i, ptr %addr1.i, ptr %addr3.i
  %7 = ptrtoint ptr %retval.0.i14 to i32
  call void @__asan_load1_noabort(i32 %7)
  %destaddr.sroa.0.0.copyload = load i8, ptr %retval.0.i14, align 1
  %destaddr.sroa.5.0.call.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i14, i32 1
  %8 = ptrtoint ptr %destaddr.sroa.5.0.call.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %destaddr.sroa.5.0.copyload = load i8, ptr %destaddr.sroa.5.0.call.sroa_idx, align 1
  %destaddr.sroa.6.0.call.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i14, i32 2
  %9 = ptrtoint ptr %destaddr.sroa.6.0.call.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %destaddr.sroa.6.0.copyload = load i8, ptr %destaddr.sroa.6.0.call.sroa_idx, align 1
  %destaddr.sroa.7.0.call.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i14, i32 3
  %10 = ptrtoint ptr %destaddr.sroa.7.0.call.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %destaddr.sroa.7.0.copyload = load i8, ptr %destaddr.sroa.7.0.call.sroa_idx, align 1
  %destaddr.sroa.8.0.call.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i14, i32 4
  %11 = ptrtoint ptr %destaddr.sroa.8.0.call.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %destaddr.sroa.8.0.copyload = load i8, ptr %destaddr.sroa.8.0.call.sroa_idx, align 1
  %destaddr.sroa.9.0.call.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i14, i32 5
  %12 = ptrtoint ptr %destaddr.sroa.9.0.call.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %destaddr.sroa.9.0.copyload = load i8, ptr %destaddr.sroa.9.0.call.sroa_idx, align 1
  %13 = and i16 %5, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %13)
  %cmp.i.i = icmp eq i16 %13, 3
  %14 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.i11.not.i = icmp eq i16 %14, 0
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 3
  %spec.select = select i1 %cmp.i11.not.i, ptr %addr2.i, ptr %addr3.i
  %retval.0.i16 = select i1 %cmp.i.i, ptr %add.ptr, ptr %spec.select
  %15 = ptrtoint ptr %retval.0.i16 to i32
  call void @__asan_load1_noabort(i32 %15)
  %srcaddr.sroa.0.0.copyload = load i8, ptr %retval.0.i16, align 1
  %srcaddr.sroa.5.0.call4.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i16, i32 1
  %16 = ptrtoint ptr %srcaddr.sroa.5.0.call4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %srcaddr.sroa.5.0.copyload = load i8, ptr %srcaddr.sroa.5.0.call4.sroa_idx, align 1
  %srcaddr.sroa.6.0.call4.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i16, i32 2
  %17 = ptrtoint ptr %srcaddr.sroa.6.0.call4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %srcaddr.sroa.6.0.copyload = load i8, ptr %srcaddr.sroa.6.0.call4.sroa_idx, align 1
  %srcaddr.sroa.7.0.call4.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i16, i32 3
  %18 = ptrtoint ptr %srcaddr.sroa.7.0.call4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %srcaddr.sroa.7.0.copyload = load i8, ptr %srcaddr.sroa.7.0.call4.sroa_idx, align 1
  %srcaddr.sroa.8.0.call4.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i16, i32 4
  %19 = ptrtoint ptr %srcaddr.sroa.8.0.call4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %srcaddr.sroa.8.0.copyload = load i8, ptr %srcaddr.sroa.8.0.call4.sroa_idx, align 1
  %srcaddr.sroa.9.0.call4.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i16, i32 5
  %20 = ptrtoint ptr %srcaddr.sroa.9.0.call4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %srcaddr.sroa.9.0.copyload = load i8, ptr %srcaddr.sroa.9.0.call4.sroa_idx, align 1
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %22)
  %cmp.not = icmp eq i8 %22, -86
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %ssap = getelementptr i8, ptr %1, i32 25
  %23 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ssap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %24)
  %cmp7.not = icmp eq i8 %24, -86
  br i1 %cmp7.not, label %lor.lhs.false9, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %ctrl = getelementptr i8, ptr %1, i32 26
  %25 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp11.not = icmp eq i8 %26, 3
  br i1 %cmp11.not, label %if.else, label %lor.lhs.false9.do.body_crit_edge

lor.lhs.false9.do.body_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false9.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @untranslate.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@untranslate, %if.then16)) #16
          to label %do.end [label %if.then16], !srcloc !708

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr, align 1
  %conv18 = zext i8 %28 to i32
  %ssap19 = getelementptr i8, ptr %1, i32 25
  %29 = ptrtoint ptr %ssap19 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ssap19, align 1
  %conv20 = zext i8 %30 to i32
  %ctrl21 = getelementptr i8, ptr %1, i32 26
  %31 = ptrtoint ptr %ctrl21 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ctrl21, align 1
  %conv22 = zext i8 %32 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @untranslate.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.83, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %conv22) #16
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %add.ptr24 = getelementptr i8, ptr %34, i32 10
  %35 = trunc i32 %len to i16
  %conv25 = add i16 %35, -24
  %h_proto = getelementptr i8, ptr %34, i32 22
  %36 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %conv25, ptr %h_proto, align 1
  br label %if.end109

if.else:                                          ; preds = %lor.lhs.false9
  %org = getelementptr i8, ptr %1, i32 27
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %org, ptr noundef nonnull dereferenceable(3) @untranslate.org_bridge, i32 3) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp28 = icmp eq i32 %bcmp, 0
  br i1 %cmp28, label %do.body31, label %if.else50

do.body31:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @untranslate.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@untranslate, %if.then43)) #16
          to label %do.end46 [label %if.then43], !srcloc !708

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @untranslate.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.84) #16
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body31
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %add.ptr48 = getelementptr i8, ptr %38, i32 18
  %h_proto49 = getelementptr i8, ptr %38, i32 30
  %39 = ptrtoint ptr %h_proto49 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %3, ptr %h_proto49, align 1
  br label %if.end109

if.else50:                                        ; preds = %if.else
  %bcmp1 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %org, ptr noundef nonnull dereferenceable(3) @untranslate.org_1042, i32 3) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1)
  %cmp54 = icmp eq i32 %bcmp1, 0
  br i1 %cmp54, label %if.then56, label %do.end101

if.then56:                                        ; preds = %if.else50
  %40 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.236)
  switch i16 %3, label %do.body79 [
    i16 -32457, label %if.then56.do.body58_crit_edge
    i16 -32525, label %if.then56.do.body58_crit_edge22
  ]

if.then56.do.body58_crit_edge22:                  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body58

if.then56.do.body58_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body58

do.body58:                                        ; preds = %if.then56.do.body58_crit_edge, %if.then56.do.body58_crit_edge22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @untranslate.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@untranslate, %if.then70)) #16
          to label %do.end73 [label %if.then70], !srcloc !708

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @untranslate.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.85) #16
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %do.body58
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %add.ptr75 = getelementptr i8, ptr %42, i32 10
  %43 = trunc i32 %len to i16
  %conv77 = add i16 %43, -24
  %h_proto78 = getelementptr i8, ptr %42, i32 22
  %44 = ptrtoint ptr %h_proto78 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %conv77, ptr %h_proto78, align 1
  br label %if.end109

do.body79:                                        ; preds = %if.then56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @untranslate.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@untranslate, %if.then91)) #16
          to label %do.end94 [label %if.then91], !srcloc !708

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @untranslate.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.86) #16
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %do.body79
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %add.ptr96 = getelementptr i8, ptr %46, i32 18
  %h_proto97 = getelementptr i8, ptr %46, i32 30
  %47 = ptrtoint ptr %h_proto97 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %3, ptr %h_proto97, align 1
  br label %if.end109

do.end101:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #18
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #19
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %add.ptr105 = getelementptr i8, ptr %49, i32 10
  %h_proto106 = getelementptr i8, ptr %49, i32 22
  %50 = ptrtoint ptr %h_proto106 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %3, ptr %h_proto106, align 1
  br label %if.end109

if.end109:                                        ; preds = %do.end101, %do.end94, %do.end73, %do.end46, %do.end
  %peth.0 = phi ptr [ %add.ptr24, %do.end ], [ %add.ptr48, %do.end46 ], [ %add.ptr96, %do.end94 ], [ %add.ptr75, %do.end73 ], [ %add.ptr105, %do.end101 ]
  %delta.0 = phi i32 [ 10, %do.end ], [ 18, %do.end46 ], [ 18, %do.end94 ], [ 10, %do.end73 ], [ 10, %do.end101 ]
  %call110 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %delta.0) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @untranslate.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@untranslate, %if.then123)) #16
          to label %do.end127 [label %if.then123], !srcloc !708

if.then123:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @untranslate.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.88, i32 noundef %delta.0, ptr noundef %52) #16
  br label %do.end127

do.end127:                                        ; preds = %if.then123, %if.end109
  %53 = ptrtoint ptr %peth.0 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %destaddr.sroa.0.0.copyload, ptr %peth.0, align 1
  %destaddr.sroa.5.0.arraydecay128.sroa_idx = getelementptr inbounds i8, ptr %peth.0, i32 1
  %54 = ptrtoint ptr %destaddr.sroa.5.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %destaddr.sroa.5.0.copyload, ptr %destaddr.sroa.5.0.arraydecay128.sroa_idx, align 1
  %destaddr.sroa.6.0.arraydecay128.sroa_idx = getelementptr inbounds i8, ptr %peth.0, i32 2
  %55 = ptrtoint ptr %destaddr.sroa.6.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %destaddr.sroa.6.0.copyload, ptr %destaddr.sroa.6.0.arraydecay128.sroa_idx, align 1
  %destaddr.sroa.7.0.arraydecay128.sroa_idx = getelementptr inbounds i8, ptr %peth.0, i32 3
  %56 = ptrtoint ptr %destaddr.sroa.7.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %destaddr.sroa.7.0.copyload, ptr %destaddr.sroa.7.0.arraydecay128.sroa_idx, align 1
  %destaddr.sroa.8.0.arraydecay128.sroa_idx = getelementptr inbounds i8, ptr %peth.0, i32 4
  %57 = ptrtoint ptr %destaddr.sroa.8.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %destaddr.sroa.8.0.copyload, ptr %destaddr.sroa.8.0.arraydecay128.sroa_idx, align 1
  %destaddr.sroa.9.0.arraydecay128.sroa_idx = getelementptr inbounds i8, ptr %peth.0, i32 5
  %58 = ptrtoint ptr %destaddr.sroa.9.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %destaddr.sroa.9.0.copyload, ptr %destaddr.sroa.9.0.arraydecay128.sroa_idx, align 1
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %peth.0, i32 0, i32 1
  %59 = ptrtoint ptr %h_source to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %srcaddr.sroa.0.0.copyload, ptr %h_source, align 1
  %srcaddr.sroa.5.0.arraydecay130.sroa_idx = getelementptr inbounds %struct.ethhdr, ptr %peth.0, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %srcaddr.sroa.5.0.arraydecay130.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %srcaddr.sroa.5.0.copyload, ptr %srcaddr.sroa.5.0.arraydecay130.sroa_idx, align 1
  %srcaddr.sroa.6.0.arraydecay130.sroa_idx = getelementptr inbounds %struct.ethhdr, ptr %peth.0, i32 0, i32 1, i32 2
  %61 = ptrtoint ptr %srcaddr.sroa.6.0.arraydecay130.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %srcaddr.sroa.6.0.copyload, ptr %srcaddr.sroa.6.0.arraydecay130.sroa_idx, align 1
  %srcaddr.sroa.7.0.arraydecay130.sroa_idx = getelementptr inbounds %struct.ethhdr, ptr %peth.0, i32 0, i32 1, i32 3
  %62 = ptrtoint ptr %srcaddr.sroa.7.0.arraydecay130.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %srcaddr.sroa.7.0.copyload, ptr %srcaddr.sroa.7.0.arraydecay130.sroa_idx, align 1
  %srcaddr.sroa.8.0.arraydecay130.sroa_idx = getelementptr inbounds %struct.ethhdr, ptr %peth.0, i32 0, i32 1, i32 4
  %63 = ptrtoint ptr %srcaddr.sroa.8.0.arraydecay130.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %srcaddr.sroa.8.0.copyload, ptr %srcaddr.sroa.8.0.arraydecay130.sroa_idx, align 1
  %srcaddr.sroa.9.0.arraydecay130.sroa_idx = getelementptr inbounds %struct.ethhdr, ptr %peth.0, i32 0, i32 1, i32 5
  %64 = ptrtoint ptr %srcaddr.sroa.9.0.arraydecay130.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %srcaddr.sroa.9.0.copyload, ptr %srcaddr.sroa.9.0.arraydecay130.sroa_idx, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_spy_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @associate(ptr noundef %local) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %finder = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 5
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call = tail call ptr @pcmcia_dev_present(ptr noundef %1) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @associate.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@associate, %if.then5)) #16
          to label %cleanup [label %if.then5], !srcloc !708

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev6 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @associate.__UNIQUE_ID_ddebug484, ptr noundef %dev6, ptr noundef nonnull @.str.95) #16
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = tail call fastcc i32 @get_free_ccs(ptr noundef %local)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.body10, label %do.body28

do.body10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @associate.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@associate, %if.then22)) #16
          to label %cleanup [label %if.then22], !srcloc !708

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  %dev23 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @associate.__UNIQUE_ID_ddebug485, ptr noundef %dev23, ptr noundef nonnull @.str.96) #16
  br label %cleanup

do.body28:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @associate.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@associate, %if.then40)) #16
          to label %do.end44 [label %if.then40], !srcloc !708

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #18
  %dev41 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @associate.__UNIQUE_ID_ddebug486, ptr noundef %dev41, ptr noundef nonnull @.str.97) #16
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body28
  %sram.i = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 2
  %4 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sram.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1024
  %add.ptr = getelementptr %struct.ccs, ptr %add.ptr.i, i32 %call8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !789
  tail call void @arm_heavy_mb() #16
  %cmd = getelementptr %struct.ccs, ptr %add.ptr.i, i32 %call8, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd, i8 8) #16, !srcloc !712
  %call49 = tail call fastcc i32 @interrupt_ecf(ptr noundef %local, i32 noundef %call8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end76, label %do.body52

do.body52:                                        ; preds = %do.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @associate.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@associate, %if.then64)) #16
          to label %do.body69 [label %if.then64], !srcloc !708

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #18
  %dev65 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @associate.__UNIQUE_ID_ddebug487, ptr noundef %dev65, ptr noundef nonnull @.str.98) #16
  br label %do.body69

do.body69:                                        ; preds = %if.then64, %do.body52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !790
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #16, !srcloc !712
  %timer = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 6
  %call72 = tail call i32 @del_timer(ptr noundef %timer) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 200
  %expires = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %expires, align 4
  %function = getelementptr inbounds %struct.ray_dev_t, ptr %local, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @join_net, ptr %function, align 4
  tail call void @add_timer(ptr noundef %timer) #16
  %9 = ptrtoint ptr %local to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %local, align 4
  br label %cleanup

if.end76:                                         ; preds = %do.end44
  %10 = load i32, ptr @sniffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool77.not = icmp eq i32 %10, 0
  br i1 %tobool77.not, label %if.then78, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then78:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %11 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %12, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %if.end76.cleanup_crit_edge, %do.body69, %if.then22, %do.body10, %if.then5, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ray_dev_init(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %finder = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_dev_init.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_dev_init, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_dev_init.__UNIQUE_ID_ddebug385, ptr noundef %dev4, ptr noundef nonnull @.str.104, ptr noundef %dev) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #16
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.body8, label %do.body26

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_dev_init.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_dev_init, %if.then20)) #16
          to label %cleanup [label %if.then20], !srcloc !708

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #18
  %dev21 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_dev_init.__UNIQUE_ID_ddebug386, ptr noundef %dev21, ptr noundef nonnull @.str.105) #16
  br label %cleanup

do.body26:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_dev_init.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_dev_init, %if.then38)) #16
          to label %do.end42 [label %if.then38], !srcloc !708

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #18
  %dev39 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_dev_init.__UNIQUE_ID_ddebug387, ptr noundef %dev39, ptr noundef nonnull @.str.106, i32 noundef %3) #16
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body26
  %a_mac_addr = getelementptr i8, ptr %dev, i32 2424
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %a_mac_addr, i32 noundef 6) #16
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %4 = call ptr @memset(ptr %broadcast, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_dev_init.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_dev_init, %if.then56)) #16
          to label %cleanup [label %if.then56], !srcloc !708

if.then56:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #18
  %dev57 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_dev_init.__UNIQUE_ID_ddebug388, ptr noundef %dev57, ptr noundef nonnull @.str.107) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %do.end42, %if.then20, %do.body8
  %retval.0 = phi i32 [ -1, %if.then20 ], [ 0, %if.then56 ], [ -1, %do.body8 ], [ 0, %do.end42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ray_open(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %finder = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_open.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_open, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_open.__UNIQUE_ID_ddebug402, ptr noundef %dev4, ptr noundef nonnull @.str.109, ptr noundef %dev) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then5, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %num_multi = getelementptr i8, ptr %dev, i32 2548
  %4 = ptrtoint ptr %num_multi to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_multi, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  %5 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %open, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %open, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp8 = icmp eq i32 %8, 1
  br i1 %cmp8, label %if.then9, label %if.end6.if.end36_crit_edge

if.end6.if.end36_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then9:                                         ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_open.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_open, %if.then22)) #16
          to label %do.end26 [label %if.then22], !srcloc !708

if.then22:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  %dev23 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_open.__UNIQUE_ID_ddebug403, ptr noundef %dev23, ptr noundef nonnull @.str.110) #16
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %if.then9
  %call27 = tail call fastcc i32 @dl_startup_params(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end32, label %do.end26.if.end36_crit_edge

do.end26.if.end36_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

do.end32:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #18
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %call27) #19
  br label %cleanup57

if.end36:                                         ; preds = %do.end26.if.end36_crit_edge, %if.end6.if.end36_crit_edge
  %9 = load i32, ptr @sniffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool37.not = icmp eq i32 %9, 0
  %_tx.i.i75 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i75 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i75, align 128
  %state.i.i76 = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 13
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i76) #16
  br label %do.body40

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i76) #16
  br label %do.body40

do.body40:                                        ; preds = %if.else, %if.then38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_open.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_open, %if.then52)) #16
          to label %cleanup57 [label %if.then52], !srcloc !708

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #18
  %dev53 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_open.__UNIQUE_ID_ddebug404, ptr noundef %dev53, ptr noundef nonnull @.str.112) #16
  br label %cleanup57

cleanup57:                                        ; preds = %if.then52, %do.body40, %do.end32
  %retval.1 = phi i32 [ -1, %do.end32 ], [ 0, %if.then52 ], [ 0, %do.body40 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ray_dev_close(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %finder = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_dev_close.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_dev_close, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_dev_close.__UNIQUE_ID_ddebug405, ptr noundef %dev4, ptr noundef nonnull @.str.123, ptr noundef %dev) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %open, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ray_dev_start_xmit(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %finder = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %call1 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %do.body9

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_dev_start_xmit.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_dev_start_xmit, %if.then6)) #16
          to label %do.end [label %if.then6], !srcloc !708

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev7 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_dev_start_xmit.__UNIQUE_ID_ddebug391, ptr noundef %dev7, ptr noundef nonnull @.str.125) #16
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  tail call void @consume_skb(ptr noundef %skb) #16
  br label %cleanup

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_dev_start_xmit.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_dev_start_xmit, %if.then21)) #16
          to label %do.end25 [label %if.then21], !srcloc !708

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #18
  %dev22 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_dev_start_xmit.__UNIQUE_ID_ddebug392, ptr noundef %dev22, ptr noundef nonnull @.str.126, ptr noundef %skb, ptr noundef %dev) #16
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body9
  %authentication_state = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %authentication_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %authentication_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %do.body28, label %do.end25.if.end50_crit_edge

do.end25.if.end50_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

do.body28:                                        ; preds = %do.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_dev_start_xmit.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_dev_start_xmit, %if.then40)) #16
          to label %do.end44 [label %if.then40], !srcloc !708

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #18
  %dev41 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_dev_start_xmit.__UNIQUE_ID_ddebug393, ptr noundef %dev41, ptr noundef nonnull @.str.127) #16
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body28
  %auth_id = getelementptr i8, ptr %dev, i32 2558
  %call45 = tail call fastcc i32 @build_auth_frame(ptr noundef %add.ptr.i, ptr noundef %auth_id, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %do.end44.if.end50_crit_edge

do.end44.if.end50_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

if.then47:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %authentication_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %authentication_state, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  br label %cleanup

if.end50:                                         ; preds = %do.end44.if.end50_crit_edge, %do.end25.if.end50_crit_edge
  %sext = shl i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3932160, i32 %sext)
  %cmp52 = icmp slt i32 %sext, 3932160
  br i1 %cmp52, label %if.then54, label %if.end50.if.end59_crit_edge

if.end50.if.end59_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

if.then54:                                        ; preds = %if.end50
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %10)
  %cmp.i = icmp ugt i32 %10, 59
  br i1 %cmp.i, label %if.then54.if.end59_crit_edge, label %skb_padto.exit, !prof !791

if.then54.if.end59_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

skb_padto.exit:                                   ; preds = %if.then54
  %sub.i = sub nuw nsw i32 60, %10
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool56.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool56.not, label %skb_padto.exit.if.end59_crit_edge, label %skb_padto.exit.cleanup_crit_edge

skb_padto.exit.cleanup_crit_edge:                 ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

skb_padto.exit.if.end59_crit_edge:                ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

if.end59:                                         ; preds = %skb_padto.exit.if.end59_crit_edge, %if.then54.if.end59_crit_edge, %if.end50.if.end59_crit_edge
  %length.0 = phi i32 [ %3, %if.end50.if.end59_crit_edge ], [ 60, %skb_padto.exit.if.end59_crit_edge ], [ 60, %if.then54.if.end59_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %sext82 = shl i32 %length.0, 16
  %conv60 = ashr exact i32 %sext82, 16
  %call61 = tail call fastcc i32 @ray_hw_xmit(ptr noundef %12, i32 noundef %conv60, ptr noundef %dev)
  %13 = zext i32 %call61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %call61, label %sw.default [
    i32 -2, label %if.end59.sw.bb_crit_edge
    i32 -4, label %if.end59.sw.bb_crit_edge97
  ]

if.end59.sw.bb_crit_edge97:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end59.sw.bb_crit_edge:                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

sw.bb:                                            ; preds = %if.end59.sw.bb_crit_edge, %if.end59.sw.bb_crit_edge97
  %_tx.i.i90 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i90 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i90, align 128
  %state.i.i91 = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i91) #16
  br label %cleanup

sw.default:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @consume_skb(ptr noundef %skb) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb, %skb_padto.exit.cleanup_crit_edge, %if.then47, %do.end
  %retval.0 = phi i32 [ 0, %sw.default ], [ 16, %sw.bb ], [ 16, %if.then47 ], [ 0, %do.end ], [ 0, %skb_padto.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_multicast_list(ptr noundef %dev) #3 align 64 {
entry:
  %promisc = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %promisc) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_multicast_list.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_multicast_list, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_multicast_list.__UNIQUE_ID_ddebug426, ptr noundef nonnull @.str.140, ptr noundef %dev) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %a_promiscuous_mode28 = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %a_promiscuous_mode28 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %a_promiscuous_mode28, align 4
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %do.body8, label %if.then5.if.end52_crit_edge

if.then5.if.end52_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

do.body8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_multicast_list.__UNIQUE_ID_ddebug427, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_multicast_list, %if.then20)) #16
          to label %if.end52.sink.split [label %if.then20], !srcloc !708

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_multicast_list.__UNIQUE_ID_ddebug427, ptr noundef nonnull @.str.141) #16
  br label %if.end52.sink.split

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp30 = icmp eq i8 %3, 1
  br i1 %cmp30, label %do.body33, label %if.else.if.end52_crit_edge

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

do.body33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_multicast_list.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_multicast_list, %if.then45)) #16
          to label %if.end52.sink.split [label %if.then45], !srcloc !708

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_multicast_list.__UNIQUE_ID_ddebug428, ptr noundef nonnull @.str.142) #16
  br label %if.end52.sink.split

if.end52.sink.split:                              ; preds = %if.then45, %do.body33, %if.then20, %do.body8
  %storemerge = phi i8 [ 1, %do.body8 ], [ 1, %if.then20 ], [ 0, %do.body33 ], [ 0, %if.then45 ]
  %4 = ptrtoint ptr %a_promiscuous_mode28 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %storemerge, ptr %a_promiscuous_mode28, align 4
  %5 = ptrtoint ptr %promisc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %storemerge, ptr %promisc, align 1
  call fastcc void @ray_update_parm(ptr noundef %dev, ptr noundef nonnull %promisc)
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %if.else.if.end52_crit_edge, %if.then5.if.end52_crit_edge
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and54 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else57, label %if.end52.if.end62.sink.split_crit_edge

if.end52.if.end62.sink.split_crit_edge:           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62.sink.split

if.else57:                                        ; preds = %if.end52
  %num_multi = getelementptr i8, ptr %dev, i32 2548
  %8 = ptrtoint ptr %num_multi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_multi, align 4
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp58.not = icmp eq i32 %9, %11
  br i1 %cmp58.not, label %if.else57.if.end62_crit_edge, label %if.else57.if.end62.sink.split_crit_edge

if.else57.if.end62.sink.split_crit_edge:          ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62.sink.split

if.else57.if.end62_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.end62.sink.split:                              ; preds = %if.else57.if.end62.sink.split_crit_edge, %if.end52.if.end62.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end52.if.end62.sink.split_crit_edge ], [ 0, %if.else57.if.end62.sink.split_crit_edge ]
  tail call fastcc void @ray_update_multi_list(ptr noundef %dev, i32 noundef %.sink)
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.else57.if.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %promisc) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ray_dev_config(ptr noundef %dev, ptr noundef %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %finder = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_dev_config.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_dev_config, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_dev_config.__UNIQUE_ID_ddebug389, ptr noundef %dev4, ptr noundef nonnull @.str.154, ptr noundef %dev, ptr noundef %map) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #16
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.body8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_dev_config.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_dev_config, %if.then20)) #16
          to label %cleanup [label %if.then20], !srcloc !708

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #18
  %dev21 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_dev_config.__UNIQUE_ID_ddebug390, ptr noundef %dev21, ptr noundef nonnull @.str.155) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then20 ], [ 0, %do.end.cleanup_crit_edge ], [ -1, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dl_startup_params(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %finder = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dl_startup_params.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dl_startup_params, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dl_startup_params.__UNIQUE_ID_ddebug374, ptr noundef %dev4, ptr noundef nonnull @.str.114) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #16
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.body8, label %if.end25

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dl_startup_params.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dl_startup_params, %if.then20)) #16
          to label %cleanup [label %if.then20], !srcloc !708

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #18
  %dev21 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dl_startup_params.__UNIQUE_ID_ddebug375, ptr noundef %dev21, ptr noundef nonnull @.str.115) #16
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %fw_ver = getelementptr i8, ptr %dev, i32 2662
  %2 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %3)
  %cmp = icmp eq i8 %3, 85
  %sram = getelementptr i8, ptr %dev, i32 2312
  %4 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sram, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 512
  %sparm = getelementptr i8, ptr %dev, i32 2388
  %. = select i1 %cmp, i32 93, i32 98
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %sparm, i32 noundef %.) #16
  %call32 = tail call fastcc i32 @get_free_ccs(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end25.cleanup_crit_edge, label %if.end36

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end36:                                         ; preds = %if.end25
  %dl_param_ccs = getelementptr i8, ptr %dev, i32 2384
  %6 = ptrtoint ptr %dl_param_ccs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call32, ptr %dl_param_ccs, align 4
  %sram.i = getelementptr i8, ptr %dev, i32 2312
  %7 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sram.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %8, i32 1024
  %add.ptr38 = getelementptr %struct.ccs, ptr %add.ptr.i126, i32 %call32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !792
  tail call void @arm_heavy_mb() #16
  %cmd = getelementptr %struct.ccs, ptr %add.ptr.i126, i32 %call32, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd, i8 1) #16, !srcloc !712
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dl_startup_params.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dl_startup_params, %if.then54)) #16
          to label %do.end59 [label %if.then54], !srcloc !708

if.then54:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  %dev55 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %dl_param_ccs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dl_param_ccs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dl_startup_params.__UNIQUE_ID_ddebug376, ptr noundef %dev55, ptr noundef nonnull @.str.116, i32 noundef %10) #16
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %if.end36
  %call60 = tail call fastcc i32 @interrupt_ecf(ptr noundef %add.ptr.i, i32 noundef %call32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end71, label %do.end65

do.end65:                                         ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #18
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #19
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 12, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !793
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 0) #16, !srcloc !712
  br label %cleanup

if.end71:                                         ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %add.ptr.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, 50
  %timer = getelementptr i8, ptr %dev, i32 2328
  %expires = getelementptr i8, ptr %dev, i32 2336
  %14 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %expires, align 4
  %function = getelementptr i8, ptr %dev, i32 2340
  %15 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @verify_dl_startup, ptr %function, align 4
  tail call void @add_timer(ptr noundef %timer) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dl_startup_params.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dl_startup_params, %if.then87)) #16
          to label %cleanup [label %if.then87], !srcloc !708

if.then87:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  %dev88 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dl_startup_params.__UNIQUE_ID_ddebug377, ptr noundef %dev88, ptr noundef nonnull @.str.118) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %if.end71, %do.end65, %if.end25.cleanup_crit_edge, %if.then20, %do.body8
  %retval.0 = phi i32 [ -2, %do.end65 ], [ -1, %if.then20 ], [ -1, %if.end25.cleanup_crit_edge ], [ 0, %if.then87 ], [ -1, %do.body8 ], [ 0, %if.end71 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @verify_dl_startup(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -24
  %sram.i = getelementptr i8, ptr %t, i32 -16
  %0 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sram.i, align 4
  %dl_param_ccs = getelementptr i8, ptr %t, i32 56
  %2 = ptrtoint ptr %dl_param_ccs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dl_param_ccs, align 4
  %finder = getelementptr i8, ptr %t, i32 -4
  %4 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %finder, align 4
  %call2 = tail call ptr @pcmcia_dev_present(ptr noundef %5) #16
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @verify_dl_startup.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@verify_dl_startup, %if.then8)) #16
          to label %cleanup [label %if.then8], !srcloc !708

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %5, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @verify_dl_startup.__UNIQUE_ID_ddebug378, ptr noundef %dev, ptr noundef nonnull @.str.120) #16
  br label %cleanup

if.end9:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 1024
  %add.ptr1 = getelementptr %struct.ccs, ptr %add.ptr.i, i32 %3
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !794
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %if.end21, label %do.end17

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i8 %6 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %conv) #19
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %add.ptr, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %sparm = getelementptr i8, ptr %t, i32 60
  %8 = ptrtoint ptr %sparm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sparm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp23 = icmp eq i8 %9, 0
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @start_net(ptr noundef %t)
  br label %cleanup

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @join_net(ptr noundef %t)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then25, %do.end17, %if.then8, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ray_hw_xmit(ptr noundef %data, i32 noundef %len, ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_hw_xmit.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_hw_xmit, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ray_hw_xmit.__UNIQUE_ID_ddebug394, ptr noundef nonnull @.str.129, ptr noundef %data, i32 noundef %len, ptr noundef %dev) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = add i32 %len, -1960
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1988, i32 %0)
  %cmp = icmp ult i32 %0, -1988
  br i1 %cmp, label %do.end7, label %if.end10

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %len) #19
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %call11 = tail call fastcc i32 @get_free_tx_ccs(ptr noundef %add.ptr.i)
  %1 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %call11, label %sw.epilog [
    i32 -2, label %do.body12
    i32 -1, label %if.end10.do.body29_crit_edge
    i32 -3, label %if.end10.sw.bb45_crit_edge
  ]

if.end10.sw.bb45_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb45

if.end10.do.body29_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body29

do.body12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_hw_xmit.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_hw_xmit, %if.then24)) #16
          to label %do.body29 [label %if.then24], !srcloc !708

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ray_hw_xmit.__UNIQUE_ID_ddebug395, ptr noundef nonnull @.str.131) #16
  br label %do.body29

do.body29:                                        ; preds = %if.then24, %do.body12, %if.end10.do.body29_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_hw_xmit.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_hw_xmit, %if.then41)) #16
          to label %sw.bb45 [label %if.then41], !srcloc !708

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ray_hw_xmit.__UNIQUE_ID_ddebug396, ptr noundef nonnull @.str.132) #16
  br label %sw.bb45

sw.bb45:                                          ; preds = %if.then41, %do.body29, %if.end10.sw.bb45_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  br label %cleanup

sw.epilog:                                        ; preds = %if.end10
  %call11.tr = trunc i32 %call11 to i16
  %4 = shl i16 %call11.tr, 11
  %conv = add i16 %4, 4096
  %tx_bytes = getelementptr i8, ptr %dev, i32 2580
  %5 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_bytes, align 4
  %add51 = add i32 %6, %len
  store i32 %add51, ptr %tx_bytes, align 4
  %tx_packets = getelementptr i8, ptr %dev, i32 2572
  %7 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %tx_packets, align 4
  %sram = getelementptr i8, ptr %dev, i32 2312
  %9 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sram, align 4
  %conv54 = sext i16 %conv to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !795
  tail call void @arm_heavy_mb() #16
  %mac.i = getelementptr inbounds %struct.tx_msg, ptr %add.ptr, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mac.i, i8 8) #16, !srcloc !712
  %net_type.i = getelementptr i8, ptr %dev, i32 2660
  %11 = ptrtoint ptr %net_type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %net_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i = icmp eq i8 %12, 0
  br i1 %cmp.i, label %do.body4.i, label %if.else.i

do.body4.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !796
  tail call void @arm_heavy_mb() #16
  %frame_ctl_2.i = getelementptr inbounds %struct.tx_msg, ptr %add.ptr, i32 0, i32 2, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %frame_ctl_2.i, i8 0) #16, !srcloc !712
  %addr_1.i = getelementptr inbounds %struct.tx_msg, ptr %add.ptr, i32 0, i32 2, i32 4
  tail call void @mmiocpy(ptr noundef %addr_1.i, ptr noundef %data, i32 noundef 6) #16
  %addr_2.i = getelementptr inbounds %struct.tx_msg, ptr %add.ptr, i32 0, i32 2, i32 5
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %data, i32 0, i32 1
  tail call void @mmiocpy(ptr noundef %addr_2.i, ptr noundef %h_source.i, i32 noundef 6) #16
  %addr_3.i = getelementptr inbounds %struct.tx_msg, ptr %add.ptr, i32 0, i32 2, i32 6
  %bss_id.i = getelementptr i8, ptr %dev, i32 2552
  tail call void @mmiocpy(ptr noundef %addr_3.i, ptr noundef %bss_id.i, i32 noundef 6) #16
  br label %ray_build_header.exit

if.else.i:                                        ; preds = %sw.epilog
  %a_acting_as_ap_status.i = getelementptr i8, ptr %dev, i32 2389
  %13 = ptrtoint ptr %a_acting_as_ap_status.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %a_acting_as_ap_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16
  tail call void @arm_heavy_mb() #16
  %frame_ctl_239.i = getelementptr inbounds %struct.tx_msg, ptr %add.ptr, i32 0, i32 2, i32 1
  br i1 %tobool.not.i, label %do.body36.i, label %do.body16.i

do.body16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %frame_ctl_239.i, i8 2) #16, !srcloc !712
  %addr_121.i = getelementptr inbounds %struct.tx_msg, ptr %add.ptr, i32 0, i32 2, i32 4
  tail call void @mmiocpy(ptr noundef %addr_121.i, ptr noundef %data, i32 noundef 6) #16
  %addr_226.i = getelementptr inbounds %struct.tx_msg, ptr %add.ptr, i32 0, i32 2, i32 5
  %bss_id28.i = getelementptr i8, ptr %dev, i32 2552
  tail call void @mmiocpy(ptr noundef %addr_226.i, ptr noundef %bss_id28.i, i32 noundef 6) #16
  %addr_331.i = getelementptr inbounds %struct.tx_msg, ptr %add.ptr, i32 0, i32 2, i32 6
  %h_source33.i = getelementptr inbounds %struct.ethhdr, ptr %data, i32 0, i32 1
  tail call void @mmiocpy(ptr noundef %addr_331.i, ptr noundef %h_source33.i, i32 noundef 6) #16
  br label %ray_build_header.exit

do.body36.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %frame_ctl_239.i, i8 1) #16, !srcloc !712
  %addr_141.i = getelementptr inbounds %struct.tx_msg, ptr %add.ptr, i32 0, i32 2, i32 4
  %bss_id43.i = getelementptr i8, ptr %dev, i32 2552
  tail call void @mmiocpy(ptr noundef %addr_141.i, ptr noundef %bss_id43.i, i32 noundef 6) #16
  %addr_246.i = getelementptr inbounds %struct.tx_msg, ptr %add.ptr, i32 0, i32 2, i32 5
  %h_source48.i = getelementptr inbounds %struct.ethhdr, ptr %data, i32 0, i32 1
  tail call void @mmiocpy(ptr noundef %addr_246.i, ptr noundef %h_source48.i, i32 noundef 6) #16
  %addr_351.i = getelementptr inbounds %struct.tx_msg, ptr %add.ptr, i32 0, i32 2, i32 6
  tail call void @mmiocpy(ptr noundef %addr_351.i, ptr noundef %data, i32 noundef 6) #16
  br label %ray_build_header.exit

ray_build_header.exit:                            ; preds = %do.body36.i, %do.body16.i, %do.body4.i
  %15 = load i8, ptr @translate, align 1, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool55.not = icmp eq i8 %15, 0
  br i1 %tobool55.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %ray_build_header.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call57 = tail call fastcc i32 @translate_frame(ptr noundef %add.ptr, ptr noundef %data, i32 noundef %len)
  %phi.bo = add i32 %call57, 28
  br label %if.end58

if.else:                                          ; preds = %ray_build_header.exit
  call void @__sanitizer_cov_trace_pc() #18
  %var = getelementptr inbounds %struct.tx_msg, ptr %add.ptr, i32 0, i32 3
  tail call void @mmiocpy(ptr noundef %var, ptr noundef %data, i32 noundef %len) #16
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then56
  %offset.0 = phi i32 [ %phi.bo, %if.then56 ], [ 28, %if.else ]
  %16 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sram, align 4
  %add.ptr.i13 = getelementptr i8, ptr %17, i32 1024
  %add.ptr60 = getelementptr %struct.ccs, ptr %add.ptr.i13, i32 %call11
  %add62 = add i32 %offset.0, %len
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !797
  tail call void @arm_heavy_mb() #16
  %cmd = getelementptr %struct.ccs, ptr %add.ptr.i13, i32 %call11, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd, i8 9) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !798
  tail call void @arm_heavy_mb() #16
  %18 = lshr exact i16 %conv, 8
  %conv70 = trunc i16 %18 to i8
  %var71 = getelementptr %struct.ccs, ptr %add.ptr.i13, i32 %call11, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %var71, i8 %conv70) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !799
  tail call void @arm_heavy_mb() #16
  %tib_length = getelementptr i8, ptr %dev, i32 2668
  %19 = ptrtoint ptr %tib_length to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tib_length, align 4
  %arrayidx77 = getelementptr [2 x i8], ptr %var71, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx77, i8 %20) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !800
  tail call void @arm_heavy_mb() #16
  %21 = lshr i32 %add62, 8
  %conv82 = trunc i32 %21 to i8
  %tx_data_length = getelementptr inbounds %struct.tx_requested_cmd, ptr %var71, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %tx_data_length, i8 %conv82) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !801
  tail call void @arm_heavy_mb() #16
  %conv88 = trunc i32 %add62 to i8
  %arrayidx91 = getelementptr %struct.tx_requested_cmd, ptr %var71, i32 0, i32 1, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx91, i8 %conv88) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !802
  tail call void @arm_heavy_mb() #16
  %pow_sav_mode = getelementptr inbounds %struct.tx_requested_cmd, ptr %var71, i32 0, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %pow_sav_mode, i8 0) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !803
  tail call void @arm_heavy_mb() #16
  %net_default_tx_rate = getelementptr i8, ptr %dev, i32 2564
  %22 = ptrtoint ptr %net_default_tx_rate to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %net_default_tx_rate, align 4
  %tx_rate = getelementptr inbounds %struct.tx_requested_cmd, ptr %var71, i32 0, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %tx_rate, i8 %23) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !804
  tail call void @arm_heavy_mb() #16
  %antenna = getelementptr inbounds %struct.tx_requested_cmd, ptr %var71, i32 0, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %antenna, i8 0) #16, !srcloc !712
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_hw_xmit.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_hw_xmit, %if.then116)) #16
          to label %do.end121 [label %if.then116], !srcloc !708

if.then116:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %net_default_tx_rate to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %net_default_tx_rate, align 4
  %conv118 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ray_hw_xmit.__UNIQUE_ID_ddebug397, ptr noundef nonnull @.str.133, i32 noundef %conv118) #16
  br label %do.end121

do.end121:                                        ; preds = %if.then116, %if.end58
  %call122 = tail call fastcc i32 @interrupt_ecf(ptr noundef %add.ptr.i, i32 noundef %call11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %do.end121.cleanup_crit_edge, label %do.body125

do.end121.cleanup_crit_edge:                      ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body125:                                       ; preds = %do.end121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_hw_xmit.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_hw_xmit, %if.then137)) #16
          to label %do.body141 [label %if.then137], !srcloc !708

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ray_hw_xmit.__UNIQUE_ID_ddebug398, ptr noundef nonnull @.str.134) #16
  br label %do.body141

do.body141:                                       ; preds = %if.then137, %do.body125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !805
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr60, i8 0) #16, !srcloc !712
  br label %cleanup

cleanup:                                          ; preds = %do.body141, %do.end121.cleanup_crit_edge, %sw.bb45, %do.end7
  %retval.0 = phi i32 [ -1, %do.end7 ], [ -3, %do.body141 ], [ -2, %sw.bb45 ], [ 0, %do.end121.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @translate_frame(ptr noundef %ptx, ptr noundef %data, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  %proto = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %proto) #16
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %h_proto, align 1
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %proto, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %1)
  %cmp = icmp ugt i16 %1, 1535
  br i1 %cmp, label %do.body, label %do.body21

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @translate_frame.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@translate_frame, %if.then4)) #16
          to label %do.end [label %if.then4], !srcloc !708

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @translate_frame.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.136) #16
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %var = getelementptr inbounds %struct.tx_msg, ptr %ptx, i32 0, i32 3
  tail call void @mmiocpy(ptr noundef %var, ptr noundef nonnull @eth2_llc, i32 noundef 6) #16
  %add.ptr = getelementptr %struct.tx_msg, ptr %ptx, i32 1, i32 0, i32 5
  call void @mmiocpy(ptr noundef %add.ptr, ptr noundef nonnull %proto, i32 noundef 2) #16
  %3 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %proto, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.239)
  switch i16 %4, label %do.end.if.end17_crit_edge [
    i16 -32525, label %do.end.do.body13_crit_edge
    i16 -32457, label %do.end.do.body13_crit_edge10
  ]

do.end.do.body13_crit_edge10:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body13

do.end.do.body13_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body13

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

do.body13:                                        ; preds = %do.end.do.body13_crit_edge, %do.end.do.body13_crit_edge10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !806
  call void @arm_heavy_mb() #16
  %arrayidx = getelementptr %struct.tx_msg, ptr %ptx, i32 1, i32 0, i32 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx, i8 -8) #16, !srcloc !712
  br label %if.end17

if.end17:                                         ; preds = %do.body13, %do.end.if.end17_crit_edge
  %add.ptr19 = getelementptr %struct.tx_msg, ptr %ptx, i32 1, i32 0, i32 7
  %add.ptr20 = getelementptr i8, ptr %data, i32 14
  %sub = add i32 %len, -14
  call void @mmiocpy(ptr noundef %add.ptr19, ptr noundef %add.ptr20, i32 noundef %sub) #16
  br label %cleanup

do.body21:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @translate_frame.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@translate_frame, %if.then33)) #16
          to label %do.end36 [label %if.then33], !srcloc !708

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @translate_frame.__UNIQUE_ID_ddebug400, ptr noundef nonnull @.str.137) #16
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %do.body21
  %6 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %proto, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp38 = icmp eq i16 %7, -1
  br i1 %cmp38, label %do.body41, label %if.end60

do.body41:                                        ; preds = %do.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @translate_frame.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@translate_frame, %if.then53)) #16
          to label %do.end56 [label %if.then53], !srcloc !708

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @translate_frame.__UNIQUE_ID_ddebug401, ptr noundef nonnull @.str.138) #16
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %do.body41
  %var57 = getelementptr inbounds %struct.tx_msg, ptr %ptx, i32 0, i32 3
  %add.ptr58 = getelementptr i8, ptr %data, i32 14
  %sub59 = add i32 %len, -14
  tail call void @mmiocpy(ptr noundef %var57, ptr noundef %add.ptr58, i32 noundef %sub59) #16
  br label %cleanup

if.end60:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #18
  %var61 = getelementptr inbounds %struct.tx_msg, ptr %ptx, i32 0, i32 3
  %add.ptr62 = getelementptr i8, ptr %data, i32 14
  %sub63 = add i32 %len, -14
  tail call void @mmiocpy(ptr noundef %var61, ptr noundef %add.ptr62, i32 noundef %sub63) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end56, %if.end17
  %retval.0 = phi i32 [ -6, %if.end17 ], [ -14, %do.end56 ], [ -14, %if.end60 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %proto) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ray_update_parm(ptr noundef %dev, ptr nocapture noundef readonly %value) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %finder = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  %call1 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_update_parm.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_update_parm, %if.then6)) #16
          to label %cleanup [label %if.then6], !srcloc !708

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev7 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_update_parm.__UNIQUE_ID_ddebug417, ptr noundef %dev7, ptr noundef nonnull @.str.144) #16
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call9 = tail call fastcc i32 @get_free_ccs(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.body11, label %if.end28

do.body11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_update_parm.__UNIQUE_ID_ddebug418, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_update_parm, %if.then23)) #16
          to label %cleanup [label %if.then23], !srcloc !708

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #18
  %dev24 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_update_parm.__UNIQUE_ID_ddebug418, ptr noundef %dev24, ptr noundef nonnull @.str.145) #16
  br label %cleanup

if.end28:                                         ; preds = %if.end8
  %sram.i = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sram.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %3, i32 1024
  %add.ptr = getelementptr %struct.ccs, ptr %add.ptr.i7, i32 %call9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !807
  tail call void @arm_heavy_mb() #16
  %cmd = getelementptr %struct.ccs, ptr %add.ptr.i7, i32 %call9, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd, i8 2) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !808
  tail call void @arm_heavy_mb() #16
  %var = getelementptr %struct.ccs, ptr %add.ptr.i7, i32 %call9, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %var, i8 22) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !809
  tail call void @arm_heavy_mb() #16
  %number_objects = getelementptr inbounds %struct.update_param_cmd, ptr %var, i32 0, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %number_objects, i8 1) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !810
  tail call void @arm_heavy_mb() #16
  %failure_cause = getelementptr inbounds %struct.update_param_cmd, ptr %var, i32 0, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %failure_cause, i8 0) #16, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !811
  tail call void @arm_heavy_mb() #16
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value, align 1
  %6 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sram.i, align 4
  %add.ptr48 = getelementptr i8, ptr %7, i32 512
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr48, i8 %5) #16, !srcloc !712
  %call49 = tail call fastcc i32 @interrupt_ecf(ptr noundef %add.ptr.i, i32 noundef %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end28.cleanup_crit_edge, label %do.body52

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body52:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_update_parm.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_update_parm, %if.then64)) #16
          to label %do.body69 [label %if.then64], !srcloc !708

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #18
  %dev65 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_update_parm.__UNIQUE_ID_ddebug419, ptr noundef %dev65, ptr noundef nonnull @.str.98) #16
  br label %do.body69

do.body69:                                        ; preds = %if.then64, %do.body52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !812
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #16, !srcloc !712
  br label %cleanup

cleanup:                                          ; preds = %do.body69, %if.end28.cleanup_crit_edge, %if.then23, %do.body11, %if.then6, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ray_update_multi_list(ptr noundef %dev, i32 noundef %all) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %finder = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  %sram = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sram, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 512
  %call1 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %do.body8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_update_multi_list.__UNIQUE_ID_ddebug420, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_update_multi_list, %if.then6)) #16
          to label %cleanup [label %if.then6], !srcloc !708

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev7 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_update_multi_list.__UNIQUE_ID_ddebug420, ptr noundef %dev7, ptr noundef nonnull @.str.147) #16
  br label %cleanup

do.body8:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_update_multi_list.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_update_multi_list, %if.then20)) #16
          to label %if.end25 [label %if.then20], !srcloc !708

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #18
  %dev21 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_update_multi_list.__UNIQUE_ID_ddebug421, ptr noundef %dev21, ptr noundef nonnull @.str.148, ptr noundef %dev) #16
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %do.body8
  %call26 = tail call fastcc i32 @get_free_ccs(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.body28, label %if.end45

do.body28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_update_multi_list.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_update_multi_list, %if.then40)) #16
          to label %cleanup [label %if.then40], !srcloc !708

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #18
  %dev41 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_update_multi_list.__UNIQUE_ID_ddebug422, ptr noundef %dev41, ptr noundef nonnull @.str.149) #16
  br label %cleanup

if.end45:                                         ; preds = %if.end25
  %4 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sram, align 4
  %add.ptr.i186 = getelementptr i8, ptr %5, i32 1024
  %add.ptr47 = getelementptr %struct.ccs, ptr %add.ptr.i186, i32 %call26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !813
  tail call void @arm_heavy_mb() #16
  %cmd = getelementptr %struct.ccs, ptr %add.ptr.i186, i32 %call26, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd, i8 4) #16, !srcloc !712
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %all)
  %tobool51.not = icmp eq i32 %all, 0
  br i1 %tobool51.not, label %if.else56, label %do.body53

do.body53:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !814
  tail call void @arm_heavy_mb() #16
  %var = getelementptr %struct.ccs, ptr %add.ptr.i186, i32 %call26, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %var, i8 -1) #16, !srcloc !712
  br label %if.end115

if.else56:                                        ; preds = %if.end45
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %6 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %6)
  %ha.0193 = load ptr, ptr %mc, align 4
  %cmp62.not194 = icmp eq ptr %ha.0193, %mc
  br i1 %cmp62.not194, label %if.else56.for.end_crit_edge, label %for.body.lr.ph

if.else56.for.end_crit_edge:                      ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else56
  %dev78 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %do.end83.for.body_crit_edge, %for.body.lr.ph
  %ha.0197 = phi ptr [ %ha.0193, %for.body.lr.ph ], [ %ha.0, %do.end83.for.body_crit_edge ]
  %p.0196 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr84, %do.end83.for.body_crit_edge ]
  %i.0195 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end83.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0197, i32 0, i32 2
  tail call void @mmiocpy(ptr noundef %p.0196, ptr noundef %addr, i32 noundef 6) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_update_multi_list.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_update_multi_list, %if.then77)) #16
          to label %do.end83 [label %if.then77], !srcloc !708

if.then77:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_update_multi_list.__UNIQUE_ID_ddebug423, ptr noundef %dev78, ptr noundef nonnull @.str.150, ptr noundef %addr) #16
  br label %do.end83

do.end83:                                         ; preds = %if.then77, %for.body
  %add.ptr84 = getelementptr i8, ptr %p.0196, i32 6
  %inc = add i32 %i.0195, 1
  %7 = ptrtoint ptr %ha.0197 to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.0 = load ptr, ptr %ha.0197, align 4
  %cmp62.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp62.not, label %do.end83.for.end_crit_edge, label %do.end83.for.body_crit_edge

do.end83.for.body_crit_edge:                      ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.end83.for.end_crit_edge:                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %do.end83.for.end_crit_edge, %if.else56.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.else56.for.end_crit_edge ], [ %inc, %do.end83.for.end_crit_edge ]
  %8 = tail call i32 @llvm.smin.i32(i32 %i.0.lcssa, i32 42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !815
  tail call void @arm_heavy_mb() #16
  %conv = trunc i32 %8 to i8
  %var96 = getelementptr %struct.ccs, ptr %add.ptr.i186, i32 %call26, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %var96, i8 %conv) #16, !srcloc !712
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_update_multi_list.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_update_multi_list, %if.then109)) #16
          to label %if.end115 [label %if.then109], !srcloc !708

if.then109:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %dev110 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_update_multi_list.__UNIQUE_ID_ddebug424, ptr noundef %dev110, ptr noundef nonnull @.str.151, i32 noundef %8) #16
  br label %if.end115

if.end115:                                        ; preds = %if.then109, %for.end, %do.body53
  %.sink = phi i32 [ 255, %do.body53 ], [ %8, %for.end ], [ %8, %if.then109 ]
  %num_multi114 = getelementptr i8, ptr %dev, i32 2548
  %9 = ptrtoint ptr %num_multi114 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %num_multi114, align 4
  %call116 = tail call fastcc i32 @interrupt_ecf(ptr noundef %add.ptr.i, i32 noundef %call26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end115.cleanup_crit_edge, label %do.body119

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body119:                                       ; preds = %if.end115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_update_multi_list.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_update_multi_list, %if.then131)) #16
          to label %do.body136 [label %if.then131], !srcloc !708

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #18
  %dev132 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_update_multi_list.__UNIQUE_ID_ddebug425, ptr noundef %dev132, ptr noundef nonnull @.str.152) #16
  br label %do.body136

do.body136:                                       ; preds = %if.then131, %do.body119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !816
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr47, i8 0) #16, !srcloc !712
  br label %cleanup

cleanup:                                          ; preds = %do.body136, %if.end115.cleanup_crit_edge, %if.then40, %do.body28, %if.then6, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ray_get_wireless_stats(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %finder = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  %sram = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sram, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %conv = trunc i32 %5 to i16
  %wstats = getelementptr i8, ptr %dev, i32 3036
  %6 = ptrtoint ptr %wstats to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %wstats, align 4
  %spy_data = getelementptr i8, ptr %dev, i32 3068
  %7 = ptrtoint ptr %spy_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %spy_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sparm = getelementptr i8, ptr %dev, i32 2388
  %9 = ptrtoint ptr %sparm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sparm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp3 = icmp eq i8 %10, 0
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %spy_stat = getelementptr i8, ptr %dev, i32 3120
  %11 = ptrtoint ptr %spy_stat to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %spy_stat, align 4
  %qual7 = getelementptr i8, ptr %dev, i32 3038
  %13 = ptrtoint ptr %qual7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %qual7, align 2
  %level = getelementptr i8, ptr %dev, i32 3121
  %14 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %level, align 1
  %level14 = getelementptr i8, ptr %dev, i32 3039
  %16 = ptrtoint ptr %level14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %level14, align 1
  %noise = getelementptr i8, ptr %dev, i32 3122
  %17 = ptrtoint ptr %noise to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %noise, align 2
  %noise20 = getelementptr i8, ptr %dev, i32 3040
  %19 = ptrtoint ptr %noise20 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %noise20, align 2
  %updated = getelementptr i8, ptr %dev, i32 3123
  %20 = ptrtoint ptr %updated to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %updated, align 1
  %updated26 = getelementptr i8, ptr %dev, i32 3041
  %22 = ptrtoint ptr %updated26 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %updated26, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call27 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #16
  %tobool.not = icmp eq ptr %call27, null
  br i1 %tobool.not, label %if.end.if.end39_crit_edge, label %if.then28

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %rxnoise = getelementptr i8, ptr %3, i32 266
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %rxnoise) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !817
  %noise33 = getelementptr i8, ptr %dev, i32 3040
  %24 = ptrtoint ptr %noise33 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %noise33, align 2
  %updated36 = getelementptr i8, ptr %dev, i32 3041
  %25 = ptrtoint ptr %updated36 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %updated36, align 1
  %27 = or i8 %26, 4
  store i8 %27, ptr %updated36, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then28, %if.end.if.end39_crit_edge
  ret ptr %wstats
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_commit(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readnone %extra) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_get_name(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %wrqu, ptr @.str.156, i32 15)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_set_freq(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wrqu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %3)
  %cmp1 = icmp sgt i32 %3, 79
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %e = getelementptr inbounds %struct.iw_freq, ptr %wrqu, i32 0, i32 1
  %4 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp2 = icmp sgt i16 %5, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.else

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %conv6 = trunc i32 %3 to i8
  %a_hop_pattern = getelementptr i8, ptr %dev, i32 2461
  %6 = ptrtoint ptr %a_hop_pattern to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv6, ptr %a_hop_pattern, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -115, %if.else ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_get_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %a_hop_pattern = getelementptr i8, ptr %dev, i32 2461
  %0 = ptrtoint ptr %a_hop_pattern to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %a_hop_pattern, align 1
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %wrqu, align 4
  %e = getelementptr inbounds %struct.iw_freq, ptr %wrqu, i32 0, i32 1
  %3 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %e, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_set_mode(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wrqu, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end.sw.bb1_crit_edge
  ]

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %if.end.sw.bb1_crit_edge
  %card_mode.0 = phi i8 [ 1, %if.end.sw.bb1_crit_edge ], [ 0, %sw.bb ]
  %sparm = getelementptr i8, ptr %dev, i32 2388
  %5 = ptrtoint ptr %sparm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %card_mode.0, ptr %sparm, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -115, %sw.bb1 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_get_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sparm = getelementptr i8, ptr %dev, i32 2388
  %0 = ptrtoint ptr %sparm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sparm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %., ptr %wrqu, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_get_range(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef writeonly %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %extra, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 564)
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 568, ptr %length, align 4
  %we_version_compiled = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 30
  %3 = ptrtoint ptr %we_version_compiled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 22, ptr %we_version_compiled, align 4
  %we_version_source = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 31
  %4 = ptrtoint ptr %we_version_source to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 9, ptr %we_version_source, align 1
  %5 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1100000, ptr %extra, align 4
  %6 = load i32, ptr @country, align 4
  %arrayidx = getelementptr [10 x i8], ptr @hop_pattern_length, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i16
  %num_channels = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 39
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %num_channels, align 4
  %num_frequency = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 40
  %10 = ptrtoint ptr %num_frequency to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %num_frequency, align 2
  %max_qual = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8
  %11 = ptrtoint ptr %max_qual to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %max_qual, align 4
  %level = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %level, align 1
  %noise = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %noise, align 2
  %num_bitrates = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 10
  %14 = ptrtoint ptr %num_bitrates to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %num_bitrates, align 4
  %bitrate = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 11
  %15 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1000000, ptr %bitrate, align 4
  %arrayidx5 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2000000, ptr %arrayidx5, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_set_spy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_get_spy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_set_thrspy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_get_thrspy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_get_wap(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %wrqu, i32 0, i32 1
  %bss_id = getelementptr i8, ptr %dev, i32 2552
  %0 = call ptr @memcpy(ptr %sa_data, ptr %bss_id, i32 6)
  %1 = ptrtoint ptr %wrqu to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %wrqu, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_set_essid(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readonly %extra) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp1 = icmp eq i16 %3, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %5)
  %cmp6 = icmp ugt i16 %5, 32
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %a_current_ess_id = getelementptr i8, ptr %dev, i32 2390
  %6 = call ptr @memset(ptr %a_current_ess_id, i32 0, i32 32)
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %length, align 4
  %conv14 = zext i16 %8 to i32
  %9 = call ptr @memcpy(ptr %a_current_ess_id, ptr %extra, i32 %conv14)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end9 ], [ -16, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -7, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_get_essid(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef writeonly %extra) #9 align 64 {
entry:
  %tmp = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %tmp) #16
  %a_current_ess_id = getelementptr i8, ptr %dev, i32 2390
  %0 = call ptr @memcpy(ptr %extra, ptr %a_current_ess_id, i32 32)
  %1 = call ptr @memcpy(ptr %tmp, ptr %a_current_ess_id, i32 32)
  %arrayidx = getelementptr inbounds [33 x i8], ptr %tmp, i32 0, i32 32
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %call6 = call i32 @strlen(ptr noundef nonnull %tmp) #20
  %conv = trunc i32 %call6 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %length, align 4
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %flags, align 2
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %tmp) #16
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_set_rate(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wrqu, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 1000000, label %if.end.if.end5_crit_edge
    i32 2000000, label %if.end.if.end5_crit_edge24
  ]

if.end.if.end5_crit_edge24:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %if.end.if.end5_crit_edge24
  %fw_ver = getelementptr i8, ptr %dev, i32 2662
  %5 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fw_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %6)
  %cmp6 = icmp eq i8 %6, 85
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %3)
  %cmp10 = icmp eq i32 %3, 2000000
  %or.cond = select i1 %cmp6, i1 %cmp10, i1 false
  %div23 = udiv i32 %3, 500000
  %conv14 = trunc i32 %div23 to i8
  %.sink = select i1 %or.cond, i8 3, i8 %conv14
  %net_default_tx_rate = getelementptr i8, ptr %dev, i32 2564
  %7 = ptrtoint ptr %net_default_tx_rate to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %net_default_tx_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_get_rate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %net_default_tx_rate = getelementptr i8, ptr %dev, i32 2564
  %0 = ptrtoint ptr %net_default_tx_rate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %net_default_tx_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 500000
  %storemerge = select i1 %cmp, i32 2000000, i32 %mul
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge, ptr %wrqu, align 4
  %fixed = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  %3 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fixed, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_set_rts(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wrqu, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2347, i32 %1)
  %6 = icmp ugt i32 %1, 2347
  br i1 %6, label %if.else.cleanup_crit_edge, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %rthr.0 = phi i32 [ 32767, %if.end.if.end6_crit_edge ], [ %1, %if.else.if.end6_crit_edge ]
  %7 = lshr i32 %rthr.0, 8
  %conv = trunc i32 %7 to i8
  %a_rts_threshold = getelementptr i8, ptr %dev, i32 2442
  %8 = ptrtoint ptr %a_rts_threshold to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %a_rts_threshold, align 2
  %conv8 = trunc i32 %rthr.0 to i8
  %arrayidx11 = getelementptr i8, ptr %dev, i32 2443
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv8, ptr %arrayidx11, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end6 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_get_rts(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %a_rts_threshold = getelementptr i8, ptr %dev, i32 2442
  %0 = ptrtoint ptr %a_rts_threshold to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %a_rts_threshold, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx3 = getelementptr i8, ptr %dev, i32 2443
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %add = or i32 %shl, %conv4
  %4 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %wrqu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %add)
  %cmp = icmp eq i32 %add, 32767
  %conv7 = zext i1 %cmp to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %5 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv7, ptr %disabled, align 1
  %fixed = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  %6 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %fixed, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_set_frag(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wrqu, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.else:                                          ; preds = %if.end
  %6 = add i32 %1, -2348
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2092, i32 %6)
  %7 = icmp ult i32 %6, -2092
  br i1 %7, label %if.else.cleanup_crit_edge, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %fthr.0 = phi i32 [ 32767, %if.end.if.end6_crit_edge ], [ %1, %if.else.if.end6_crit_edge ]
  %8 = lshr i32 %fthr.0, 8
  %conv = trunc i32 %8 to i8
  %a_frag_threshold = getelementptr i8, ptr %dev, i32 2430
  %9 = ptrtoint ptr %a_frag_threshold to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %a_frag_threshold, align 2
  %conv8 = trunc i32 %fthr.0 to i8
  %arrayidx11 = getelementptr i8, ptr %dev, i32 2431
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv8, ptr %arrayidx11, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end6 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_get_frag(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %a_frag_threshold = getelementptr i8, ptr %dev, i32 2430
  %0 = ptrtoint ptr %a_frag_threshold to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %a_frag_threshold, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx3 = getelementptr i8, ptr %dev, i32 2431
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %add = or i32 %shl, %conv4
  %4 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %wrqu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %add)
  %cmp = icmp eq i32 %add, 32767
  %conv7 = zext i1 %cmp to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %5 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv7, ptr %disabled, align 1
  %fixed = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  %6 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %fixed, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_set_framing(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readonly %extra) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %extra, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr @translate, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_get_framing(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef writeonly %extra) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @translate, align 1, !range !756
  %1 = ptrtoint ptr %extra to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %0, ptr %extra, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ray_get_country(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef writeonly %extra) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @country, align 4
  %conv = trunc i32 %0 to i8
  %1 = ptrtoint ptr %extra to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %extra, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_irq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_window(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_map_mem_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ray_init(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %finder = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %finder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finder, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_init.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_init, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_init.__UNIQUE_ID_ddebug369, ptr noundef %dev4, ptr noundef nonnull @.str.171, ptr noundef %dev) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #16
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.body8, label %if.end25

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_init.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_init, %if.then20)) #16
          to label %cleanup [label %if.then20], !srcloc !708

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #18
  %dev21 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_init.__UNIQUE_ID_ddebug370, ptr noundef %dev21, ptr noundef nonnull @.str.172) #16
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %2 = load i32, ptr @net_type, align 4
  %conv = trunc i32 %2 to i8
  %net_type = getelementptr i8, ptr %dev, i32 2660
  %3 = ptrtoint ptr %net_type to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %net_type, align 4
  %sta_type = getelementptr i8, ptr %dev, i32 2661
  %4 = ptrtoint ptr %sta_type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %sta_type, align 1
  %startup_res = getelementptr i8, ptr %dev, i32 2512
  %sram = getelementptr i8, ptr %dev, i32 2312
  %5 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sram, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 768
  tail call void @mmiocpy(ptr noundef %startup_res, ptr noundef %add.ptr, i32 noundef 35) #16
  %7 = ptrtoint ptr %startup_res to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %startup_res, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %8)
  %cmp.not = icmp eq i8 %8, -128
  br i1 %cmp.not, label %if.end38, label %do.end32

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %conv27 = zext i8 %8 to i32
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, i32 noundef %conv27) #19
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 11, ptr %add.ptr.i, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end25
  %firmware_version = getelementptr i8, ptr %dev, i32 2542
  %10 = ptrtoint ptr %firmware_version to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %firmware_version, align 2
  %fw_ver = getelementptr i8, ptr %dev, i32 2662
  %12 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %fw_ver, align 2
  %arrayidx42 = getelementptr i8, ptr %dev, i32 2543
  %13 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx42, align 1
  %fw_bld = getelementptr i8, ptr %dev, i32 2663
  %15 = ptrtoint ptr %fw_bld to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %fw_bld, align 1
  %arrayidx45 = getelementptr i8, ptr %dev, i32 2544
  %16 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx45, align 2
  %fw_var = getelementptr i8, ptr %dev, i32 2664
  %18 = ptrtoint ptr %fw_var to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %fw_var, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_init.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_init, %if.then58)) #16
          to label %do.end66 [label %if.then58], !srcloc !708

if.then58:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  %dev59 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  %19 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fw_ver, align 2
  %conv61 = zext i8 %20 to i32
  %21 = ptrtoint ptr %fw_bld to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw_bld, align 1
  %conv63 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_init.__UNIQUE_ID_ddebug371, ptr noundef %dev59, ptr noundef nonnull @.str.174, i32 noundef %conv61, i32 noundef %conv63) #16
  br label %do.end66

do.end66:                                         ; preds = %if.then58, %if.end38
  %tib_length = getelementptr i8, ptr %dev, i32 2668
  %23 = ptrtoint ptr %tib_length to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 32, ptr %tib_length, align 4
  %24 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fw_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %25)
  %cmp69 = icmp eq i8 %25, 5
  br i1 %cmp69, label %land.lhs.true, label %do.end66.do.body80_crit_edge

do.end66.do.body80_crit_edge:                     ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body80

land.lhs.true:                                    ; preds = %do.end66
  %26 = ptrtoint ptr %fw_bld to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fw_bld, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %27)
  %cmp73 = icmp ugt i8 %27, 29
  br i1 %cmp73, label %if.then75, label %land.lhs.true.do.body80_crit_edge

land.lhs.true.do.body80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body80

if.then75:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %tib_length77 = getelementptr i8, ptr %dev, i32 2546
  %28 = ptrtoint ptr %tib_length77 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tib_length77, align 2
  %30 = ptrtoint ptr %tib_length to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %tib_length, align 4
  br label %do.body80

do.body80:                                        ; preds = %if.then75, %land.lhs.true.do.body80_crit_edge, %do.end66.do.body80_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_init.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_init, %if.then92)) #16
          to label %do.end98 [label %if.then92], !srcloc !708

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #18
  %dev93 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  %31 = ptrtoint ptr %tib_length to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tib_length, align 4
  %conv95 = zext i8 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_init.__UNIQUE_ID_ddebug372, ptr noundef %dev93, ptr noundef nonnull @.str.175, i32 noundef %conv95) #16
  br label %do.end98

do.end98:                                         ; preds = %if.then92, %do.body80
  %33 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sram, align 4
  %add.ptr.i180 = getelementptr i8, ptr %34, i32 1024
  br label %do.body102

do.body102:                                       ; preds = %do.body102.do.body102_crit_edge, %do.end98
  %i.0192 = phi i32 [ 0, %do.end98 ], [ %inc, %do.body102.do.body102_crit_edge ]
  %pccs.0191 = phi ptr [ %add.ptr.i180, %do.end98 ], [ %incdec.ptr, %do.body102.do.body102_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !818
  tail call void @arm_heavy_mb() #16
  %incdec.ptr = getelementptr %struct.ccs, ptr %pccs.0191, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %pccs.0191, i8 0) #16, !srcloc !712
  %inc = add nuw nsw i32 %i.0192, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %do.body102.do.body102_crit_edge

do.body102.do.body102_crit_edge:                  ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body102

for.end:                                          ; preds = %do.body102
  %35 = load i32, ptr @country, align 4
  %36 = add i32 %35, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %36)
  %37 = icmp ult i32 %36, -9
  br i1 %37, label %if.end3.sink.split.i, label %for.end.if.end3.i_crit_edge

for.end.if.end3.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

if.end3.sink.split.i:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  store i32 1, ptr @country, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end3.sink.split.i, %for.end.if.end3.i_crit_edge
  %38 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fw_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %39)
  %cmp4.i = icmp eq i8 %39, 85
  %sparm.i = getelementptr i8, ptr %dev, i32 2388
  br i1 %cmp4.i, label %if.then6.i, label %if.else34.i

if.then6.i:                                       ; preds = %if.end3.i
  %40 = call ptr @memcpy(ptr %sparm.i, ptr @b4_default_startup_parms, i32 93)
  %41 = load i32, ptr @hop_dwell, align 4
  %mul.i = shl i32 %41, 10
  %42 = lshr i32 %mul.i, 16
  %conv8.i = trunc i32 %42 to i8
  %a_hop_time.i = getelementptr i8, ptr %dev, i32 2432
  %43 = ptrtoint ptr %a_hop_time.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv8.i, ptr %a_hop_time.i, align 4
  %and.i = lshr exact i32 %mul.i, 8
  %conv12.i = trunc i32 %and.i to i8
  %arrayidx15.i = getelementptr i8, ptr %dev, i32 2433
  %44 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv12.i, ptr %arrayidx15.i, align 1
  %a_beacon_period.i = getelementptr i8, ptr %dev, i32 2434
  %45 = ptrtoint ptr %a_beacon_period.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %a_beacon_period.i, align 2
  %46 = load i32, ptr @beacon_period, align 4
  %47 = load i32, ptr @hop_dwell, align 4
  %div.i = sdiv i32 %46, %47
  %48 = trunc i32 %div.i to i8
  %conv19.i = add i8 %48, -1
  %arrayidx22.i = getelementptr i8, ptr %dev, i32 2435
  %49 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv19.i, ptr %arrayidx22.i, align 1
  %50 = load i32, ptr @country, align 4
  %conv23.i = trunc i32 %50 to i8
  %a_curr_country_code.i = getelementptr i8, ptr %dev, i32 2460
  %51 = ptrtoint ptr %a_curr_country_code.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv23.i, ptr %a_curr_country_code.i, align 4
  %arrayidx25.i = getelementptr [10 x i8], ptr @hop_pattern_length, i32 0, i32 %50
  %52 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx25.i, align 1
  %sub27.i = add i8 %53, -1
  %a_hop_pattern_length.i = getelementptr i8, ptr %dev, i32 2462
  %54 = ptrtoint ptr %a_hop_pattern_length.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %sub27.i, ptr %a_hop_pattern_length.i, align 2
  %55 = load i32, ptr @bc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i, label %if.then6.i.if.end68.i_crit_edge, label %if.then30.i

if.then6.i.if.end68.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68.i

if.then30.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  %a_ack_timeout.i = getelementptr i8, ptr %dev, i32 2438
  %56 = ptrtoint ptr %a_ack_timeout.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 80, ptr %a_ack_timeout.i, align 2
  %a_sifs.i = getelementptr i8, ptr %dev, i32 2439
  %57 = ptrtoint ptr %a_sifs.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 63, ptr %a_sifs.i, align 1
  br label %if.end68.i

if.else34.i:                                      ; preds = %if.end3.i
  %58 = call ptr @memcpy(ptr %sparm.i, ptr @b5_default_startup_parms, i32 98)
  %59 = load i32, ptr @hop_dwell, align 4
  %60 = lshr i32 %59, 8
  %conv38.i = trunc i32 %60 to i8
  %a_hop_time40.i = getelementptr i8, ptr %dev, i32 2432
  %61 = ptrtoint ptr %a_hop_time40.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv38.i, ptr %a_hop_time40.i, align 4
  %conv43.i = trunc i32 %59 to i8
  %arrayidx46.i = getelementptr i8, ptr %dev, i32 2433
  %62 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv43.i, ptr %arrayidx46.i, align 1
  %63 = load i32, ptr @beacon_period, align 4
  %64 = lshr i32 %63, 8
  %conv49.i = trunc i32 %64 to i8
  %a_beacon_period51.i = getelementptr i8, ptr %dev, i32 2434
  %65 = ptrtoint ptr %a_beacon_period51.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv49.i, ptr %a_beacon_period51.i, align 2
  %conv54.i = trunc i32 %63 to i8
  %arrayidx57.i = getelementptr i8, ptr %dev, i32 2435
  %66 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv54.i, ptr %arrayidx57.i, align 1
  %67 = load i32, ptr @psm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool58.not.i = icmp eq i32 %67, 0
  br i1 %tobool58.not.i, label %if.else34.i.if.end61.i_crit_edge, label %if.then59.i

if.else34.i.if.end61.i_crit_edge:                 ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61.i

if.then59.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #18
  %a_power_mgt_state.i = getelementptr i8, ptr %dev, i32 2423
  %68 = ptrtoint ptr %a_power_mgt_state.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %a_power_mgt_state.i, align 1
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then59.i, %if.else34.i.if.end61.i_crit_edge
  %69 = load i32, ptr @country, align 4
  %conv62.i = trunc i32 %69 to i8
  %a_curr_country_code64.i = getelementptr i8, ptr %dev, i32 2460
  %70 = ptrtoint ptr %a_curr_country_code64.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv62.i, ptr %a_curr_country_code64.i, align 4
  %arrayidx65.i = getelementptr [10 x i8], ptr @hop_pattern_length, i32 0, i32 %69
  %71 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx65.i, align 1
  %a_hop_pattern_length67.i = getelementptr i8, ptr %dev, i32 2462
  %73 = ptrtoint ptr %a_hop_pattern_length67.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %a_hop_pattern_length67.i, align 2
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.end61.i, %if.then30.i, %if.then6.i.if.end68.i_crit_edge
  %74 = load i32, ptr @net_type, align 4
  %75 = trunc i32 %74 to i8
  %conv70.i = and i8 %75, 1
  %76 = ptrtoint ptr %sparm.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv70.i, ptr %sparm.i, align 4
  %a_acting_as_ap_status.i = getelementptr i8, ptr %dev, i32 2389
  %77 = ptrtoint ptr %a_acting_as_ap_status.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %a_acting_as_ap_status.i, align 1
  %78 = load ptr, ptr @essid, align 4
  %cmp73.not.i = icmp eq ptr %78, null
  br i1 %cmp73.not.i, label %if.end68.i.init_startup_params.exit_crit_edge, label %if.then75.i

if.end68.i.init_startup_params.exit_crit_edge:    ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %init_startup_params.exit

if.then75.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #18
  %a_current_ess_id.i = getelementptr i8, ptr %dev, i32 2390
  %call.i = tail call ptr @strncpy(ptr noundef %a_current_ess_id.i, ptr noundef nonnull %78, i32 noundef 32) #16
  br label %init_startup_params.exit

init_startup_params.exit:                         ; preds = %if.then75.i, %if.end68.i.init_startup_params.exit_crit_edge
  %79 = load ptr, ptr @phy_addr, align 4
  %a_mac_addr = getelementptr i8, ptr %dev, i32 2424
  %cmp.i = icmp eq ptr %79, null
  br i1 %cmp.i, label %init_startup_params.exit.if.then107_crit_edge, label %if.end.i

init_startup_params.exit.if.then107_crit_edge:    ; preds = %init_startup_params.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.end.i:                                         ; preds = %init_startup_params.exit
  %call.i181 = tail call i32 @strlen(ptr noundef nonnull %79) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i181)
  %cmp1.i = icmp slt i32 %call.i181, 2
  br i1 %cmp1.i, label %if.end.i.if.then107_crit_edge, label %if.end3.i182

if.end.i.if.then107_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.end3.i182:                                     ; preds = %if.end.i
  %80 = call ptr @memset(ptr %a_mac_addr, i32 0, i32 6)
  %81 = tail call i32 @llvm.smin.i32(i32 %call.i181, i32 13) #16
  %82 = add nsw i32 %81, -1
  %dec.i = add nsw i32 %81, -2
  %arrayidx.i = getelementptr i8, ptr %79, i32 %82
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i, align 1
  %call8.i = tail call i32 @hex_to_bin(i8 noundef zeroext %84) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i)
  %cmp9.not.i = icmp eq i32 %call8.i, -1
  br i1 %cmp9.not.i, label %if.end3.i182.if.then107_crit_edge, label %if.then10.i

if.end3.i182.if.then107_crit_edge:                ; preds = %if.end3.i182
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.then10.i:                                      ; preds = %if.end3.i182
  %conv.i = trunc i32 %call8.i to i8
  %arrayidx11.i = getelementptr i8, ptr %dev, i32 2429
  %85 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv.i, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp13.i = icmp eq i32 %dec.i, 0
  br i1 %cmp13.i, label %if.then10.i.if.end111_crit_edge, label %if.end16.i

if.then10.i.if.end111_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

if.end16.i:                                       ; preds = %if.then10.i
  %arrayidx18.i = getelementptr i8, ptr %79, i32 %dec.i
  %86 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx18.i, align 1
  %call19.i = tail call i32 @hex_to_bin(i8 noundef zeroext %87) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.i)
  %cmp20.not.i = icmp eq i32 %call19.i, -1
  br i1 %cmp20.not.i, label %if.end16.i.if.then107_crit_edge, label %if.then22.i

if.end16.i.if.then107_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.then22.i:                                      ; preds = %if.end16.i
  %88 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx11.i, align 1
  %call19.tr.i = trunc i32 %call19.i to i8
  %90 = shl i8 %call19.tr.i, 4
  %conv25.i = add i8 %89, %90
  store i8 %conv25.i, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %81)
  %cmp7.1.i = icmp ugt i32 %81, 3
  br i1 %cmp7.1.i, label %while.body.1.i, label %if.then22.i.if.end111_crit_edge

if.then22.i.if.end111_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

while.body.1.i:                                   ; preds = %if.then22.i
  %dec17.i = add nsw i32 %81, -3
  %dec.1.i = add nsw i32 %81, -4
  %arrayidx.1.i = getelementptr i8, ptr %79, i32 %dec17.i
  %91 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.1.i, align 1
  %call8.1.i = tail call i32 @hex_to_bin(i8 noundef zeroext %92) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.1.i)
  %cmp9.not.1.i = icmp eq i32 %call8.1.i, -1
  br i1 %cmp9.not.1.i, label %while.body.1.i.if.then107_crit_edge, label %if.then10.1.i

while.body.1.i.if.then107_crit_edge:              ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.then10.1.i:                                    ; preds = %while.body.1.i
  %conv.1.i = trunc i32 %call8.1.i to i8
  %arrayidx11.1.i = getelementptr i8, ptr %dev, i32 2428
  %93 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv.1.i, ptr %arrayidx11.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1.i)
  %cmp13.1.i = icmp eq i32 %dec.1.i, 0
  br i1 %cmp13.1.i, label %if.then10.1.i.if.end111_crit_edge, label %if.end16.1.i

if.then10.1.i.if.end111_crit_edge:                ; preds = %if.then10.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

if.end16.1.i:                                     ; preds = %if.then10.1.i
  %arrayidx18.1.i = getelementptr i8, ptr %79, i32 %dec.1.i
  %94 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx18.1.i, align 1
  %call19.1.i = tail call i32 @hex_to_bin(i8 noundef zeroext %95) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.1.i)
  %cmp20.not.1.i = icmp eq i32 %call19.1.i, -1
  br i1 %cmp20.not.1.i, label %if.end16.1.i.if.then107_crit_edge, label %if.then22.1.i

if.end16.1.i.if.then107_crit_edge:                ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.then22.1.i:                                    ; preds = %if.end16.1.i
  %96 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx11.1.i, align 1
  %call19.tr.1.i = trunc i32 %call19.1.i to i8
  %98 = shl i8 %call19.tr.1.i, 4
  %conv25.1.i = add i8 %97, %98
  store i8 %conv25.1.i, ptr %arrayidx11.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %81)
  %cmp7.2.i = icmp ugt i32 %81, 5
  br i1 %cmp7.2.i, label %while.body.2.i, label %if.then22.1.i.if.end111_crit_edge

if.then22.1.i.if.end111_crit_edge:                ; preds = %if.then22.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

while.body.2.i:                                   ; preds = %if.then22.1.i
  %dec17.1.i = add nsw i32 %81, -5
  %dec.2.i = add nsw i32 %81, -6
  %arrayidx.2.i = getelementptr i8, ptr %79, i32 %dec17.1.i
  %99 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.2.i, align 1
  %call8.2.i = tail call i32 @hex_to_bin(i8 noundef zeroext %100) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.2.i)
  %cmp9.not.2.i = icmp eq i32 %call8.2.i, -1
  br i1 %cmp9.not.2.i, label %while.body.2.i.if.then107_crit_edge, label %if.then10.2.i

while.body.2.i.if.then107_crit_edge:              ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.then10.2.i:                                    ; preds = %while.body.2.i
  %conv.2.i = trunc i32 %call8.2.i to i8
  %arrayidx11.2.i = getelementptr i8, ptr %dev, i32 2427
  %101 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv.2.i, ptr %arrayidx11.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2.i)
  %cmp13.2.i = icmp eq i32 %dec.2.i, 0
  br i1 %cmp13.2.i, label %if.then10.2.i.if.end111_crit_edge, label %if.end16.2.i

if.then10.2.i.if.end111_crit_edge:                ; preds = %if.then10.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

if.end16.2.i:                                     ; preds = %if.then10.2.i
  %arrayidx18.2.i = getelementptr i8, ptr %79, i32 %dec.2.i
  %102 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx18.2.i, align 1
  %call19.2.i = tail call i32 @hex_to_bin(i8 noundef zeroext %103) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.2.i)
  %cmp20.not.2.i = icmp eq i32 %call19.2.i, -1
  br i1 %cmp20.not.2.i, label %if.end16.2.i.if.then107_crit_edge, label %if.then22.2.i

if.end16.2.i.if.then107_crit_edge:                ; preds = %if.end16.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.then22.2.i:                                    ; preds = %if.end16.2.i
  %104 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx11.2.i, align 1
  %call19.tr.2.i = trunc i32 %call19.2.i to i8
  %106 = shl i8 %call19.tr.2.i, 4
  %conv25.2.i = add i8 %105, %106
  store i8 %conv25.2.i, ptr %arrayidx11.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %81)
  %cmp7.3.i = icmp ugt i32 %81, 7
  br i1 %cmp7.3.i, label %while.body.3.i, label %if.then22.2.i.if.end111_crit_edge

if.then22.2.i.if.end111_crit_edge:                ; preds = %if.then22.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

while.body.3.i:                                   ; preds = %if.then22.2.i
  %dec17.2.i = add nsw i32 %81, -7
  %dec.3.i = add nsw i32 %81, -8
  %arrayidx.3.i = getelementptr i8, ptr %79, i32 %dec17.2.i
  %107 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.3.i, align 1
  %call8.3.i = tail call i32 @hex_to_bin(i8 noundef zeroext %108) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.3.i)
  %cmp9.not.3.i = icmp eq i32 %call8.3.i, -1
  br i1 %cmp9.not.3.i, label %while.body.3.i.if.then107_crit_edge, label %if.then10.3.i

while.body.3.i.if.then107_crit_edge:              ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.then10.3.i:                                    ; preds = %while.body.3.i
  %conv.3.i = trunc i32 %call8.3.i to i8
  %arrayidx11.3.i = getelementptr i8, ptr %dev, i32 2426
  %109 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv.3.i, ptr %arrayidx11.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.3.i)
  %cmp13.3.i = icmp eq i32 %dec.3.i, 0
  br i1 %cmp13.3.i, label %if.then10.3.i.if.end111_crit_edge, label %if.end16.3.i

if.then10.3.i.if.end111_crit_edge:                ; preds = %if.then10.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

if.end16.3.i:                                     ; preds = %if.then10.3.i
  %arrayidx18.3.i = getelementptr i8, ptr %79, i32 %dec.3.i
  %110 = ptrtoint ptr %arrayidx18.3.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx18.3.i, align 1
  %call19.3.i = tail call i32 @hex_to_bin(i8 noundef zeroext %111) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.3.i)
  %cmp20.not.3.i = icmp eq i32 %call19.3.i, -1
  br i1 %cmp20.not.3.i, label %if.end16.3.i.if.then107_crit_edge, label %if.then22.3.i

if.end16.3.i.if.then107_crit_edge:                ; preds = %if.end16.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.then22.3.i:                                    ; preds = %if.end16.3.i
  %112 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx11.3.i, align 1
  %call19.tr.3.i = trunc i32 %call19.3.i to i8
  %114 = shl i8 %call19.tr.3.i, 4
  %conv25.3.i = add i8 %113, %114
  store i8 %conv25.3.i, ptr %arrayidx11.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %81)
  %cmp7.4.i = icmp ugt i32 %81, 9
  br i1 %cmp7.4.i, label %while.body.4.i, label %if.then22.3.i.if.end111_crit_edge

if.then22.3.i.if.end111_crit_edge:                ; preds = %if.then22.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

while.body.4.i:                                   ; preds = %if.then22.3.i
  %dec17.3.i = add nsw i32 %81, -9
  %dec.4.i = add nsw i32 %81, -10
  %arrayidx.4.i = getelementptr i8, ptr %79, i32 %dec17.3.i
  %115 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.4.i, align 1
  %call8.4.i = tail call i32 @hex_to_bin(i8 noundef zeroext %116) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.4.i)
  %cmp9.not.4.i = icmp eq i32 %call8.4.i, -1
  br i1 %cmp9.not.4.i, label %while.body.4.i.if.then107_crit_edge, label %if.then10.4.i

while.body.4.i.if.then107_crit_edge:              ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.then10.4.i:                                    ; preds = %while.body.4.i
  %conv.4.i = trunc i32 %call8.4.i to i8
  %arrayidx11.4.i = getelementptr i8, ptr %dev, i32 2425
  %117 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv.4.i, ptr %arrayidx11.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.4.i)
  %cmp13.4.i = icmp eq i32 %dec.4.i, 0
  br i1 %cmp13.4.i, label %if.then10.4.i.if.end111_crit_edge, label %if.end16.4.i

if.then10.4.i.if.end111_crit_edge:                ; preds = %if.then10.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

if.end16.4.i:                                     ; preds = %if.then10.4.i
  %arrayidx18.4.i = getelementptr i8, ptr %79, i32 %dec.4.i
  %118 = ptrtoint ptr %arrayidx18.4.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx18.4.i, align 1
  %call19.4.i = tail call i32 @hex_to_bin(i8 noundef zeroext %119) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.4.i)
  %cmp20.not.4.i = icmp eq i32 %call19.4.i, -1
  br i1 %cmp20.not.4.i, label %if.end16.4.i.if.then107_crit_edge, label %if.then22.4.i

if.end16.4.i.if.then107_crit_edge:                ; preds = %if.end16.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.then22.4.i:                                    ; preds = %if.end16.4.i
  %120 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx11.4.i, align 1
  %call19.tr.4.i = trunc i32 %call19.4.i to i8
  %122 = shl i8 %call19.tr.4.i, 4
  %conv25.4.i = add i8 %121, %122
  store i8 %conv25.4.i, ptr %arrayidx11.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %81)
  %cmp7.5.i = icmp ugt i32 %81, 11
  br i1 %cmp7.5.i, label %while.body.5.i, label %if.then22.4.i.if.end111_crit_edge

if.then22.4.i.if.end111_crit_edge:                ; preds = %if.then22.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

while.body.5.i:                                   ; preds = %if.then22.4.i
  %dec17.4.i = add nsw i32 %81, -11
  %dec.5.i = add nsw i32 %81, -12
  %arrayidx.5.i = getelementptr i8, ptr %79, i32 %dec17.4.i
  %123 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.5.i, align 1
  %call8.5.i = tail call i32 @hex_to_bin(i8 noundef zeroext %124) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.5.i)
  %cmp9.not.5.i = icmp eq i32 %call8.5.i, -1
  br i1 %cmp9.not.5.i, label %while.body.5.i.if.then107_crit_edge, label %if.then10.5.i

while.body.5.i.if.then107_crit_edge:              ; preds = %while.body.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.then10.5.i:                                    ; preds = %while.body.5.i
  %conv.5.i = trunc i32 %call8.5.i to i8
  %125 = ptrtoint ptr %a_mac_addr to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv.5.i, ptr %a_mac_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.5.i)
  %cmp13.5.i = icmp eq i32 %dec.5.i, 0
  br i1 %cmp13.5.i, label %if.then10.5.i.if.end111_crit_edge, label %if.end16.5.i

if.then10.5.i.if.end111_crit_edge:                ; preds = %if.then10.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

if.end16.5.i:                                     ; preds = %if.then10.5.i
  %arrayidx18.5.i = getelementptr i8, ptr %79, i32 %dec.5.i
  %126 = ptrtoint ptr %arrayidx18.5.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx18.5.i, align 1
  %call19.5.i = tail call i32 @hex_to_bin(i8 noundef zeroext %127) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.5.i)
  %cmp20.not.5.i = icmp eq i32 %call19.5.i, -1
  br i1 %cmp20.not.5.i, label %if.end16.5.i.if.then107_crit_edge, label %if.then22.5.i

if.end16.5.i.if.then107_crit_edge:                ; preds = %if.end16.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.then22.5.i:                                    ; preds = %if.end16.5.i
  call void @__sanitizer_cov_trace_pc() #18
  %128 = ptrtoint ptr %a_mac_addr to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %a_mac_addr, align 1
  %call19.tr.5.i = trunc i32 %call19.5.i to i8
  %130 = shl i8 %call19.tr.5.i, 4
  %conv25.5.i = add i8 %129, %130
  store i8 %conv25.5.i, ptr %a_mac_addr, align 1
  br label %if.end111

if.then107:                                       ; preds = %if.end16.5.i.if.then107_crit_edge, %while.body.5.i.if.then107_crit_edge, %if.end16.4.i.if.then107_crit_edge, %while.body.4.i.if.then107_crit_edge, %if.end16.3.i.if.then107_crit_edge, %while.body.3.i.if.then107_crit_edge, %if.end16.2.i.if.then107_crit_edge, %while.body.2.i.if.then107_crit_edge, %if.end16.1.i.if.then107_crit_edge, %while.body.1.i.if.then107_crit_edge, %if.end16.i.if.then107_crit_edge, %if.end3.i182.if.then107_crit_edge, %if.end.i.if.then107_crit_edge, %init_startup_params.exit.if.then107_crit_edge
  %station_addr = getelementptr i8, ptr %dev, i32 2513
  %131 = call ptr @memcpy(ptr %a_mac_addr, ptr %station_addr, i32 6)
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.then22.5.i, %if.then10.5.i.if.end111_crit_edge, %if.then22.4.i.if.end111_crit_edge, %if.then10.4.i.if.end111_crit_edge, %if.then22.3.i.if.end111_crit_edge, %if.then10.3.i.if.end111_crit_edge, %if.then22.2.i.if.end111_crit_edge, %if.then10.2.i.if.end111_crit_edge, %if.then22.1.i.if.end111_crit_edge, %if.then10.1.i.if.end111_crit_edge, %if.then22.i.if.end111_crit_edge, %if.then10.i.if.end111_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !711
  tail call void @arm_heavy_mb() #16
  %amem.i = getelementptr i8, ptr %dev, i32 2316
  %132 = ptrtoint ptr %amem.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %amem.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %133, i32 3845
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 0) #16, !srcloc !712
  %134 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_init.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_init, %if.then125)) #16
          to label %cleanup [label %if.then125], !srcloc !708

if.then125:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  %dev126 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_init.__UNIQUE_ID_ddebug373, ptr noundef %dev126, ptr noundef nonnull @.str.176) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then125, %if.end111, %do.end32, %if.then20, %do.body8
  %retval.0 = phi i32 [ -1, %do.end32 ], [ -1, %if.then20 ], [ 0, %if.then125 ], [ -1, %do.body8 ], [ 0, %if.end111 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ray_release(ptr noundef %link) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_release.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_release, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !708

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_release.__UNIQUE_ID_ddebug383, ptr noundef %dev4, ptr noundef nonnull @.str.179) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %timer = getelementptr i8, ptr %1, i32 2328
  %call5 = tail call i32 @del_timer(ptr noundef %timer) #16
  %sram = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sram, align 4
  tail call void @iounmap(ptr noundef %3) #16
  %rmem = getelementptr i8, ptr %1, i32 2320
  %4 = ptrtoint ptr %rmem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmem, align 4
  tail call void @iounmap(ptr noundef %5) #16
  %amem = getelementptr i8, ptr %1, i32 2316
  %6 = ptrtoint ptr %amem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %amem, align 4
  tail call void @iounmap(ptr noundef %7) #16
  tail call void @pcmcia_disable_device(ptr noundef %link) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ray_release.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ray_release, %if.then18)) #16
          to label %do.end22 [label %if.then18], !srcloc !708

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %dev19 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ray_release.__UNIQUE_ID_ddebug384, ptr noundef %dev19, ptr noundef nonnull @.str.180) #16
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ray_cs_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  %c = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %c) #16
  %0 = call ptr @memset(ptr %c, i32 255, i32 33)
  %1 = load ptr, ptr @this_device, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  %tobool4.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.193) #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.187, ptr noundef nonnull @rcsid) #16
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.194) #16
  %fw_ver = getelementptr i8, ptr %3, i32 2662
  %4 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %5)
  %cmp = icmp eq i8 %5, 85
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.195) #16
  br label %if.end13

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i8 %5 to i32
  %fw_bld = getelementptr i8, ptr %3, i32 2663
  %6 = ptrtoint ptr %fw_bld to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_bld, align 1
  %conv11 = zext i8 %7 to i32
  %fw_var = getelementptr i8, ptr %3, i32 2664
  %8 = ptrtoint ptr %fw_var to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fw_var, align 4
  %conv12 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.196, i32 noundef %conv, i32 noundef %conv11, i32 noundef %conv12) #16
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  %arrayidx = getelementptr i8, ptr %3, i32 2390
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %c, align 1
  %arrayidx.1 = getelementptr i8, ptr %3, i32 2391
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1, align 1
  %arrayidx16.1 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx16.1, align 1
  %arrayidx.2 = getelementptr i8, ptr %3, i32 2392
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.2, align 1
  %arrayidx16.2 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx16.2, align 1
  %arrayidx.3 = getelementptr i8, ptr %3, i32 2393
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.3, align 1
  %arrayidx16.3 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx16.3, align 1
  %arrayidx.4 = getelementptr i8, ptr %3, i32 2394
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.4, align 1
  %arrayidx16.4 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx16.4, align 1
  %arrayidx.5 = getelementptr i8, ptr %3, i32 2395
  %25 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.5, align 1
  %arrayidx16.5 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx16.5, align 1
  %arrayidx.6 = getelementptr i8, ptr %3, i32 2396
  %28 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.6, align 1
  %arrayidx16.6 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 6
  %30 = ptrtoint ptr %arrayidx16.6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx16.6, align 1
  %arrayidx.7 = getelementptr i8, ptr %3, i32 2397
  %31 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.7, align 1
  %arrayidx16.7 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx16.7 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx16.7, align 1
  %arrayidx.8 = getelementptr i8, ptr %3, i32 2398
  %34 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.8, align 1
  %arrayidx16.8 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 8
  %36 = ptrtoint ptr %arrayidx16.8 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx16.8, align 1
  %arrayidx.9 = getelementptr i8, ptr %3, i32 2399
  %37 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.9, align 1
  %arrayidx16.9 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 9
  %39 = ptrtoint ptr %arrayidx16.9 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx16.9, align 1
  %arrayidx.10 = getelementptr i8, ptr %3, i32 2400
  %40 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.10, align 1
  %arrayidx16.10 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 10
  %42 = ptrtoint ptr %arrayidx16.10 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx16.10, align 1
  %arrayidx.11 = getelementptr i8, ptr %3, i32 2401
  %43 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.11, align 1
  %arrayidx16.11 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 11
  %45 = ptrtoint ptr %arrayidx16.11 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx16.11, align 1
  %arrayidx.12 = getelementptr i8, ptr %3, i32 2402
  %46 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.12, align 1
  %arrayidx16.12 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 12
  %48 = ptrtoint ptr %arrayidx16.12 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx16.12, align 1
  %arrayidx.13 = getelementptr i8, ptr %3, i32 2403
  %49 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.13, align 1
  %arrayidx16.13 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 13
  %51 = ptrtoint ptr %arrayidx16.13 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx16.13, align 1
  %arrayidx.14 = getelementptr i8, ptr %3, i32 2404
  %52 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.14, align 1
  %arrayidx16.14 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 14
  %54 = ptrtoint ptr %arrayidx16.14 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx16.14, align 1
  %arrayidx.15 = getelementptr i8, ptr %3, i32 2405
  %55 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.15, align 1
  %arrayidx16.15 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 15
  %57 = ptrtoint ptr %arrayidx16.15 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx16.15, align 1
  %arrayidx.16 = getelementptr i8, ptr %3, i32 2406
  %58 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.16, align 1
  %arrayidx16.16 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 16
  %60 = ptrtoint ptr %arrayidx16.16 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx16.16, align 1
  %arrayidx.17 = getelementptr i8, ptr %3, i32 2407
  %61 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.17, align 1
  %arrayidx16.17 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 17
  %63 = ptrtoint ptr %arrayidx16.17 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx16.17, align 1
  %arrayidx.18 = getelementptr i8, ptr %3, i32 2408
  %64 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.18, align 1
  %arrayidx16.18 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 18
  %66 = ptrtoint ptr %arrayidx16.18 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx16.18, align 1
  %arrayidx.19 = getelementptr i8, ptr %3, i32 2409
  %67 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.19, align 1
  %arrayidx16.19 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 19
  %69 = ptrtoint ptr %arrayidx16.19 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx16.19, align 1
  %arrayidx.20 = getelementptr i8, ptr %3, i32 2410
  %70 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.20, align 1
  %arrayidx16.20 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 20
  %72 = ptrtoint ptr %arrayidx16.20 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx16.20, align 1
  %arrayidx.21 = getelementptr i8, ptr %3, i32 2411
  %73 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.21, align 1
  %arrayidx16.21 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 21
  %75 = ptrtoint ptr %arrayidx16.21 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx16.21, align 1
  %arrayidx.22 = getelementptr i8, ptr %3, i32 2412
  %76 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.22, align 1
  %arrayidx16.22 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 22
  %78 = ptrtoint ptr %arrayidx16.22 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx16.22, align 1
  %arrayidx.23 = getelementptr i8, ptr %3, i32 2413
  %79 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.23, align 1
  %arrayidx16.23 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 23
  %81 = ptrtoint ptr %arrayidx16.23 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx16.23, align 1
  %arrayidx.24 = getelementptr i8, ptr %3, i32 2414
  %82 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.24, align 1
  %arrayidx16.24 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 24
  %84 = ptrtoint ptr %arrayidx16.24 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx16.24, align 1
  %arrayidx.25 = getelementptr i8, ptr %3, i32 2415
  %85 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.25, align 1
  %arrayidx16.25 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 25
  %87 = ptrtoint ptr %arrayidx16.25 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx16.25, align 1
  %arrayidx.26 = getelementptr i8, ptr %3, i32 2416
  %88 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.26, align 1
  %arrayidx16.26 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 26
  %90 = ptrtoint ptr %arrayidx16.26 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx16.26, align 1
  %arrayidx.27 = getelementptr i8, ptr %3, i32 2417
  %91 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.27, align 1
  %arrayidx16.27 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 27
  %93 = ptrtoint ptr %arrayidx16.27 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx16.27, align 1
  %arrayidx.28 = getelementptr i8, ptr %3, i32 2418
  %94 = ptrtoint ptr %arrayidx.28 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.28, align 1
  %arrayidx16.28 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 28
  %96 = ptrtoint ptr %arrayidx16.28 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx16.28, align 1
  %arrayidx.29 = getelementptr i8, ptr %3, i32 2419
  %97 = ptrtoint ptr %arrayidx.29 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.29, align 1
  %arrayidx16.29 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 29
  %99 = ptrtoint ptr %arrayidx16.29 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx16.29, align 1
  %arrayidx.30 = getelementptr i8, ptr %3, i32 2420
  %100 = ptrtoint ptr %arrayidx.30 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.30, align 1
  %arrayidx16.30 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 30
  %102 = ptrtoint ptr %arrayidx16.30 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %arrayidx16.30, align 1
  %arrayidx.31 = getelementptr i8, ptr %3, i32 2421
  %103 = ptrtoint ptr %arrayidx.31 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.31, align 1
  %arrayidx16.31 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 31
  %105 = ptrtoint ptr %arrayidx16.31 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %arrayidx16.31, align 1
  %arrayidx17 = getelementptr inbounds [33 x i8], ptr %c, i32 0, i32 32
  %106 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %arrayidx17, align 1
  %sparm18 = getelementptr i8, ptr %3, i32 2388
  %107 = ptrtoint ptr %sparm18 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %sparm18, align 4
  %idxprom = zext i8 %108 to i32
  %arrayidx19 = getelementptr [2 x ptr], ptr @nettype, i32 0, i32 %idxprom
  %109 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx19, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.197, ptr noundef %110, ptr noundef nonnull %c) #16
  %bss_id = getelementptr i8, ptr %3, i32 2552
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.198, ptr noundef %bss_id) #16
  %a_curr_country_code = getelementptr i8, ptr %3, i32 2460
  %111 = ptrtoint ptr %a_curr_country_code to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %a_curr_country_code, align 4
  %conv22 = zext i8 %112 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.199, i32 noundef %conv22) #16
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp23 = icmp slt i32 %114, 0
  %spec.store.select = select i1 %cmp23, i32 10, i32 %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %spec.store.select)
  %cmp27 = icmp ugt i32 %spec.store.select, 16
  %spec.store.select110 = select i1 %cmp27, i32 10, i32 %spec.store.select
  %arrayidx31 = getelementptr [17 x ptr], ptr @card_status, i32 0, i32 %spec.store.select110
  %115 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx31, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.200, ptr noundef %116) #16
  %117 = load i8, ptr @translate, align 1, !range !756
  %118 = zext i8 %117 to i32
  %arrayidx34 = getelementptr [2 x ptr], ptr @framing, i32 0, i32 %118
  %119 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx34, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.201, ptr noundef %120) #16
  %last_rsl = getelementptr i8, ptr %3, i32 2669
  %121 = ptrtoint ptr %last_rsl to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %last_rsl, align 1
  %conv35 = zext i8 %122 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.202, i32 noundef %conv35) #16
  %beacon_rxed = getelementptr i8, ptr %3, i32 2672
  %123 = ptrtoint ptr %beacon_rxed to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %beacon_rxed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool36.not = icmp eq i32 %124, 0
  br i1 %tobool36.not, label %if.else102, label %if.then37

if.then37:                                        ; preds = %if.end13
  %beacon_intvl = getelementptr i8, ptr %3, i32 2708
  %125 = ptrtoint ptr %beacon_intvl to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %beacon_intvl, align 4
  %conv39 = zext i8 %126 to i32
  %arrayidx42 = getelementptr i8, ptr %3, i32 2709
  %127 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %128 to i32
  %mul = shl nuw nsw i32 %conv43, 8
  %add = or i32 %mul, %conv39
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.203, i32 noundef %add) #16
  %elements = getelementptr i8, ptr %3, i32 2712
  %129 = ptrtoint ptr %elements to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %elements, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp48 = icmp eq i8 %130, 0
  br i1 %cmp48, label %if.then50, label %if.else54

if.then50:                                        ; preds = %if.then37
  %arrayidx51 = getelementptr i8, ptr %3, i32 2713
  %131 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %132 to i32
  %add53 = add nuw nsw i32 %conv52, 2
  %add.ptr = getelementptr i8, ptr %elements, i32 %add53
  %133 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %134)
  %cmp60 = icmp eq i8 %134, 1
  br i1 %cmp60, label %if.then62, label %if.else79

if.else54:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #18
  %conv47 = zext i8 %130 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.204, i32 noundef %conv47) #16
  br label %cleanup

if.then62:                                        ; preds = %if.then50
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.205) #16
  %arrayidx64 = getelementptr i8, ptr %add.ptr, i32 1
  %135 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %cmp67179.not = icmp eq i8 %136, 0
  br i1 %cmp67179.not, label %if.then62.for.end74_crit_edge, label %if.then62.for.body69_crit_edge

if.then62.for.body69_crit_edge:                   ; preds = %if.then62
  br label %for.body69

if.then62.for.end74_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end74

for.body69:                                       ; preds = %for.body69.for.body69_crit_edge, %if.then62.for.body69_crit_edge
  %i.1180 = phi i32 [ %inc73, %for.body69.for.body69_crit_edge ], [ 2, %if.then62.for.body69_crit_edge ]
  %arrayidx70 = getelementptr i8, ptr %add.ptr, i32 %i.1180
  %137 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %138 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.206, i32 noundef %conv71) #16
  %inc73 = add nuw nsw i32 %i.1180, 1
  %139 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %140 to i32
  %add66 = add nuw nsw i32 %conv65, 2
  %cmp67 = icmp ult i32 %inc73, %add66
  br i1 %cmp67, label %for.body69.for.body69_crit_edge, label %for.body69.for.end74_crit_edge

for.body69.for.end74_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end74

for.body69.for.body69_crit_edge:                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body69

for.end74:                                        ; preds = %for.body69.for.end74_crit_edge, %if.then62.for.end74_crit_edge
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #16
  %141 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx64, align 1
  %conv76 = zext i8 %142 to i32
  %add77 = add nuw nsw i32 %conv76, 2
  %add.ptr78 = getelementptr i8, ptr %add.ptr, i32 %add77
  %143 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %add.ptr78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %144)
  %cmp83 = icmp eq i8 %144, 2
  br i1 %cmp83, label %if.then85, label %if.else100

if.else79:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #18
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.207) #16
  br label %cleanup

if.then85:                                        ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #18
  %dwell_time = getelementptr inbounds %struct.freq_hop_element, ptr %add.ptr78, i32 0, i32 2
  %145 = ptrtoint ptr %dwell_time to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %dwell_time, align 1
  %conv87 = zext i8 %146 to i32
  %arrayidx89 = getelementptr [2 x i8], ptr %dwell_time, i32 0, i32 1
  %147 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %148 to i32
  %mul91 = shl nuw nsw i32 %conv90, 8
  %add92 = or i32 %mul91, %conv87
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.208, i32 noundef %add92) #16
  %hop_set = getelementptr inbounds %struct.freq_hop_element, ptr %add.ptr78, i32 0, i32 3
  %149 = ptrtoint ptr %hop_set to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %hop_set, align 1
  %conv93 = zext i8 %150 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.209, i32 noundef %conv93) #16
  %hop_pattern = getelementptr inbounds %struct.freq_hop_element, ptr %add.ptr78, i32 0, i32 4
  %151 = ptrtoint ptr %hop_pattern to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %hop_pattern, align 1
  %conv94 = zext i8 %152 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.210, i32 noundef %conv94) #16
  %hop_index = getelementptr inbounds %struct.freq_hop_element, ptr %add.ptr78, i32 0, i32 5
  %153 = ptrtoint ptr %hop_index to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %hop_index, align 1
  %conv95 = zext i8 %154 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.211, i32 noundef %conv95) #16
  br label %cleanup

if.else100:                                       ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #18
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.212) #16
  br label %cleanup

if.else102:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.213) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else102, %if.else100, %if.then85, %if.else79, %if.else54, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %c) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ray_cs_essid_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %count, i32 32)
  %1 = call ptr @memset(ptr @ray_cs_essid_proc_write.proc_essid, i32 0, i32 33)
  tail call void @__check_object_size(ptr noundef nonnull @ray_cs_essid_proc_write.proc_essid, i32 noundef %0, i1 noundef zeroext false) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.233, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %0, i32 -1226833920) #22, !srcloc !819
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !791

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ray_cs_essid_proc_write.proc_essid, i32 noundef %0) #16
  %3 = tail call i32 @llvm.read_register.i32(metadata !698) #16
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !820
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !821
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !822
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull @ray_cs_essid_proc_write.proc_essid, ptr noundef %buffer, i32 noundef %0) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #16, !srcloc !821
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !822
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %0, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %0, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.then11.i.i, !prof !791

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = sub i32 %0, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr @ray_cs_essid_proc_write.proc_essid, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store ptr @ray_cs_essid_proc_write.proc_essid, ptr @essid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end2 ], [ -14, %if.then11.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @int_proc_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup13_crit_edge, label %if.end

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup13

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %count)
  %cmp = icmp ugt i32 %count, 9
  br i1 %cmp, label %if.end.cleanup13_crit_edge, label %if.then.i.i.i

if.end.cleanup13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup13

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef nonnull @int_proc_write.proc_number, i32 noundef %count, i1 noundef zeroext false) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.233, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %count, i32 -1226833920) #22, !srcloc !819
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !791

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @int_proc_write.proc_number, i32 noundef %count) #16
  %1 = tail call i32 @llvm.read_register.i32(metadata !698) #16
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !820
  %and.i.i.i.i = and i32 %3, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !821
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !822
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull @int_proc_write.proc_number, ptr noundef %buffer, i32 noundef %count) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #16, !srcloc !821
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.do.body_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !791

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i.do.body_crit_edge:                     ; preds = %if.end.i.i
  br label %do.body

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i25 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i25
  %add.ptr.i.i = getelementptr i8, ptr @int_proc_write.proc_number, i32 %sub.i.i
  %4 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i25)
  br label %cleanup13

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end.i.i.do.body_crit_edge
  %p.0 = phi ptr [ %incdec.ptr, %do.cond.do.body_crit_edge ], [ @int_proc_write.proc_number, %if.end.i.i.do.body_crit_edge ]
  %nr.0 = phi i32 [ %add, %do.cond.do.body_crit_edge ], [ 0, %if.end.i.i.do.body_crit_edge ]
  %len.0 = phi i32 [ %dec, %do.cond.do.body_crit_edge ], [ %count, %if.end.i.i.do.body_crit_edge ]
  %5 = ptrtoint ptr %p.0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %p.0, align 1
  %conv = zext i8 %6 to i32
  %sub = add nsw i32 %conv, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub)
  %cmp6 = icmp ugt i32 %sub, 9
  br i1 %cmp6, label %do.body.cleanup13_crit_edge, label %do.cond

do.body.cleanup13_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup13

do.cond:                                          ; preds = %do.body
  %mul = mul i32 %nr.0, 10
  %add = add i32 %sub, %mul
  %incdec.ptr = getelementptr i8, ptr %p.0, i32 1
  %dec = add i32 %len.0, -1
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %7 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 54
  %9 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_private.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %10, align 4
  br label %cleanup13

cleanup13:                                        ; preds = %do.end, %do.body.cleanup13_crit_edge, %if.then11.i.i, %if.end.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  %retval.2 = phi i32 [ %count, %do.end ], [ 0, %entry.cleanup13_crit_edge ], [ -22, %if.end.cleanup13_crit_edge ], [ -14, %if.then11.i.i ], [ -22, %do.body.cleanup13_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 271)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 271)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !61, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !77, !78, !79, !80, !82, !83, !85, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !189, !191, !192, !194, !195, !196, !198, !199, !201, !202, !203, !205, !206, !208, !209, !211, !212, !213, !215, !216, !218, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !233, !234, !235, !237, !238, !240, !241, !243, !244, !245, !247, !248, !250, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !270, !272, !273, !274, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !301, !303, !304, !305, !307, !308, !310, !311, !313, !314, !316, !317, !318, !320, !321, !323, !324, !325, !327, !328, !330, !331, !333, !334, !336, !337, !338, !340, !341, !343, !344, !346, !347, !349, !350, !351, !353, !354, !355, !357, !359, !360, !361, !363, !364, !366, !367, !369, !370, !372, !373, !374, !376, !377, !379, !380, !381, !383, !384, !386, !387, !388, !390, !391, !393, !394, !396, !397, !398, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !422, !423, !425, !426, !427, !429, !430, !431, !433, !434, !436, !437, !439, !440, !442, !443, !445, !446, !447, !449, !450, !452, !453, !455, !457, !458, !459, !461, !462, !464, !465, !467, !468, !469, !471, !472, !474, !476, !477, !478, !480, !481, !483, !484, !486, !487, !489, !490, !492, !493, !495, !496, !497, !499, !500, !502, !504, !506, !508, !510, !512, !514, !516, !517, !518, !520, !521, !522, !523, !525, !526, !528, !529, !531, !532, !534, !535, !536, !538, !539, !540, !542, !543, !544, !546, !547, !549, !550, !551, !553, !554, !556, !557, !559, !560, !562, !564, !566, !567, !568, !570, !571, !573, !574, !575, !577, !578, !580, !581, !582, !584, !586, !587, !588, !590, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !690, !692, !694, !696}
!llvm.named.register.sp = !{!698}
!llvm.module.flags = !{!699, !700, !701, !702, !703, !704, !705, !706}
!llvm.ident = !{!707}

!0 = !{ptr @__UNIQUE_ID_author345, !1, !"__UNIQUE_ID_author345", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ray_cs.c", i32 158, i32 1}
!2 = !{ptr @__UNIQUE_ID_description346, !3, !"__UNIQUE_ID_description346", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ray_cs.c", i32 159, i32 1}
!4 = !{ptr @__UNIQUE_ID_file347, !5, !"__UNIQUE_ID_file347", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ray_cs.c", i32 160, i32 1}
!6 = !{ptr @__UNIQUE_ID_license348, !5, !"__UNIQUE_ID_license348", i1 false, i1 false}
!7 = !{ptr @__param_net_type, !8, !"__param_net_type", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ray_cs.c", i32 162, i32 1}
!9 = !{ptr @__UNIQUE_ID_net_typetype349, !8, !"__UNIQUE_ID_net_typetype349", i1 false, i1 false}
!10 = !{ptr @__param_hop_dwell, !11, !"__param_hop_dwell", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ray_cs.c", i32 163, i32 1}
!12 = !{ptr @__UNIQUE_ID_hop_dwelltype350, !11, !"__UNIQUE_ID_hop_dwelltype350", i1 false, i1 false}
!13 = !{ptr @__param_beacon_period, !14, !"__param_beacon_period", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ray_cs.c", i32 164, i32 1}
!15 = !{ptr @__UNIQUE_ID_beacon_periodtype351, !14, !"__UNIQUE_ID_beacon_periodtype351", i1 false, i1 false}
!16 = !{ptr @__param_psm, !17, !"__param_psm", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ray_cs.c", i32 165, i32 1}
!18 = !{ptr @__UNIQUE_ID_psmtype352, !17, !"__UNIQUE_ID_psmtype352", i1 false, i1 false}
!19 = !{ptr @__param_essid, !20, !"__param_essid", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ray_cs.c", i32 166, i32 1}
!21 = !{ptr @__UNIQUE_ID_essidtype353, !20, !"__UNIQUE_ID_essidtype353", i1 false, i1 false}
!22 = !{ptr @__param_translate, !23, !"__param_translate", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ray_cs.c", i32 167, i32 1}
!24 = !{ptr @__UNIQUE_ID_translatetype354, !23, !"__UNIQUE_ID_translatetype354", i1 false, i1 false}
!25 = !{ptr @__param_country, !26, !"__param_country", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ray_cs.c", i32 168, i32 1}
!27 = !{ptr @__UNIQUE_ID_countrytype355, !26, !"__UNIQUE_ID_countrytype355", i1 false, i1 false}
!28 = !{ptr @__param_sniffer, !29, !"__param_sniffer", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ray_cs.c", i32 169, i32 1}
!30 = !{ptr @__UNIQUE_ID_sniffertype356, !29, !"__UNIQUE_ID_sniffertype356", i1 false, i1 false}
!31 = !{ptr @__param_bc, !32, !"__param_bc", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ray_cs.c", i32 170, i32 1}
!33 = !{ptr @__UNIQUE_ID_bctype357, !32, !"__UNIQUE_ID_bctype357", i1 false, i1 false}
!34 = !{ptr @__param_phy_addr, !35, !"__param_phy_addr", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ray_cs.c", i32 171, i32 1}
!36 = !{ptr @__UNIQUE_ID_phy_addrtype358, !35, !"__UNIQUE_ID_phy_addrtype358", i1 false, i1 false}
!37 = !{ptr @__param_ray_mem_speed, !38, !"__param_ray_mem_speed", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ray_cs.c", i32 172, i32 1}
!39 = !{ptr @__UNIQUE_ID_ray_mem_speedtype359, !38, !"__UNIQUE_ID_ray_mem_speedtype359", i1 false, i1 false}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ray_cs.c", i32 2805, i32 2}
!42 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @exit_ray_cs.__UNIQUE_ID_ddebug493, !41, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!46 = !{ptr @.str.4, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ray_cs.c", i32 2808, i32 22}
!48 = !{ptr @__initcall__kmod_ray_cs__494_2814_init_ray_cs6, !49, !"__initcall__kmod_ray_cs__494_2814_init_ray_cs6", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ray_cs.c", i32 2814, i32 1}
!50 = !{ptr @__exitcall_exit_ray_cs, !51, !"__exitcall_exit_ray_cs", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ray_cs.c", i32 2815, i32 1}
!52 = !{ptr @psm, !53, !"psm", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ray_cs.c", i32 127, i32 12}
!54 = !{ptr @essid, !55, !"essid", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ray_cs.c", i32 130, i32 14}
!56 = !{ptr @sniffer, !57, !"sniffer", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ray_cs.c", i32 137, i32 12}
!58 = !{ptr @bc, !59, !"bc", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ray_cs.c", i32 139, i32 12}
!60 = !{ptr @__param_str_net_type, !8, !"__param_str_net_type", i1 false, i1 false}
!61 = !{ptr @net_type, !62, !"net_type", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ray_cs.c", i32 118, i32 12}
!63 = !{ptr @__param_str_hop_dwell, !11, !"__param_str_hop_dwell", i1 false, i1 false}
!64 = !{ptr @hop_dwell, !65, !"hop_dwell", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ray_cs.c", i32 121, i32 12}
!66 = !{ptr @__param_str_beacon_period, !14, !"__param_str_beacon_period", i1 false, i1 false}
!67 = !{ptr @beacon_period, !68, !"beacon_period", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ray_cs.c", i32 124, i32 12}
!69 = !{ptr @__param_str_psm, !17, !"__param_str_psm", i1 false, i1 false}
!70 = !{ptr @__param_str_essid, !20, !"__param_str_essid", i1 false, i1 false}
!71 = !{ptr @__param_str_translate, !23, !"__param_str_translate", i1 false, i1 false}
!72 = !{ptr @translate, !73, !"translate", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ray_cs.c", i32 133, i32 13}
!74 = !{ptr @__param_str_country, !26, !"__param_str_country", i1 false, i1 false}
!75 = !{ptr @country, !76, !"country", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ray_cs.c", i32 135, i32 12}
!77 = !{ptr @__param_str_sniffer, !29, !"__param_str_sniffer", i1 false, i1 false}
!78 = !{ptr @__param_str_bc, !32, !"__param_str_bc", i1 false, i1 false}
!79 = !{ptr @__param_str_phy_addr, !35, !"__param_str_phy_addr", i1 false, i1 false}
!80 = !{ptr @phy_addr, !81, !"phy_addr", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ray_cs.c", i32 151, i32 14}
!82 = !{ptr @__param_str_ray_mem_speed, !38, !"__param_str_ray_mem_speed", i1 false, i1 false}
!83 = !{ptr @ray_mem_speed, !84, !"ray_mem_speed", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ray_cs.c", i32 153, i32 21}
!85 = !{ptr @ray_driver, !86, !"ray_driver", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ray_cs.c", i32 2766, i32 29}
!87 = !{ptr @.str.5, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ray_cs.c", i32 274, i32 2}
!89 = !{ptr @.str.6, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ray_probe.__UNIQUE_ID_ddebug360, !88, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!91 = !{ptr @.str.7, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ray_cs.c", i32 298, i32 2}
!93 = !{ptr @ray_probe.__UNIQUE_ID_ddebug361, !92, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!94 = !{ptr @.str.8, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ray_cs.c", i32 310, i32 2}
!96 = !{ptr @ray_probe.__UNIQUE_ID_ddebug362, !95, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!97 = !{ptr @ray_probe.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ray_cs.c", i32 313, i32 2}
!99 = !{ptr @.str.9, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.10, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ray_cs.c", i32 1841, i32 2}
!102 = !{ptr @.str.11, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug429, !101, !"__UNIQUE_ID_ddebug429", i1 false, i1 false}
!104 = !{ptr @.str.12, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ray_cs.c", i32 1846, i32 3}
!106 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug430, !105, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!107 = !{ptr @.str.13, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ray_cs.c", i32 1853, i32 3}
!109 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug431, !108, !"__UNIQUE_ID_ddebug431", i1 false, i1 false}
!110 = !{ptr @.str.14, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ray_cs.c", i32 1865, i32 5}
!112 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug432, !111, !"__UNIQUE_ID_ddebug432", i1 false, i1 false}
!113 = !{ptr @.str.15, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ray_cs.c", i32 1868, i32 5}
!115 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug433, !114, !"__UNIQUE_ID_ddebug433", i1 false, i1 false}
!116 = !{ptr @.str.16, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ray_cs.c", i32 1873, i32 4}
!118 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug434, !117, !"__UNIQUE_ID_ddebug434", i1 false, i1 false}
!119 = !{ptr @.str.17, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ray_cs.c", i32 1878, i32 5}
!121 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug435, !120, !"__UNIQUE_ID_ddebug435", i1 false, i1 false}
!122 = !{ptr @.str.18, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ray_cs.c", i32 1884, i32 4}
!124 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug436, !123, !"__UNIQUE_ID_ddebug436", i1 false, i1 false}
!125 = !{ptr @.str.19, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ray_cs.c", i32 1887, i32 4}
!127 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug437, !126, !"__UNIQUE_ID_ddebug437", i1 false, i1 false}
!128 = !{ptr @.str.20, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ray_cs.c", i32 1891, i32 4}
!130 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug438, !129, !"__UNIQUE_ID_ddebug438", i1 false, i1 false}
!131 = !{ptr @.str.21, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ray_cs.c", i32 1904, i32 6}
!133 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug439, !132, !"__UNIQUE_ID_ddebug439", i1 false, i1 false}
!134 = !{ptr @.str.22, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ray_cs.c", i32 1908, i32 6}
!136 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug440, !135, !"__UNIQUE_ID_ddebug440", i1 false, i1 false}
!137 = !{ptr @.str.23, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ray_cs.c", i32 1935, i32 6}
!139 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug441, !138, !"__UNIQUE_ID_ddebug441", i1 false, i1 false}
!140 = !{ptr @.str.24, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ray_cs.c", i32 1940, i32 6}
!142 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug442, !141, !"__UNIQUE_ID_ddebug442", i1 false, i1 false}
!143 = !{ptr @.str.25, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ray_cs.c", i32 1951, i32 5}
!145 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug443, !144, !"__UNIQUE_ID_ddebug443", i1 false, i1 false}
!146 = !{ptr @.str.26, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ray_cs.c", i32 1953, i32 5}
!148 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug444, !147, !"__UNIQUE_ID_ddebug444", i1 false, i1 false}
!149 = !{ptr @.str.27, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ray_cs.c", i32 1960, i32 5}
!151 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug445, !150, !"__UNIQUE_ID_ddebug445", i1 false, i1 false}
!152 = !{ptr @.str.28, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ray_cs.c", i32 1963, i32 5}
!154 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug446, !153, !"__UNIQUE_ID_ddebug446", i1 false, i1 false}
!155 = !{ptr @.str.29, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ray_cs.c", i32 1971, i32 4}
!157 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug447, !156, !"__UNIQUE_ID_ddebug447", i1 false, i1 false}
!158 = !{ptr @.str.30, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ray_cs.c", i32 1974, i32 4}
!160 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug448, !159, !"__UNIQUE_ID_ddebug448", i1 false, i1 false}
!161 = !{ptr @.str.31, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/ray_cs.c", i32 1978, i32 4}
!163 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug449, !162, !"__UNIQUE_ID_ddebug449", i1 false, i1 false}
!164 = !{ptr @.str.32, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ray_cs.c", i32 1981, i32 4}
!166 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug450, !165, !"__UNIQUE_ID_ddebug450", i1 false, i1 false}
!167 = !{ptr @.str.33, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/ray_cs.c", i32 1985, i32 4}
!169 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug451, !168, !"__UNIQUE_ID_ddebug451", i1 false, i1 false}
!170 = !{ptr @.str.34, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ray_cs.c", i32 1999, i32 4}
!172 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug452, !171, !"__UNIQUE_ID_ddebug452", i1 false, i1 false}
!173 = !{ptr @.str.35, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ray_cs.c", i32 2009, i32 5}
!175 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug453, !174, !"__UNIQUE_ID_ddebug453", i1 false, i1 false}
!176 = !{ptr @.str.36, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ray_cs.c", i32 2016, i32 4}
!178 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug454, !177, !"__UNIQUE_ID_ddebug454", i1 false, i1 false}
!179 = !{ptr @.str.37, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ray_cs.c", i32 2021, i32 4}
!181 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug455, !180, !"__UNIQUE_ID_ddebug455", i1 false, i1 false}
!182 = !{ptr @.str.38, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ray_cs.c", i32 2024, i32 4}
!184 = !{ptr @ray_interrupt.__UNIQUE_ID_ddebug456, !183, !"__UNIQUE_ID_ddebug456", i1 false, i1 false}
!185 = !{ptr @.str.39, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/ray_cs.c", i32 2400, i32 2}
!187 = !{ptr @.str.40, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @authenticate.__UNIQUE_ID_ddebug478, !186, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!189 = !{ptr @.str.41, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/ray_cs.c", i32 2402, i32 3}
!191 = !{ptr @authenticate.__UNIQUE_ID_ddebug479, !190, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!192 = !{ptr @.str.42, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/ray_cs.c", i32 2663, i32 3}
!194 = !{ptr @.str.43, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @build_auth_frame.__UNIQUE_ID_ddebug489, !193, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!196 = !{ptr @.str.44, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/ray_cs.c", i32 2695, i32 3}
!198 = !{ptr @build_auth_frame.__UNIQUE_ID_ddebug490, !197, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!199 = !{ptr @.str.45, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ray_cs.c", i32 1574, i32 3}
!201 = !{ptr @.str.46, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @get_free_tx_ccs.__UNIQUE_ID_ddebug410, !200, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!203 = !{ptr @.str.47, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ray_cs.c", i32 1579, i32 3}
!205 = !{ptr @get_free_tx_ccs.__UNIQUE_ID_ddebug411, !204, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!206 = !{ptr @.str.48, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/ray_cs.c", i32 1592, i32 2}
!208 = !{ptr @get_free_tx_ccs.__UNIQUE_ID_ddebug412, !207, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!209 = !{ptr @.str.49, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ray_cs.c", i32 1545, i32 3}
!211 = !{ptr @.str.50, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @interrupt_ecf.__UNIQUE_ID_ddebug407, !210, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!213 = !{ptr @.str.51, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ray_cs.c", i32 1548, i32 2}
!215 = !{ptr @interrupt_ecf.__UNIQUE_ID_ddebug408, !214, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!216 = !{ptr @.str.52, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/ray_cs.c", i32 1555, i32 3}
!218 = !{ptr @interrupt_ecf.__UNIQUE_ID_ddebug409, !217, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!219 = !{ptr @.str.53, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ray_cs.c", i32 1632, i32 2}
!221 = !{ptr @.str.54, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @authenticate_timeout._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @authenticate_timeout._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.55, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/ray_cs.c", i32 675, i32 3}
!226 = !{ptr @.str.56, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @start_net.__UNIQUE_ID_ddebug379, !225, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!228 = !{ptr @.str.57, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/ray_cs.c", i32 686, i32 3}
!230 = !{ptr @start_net.__UNIQUE_ID_ddebug380, !229, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!231 = !{ptr @.str.58, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ray_cs.c", i32 1606, i32 3}
!233 = !{ptr @.str.59, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @get_free_ccs.__UNIQUE_ID_ddebug413, !232, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!235 = !{ptr @.str.60, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ray_cs.c", i32 1610, i32 3}
!237 = !{ptr @get_free_ccs.__UNIQUE_ID_ddebug414, !236, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!238 = !{ptr @.str.61, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/ray_cs.c", i32 1623, i32 2}
!240 = !{ptr @get_free_ccs.__UNIQUE_ID_ddebug415, !239, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!241 = !{ptr @.str.62, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/ray_cs.c", i32 704, i32 3}
!243 = !{ptr @.str.63, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @join_net.__UNIQUE_ID_ddebug381, !242, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!245 = !{ptr @.str.64, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/ray_cs.c", i32 716, i32 3}
!247 = !{ptr @join_net.__UNIQUE_ID_ddebug382, !246, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!248 = !{ptr @.str.65, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/ray_cs.c", i32 2043, i32 2}
!250 = !{ptr @.str.66, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @ray_rx.__UNIQUE_ID_ddebug457, !249, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!252 = !{ptr @.str.67, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/ray_cs.c", i32 2056, i32 3}
!254 = !{ptr @ray_rx.__UNIQUE_ID_ddebug458, !253, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!255 = !{ptr @.str.68, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/ray_cs.c", i32 2060, i32 3}
!257 = !{ptr @ray_rx.__UNIQUE_ID_ddebug459, !256, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!258 = !{ptr @.str.69, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/ray_cs.c", i32 2067, i32 3}
!260 = !{ptr @ray_rx.__UNIQUE_ID_ddebug460, !259, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!261 = !{ptr @.str.70, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/ray_cs.c", i32 2074, i32 3}
!263 = !{ptr @ray_rx.__UNIQUE_ID_ddebug461, !262, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!264 = !{ptr @.str.71, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/ray_cs.c", i32 2077, i32 3}
!266 = !{ptr @ray_rx.__UNIQUE_ID_ddebug462, !265, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!267 = !{ptr @.str.72, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/ray_cs.c", i32 2090, i32 3}
!269 = !{ptr @ray_rx.__UNIQUE_ID_ddebug463, !268, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!270 = !{ptr @.str.73, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/ray_cs.c", i32 2119, i32 5}
!272 = !{ptr @.str.74, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @rx_data.__UNIQUE_ID_ddebug464, !271, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!274 = !{ptr @rx_data.__UNIQUE_ID_ddebug465, !275, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/ray_cs.c", i32 2130, i32 5}
!276 = !{ptr @.str.75, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/ray_cs.c", i32 2137, i32 2}
!278 = !{ptr @rx_data.__UNIQUE_ID_ddebug466, !277, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!279 = !{ptr @.str.76, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/ray_cs.c", i32 2140, i32 3}
!281 = !{ptr @rx_data.__UNIQUE_ID_ddebug467, !280, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!282 = !{ptr @.str.77, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/ray_cs.c", i32 2158, i32 4}
!284 = !{ptr @rx_data.__UNIQUE_ID_ddebug468, !283, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!285 = !{ptr @.str.78, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/ray_cs.c", i32 2170, i32 3}
!287 = !{ptr @rx_data.__UNIQUE_ID_ddebug469, !286, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!288 = !{ptr @.str.79, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/ray_cs.c", i32 2178, i32 2}
!290 = !{ptr @rx_data.__UNIQUE_ID_ddebug470, !289, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!291 = !{ptr @.str.80, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/ray_cs.c", i32 2211, i32 3}
!293 = !{ptr @rx_data.__UNIQUE_ID_ddebug471, !292, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!294 = !{ptr @.str.81, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/ray_cs.c", i32 2386, i32 4}
!296 = !{ptr @release_frag_chain.__UNIQUE_ID_ddebug477, !295, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!297 = !{ptr @untranslate.org_bridge, !298, !"org_bridge", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/ray_cs.c", i32 2277, i32 21}
!299 = !{ptr @untranslate.org_1042, !300, !"org_1042", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/ray_cs.c", i32 2278, i32 21}
!301 = !{ptr @.str.82, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/ray_cs.c", i32 2298, i32 3}
!303 = !{ptr @.str.83, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @untranslate.__UNIQUE_ID_ddebug472, !302, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!305 = !{ptr @.str.84, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/ray_cs.c", i32 2307, i32 4}
!307 = !{ptr @untranslate.__UNIQUE_ID_ddebug473, !306, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!308 = !{ptr @.str.85, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/ray_cs.c", i32 2316, i32 5}
!310 = !{ptr @untranslate.__UNIQUE_ID_ddebug474, !309, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!311 = !{ptr @.str.86, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/ray_cs.c", i32 2323, i32 5}
!313 = !{ptr @untranslate.__UNIQUE_ID_ddebug475, !312, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!314 = !{ptr @.str.87, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/ray_cs.c", i32 2331, i32 4}
!316 = !{ptr @untranslate._entry, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @untranslate._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.88, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/ray_cs.c", i32 2339, i32 2}
!320 = !{ptr @untranslate.__UNIQUE_ID_ddebug476, !319, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!321 = !{ptr @.str.89, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/ray_cs.c", i32 2429, i32 3}
!323 = !{ptr @.str.90, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @rx_authenticate.__UNIQUE_ID_ddebug480, !322, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!325 = !{ptr @.str.91, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/ray_cs.c", i32 2431, i32 4}
!327 = !{ptr @rx_authenticate.__UNIQUE_ID_ddebug481, !326, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!328 = !{ptr @.str.92, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/ray_cs.c", i32 2445, i32 6}
!330 = !{ptr @rx_authenticate.__UNIQUE_ID_ddebug482, !329, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!331 = !{ptr @.str.93, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/wireless/ray_cs.c", i32 2451, i32 6}
!333 = !{ptr @rx_authenticate.__UNIQUE_ID_ddebug483, !332, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!334 = !{ptr @.str.94, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/ray_cs.c", i32 2471, i32 3}
!336 = !{ptr @.str.95, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @associate.__UNIQUE_ID_ddebug484, !335, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!338 = !{ptr @.str.96, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/ray_cs.c", i32 2477, i32 3}
!340 = !{ptr @associate.__UNIQUE_ID_ddebug485, !339, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!341 = !{ptr @.str.97, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/ray_cs.c", i32 2480, i32 2}
!343 = !{ptr @associate.__UNIQUE_ID_ddebug486, !342, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!344 = !{ptr @.str.98, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/ray_cs.c", i32 2486, i32 3}
!346 = !{ptr @associate.__UNIQUE_ID_ddebug487, !345, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!347 = !{ptr @.str.99, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/ray_cs.c", i32 2508, i32 2}
!349 = !{ptr @.str.100, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @rx_deauthenticate.__UNIQUE_ID_ddebug488, !348, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!351 = !{ptr @.str.101, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/ray_cs.c", i32 1681, i32 3}
!353 = !{ptr @.str.102, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @ray_get_stats.__UNIQUE_ID_ddebug416, !352, !"__UNIQUE_ID_ddebug416", i1 false, i1 false}
!355 = !{ptr @ray_netdev_ops, !356, !"ray_netdev_ops", i1 false, i1 false}
!356 = !{!"../drivers/net/wireless/ray_cs.c", i32 257, i32 36}
!357 = !{ptr @.str.103, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/ray_cs.c", i32 772, i32 2}
!359 = !{ptr @.str.104, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @ray_dev_init.__UNIQUE_ID_ddebug385, !358, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!361 = !{ptr @.str.105, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/ray_cs.c", i32 774, i32 3}
!363 = !{ptr @ray_dev_init.__UNIQUE_ID_ddebug386, !362, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!364 = !{ptr @.str.106, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/ray_cs.c", i32 788, i32 2}
!366 = !{ptr @ray_dev_init.__UNIQUE_ID_ddebug387, !365, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!367 = !{ptr @.str.107, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/wireless/ray_cs.c", i32 797, i32 2}
!369 = !{ptr @ray_dev_init.__UNIQUE_ID_ddebug388, !368, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!370 = !{ptr @.str.108, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/ray_cs.c", i32 1480, i32 2}
!372 = !{ptr @.str.109, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @ray_open.__UNIQUE_ID_ddebug402, !371, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!374 = !{ptr @.str.110, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/ray_cs.c", i32 1490, i32 3}
!376 = !{ptr @ray_open.__UNIQUE_ID_ddebug403, !375, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!377 = !{ptr @.str.111, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/wireless/ray_cs.c", i32 1494, i32 4}
!379 = !{ptr @ray_open._entry, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @ray_open._entry_ptr, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.112, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/wireless/ray_cs.c", i32 1506, i32 2}
!383 = !{ptr @ray_open.__UNIQUE_ID_ddebug404, !382, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!384 = !{ptr @.str.113, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/wireless/ray_cs.c", i32 523, i32 2}
!386 = !{ptr @.str.114, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @dl_startup_params.__UNIQUE_ID_ddebug374, !385, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!388 = !{ptr @.str.115, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/ray_cs.c", i32 525, i32 3}
!390 = !{ptr @dl_startup_params.__UNIQUE_ID_ddebug375, !389, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!391 = !{ptr @.str.116, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/ray_cs.c", i32 543, i32 2}
!393 = !{ptr @dl_startup_params.__UNIQUE_ID_ddebug376, !392, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!394 = !{ptr @.str.117, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/wireless/ray_cs.c", i32 547, i32 3}
!396 = !{ptr @dl_startup_params._entry, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @dl_startup_params._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.118, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/wireless/ray_cs.c", i32 558, i32 2}
!400 = !{ptr @dl_startup_params.__UNIQUE_ID_ddebug377, !399, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!401 = !{ptr @.str.119, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/ray_cs.c", i32 634, i32 3}
!403 = !{ptr @.str.120, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @verify_dl_startup.__UNIQUE_ID_ddebug378, !402, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!405 = !{ptr @.str.121, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/wireless/ray_cs.c", i32 654, i32 3}
!407 = !{ptr @verify_dl_startup._entry, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @verify_dl_startup._entry_ptr, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.122, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/wireless/ray_cs.c", i32 1517, i32 2}
!411 = !{ptr @.str.123, !410, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @ray_dev_close.__UNIQUE_ID_ddebug405, !410, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!413 = !{ptr @.str.124, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/ray_cs.c", i32 825, i32 3}
!415 = !{ptr @.str.125, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @ray_dev_start_xmit.__UNIQUE_ID_ddebug391, !414, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!417 = !{ptr @.str.126, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/wireless/ray_cs.c", i32 830, i32 2}
!419 = !{ptr @ray_dev_start_xmit.__UNIQUE_ID_ddebug392, !418, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!420 = !{ptr @.str.127, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/ray_cs.c", i32 832, i32 3}
!422 = !{ptr @ray_dev_start_xmit.__UNIQUE_ID_ddebug393, !421, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!423 = !{ptr @.str.128, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/wireless/ray_cs.c", i32 871, i32 2}
!425 = !{ptr @.str.129, !424, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @ray_hw_xmit.__UNIQUE_ID_ddebug394, !424, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!427 = !{ptr @.str.130, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/wireless/ray_cs.c", i32 873, i32 3}
!429 = !{ptr @ray_hw_xmit._entry, !428, !"_entry", i1 false, i1 false}
!430 = !{ptr @ray_hw_xmit._entry_ptr, !428, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.131, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/wireless/ray_cs.c", i32 879, i32 3}
!433 = !{ptr @ray_hw_xmit.__UNIQUE_ID_ddebug395, !432, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!434 = !{ptr @.str.132, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/wireless/ray_cs.c", i32 882, i32 3}
!436 = !{ptr @ray_hw_xmit.__UNIQUE_ID_ddebug396, !435, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!437 = !{ptr @.str.133, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/wireless/ray_cs.c", i32 920, i32 2}
!439 = !{ptr @ray_hw_xmit.__UNIQUE_ID_ddebug397, !438, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!440 = !{ptr @.str.134, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/wireless/ray_cs.c", i32 925, i32 3}
!442 = !{ptr @ray_hw_xmit.__UNIQUE_ID_ddebug398, !441, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!443 = !{ptr @.str.135, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/net/wireless/ray_cs.c", i32 942, i32 3}
!445 = !{ptr @.str.136, !444, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @translate_frame.__UNIQUE_ID_ddebug399, !444, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!447 = !{ptr @.str.137, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/wireless/ray_cs.c", i32 958, i32 3}
!449 = !{ptr @translate_frame.__UNIQUE_ID_ddebug400, !448, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!450 = !{ptr @.str.138, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/net/wireless/ray_cs.c", i32 960, i32 4}
!452 = !{ptr @translate_frame.__UNIQUE_ID_ddebug401, !451, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!453 = !{ptr @eth2_llc, !454, !"eth2_llc", i1 false, i1 false}
!454 = !{!"../drivers/net/wireless/ray_cs.c", i32 244, i32 17}
!455 = !{ptr @.str.139, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/wireless/ray_cs.c", i32 1793, i32 2}
!457 = !{ptr @.str.140, !456, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @set_multicast_list.__UNIQUE_ID_ddebug426, !456, !"__UNIQUE_ID_ddebug426", i1 false, i1 false}
!459 = !{ptr @.str.141, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/wireless/ray_cs.c", i32 1797, i32 4}
!461 = !{ptr @set_multicast_list.__UNIQUE_ID_ddebug427, !460, !"__UNIQUE_ID_ddebug427", i1 false, i1 false}
!462 = !{ptr @.str.142, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/net/wireless/ray_cs.c", i32 1805, i32 4}
!464 = !{ptr @set_multicast_list.__UNIQUE_ID_ddebug428, !463, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!465 = !{ptr @.str.143, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/net/wireless/ray_cs.c", i32 1714, i32 3}
!467 = !{ptr @.str.144, !466, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @ray_update_parm.__UNIQUE_ID_ddebug417, !466, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!469 = !{ptr @.str.145, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/net/wireless/ray_cs.c", i32 1719, i32 3}
!471 = !{ptr @ray_update_parm.__UNIQUE_ID_ddebug418, !470, !"__UNIQUE_ID_ddebug418", i1 false, i1 false}
!472 = !{ptr @ray_update_parm.__UNIQUE_ID_ddebug419, !473, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!473 = !{!"../drivers/net/wireless/ray_cs.c", i32 1732, i32 3}
!474 = !{ptr @.str.146, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/net/wireless/ray_cs.c", i32 1747, i32 3}
!476 = !{ptr @.str.147, !475, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @ray_update_multi_list.__UNIQUE_ID_ddebug420, !475, !"__UNIQUE_ID_ddebug420", i1 false, i1 false}
!478 = !{ptr @.str.148, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/net/wireless/ray_cs.c", i32 1750, i32 3}
!480 = !{ptr @ray_update_multi_list.__UNIQUE_ID_ddebug421, !479, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!481 = !{ptr @.str.149, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/net/wireless/ray_cs.c", i32 1752, i32 3}
!483 = !{ptr @ray_update_multi_list.__UNIQUE_ID_ddebug422, !482, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!484 = !{ptr @.str.150, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/net/wireless/ray_cs.c", i32 1768, i32 4}
!486 = !{ptr @ray_update_multi_list.__UNIQUE_ID_ddebug423, !485, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!487 = !{ptr @.str.151, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/net/wireless/ray_cs.c", i32 1776, i32 3}
!489 = !{ptr @ray_update_multi_list.__UNIQUE_ID_ddebug424, !488, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!490 = !{ptr @.str.152, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/net/wireless/ray_cs.c", i32 1781, i32 3}
!492 = !{ptr @ray_update_multi_list.__UNIQUE_ID_ddebug425, !491, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!493 = !{ptr @.str.153, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/net/wireless/ray_cs.c", i32 807, i32 2}
!495 = !{ptr @.str.154, !494, !"<string literal>", i1 false, i1 false}
!496 = !{ptr @ray_dev_config.__UNIQUE_ID_ddebug389, !494, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!497 = !{ptr @.str.155, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/net/wireless/ray_cs.c", i32 809, i32 3}
!499 = !{ptr @ray_dev_config.__UNIQUE_ID_ddebug390, !498, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!500 = !{ptr @ray_handler_def, !501, !"ray_handler_def", i1 false, i1 false}
!501 = !{!"../drivers/net/wireless/ray_cs.c", i32 1463, i32 36}
!502 = !{ptr @ray_handler, !503, !"ray_handler", i1 false, i1 false}
!503 = !{!"../drivers/net/wireless/ray_cs.c", i32 1418, i32 25}
!504 = !{ptr @.str.156, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/net/wireless/ray_cs.c", i32 1019, i32 21}
!506 = !{ptr @hop_pattern_length, !507, !"hop_pattern_length", i1 false, i1 false}
!507 = !{!"../drivers/net/wireless/ray_cs.c", i32 246, i32 19}
!508 = !{ptr @ray_private_handler, !509, !"ray_private_handler", i1 false, i1 false}
!509 = !{!"../drivers/net/wireless/ray_cs.c", i32 1447, i32 25}
!510 = !{ptr @ray_private_args, !511, !"ray_private_args", i1 false, i1 false}
!511 = !{!"../drivers/net/wireless/ray_cs.c", i32 1453, i32 34}
!512 = !{ptr @this_device, !513, !"this_device", i1 false, i1 false}
!513 = !{!"../drivers/net/wireless/ray_cs.c", i32 156, i32 30}
!514 = !{ptr @.str.157, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/net/wireless/ray_cs.c", i32 352, i32 2}
!516 = !{ptr @.str.158, !515, !"<string literal>", i1 false, i1 false}
!517 = !{ptr @ray_config.__UNIQUE_ID_ddebug365, !515, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!518 = !{ptr @.str.159, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/net/wireless/ray_cs.c", i32 355, i32 2}
!520 = !{ptr @ray_config._entry, !519, !"_entry", i1 false, i1 false}
!521 = !{ptr @ray_config._entry_ptr, !519, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @.str.160, !519, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @.str.161, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/net/wireless/ray_cs.c", i32 414, i32 2}
!525 = !{ptr @ray_config.__UNIQUE_ID_ddebug366, !524, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!526 = !{ptr @.str.162, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/net/wireless/ray_cs.c", i32 415, i32 2}
!528 = !{ptr @ray_config.__UNIQUE_ID_ddebug367, !527, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!529 = !{ptr @.str.163, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/net/wireless/ray_cs.c", i32 416, i32 2}
!531 = !{ptr @ray_config.__UNIQUE_ID_ddebug368, !530, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!532 = !{ptr @.str.165, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/net/wireless/ray_cs.c", i32 425, i32 3}
!534 = !{ptr @ray_config._entry.164, !533, !"_entry", i1 false, i1 false}
!535 = !{ptr @ray_config._entry_ptr.166, !533, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.168, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/net/wireless/ray_cs.c", i32 430, i32 2}
!538 = !{ptr @ray_config._entry.167, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @ray_config._entry_ptr.169, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.170, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/net/wireless/ray_cs.c", i32 464, i32 2}
!542 = !{ptr @.str.171, !541, !"<string literal>", i1 false, i1 false}
!543 = !{ptr @ray_init.__UNIQUE_ID_ddebug369, !541, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!544 = !{ptr @.str.172, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/net/wireless/ray_cs.c", i32 466, i32 3}
!546 = !{ptr @ray_init.__UNIQUE_ID_ddebug370, !545, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!547 = !{ptr @.str.173, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/net/wireless/ray_cs.c", i32 479, i32 3}
!549 = !{ptr @ray_init._entry, !548, !"_entry", i1 false, i1 false}
!550 = !{ptr @ray_init._entry_ptr, !548, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @.str.174, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/net/wireless/ray_cs.c", i32 488, i32 2}
!553 = !{ptr @ray_init.__UNIQUE_ID_ddebug371, !552, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!554 = !{ptr @.str.175, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/net/wireless/ray_cs.c", i32 494, i32 2}
!556 = !{ptr @ray_init.__UNIQUE_ID_ddebug372, !555, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!557 = !{ptr @.str.176, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/net/wireless/ray_cs.c", i32 510, i32 2}
!559 = !{ptr @ray_init.__UNIQUE_ID_ddebug373, !558, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!560 = !{ptr @b4_default_startup_parms, !561, !"b4_default_startup_parms", i1 false, i1 false}
!561 = !{!"../drivers/net/wireless/ray_cs.c", i32 209, i32 20}
!562 = !{ptr @b5_default_startup_parms, !563, !"b5_default_startup_parms", i1 false, i1 false}
!563 = !{!"../drivers/net/wireless/ray_cs.c", i32 174, i32 20}
!564 = !{ptr @.str.178, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/net/wireless/ray_cs.c", i32 729, i32 2}
!566 = !{ptr @.str.179, !565, !"<string literal>", i1 false, i1 false}
!567 = !{ptr @ray_release.__UNIQUE_ID_ddebug383, !565, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!568 = !{ptr @.str.180, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/net/wireless/ray_cs.c", i32 738, i32 2}
!570 = !{ptr @ray_release.__UNIQUE_ID_ddebug384, !569, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!571 = !{ptr @.str.181, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/net/wireless/ray_cs.c", i32 327, i32 2}
!573 = !{ptr @.str.182, !572, !"<string literal>", i1 false, i1 false}
!574 = !{ptr @ray_detach.__UNIQUE_ID_ddebug363, !572, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!575 = !{ptr @.str.183, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/net/wireless/ray_cs.c", i32 341, i32 2}
!577 = !{ptr @ray_detach.__UNIQUE_ID_ddebug364, !576, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!578 = !{ptr @.str.184, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/net/wireless/ray_cs.c", i32 1533, i32 2}
!580 = !{ptr @.str.185, !579, !"<string literal>", i1 false, i1 false}
!581 = !{ptr @ray_reset.__UNIQUE_ID_ddebug406, !579, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!582 = !{ptr @ray_ids, !583, !"ray_ids", i1 false, i1 false}
!583 = !{!"../drivers/net/wireless/ray_cs.c", i32 2759, i32 38}
!584 = !{ptr @.str.186, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/net/wireless/ray_cs.c", i32 2780, i32 2}
!586 = !{ptr @.str.187, !585, !"<string literal>", i1 false, i1 false}
!587 = !{ptr @init_ray_cs.__UNIQUE_ID_ddebug491, !585, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!588 = !{ptr @.str.188, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/net/wireless/ray_cs.c", i32 2782, i32 2}
!590 = !{ptr @init_ray_cs.__UNIQUE_ID_ddebug492, !589, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!591 = !{ptr @.str.189, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/net/wireless/ray_cs.c", i32 2790, i32 2}
!593 = !{ptr @.str.190, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/net/wireless/ray_cs.c", i32 2791, i32 14}
!595 = !{ptr @.str.191, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/net/wireless/ray_cs.c", i32 2792, i32 19}
!597 = !{ptr @.str.192, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/net/wireless/ray_cs.c", i32 2794, i32 19}
!599 = !{ptr @rcsid, !600, !"rcsid", i1 false, i1 false}
!600 = !{!"../drivers/net/wireless/ray_cs.c", i32 254, i32 19}
!601 = !{ptr @.str.193, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/net/wireless/ray_cs.c", i32 2570, i32 14}
!603 = !{ptr @.str.194, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/net/wireless/ray_cs.c", i32 2573, i32 14}
!605 = !{ptr @.str.195, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/net/wireless/ray_cs.c", i32 2575, i32 15}
!607 = !{ptr @.str.196, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/net/wireless/ray_cs.c", i32 2577, i32 17}
!609 = !{ptr @.str.197, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/net/wireless/ray_cs.c", i32 2583, i32 16}
!611 = !{ptr @.str.198, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/net/wireless/ray_cs.c", i32 2587, i32 16}
!613 = !{ptr @.str.199, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/net/wireless/ray_cs.c", i32 2589, i32 16}
!615 = !{ptr @.str.200, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/net/wireless/ray_cs.c", i32 2597, i32 16}
!617 = !{ptr @.str.201, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/net/wireless/ray_cs.c", i32 2599, i32 16}
!619 = !{ptr @.str.202, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/net/wireless/ray_cs.c", i32 2601, i32 16}
!621 = !{ptr @.str.203, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/net/wireless/ray_cs.c", i32 2605, i32 17}
!623 = !{ptr @.str.204, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/net/wireless/ray_cs.c", i32 2614, i32 8}
!625 = !{ptr @.str.205, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/net/wireless/ray_cs.c", i32 2620, i32 16}
!627 = !{ptr @.str.206, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/net/wireless/ray_cs.c", i32 2622, i32 19}
!629 = !{ptr @.str.207, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/net/wireless/ray_cs.c", i32 2626, i32 16}
!631 = !{ptr @.str.208, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/net/wireless/ray_cs.c", i32 2632, i32 18}
!633 = !{ptr @.str.209, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/net/wireless/ray_cs.c", i32 2635, i32 18}
!635 = !{ptr @.str.210, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/net/wireless/ray_cs.c", i32 2637, i32 18}
!637 = !{ptr @.str.211, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/net/wireless/ray_cs.c", i32 2639, i32 18}
!639 = !{ptr @.str.212, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/net/wireless/ray_cs.c", i32 2644, i32 6}
!641 = !{ptr @.str.213, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/net/wireless/ray_cs.c", i32 2648, i32 15}
!643 = !{ptr @.str.214, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/net/wireless/ray_cs.c", i32 2542, i32 34}
!645 = !{ptr @.str.215, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/net/wireless/ray_cs.c", i32 2542, i32 43}
!647 = !{ptr @nettype, !648, !"nettype", i1 false, i1 false}
!648 = !{!"../drivers/net/wireless/ray_cs.c", i32 2542, i32 20}
!649 = !{ptr @.str.216, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/net/wireless/ray_cs.c", i32 2526, i32 2}
!651 = !{ptr @.str.217, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/net/wireless/ray_cs.c", i32 2527, i32 2}
!653 = !{ptr @.str.218, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../drivers/net/wireless/ray_cs.c", i32 2528, i32 2}
!655 = !{ptr @.str.219, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/net/wireless/ray_cs.c", i32 2529, i32 2}
!657 = !{ptr @.str.220, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/net/wireless/ray_cs.c", i32 2530, i32 2}
!659 = !{ptr @.str.221, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/net/wireless/ray_cs.c", i32 2531, i32 2}
!661 = !{ptr @.str.222, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/net/wireless/ray_cs.c", i32 2532, i32 2}
!663 = !{ptr @.str.223, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/net/wireless/ray_cs.c", i32 2533, i32 2}
!665 = !{ptr @.str.224, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/net/wireless/ray_cs.c", i32 2534, i32 2}
!667 = !{ptr @.str.225, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/net/wireless/ray_cs.c", i32 2535, i32 2}
!669 = !{ptr @.str.226, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/net/wireless/ray_cs.c", i32 2537, i32 2}
!671 = !{ptr @.str.227, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/net/wireless/ray_cs.c", i32 2538, i32 2}
!673 = !{ptr @.str.228, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/net/wireless/ray_cs.c", i32 2539, i32 2}
!675 = !{ptr @card_status, !676, !"card_status", i1 false, i1 false}
!676 = !{!"../drivers/net/wireless/ray_cs.c", i32 2525, i32 20}
!677 = !{ptr @.str.229, !678, !"<string literal>", i1 false, i1 false}
!678 = !{!"../drivers/net/wireless/ray_cs.c", i32 2543, i32 34}
!679 = !{ptr @.str.230, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../drivers/net/wireless/ray_cs.c", i32 2543, i32 51}
!681 = !{ptr @framing, !682, !"framing", i1 false, i1 false}
!682 = !{!"../drivers/net/wireless/ray_cs.c", i32 2543, i32 20}
!683 = !{ptr @ray_cs_essid_proc_ops, !684, !"ray_cs_essid_proc_ops", i1 false, i1 false}
!684 = !{!"../drivers/net/wireless/ray_cs.c", i32 2720, i32 30}
!685 = !{ptr @ray_cs_essid_proc_write.proc_essid, !686, !"proc_essid", i1 false, i1 false}
!686 = !{!"../drivers/net/wireless/ray_cs.c", i32 2708, i32 14}
!687 = distinct !{null, !688, !"__already_done", i1 false, i1 false}
!688 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!689 = distinct !{null, !688, !"<string literal>", i1 false, i1 false}
!690 = distinct !{null, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!692 = !{ptr @.str.233, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!694 = !{ptr @int_proc_ops, !695, !"int_proc_ops", i1 false, i1 false}
!695 = !{!"../drivers/net/wireless/ray_cs.c", i32 2753, i32 30}
!696 = !{ptr @int_proc_write.proc_number, !697, !"proc_number", i1 false, i1 false}
!697 = !{!"../drivers/net/wireless/ray_cs.c", i32 2728, i32 14}
!698 = !{!"sp"}
!699 = !{i32 1, !"wchar_size", i32 2}
!700 = !{i32 1, !"min_enum_size", i32 4}
!701 = !{i32 8, !"branch-target-enforcement", i32 0}
!702 = !{i32 8, !"sign-return-address", i32 0}
!703 = !{i32 8, !"sign-return-address-all", i32 0}
!704 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!705 = !{i32 7, !"uwtable", i32 1}
!706 = !{i32 7, !"frame-pointer", i32 2}
!707 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!708 = !{i64 2149037482, i64 2149037487, i64 2149037500, i64 2149037544, i64 2149037578, i64 2149037599}
!709 = !{i64 6873904}
!710 = !{i64 2156986916}
!711 = !{i64 2157141841}
!712 = !{i64 6873509}
!713 = !{i64 2156989565}
!714 = !{i64 2156989803}
!715 = !{i64 2156997452}
!716 = !{i64 2157007571}
!717 = !{i64 2157012826}
!718 = !{i64 2157013094}
!719 = !{i64 2157039922}
!720 = !{i64 2157040212}
!721 = !{i64 2157052770}
!722 = !{i64 2157052987}
!723 = !{i64 2156825781}
!724 = !{i64 2156826057}
!725 = !{i64 2156828820}
!726 = !{i64 2156832665}
!727 = !{i64 2156832940}
!728 = !{i64 2156833242}
!729 = !{i64 2156835996}
!730 = !{i64 2157055548}
!731 = !{i64 2157055816}
!732 = !{i64 2157056097}
!733 = !{i64 2157056371}
!734 = !{i64 2157056631}
!735 = !{i64 2157056837}
!736 = !{i64 2157070374}
!737 = !{i64 2157144514}
!738 = !{i64 2157144793}
!739 = !{i64 2157145101}
!740 = !{i64 2157145480}
!741 = !{i64 2157145881}
!742 = !{i64 2157146203}
!743 = !{i64 2157146507}
!744 = !{i64 2157146788}
!745 = !{i64 2157147288}
!746 = !{i64 2157150187}
!747 = !{i64 2156921687}
!748 = !{i64 2156921912}
!749 = !{i64 2156922192}
!750 = !{i64 2156913495}
!751 = !{i64 2156916223}
!752 = !{i64 2156916521}
!753 = !{i64 2156929750}
!754 = !{i64 2156929975}
!755 = !{i64 2156930255}
!756 = !{i8 0, i8 2}
!757 = !{i64 2157077740}
!758 = !{i64 2157080232}
!759 = !{i64 2157080512}
!760 = !{i64 2157080794}
!761 = !{i64 2157081076}
!762 = !{i64 2157081362}
!763 = !{i64 2157081602}
!764 = !{i64 2157111915}
!765 = !{i64 2157112136}
!766 = !{i64 2157114871}
!767 = !{i64 2157115092}
!768 = !{i64 2157086667}
!769 = !{i64 2157089571}
!770 = !{i64 2157092159}
!771 = !{i64 2157092441}
!772 = !{i64 2157092723}
!773 = !{i64 2157093006}
!774 = !{i64 2157093282}
!775 = !{i64 2157093575}
!776 = !{i64 2156938296}
!777 = !{i64 6873286}
!778 = !{i64 2156939061}
!779 = !{i64 2156939282}
!780 = !{i64 2156939552}
!781 = !{i64 2156939871}
!782 = !{i64 2156940666}
!783 = !{i64 2156940893}
!784 = !{i64 2156941175}
!785 = !{i64 2156941488}
!786 = !{i64 2156942253}
!787 = !{i64 2156942474}
!788 = !{i64 2156942744}
!789 = !{i64 2157136469}
!790 = !{i64 2157139224}
!791 = !{!"branch_weights", i32 2000, i32 1}
!792 = !{i64 2156809411}
!793 = !{i64 2156813827}
!794 = !{i64 2156820420}
!795 = !{i64 2156890489}
!796 = !{i64 2156890776}
!797 = !{i64 2156874960}
!798 = !{i64 2156875243}
!799 = !{i64 2156875568}
!800 = !{i64 2156875895}
!801 = !{i64 2156876218}
!802 = !{i64 2156876531}
!803 = !{i64 2156876848}
!804 = !{i64 2156877160}
!805 = !{i64 2156882287}
!806 = !{i64 2156885289}
!807 = !{i64 2156947711}
!808 = !{i64 2156947987}
!809 = !{i64 2156948291}
!810 = !{i64 2156948595}
!811 = !{i64 2156948895}
!812 = !{i64 2156951667}
!813 = !{i64 2156959006}
!814 = !{i64 2156959258}
!815 = !{i64 2156965351}
!816 = !{i64 2156970571}
!817 = !{i64 2156892434}
!818 = !{i64 2156801994}
!819 = !{i64 2152497627, i64 2152497652}
!820 = !{i64 4993182}
!821 = !{i64 4993379}
!822 = !{i64 2152478612}
