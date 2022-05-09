; ModuleID = '/llk/IR_all_yes/drivers/net/hamradio/baycom_epp.c_pt.bc'
source_filename = "../drivers/net/hamradio/baycom_epp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.hdlcdrv_channel_params = type { i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.baycom_state = type { i32, ptr, ptr, i32, %struct.delayed_work, i32, i32, i8, %struct.anon.146, %struct.hdlcdrv_channel_params, %struct.anon.147, %struct.anon.148, i32, ptr, %struct.debug_vals }
%struct.anon.146 = type { i32, i32, i32, i32, i32 }
%struct.anon.147 = type { i32, i32, i32, i32, ptr, i32, [488 x i8] }
%struct.anon.148 = type { i32, i32, i32, i32, ptr, i32, [488 x i8] }
%struct.debug_vals = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.hdlcdrv_ioctl = type { i32, %union.anon.149 }
%union.anon.149 = type { %struct.hdlcdrv_params, [100 x i8] }
%struct.hdlcdrv_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_mode = internal constant [16 x i8] c"baycom_epp.mode\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_mode = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_charp, ptr @mode }, align 4
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_mode } }, section "__param", align 4
@__UNIQUE_ID_modetype465 = internal constant [40 x i8] c"baycom_epp.parmtype=mode:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode466 = internal constant [43 x i8] c"baycom_epp.parm=mode:baycom operating mode\00", section ".modinfo", align 1
@__param_str_iobase = internal constant [18 x i8] c"baycom_epp.iobase\00", align 1
@__param_arr_iobase = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @iobase }, align 4
@__param_iobase = internal constant %struct.kernel_param { ptr @__param_str_iobase, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 2, %union.anon.124 { ptr @__param_arr_iobase } }, section "__param", align 4
@__UNIQUE_ID_iobasetype467 = internal constant [40 x i8] c"baycom_epp.parmtype=iobase:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_iobase468 = internal constant [46 x i8] c"baycom_epp.parm=iobase:baycom io base address\00", section ".modinfo", align 1
@__UNIQUE_ID_author469 = internal constant [78 x i8] c"baycom_epp.author=Thomas M. Sailer, sailer@ife.ee.ethz.ch, hb9jnx@hb9w.che.eu\00", section ".modinfo", align 1
@__UNIQUE_ID_description470 = internal constant [61 x i8] c"baycom_epp.description=Baycom epp amateur radio modem driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file471 = internal constant [48 x i8] c"baycom_epp.file=drivers/net/hamradio/baycom_epp\00", section ".modinfo", align 1
@__UNIQUE_ID_license472 = internal constant [23 x i8] c"baycom_epp.license=GPL\00", section ".modinfo", align 1
@baycom_device = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@cleanup_baycomepp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str, ptr @.str.1, i32 1287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cleanup_baycomepp\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/hamradio/baycom_epp.c\00", [62 x i8] zeroinitializer }, align 32
@cleanup_baycomepp._entry_ptr = internal global ptr @cleanup_baycomepp._entry, section ".printk_index", align 4
@paranoia_str = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013baycom_epp: bad magic number for hdlcdrv_state struct in routine %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cleanup_module\00", [17 x i8] zeroinitializer }, align 32
@baycom_epp_par_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str.4, ptr null, ptr null, ptr null, ptr @baycom_epp_par_probe, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_baycom_epp__473_1293_init_baycomepp6 = internal global ptr @init_baycomepp, section ".initcall6.init", align 4
@__exitcall_cleanup_baycomepp = internal global ptr @cleanup_baycomepp, section ".exitcall.exit", align 4
@__setup_str_baycom_epp_setup = internal constant [12 x i8] c"baycom_epp=\00", section ".init.rodata", align 1
@__setup_baycom_epp_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_baycom_epp_setup, ptr @baycom_epp_setup, i32 0 }, section ".init.setup", align 4
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr null, ptr null, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@iobase = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 888, i32 0, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bce\00", [28 x i8] zeroinitializer }, align 32
@init_baycomepp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.5, ptr @.str.1, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_baycomepp\00", [17 x i8] zeroinitializer }, align 32
@init_baycomepp._entry_ptr = internal global ptr @init_baycomepp._entry, section ".printk_index", align 4
@bc_drvinfo = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016baycom_epp: (C) 1998-2000 Thomas Sailer, HB9JNX/AE4WA\0Abaycom_epp: version 0.7\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"baycom_epp\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bce%d\00", [26 x i8] zeroinitializer }, align 32
@init_baycomepp._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.1, i32 1243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014bce%d : out of memory\0A\00", [39 x i8] zeroinitializer }, align 32
@init_baycomepp._entry_ptr.10 = internal global ptr @init_baycomepp._entry.8, section ".printk_index", align 4
@init_baycomepp._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.1, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: cannot register net device %s\0A\00", [59 x i8] zeroinitializer }, align 32
@init_baycomepp._entry_ptr.13 = internal global ptr @init_baycomepp._entry.11, section ".printk_index", align 4
@bc_drvname = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"baycom_epp\00", [21 x i8] zeroinitializer }, align 32
@__const.baycom_probe.dflt_ch_params = private unnamed_addr constant %struct.hdlcdrv_channel_params { i32 20, i32 2, i32 10, i32 40, i32 0 }, align 4
@baycom_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @epp_open, ptr @epp_close, ptr @baycom_send_packet, ptr null, ptr null, ptr null, ptr null, ptr @baycom_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @baycom_siocdevprivate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ax25_header_ops = external dso_local constant %struct.header_ops, align 4
@ax25_bcast = external dso_local local_unnamed_addr constant %struct.ax25_address, align 1
@null_ax25_address = external dso_local constant %struct.ax25_address, align 1
@epp_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.1, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: parport at 0x%lx unknown\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"epp_open\00", [23 x i8] zeroinitializer }, align 32
@epp_open._entry_ptr = internal global ptr @epp_open._entry, section ".printk_index", align 4
@epp_open._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.1, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: parport at 0x%lx cannot be used\0A\00", [57 x i8] zeroinitializer }, align 32
@epp_open._entry_ptr.18 = internal global ptr @epp_open._entry.16, section ".printk_index", align 4
@epp_open._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.1, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: no device found\0A\00", [41 x i8] zeroinitializer }, align 32
@epp_open._entry_ptr.21 = internal global ptr @epp_open._entry.19, section ".printk_index", align 4
@epp_open._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.1, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: cannot register parport at 0x%lx\0A\00", [56 x i8] zeroinitializer }, align 32
@epp_open._entry_ptr.24 = internal global ptr @epp_open._entry.22, section ".printk_index", align 4
@epp_open._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.1, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: parport at 0x%lx busy\0A\00", [35 x i8] zeroinitializer }, align 32
@epp_open._entry_ptr.27 = internal global ptr @epp_open._entry.25, section ".printk_index", align 4
@epp_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&bc->run_work)->work)\00", [54 x i8] zeroinitializer }, align 32
@epp_open.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&bc->run_work)->timer\00", [40 x i8] zeroinitializer }, align 32
@epp_open._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.15, ptr @.str.1, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: no FPGA detected, assuming conventional EPP modem\0A\00", [39 x i8] zeroinitializer }, align 32
@epp_open._entry_ptr.33 = internal global ptr @epp_open._entry.31, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@epp_open._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.15, ptr @.str.1, i32 922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016%s: autoprobed bitrate: %d  int divider: %d  int rate: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@epp_open._entry_ptr.36 = internal global ptr @epp_open._entry.34, section ".printk_index", align 4
@epp_open._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.15, ptr @.str.1, i32 941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: epp timeout during bitrate probe\0A\00", [56 x i8] zeroinitializer }, align 32
@epp_open._entry_ptr.39 = internal global ptr @epp_open._entry.37, section ".printk_index", align 4
@epp_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.1, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017baycom_epp: %s: why am I being woken up?\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"epp_wakeup\00", [21 x i8] zeroinitializer }, align 32
@epp_wakeup._entry_ptr = internal global ptr @epp_wakeup._entry, section ".printk_index", align 4
@epp_wakeup._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.1, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017baycom_epp: %s: I'm broken.\0A\00", [33 x i8] zeroinitializer }, align 32
@epp_wakeup._entry_ptr.44 = internal global ptr @epp_wakeup._entry.42, section ".printk_index", align 4
@epp_bh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.1, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013%s: EPP timeout!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"epp_bh\00", [25 x i8] zeroinitializer }, align 32
@epp_bh._entry_ptr = internal global ptr @epp_bh._entry, section ".printk_index", align 4
@do_rxpacket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.1, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: memory squeeze, dropping packet\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_rxpacket\00", [20 x i8] zeroinitializer }, align 32
@do_rxpacket._entry_ptr = internal global ptr @do_rxpacket._entry, section ".printk_index", align 4
@eppconfig_path = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"/usr/sbin/eppfpga\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-s\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-p\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-m\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%sclk,%smodem,fclk=%d,bps=%d,divider=%d%s,extstat\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ext\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",loopback\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%ld\00", [28 x i8] zeroinitializer }, align 32
@eppconfig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.1, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s -s -p %s -m %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eppconfig\00", [22 x i8] zeroinitializer }, align 32
@eppconfig._entry_ptr = internal global ptr @eppconfig._entry, section ".printk_index", align 4
@envp = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOME=/\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TERM=linux\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PATH=/usr/bin:/bin\00", [45 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@epp_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.1, i32 967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: close epp at iobase 0x%lx irq %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"epp_close\00", [22 x i8] zeroinitializer }, align 32
@epp_close._entry_ptr = internal global ptr @epp_close._entry, section ".printk_index", align 4
@do_kiss_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.1, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016baycomm_epp: channel params: TX delay = %ums\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"do_kiss_params\00", [17 x i8] zeroinitializer }, align 32
@do_kiss_params._entry_ptr = internal global ptr @do_kiss_params._entry, section ".printk_index", align 4
@do_kiss_params._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.1, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016baycomm_epp: channel params: p persistence = %u\0A\00", [45 x i8] zeroinitializer }, align 32
@do_kiss_params._entry_ptr.68 = internal global ptr @do_kiss_params._entry.66, section ".printk_index", align 4
@do_kiss_params._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.1, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016baycomm_epp: channel params: slot time = %ums\0A\00", [47 x i8] zeroinitializer }, align 32
@do_kiss_params._entry_ptr.71 = internal global ptr @do_kiss_params._entry.69, section ".printk_index", align 4
@do_kiss_params._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.1, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016baycomm_epp: channel params: TX tail = %ums\0A\00", [49 x i8] zeroinitializer }, align 32
@do_kiss_params._entry_ptr.74 = internal global ptr @do_kiss_params._entry.72, section ".printk_index", align 4
@do_kiss_params._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.65, ptr @.str.1, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016baycomm_epp: channel params: %s duplex\0A\00", [54 x i8] zeroinitializer }, align 32
@do_kiss_params._entry_ptr.77 = internal global ptr @do_kiss_params._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%sclk,%smodem,fclk=%d,bps=%d%s\00", [33 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"intclk\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extclk\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"intmodem\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"extmodem\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"noloopback\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"loopback\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fclk=\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bps=\00", [27 x i8] zeroinitializer }, align 32
@baycom_epp_setup.nr_dev = internal unnamed_addr global i32 0, section ".init.data", align 4
@str = internal constant { [129 x i8], [63 x i8] } { [129 x i8] c"intclk,extclk,intmodem,extmodem,divider=x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"baycom_epp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.94 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 10, i64 11, i64 20, i64 21, i64 22, i64 40, i64 41, i64 42, i64 43]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"baycom_device\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 63, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant [13 x i8] c"paranoia_str\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 52, i32 19 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1287, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant [22 x i8] c"baycom_epp_par_driver\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1199, i32 30 }
@___asan_gen_.118 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1174, i32 14 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1174, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"iobase\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1175, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1200, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1227, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [11 x i8] c"bc_drvinfo\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 56, i32 19 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1229, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1239, i32 9 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1243, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1256, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant [11 x i8] c"bc_drvname\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 55, i32 19 }
@___asan_gen_.160 = private unnamed_addr constant [18 x i8] c"baycom_netdev_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1115, i32 36 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 832, i32 17 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 843, i32 17 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 858, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 866, i32 17 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 870, i32 17 }
@___asan_gen_.202 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 875, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 879, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 921, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 941, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 805, i32 9 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 807, i32 17 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 753, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 539, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [15 x i8] c"eppconfig_path\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 287, i32 19 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 298, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 299, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 300, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 304, i32 19 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 305, i32 20 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 305, i32 28 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 308, i32 22 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 309, i32 19 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 310, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [5 x i8] c"envp\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 289, i32 14 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 289, i32 25 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 289, i32 35 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 289, i32 49 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 966, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 332, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 336, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 340, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 344, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 348, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1087, i32 29 }
@___asan_gen_.359 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 156, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 977, i32 21 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 979, i32 21 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 981, i32 21 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 983, i32 21 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 985, i32 21 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 987, i32 21 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 989, i32 27 }
@___asan_gen_.382 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.383 = private constant [37 x i8] c"../drivers/net/hamradio/baycom_epp.c\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 996, i32 27 }
@___asan_gen_.385 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [7 x i8] c"str.93\00", align 1
@llvm.compiler.used = appending global [135 x ptr] [ptr @__UNIQUE_ID_author469, ptr @__UNIQUE_ID_description470, ptr @__UNIQUE_ID_file471, ptr @__UNIQUE_ID_iobase468, ptr @__UNIQUE_ID_iobasetype467, ptr @__UNIQUE_ID_license472, ptr @__UNIQUE_ID_mode466, ptr @__UNIQUE_ID_modetype465, ptr @__exitcall_cleanup_baycomepp, ptr @__initcall__kmod_baycom_epp__473_1293_init_baycomepp6, ptr @__param_iobase, ptr @__param_mode, ptr @__setup_baycom_epp_setup, ptr @cleanup_baycomepp, ptr @cleanup_baycomepp._entry, ptr @cleanup_baycomepp._entry_ptr, ptr @do_kiss_params._entry, ptr @do_kiss_params._entry.66, ptr @do_kiss_params._entry.69, ptr @do_kiss_params._entry.72, ptr @do_kiss_params._entry.75, ptr @do_kiss_params._entry_ptr, ptr @do_kiss_params._entry_ptr.68, ptr @do_kiss_params._entry_ptr.71, ptr @do_kiss_params._entry_ptr.74, ptr @do_kiss_params._entry_ptr.77, ptr @do_rxpacket._entry, ptr @do_rxpacket._entry_ptr, ptr @epp_bh._entry, ptr @epp_bh._entry_ptr, ptr @epp_close._entry, ptr @epp_close._entry_ptr, ptr @epp_open._entry, ptr @epp_open._entry.16, ptr @epp_open._entry.19, ptr @epp_open._entry.22, ptr @epp_open._entry.25, ptr @epp_open._entry.31, ptr @epp_open._entry.34, ptr @epp_open._entry.37, ptr @epp_open._entry_ptr, ptr @epp_open._entry_ptr.18, ptr @epp_open._entry_ptr.21, ptr @epp_open._entry_ptr.24, ptr @epp_open._entry_ptr.27, ptr @epp_open._entry_ptr.33, ptr @epp_open._entry_ptr.36, ptr @epp_open._entry_ptr.39, ptr @epp_wakeup._entry, ptr @epp_wakeup._entry.42, ptr @epp_wakeup._entry_ptr, ptr @epp_wakeup._entry_ptr.44, ptr @eppconfig._entry, ptr @eppconfig._entry_ptr, ptr @init_baycomepp._entry, ptr @init_baycomepp._entry.11, ptr @init_baycomepp._entry.8, ptr @init_baycomepp._entry_ptr, ptr @init_baycomepp._entry_ptr.10, ptr @init_baycomepp._entry_ptr.13, ptr @baycom_device, ptr @.str, ptr @.str.1, ptr @paranoia_str, ptr @.str.2, ptr @baycom_epp_par_driver, ptr @mode, ptr @.str.3, ptr @iobase, ptr @.str.4, ptr @.str.5, ptr @bc_drvinfo, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @bc_drvname, ptr @baycom_netdev_ops, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @epp_open.__key, ptr @.str.28, ptr @epp_open.__key.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @eppconfig_path, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @envp, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @str, ptr @str.93], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baycom_device to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cleanup_baycomepp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @paranoia_str to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baycom_epp_par_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iobase to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_baycomepp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc_drvinfo to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_baycomepp._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_baycomepp._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc_drvname to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baycom_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epp_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epp_open._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epp_open._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epp_open._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epp_open._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epp_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epp_open.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epp_open._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epp_open._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epp_open._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epp_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epp_wakeup._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epp_bh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rxpacket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eppconfig_path to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eppconfig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @envp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epp_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_kiss_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_kiss_params._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_kiss_params._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_kiss_params._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_kiss_params._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_baycomepp() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %if.end6.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @baycom_device, i32 0, i32 %i.012
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end6_crit_edge, label %if.then

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %for.body
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19730510, i32 %3)
  %cmp1 = icmp eq i32 %3, 19730510
  br i1 %cmp1, label %if.then2, label %do.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unregister_netdev(ptr noundef nonnull %1) #10
  tail call void @free_netdev(ptr noundef nonnull %1) #10
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @paranoia_str, ptr noundef nonnull @.str.2) #13
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then2, %for.body.if.end6_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @parport_unregister_driver(ptr noundef nonnull @baycom_epp_par_driver) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_baycomepp() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @bc_drvinfo) #13
  %call1 = tail call i32 @__parport_register_driver(ptr noundef nonnull @baycom_epp_par_driver, ptr noundef null, ptr noundef nonnull @.str.6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup47_crit_edge

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.093 = phi i32 [ %inc42, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %set_hw.090 = phi i8 [ %spec.select, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %call4 = tail call ptr @alloc_netdev_mqs(i32 noundef 1228, ptr noundef nonnull @.str.7, i8 noundef zeroext 0, ptr noundef nonnull @baycom_epp_dev_setup, i32 noundef 1, i32 noundef 1) #10
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %cleanup.thread, label %if.end13

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %i.093) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.093)
  %tobool12.not = icmp eq i32 %i.093, 0
  %cond = select i1 %tobool12.not, i32 -12, i32 0
  br label %cleanup47

if.end13:                                         ; preds = %for.body
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call4, ptr noundef nonnull @.str.7, i32 noundef %i.093)
  %arrayidx = getelementptr [4 x i32], ptr @iobase, i32 0, i32 %i.093
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %base_addr, align 32
  %arrayidx15 = getelementptr [4 x ptr], ptr @mode, i32 0, i32 %i.093
  %3 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %4, null
  %spec.select = select i1 %tobool16.not, i8 0, i8 %set_hw.090
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select)
  %tobool19.not = icmp eq i8 %spec.select, 0
  br i1 %tobool19.not, label %if.end22, label %if.end22.thread

if.end22:                                         ; preds = %if.end13
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx, align 4
  %call23 = tail call i32 @register_netdev(ptr noundef nonnull %call4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.for.inc_crit_edge, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end22.thread:                                  ; preds = %if.end13
  %call2370 = tail call i32 @register_netdev(ptr noundef nonnull %call4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2370)
  %tobool24.not71 = icmp eq i32 %call2370, 0
  br i1 %tobool24.not71, label %land.lhs.true, label %if.end22.thread.for.end_crit_edge

if.end22.thread.for.end_crit_edge:                ; preds = %if.end22.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true:                                    ; preds = %if.end22.thread
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx15, align 4
  tail call fastcc void @baycom_setmode(ptr noundef %add.ptr.i, ptr noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end22.for.inc_crit_edge
  %arrayidx41 = getelementptr [4 x ptr], ptr @baycom_device, i32 0, i32 %i.093
  %8 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %arrayidx41, align 4
  %inc42 = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc42, 4
  br i1 %exitcond.not, label %for.inc.cleanup47_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup47_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

for.end:                                          ; preds = %if.end22.thread.for.end_crit_edge, %if.end22.for.end_crit_edge
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @bc_drvname, ptr noundef nonnull %call4) #13
  tail call void @free_netdev(ptr noundef nonnull %call4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.093)
  %cmp43 = icmp eq i32 %i.093, 0
  br i1 %cmp43, label %if.then45, label %for.end.cleanup47_crit_edge

for.end.cleanup47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.then45:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @parport_unregister_driver(ptr noundef nonnull @baycom_epp_par_driver) #10
  br label %cleanup47

cleanup47:                                        ; preds = %if.then45, %for.end.cleanup47_crit_edge, %for.inc.cleanup47_crit_edge, %cleanup.thread, %entry.cleanup47_crit_edge
  %retval.2 = phi i32 [ -6, %if.then45 ], [ %call1, %entry.cleanup47_crit_edge ], [ 0, %for.end.cleanup47_crit_edge ], [ %cond, %cleanup.thread ], [ 0, %for.inc.cleanup47_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @baycom_epp_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  %ints = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ints) #10
  %0 = ptrtoint ptr %ints to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ints, align 4, !annotation !225
  %1 = getelementptr inbounds [2 x i32], ptr %ints, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !225
  %3 = load i32, ptr @baycom_epp_setup.nr_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @get_options(ptr noundef %str, i32 noundef 2, ptr noundef nonnull %ints) #10
  %4 = ptrtoint ptr %ints to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ints, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp slt i32 %5, 1
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = load i32, ptr @baycom_epp_setup.nr_dev, align 4
  %arrayidx4 = getelementptr [4 x ptr], ptr @mode, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %arrayidx4, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %arrayidx6 = getelementptr [4 x i32], ptr @iobase, i32 0, i32 %6
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx6, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr @baycom_epp_setup.nr_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ints) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @baycom_epp_par_probe(ptr nocapture noundef readonly %par_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.pardevice, ptr %par_dev, i32 0, i32 10, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @strlen(ptr noundef %3) #14
  %4 = ptrtoint ptr %par_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par_dev, align 8
  %call3 = tail call i32 @strncmp(ptr noundef %5, ptr noundef %3, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool.not, i32 0, i32 -19
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @baycom_epp_dev_setup(ptr noundef %dev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev1, align 4
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 19730510, ptr %add.ptr.i, align 4
  %fclk = getelementptr i8, ptr %dev, i32 2436
  %2 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 19666600, ptr %fclk, align 4
  %bps = getelementptr i8, ptr %dev, i32 2440
  %3 = ptrtoint ptr %bps to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 9600, ptr %bps, align 4
  %ch_params.i = getelementptr i8, ptr %dev, i32 2452
  %4 = call ptr @memcpy(ptr %ch_params.i, ptr @__const.baycom_probe.dflt_ch_params, i32 20)
  %ptt_keyed.i = getelementptr i8, ptr %dev, i32 3496
  %5 = ptrtoint ptr %ptt_keyed.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ptt_keyed.i, align 4
  %skb.i = getelementptr i8, ptr %dev, i32 3500
  %6 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %skb.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %7 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @baycom_netdev_ops, ptr %netdev_ops.i, align 8
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %8 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ax25_header_ops, ptr %header_ops.i, align 4
  %type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 3, ptr %type.i, align 16
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 89, ptr %hard_header_len.i, align 2
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %11 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 256, ptr %mtu.i, align 4
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %12 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 7, ptr %addr_len.i, align 1
  %broadcast.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %13 = call ptr @memcpy(ptr %broadcast.i, ptr @ax25_bcast, i32 7)
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @null_ax25_address, i32 noundef 7) #10
  %tx_queue_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %14 = ptrtoint ptr %tx_queue_len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %tx_queue_len.i, align 16
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags.i, align 8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @baycom_setmode(ptr nocapture noundef writeonly %bc, ptr noundef %modestr) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strstr(ptr noundef %modestr, ptr noundef nonnull @.str.85)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cfg = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 8
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %cfg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call ptr @strstr(ptr noundef %modestr, ptr noundef nonnull @.str.86)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %cfg4 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 8
  %1 = ptrtoint ptr %cfg4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cfg4, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %call7 = tail call ptr @strstr(ptr noundef %modestr, ptr noundef nonnull @.str.87)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %extmodem = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %extmodem to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %extmodem, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %call12 = tail call ptr @strstr(ptr noundef %modestr, ptr noundef nonnull @.str.88)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.if.end17_crit_edge, label %if.then14

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %extmodem16 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 8, i32 3
  %3 = ptrtoint ptr %extmodem16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %extmodem16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11.if.end17_crit_edge
  %call18 = tail call ptr @strstr(ptr noundef %modestr, ptr noundef nonnull @.str.89)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.if.end22_crit_edge, label %if.then20

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %loopback = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %loopback to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %loopback, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %call23 = tail call ptr @strstr(ptr noundef %modestr, ptr noundef nonnull @.str.90)
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end22.if.end28_crit_edge, label %if.then25

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %loopback27 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 8, i32 4
  %5 = ptrtoint ptr %loopback27 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %loopback27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  %call29 = tail call ptr @strstr(ptr noundef %modestr, ptr noundef nonnull @.str.91)
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end28.if.end47_crit_edge, label %if.then31

if.end28.if.end47_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %call29, i32 5
  %call32 = tail call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #10
  %fclk = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 8, i32 1
  %6 = tail call i32 @llvm.umax.i32(i32 %call32, i32 1000000)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 25000000)
  %8 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fclk, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then31, %if.end28.if.end47_crit_edge
  %call48 = tail call ptr @strstr(ptr noundef %modestr, ptr noundef nonnull @.str.92)
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end47.if.end68_crit_edge, label %if.then50

if.end47.if.end68_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr51 = getelementptr i8, ptr %call48, i32 4
  %call52 = tail call i32 @simple_strtoul(ptr noundef %add.ptr51, ptr noundef null, i32 noundef 0) #10
  %bps = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 8, i32 2
  %9 = tail call i32 @llvm.umax.i32(i32 %call52, i32 1000)
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 1500000)
  %11 = ptrtoint ptr %bps to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bps, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then50, %if.end47.if.end68_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epp_open(ptr noundef %dev) #7 align 64 {
entry:
  %modearg.i = alloca [256 x i8], align 1
  %portarg.i = alloca [16 x i8], align 1
  %argv.i = alloca [7 x ptr], align 4
  %tmp = alloca [128 x i8], align 1
  %stat = alloca i8, align 1
  %par_cb = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %call1 = tail call ptr @parport_find_base(i32 noundef %1) #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp) #10
  %2 = call ptr @memset(ptr %tmp, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat) #10
  %3 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %stat, align 1, !annotation !225
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %par_cb) #10
  %4 = getelementptr inbounds %struct.pardev_cb, ptr %par_cb, i32 0, i32 1
  %5 = getelementptr inbounds %struct.pardev_cb, ptr %par_cb, i32 0, i32 2
  %6 = getelementptr inbounds %struct.pardev_cb, ptr %par_cb, i32 0, i32 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_addr, align 32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @bc_drvname, i32 noundef %8) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %modes = getelementptr inbounds %struct.parport, ptr %call1, i32 0, i32 4
  %9 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %modes, align 8
  %neg = and i32 %10, 67
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %neg)
  %tobool5.not = icmp eq i32 %neg, 67
  br i1 %tobool5.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call1, align 8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @bc_drvname, i32 noundef %12) #13
  tail call void @parport_put_port(ptr noundef nonnull %call1) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %modem = getelementptr i8, ptr %dev, i32 2420
  %13 = ptrtoint ptr %modem to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %modem, align 4
  %14 = call ptr @memset(ptr %par_cb, i32 0, i32 16)
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @epp_wakeup, ptr %4, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %5, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %6, align 4
  %18 = load ptr, ptr @baycom_device, align 4
  %cmp13 = icmp eq ptr %18, %dev
  br i1 %cmp13, label %if.end12.if.end23_crit_edge, label %for.inc

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

for.inc:                                          ; preds = %if.end12
  %19 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @baycom_device, i32 0, i32 1), align 4
  %cmp13.1 = icmp eq ptr %19, %dev
  br i1 %cmp13.1, label %for.inc.if.end23_crit_edge, label %for.inc.1

for.inc.if.end23_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

for.inc.1:                                        ; preds = %for.inc
  %20 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @baycom_device, i32 0, i32 2), align 4
  %cmp13.2 = icmp eq ptr %20, %dev
  br i1 %cmp13.2, label %for.inc.1.if.end23_crit_edge, label %for.inc.2

for.inc.1.if.end23_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

for.inc.2:                                        ; preds = %for.inc.1
  %21 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @baycom_device, i32 0, i32 3), align 4
  %cmp13.3 = icmp eq ptr %21, %dev
  br i1 %cmp13.3, label %for.inc.2.if.end23_crit_edge, label %do.end20

for.inc.2.if.end23_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end20:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @bc_drvname) #13
  tail call void @parport_put_port(ptr noundef nonnull %call1) #10
  br label %cleanup

if.end23:                                         ; preds = %for.inc.2.if.end23_crit_edge, %for.inc.1.if.end23_crit_edge, %for.inc.if.end23_crit_edge, %if.end12.if.end23_crit_edge
  %i.0277.lcssa = phi i32 [ 0, %if.end12.if.end23_crit_edge ], [ 1, %for.inc.if.end23_crit_edge ], [ 2, %for.inc.1.if.end23_crit_edge ], [ 3, %for.inc.2.if.end23_crit_edge ]
  %call24 = call ptr @parport_register_dev_model(ptr noundef nonnull %call1, ptr noundef %dev, ptr noundef nonnull %par_cb, i32 noundef %i.0277.lcssa) #10
  %pdev = getelementptr i8, ptr %dev, i32 2308
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call24, ptr %pdev, align 4
  call void @parport_put_port(ptr noundef nonnull %call1) #10
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 4
  %tobool26.not = icmp eq ptr %24, null
  br i1 %tobool26.not, label %do.end30, label %if.end34

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call1, align 8
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @bc_drvname, i32 noundef %26) #13
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  %call36 = call i32 @parport_claim(ptr noundef nonnull %24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end46, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call1, align 8
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @bc_drvname, i32 noundef %28) #13
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 4
  call void @parport_unregister_device(ptr noundef %30) #10
  br label %cleanup

if.end46:                                         ; preds = %if.end34
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %irq, align 4
  %run_work = getelementptr i8, ptr %dev, i32 2320
  call void @__init_work(ptr noundef %run_work, i32 noundef 0) #10
  %32 = ptrtoint ptr %run_work to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %run_work, align 4
  %lockdep_map = getelementptr i8, ptr %dev, i32 2336
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.28, ptr noundef nonnull @epp_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry55 = getelementptr i8, ptr %dev, i32 2324
  %33 = ptrtoint ptr %entry55 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry55, ptr %entry55, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 2328
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry55, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %dev, i32 2332
  %35 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @epp_bh, ptr %func, align 4
  %timer = getelementptr i8, ptr %dev, i32 2364
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.30, ptr noundef nonnull @epp_open.__key.29) #10
  %work_running = getelementptr i8, ptr %dev, i32 2316
  %36 = ptrtoint ptr %work_running to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %work_running, align 4
  %37 = ptrtoint ptr %modem to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %modem, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %modearg.i) #10
  %38 = call ptr @memset(ptr %modearg.i, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %portarg.i) #10
  %39 = call ptr @memset(ptr %portarg.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %argv.i) #10
  %40 = getelementptr inbounds [7 x ptr], ptr %argv.i, i32 0, i32 1
  %41 = getelementptr inbounds [7 x ptr], ptr %argv.i, i32 0, i32 2
  %42 = getelementptr inbounds [7 x ptr], ptr %argv.i, i32 0, i32 3
  %43 = getelementptr inbounds [7 x ptr], ptr %argv.i, i32 0, i32 4
  %44 = getelementptr inbounds [7 x ptr], ptr %argv.i, i32 0, i32 5
  %45 = getelementptr inbounds [7 x ptr], ptr %argv.i, i32 0, i32 6
  %46 = ptrtoint ptr %argv.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @eppconfig_path, ptr %argv.i, align 4
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.49, ptr %40, align 4
  %48 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.50, ptr %41, align 4
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %portarg.i, ptr %42, align 4
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.51, ptr %43, align 4
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %modearg.i, ptr %44, align 4
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %45, align 4
  %cfg.i = getelementptr i8, ptr %dev, i32 2432
  %53 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i = icmp eq i32 %54, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.54, ptr @.str.53
  %extmodem.i = getelementptr i8, ptr %dev, i32 2444
  %55 = ptrtoint ptr %extmodem.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %extmodem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool9.not.i = icmp eq i32 %56, 0
  %cond10.i = select i1 %tobool9.not.i, ptr @.str.53, ptr @.str.54
  %fclk.i = getelementptr i8, ptr %dev, i32 2436
  %57 = ptrtoint ptr %fclk.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fclk.i, align 4
  %bps.i = getelementptr i8, ptr %dev, i32 2440
  %59 = ptrtoint ptr %bps.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bps.i, align 4
  %mul.i = shl i32 %60, 3
  %add.i = add i32 %mul.i, %58
  %mul19.i = shl i32 %60, 4
  %div.i = udiv i32 %add.i, %mul19.i
  %loopback.i = getelementptr i8, ptr %dev, i32 2448
  %61 = ptrtoint ptr %loopback.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %loopback.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool21.not.i = icmp eq i32 %62, 0
  %cond22.i = select i1 %tobool21.not.i, ptr @.str.3, ptr @.str.55
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %modearg.i, ptr noundef nonnull @.str.52, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond10.i, i32 noundef %58, i32 noundef %60, i32 noundef %div.i, ptr noundef nonnull %cond22.i) #10
  %63 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %port.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %call24.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %portarg.i, ptr noundef nonnull @.str.56, i32 noundef %68) #10
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @bc_drvname, ptr noundef nonnull @eppconfig_path, ptr noundef nonnull %portarg.i, ptr noundef nonnull %modearg.i) #13
  %call29.i = call i32 @call_usermodehelper(ptr noundef nonnull @eppconfig_path, ptr noundef nonnull %argv.i, ptr noundef nonnull @envp, i32 noundef 2) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %argv.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %portarg.i) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %modearg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool68.not = icmp eq i32 %call29.i, 0
  br i1 %tobool68.not, label %if.else, label %do.end72

do.end72:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @bc_drvname) #13
  br label %if.end76

if.else:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %modem to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %modem, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else, %do.end72
  %ops = getelementptr inbounds %struct.parport, ptr %call1, i32 0, i32 24
  %70 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops, align 4
  %write_control = getelementptr inbounds %struct.parport_operations, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %write_control to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_control, align 4
  call void %73(ptr noundef nonnull %call1, i8 noundef zeroext 4) #10
  %74 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %tmp, align 1
  %arrayidx78 = getelementptr inbounds [128 x i8], ptr %tmp, i32 0, i32 1
  %75 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 56, ptr %arrayidx78, align 1
  %76 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops, align 4
  %epp_write_addr = getelementptr inbounds %struct.parport_operations, ptr %77, i32 0, i32 15
  %78 = ptrtoint ptr %epp_write_addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %epp_write_addr, align 4
  %call81 = call i32 %79(ptr noundef nonnull %call1, ptr noundef nonnull %tmp, i32 noundef 2, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call81)
  %cmp82.not = icmp eq i32 %call81, 2
  br i1 %cmp82.not, label %if.end84, label %if.end76.do.end178_crit_edge

if.end76.do.end178_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end178

if.end84:                                         ; preds = %if.end76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -33, %80
  %81 = load volatile i32, ptr @jiffies, align 128
  %sub278281 = add i32 %add.neg, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub278281)
  %cmp85279282 = icmp slt i32 %sub278281, 0
  br i1 %cmp85279282, label %if.end84.while.body.lr.ph_crit_edge, label %if.end84.for.cond112.preheader_crit_edge

if.end84.for.cond112.preheader_crit_edge:         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond112.preheader

if.end84.while.body.lr.ph_crit_edge:              ; preds = %if.end84
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end110.while.body.lr.ph_crit_edge, %if.end84.while.body.lr.ph_crit_edge
  %i.1.ph283 = phi i32 [ %add111, %if.end110.while.body.lr.ph_crit_edge ], [ 0, %if.end84.while.body.lr.ph_crit_edge ]
  br label %while.body

for.cond112.preheader:                            ; preds = %if.end110.for.cond112.preheader_crit_edge, %if.then94.for.cond112.preheader_crit_edge, %if.end84.for.cond112.preheader_crit_edge
  %i.1.ph.lcssa274 = phi i32 [ 0, %if.end84.for.cond112.preheader_crit_edge ], [ %i.1.ph283, %if.then94.for.cond112.preheader_crit_edge ], [ %add111, %if.end110.for.cond112.preheader_crit_edge ]
  %82 = add i32 %i.1.ph.lcssa274, 256
  br label %for.body115

while.body:                                       ; preds = %if.then94.while.body_crit_edge, %while.body.lr.ph
  %83 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops, align 4
  %epp_read_addr = getelementptr inbounds %struct.parport_operations, ptr %84, i32 0, i32 16
  %85 = ptrtoint ptr %epp_read_addr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %epp_read_addr, align 4
  %call87 = call i32 %86(ptr noundef nonnull %call1, ptr noundef nonnull %stat, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call87)
  %cmp88.not = icmp eq i32 %call87, 1
  br i1 %cmp88.not, label %if.end90, label %while.body.do.end178_crit_edge

while.body.do.end178_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end178

if.end90:                                         ; preds = %while.body
  %87 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %stat, align 1
  %89 = and i8 %88, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %89)
  %cmp92 = icmp eq i8 %89, 4
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end90
  call void @schedule() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %90
  %cmp85 = icmp slt i32 %sub, 0
  br i1 %cmp85, label %if.then94.while.body_crit_edge, label %if.then94.for.cond112.preheader_crit_edge

if.then94.for.cond112.preheader_crit_edge:        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond112.preheader

if.then94.while.body_crit_edge:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end95:                                         ; preds = %if.end90
  %91 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops, align 4
  %epp_read_data = getelementptr inbounds %struct.parport_operations, ptr %92, i32 0, i32 14
  %93 = ptrtoint ptr %epp_read_data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %epp_read_data, align 4
  %call98 = call i32 %94(ptr noundef nonnull %call1, ptr noundef nonnull %tmp, i32 noundef 128, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call98)
  %cmp99.not = icmp eq i32 %call98, 128
  br i1 %cmp99.not, label %if.end102, label %if.end95.do.end178_crit_edge

if.end95.do.end178_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end178

if.end102:                                        ; preds = %if.end95
  %95 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops, align 4
  %epp_read_data104 = getelementptr inbounds %struct.parport_operations, ptr %96, i32 0, i32 14
  %97 = ptrtoint ptr %epp_read_data104 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %epp_read_data104, align 4
  %call106 = call i32 %98(ptr noundef nonnull %call1, ptr noundef nonnull %tmp, i32 noundef 128, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call106)
  %cmp107.not = icmp eq i32 %call106, 128
  br i1 %cmp107.not, label %if.end110, label %if.end102.do.end178_crit_edge

if.end102.do.end178_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end178

if.end110:                                        ; preds = %if.end102
  %add111 = add i32 %i.1.ph283, 256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %99 = load volatile i32, ptr @jiffies, align 128
  %sub278 = add i32 %add.neg, %99
  %cmp85279 = icmp slt i32 %sub278, 0
  br i1 %cmp85279, label %if.end110.while.body.lr.ph_crit_edge, label %if.end110.for.cond112.preheader_crit_edge

if.end110.for.cond112.preheader_crit_edge:        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond112.preheader

if.end110.while.body.lr.ph_crit_edge:             ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

for.body115:                                      ; preds = %if.end135.for.body115_crit_edge, %for.cond112.preheader
  %i.2286 = phi i32 [ %i.1.ph.lcssa274, %for.cond112.preheader ], [ %inc136, %if.end135.for.body115_crit_edge ]
  %100 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops, align 4
  %epp_read_addr117 = getelementptr inbounds %struct.parport_operations, ptr %101, i32 0, i32 16
  %102 = ptrtoint ptr %epp_read_addr117 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %epp_read_addr117, align 4
  %call118 = call i32 %103(ptr noundef nonnull %call1, ptr noundef nonnull %stat, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call118)
  %cmp119.not = icmp eq i32 %call118, 1
  br i1 %cmp119.not, label %if.end122, label %for.body115.do.end178_crit_edge

for.body115.do.end178_crit_edge:                  ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end178

if.end122:                                        ; preds = %for.body115
  %104 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %stat, align 1
  %106 = and i8 %105, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool125.not = icmp eq i8 %106, 0
  br i1 %tobool125.not, label %if.end122.for.end139_crit_edge, label %if.end127

if.end122.for.end139_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end139

if.end127:                                        ; preds = %if.end122
  %107 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops, align 4
  %epp_read_data129 = getelementptr inbounds %struct.parport_operations, ptr %108, i32 0, i32 14
  %109 = ptrtoint ptr %epp_read_data129 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %epp_read_data129, align 4
  %call131 = call i32 %110(ptr noundef nonnull %call1, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call131)
  %cmp132.not = icmp eq i32 %call131, 1
  br i1 %cmp132.not, label %if.end135, label %if.end127.do.end178_crit_edge

if.end127.do.end178_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end178

if.end135:                                        ; preds = %if.end127
  %inc136 = add i32 %i.2286, 1
  %exitcond.not = icmp eq i32 %inc136, %82
  br i1 %exitcond.not, label %if.end135.for.end139_crit_edge, label %if.end135.for.body115_crit_edge

if.end135.for.body115_crit_edge:                  ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body115

if.end135.for.end139_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end139

for.end139:                                       ; preds = %if.end135.for.end139_crit_edge, %if.end122.for.end139_crit_edge
  %i.2.lcssa = phi i32 [ %i.2286, %if.end122.for.end139_crit_edge ], [ %82, %if.end135.for.end139_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %111 = load volatile i32, ptr @jiffies, align 128
  %sub140 = sub i32 %111, %80
  %mul = mul i32 %i.2.lcssa, 800
  %div = udiv i32 %mul, %sub140
  %bitrate = getelementptr i8, ptr %dev, i32 2424
  %112 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %div, ptr %bitrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1207, i32 %div)
  %cmp145287 = icmp ugt i32 %div, 1207
  br i1 %cmp145287, label %while.body147, label %for.end139.do.end153_crit_edge

for.end139.do.end153_crit_edge:                   ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end153

while.body147:                                    ; preds = %for.end139
  call void @__sanitizer_cov_trace_const_cmp4(i32 2415, i32 %div)
  %cmp145 = icmp ugt i32 %div, 2415
  br i1 %cmp145, label %while.body147.1, label %while.body147.do.end153_crit_edge

while.body147.do.end153_crit_edge:                ; preds = %while.body147
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end153

while.body147.1:                                  ; preds = %while.body147
  call void @__sanitizer_cov_trace_const_cmp4(i32 4831, i32 %div)
  %cmp145.1 = icmp ugt i32 %div, 4831
  br i1 %cmp145.1, label %while.body147.2, label %while.body147.1.do.end153_crit_edge

while.body147.1.do.end153_crit_edge:              ; preds = %while.body147.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end153

while.body147.2:                                  ; preds = %while.body147.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9663, i32 %div)
  %cmp145.2 = icmp ugt i32 %div, 9663
  br i1 %cmp145.2, label %while.body147.3, label %while.body147.2.do.end153_crit_edge

while.body147.2.do.end153_crit_edge:              ; preds = %while.body147.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end153

while.body147.3:                                  ; preds = %while.body147.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 19327, i32 %div)
  %cmp145.3 = icmp ugt i32 %div, 19327
  br i1 %cmp145.3, label %while.body147.4, label %while.body147.3.do.end153_crit_edge

while.body147.3.do.end153_crit_edge:              ; preds = %while.body147.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end153

while.body147.4:                                  ; preds = %while.body147.3
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 38655, i32 %div)
  %cmp145.4 = icmp ugt i32 %div, 38655
  %spec.select = select i1 %cmp145.4, i32 7, i32 6
  br label %do.end153

do.end153:                                        ; preds = %while.body147.4, %while.body147.3.do.end153_crit_edge, %while.body147.2.do.end153_crit_edge, %while.body147.1.do.end153_crit_edge, %while.body147.do.end153_crit_edge, %for.end139.do.end153_crit_edge
  %j.1.lcssa = phi i32 [ 1, %for.end139.do.end153_crit_edge ], [ 2, %while.body147.do.end153_crit_edge ], [ 3, %while.body147.1.do.end153_crit_edge ], [ 4, %while.body147.2.do.end153_crit_edge ], [ 5, %while.body147.3.do.end153_crit_edge ], [ %spec.select, %while.body147.4 ]
  %add157 = add nuw nsw i32 %j.1.lcssa, 2
  %shr158 = lshr i32 %div, %add157
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @bc_drvname, i32 noundef %div, i32 noundef %j.1.lcssa, i32 noundef %shr158) #13
  %113 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 56, ptr %tmp, align 1
  %114 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops, align 4
  %epp_write_addr162 = getelementptr inbounds %struct.parport_operations, ptr %115, i32 0, i32 15
  %116 = ptrtoint ptr %epp_write_addr162 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %epp_write_addr162, align 4
  %call164 = call i32 %117(ptr noundef nonnull %call1, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call164)
  %cmp165.not = icmp eq i32 %call164, 1
  br i1 %cmp165.not, label %if.end168, label %do.end153.do.end178_crit_edge

do.end153.do.end178_crit_edge:                    ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end178

if.end168:                                        ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr i8, ptr %dev, i32 2484
  %118 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %state, align 4
  %numbits = getelementptr i8, ptr %dev, i32 2480
  %119 = ptrtoint ptr %numbits to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %numbits, align 4
  %hdlctx = getelementptr i8, ptr %dev, i32 2984
  %state170 = getelementptr i8, ptr %dev, i32 2996
  %120 = ptrtoint ptr %state170 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %state170, align 4
  %bufcnt = getelementptr i8, ptr %dev, i32 3004
  %121 = ptrtoint ptr %bufcnt to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %bufcnt, align 4
  %slottime = getelementptr i8, ptr %dev, i32 2460
  %122 = ptrtoint ptr %slottime to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %slottime, align 4
  %slotcnt = getelementptr i8, ptr %dev, i32 2988
  %124 = ptrtoint ptr %slotcnt to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %slotcnt, align 4
  %125 = ptrtoint ptr %hdlctx to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %hdlctx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %126 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %126, ptr noundef %run_work, i32 noundef 1) #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %127 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %128, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup

do.end178:                                        ; preds = %do.end153.do.end178_crit_edge, %if.end127.do.end178_crit_edge, %for.body115.do.end178_crit_edge, %if.end102.do.end178_crit_edge, %if.end95.do.end178_crit_edge, %while.body.do.end178_crit_edge, %if.end76.do.end178_crit_edge
  %call180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @bc_drvname) #13
  %129 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ops, align 4
  %write_control182 = getelementptr inbounds %struct.parport_operations, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %write_control182 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write_control182, align 4
  call void %132(ptr noundef nonnull %call1, i8 noundef zeroext 0) #10
  %133 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pdev, align 4
  call void @parport_release(ptr noundef %134) #10
  %135 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pdev, align 4
  call void @parport_unregister_device(ptr noundef %136) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end178, %if.end168, %do.end41, %do.end30, %do.end20, %do.end9, %do.end
  %retval.0 = phi i32 [ -5, %do.end9 ], [ -19, %do.end20 ], [ -16, %do.end41 ], [ -5, %do.end178 ], [ 0, %if.end168 ], [ -6, %do.end30 ], [ -6, %do.end ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %par_cb) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epp_close(ptr noundef %dev) #7 align 64 {
entry:
  %tmp = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #10
  %work_running = getelementptr i8, ptr %dev, i32 2316
  %4 = ptrtoint ptr %work_running to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %work_running, align 4
  %run_work = getelementptr i8, ptr %dev, i32 2320
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %run_work) #10
  %stat = getelementptr i8, ptr %dev, i32 2428
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -128, ptr %stat, align 4
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tmp, align 1
  %ops = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %epp_write_addr = getelementptr inbounds %struct.parport_operations, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %epp_write_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %epp_write_addr, align 4
  %call2 = call i32 %10(ptr noundef %3, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #10
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %write_control = getelementptr inbounds %struct.parport_operations, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %write_control to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_control, align 4
  call void %14(ptr noundef %3, i8 noundef zeroext 0) #10
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  call void @parport_release(ptr noundef %16) #10
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  call void @parport_unregister_device(ptr noundef %18) #10
  %skb = getelementptr i8, ptr %dev, i32 3500
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb, align 4
  call void @consume_skb(ptr noundef %20) #10
  %21 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %skb, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %22 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_addr, align 32
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @bc_drvname, i32 noundef %23, i32 noundef %25) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @baycom_send_packet(ptr noundef %skb, ptr nocapture noundef %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %cmp = icmp eq i16 %1, 2048
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @ax25_ip_xmit(ptr noundef %skb) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp4.not = icmp eq i8 %5, 0
  br i1 %cmp4.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp ult i32 %7, 2
  br i1 %cmp.i, label %if.then6.do_kiss_params.exit_crit_edge, label %if.end.i

if.then6.do_kiss_params.exit_crit_edge:           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_kiss_params.exit

if.end.i:                                         ; preds = %if.then6
  %8 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.end.i.do_kiss_params.exit_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb5.i
    i8 3, label %sw.bb15.i
    i8 4, label %sw.bb25.i
    i8 5, label %sw.bb35.i
  ]

if.end.i.do_kiss_params.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_kiss_params.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx1.i = getelementptr i8, ptr %3, i32 1
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %10 to i32
  %ch_params.i = getelementptr i8, ptr %dev, i32 2452
  %11 = ptrtoint ptr %ch_params.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv2.i, ptr %ch_params.i, align 4
  %mul.i = mul nuw nsw i32 %conv2.i, 10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %mul.i) #13
  br label %do_kiss_params.exit

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx6.i = getelementptr i8, ptr %3, i32 1
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %13 to i32
  %ppersist.i = getelementptr i8, ptr %dev, i32 2464
  %14 = ptrtoint ptr %ppersist.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv7.i, ptr %ppersist.i, align 4
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %conv7.i) #13
  br label %do_kiss_params.exit

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx16.i = getelementptr i8, ptr %3, i32 1
  %15 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %16 to i32
  %slottime.i = getelementptr i8, ptr %dev, i32 2460
  %17 = ptrtoint ptr %slottime.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv17.i, ptr %slottime.i, align 4
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %conv17.i) #13
  br label %do_kiss_params.exit

sw.bb25.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx26.i = getelementptr i8, ptr %3, i32 1
  %18 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %19 to i32
  %tx_tail.i = getelementptr i8, ptr %dev, i32 2456
  %20 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv27.i, ptr %tx_tail.i, align 4
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %conv27.i) #13
  br label %do_kiss_params.exit

sw.bb35.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx36.i = getelementptr i8, ptr %3, i32 1
  %21 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.i = icmp ne i8 %22, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %fulldup.i = getelementptr i8, ptr %dev, i32 2468
  %23 = ptrtoint ptr %fulldup.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %lnot.ext.i, ptr %fulldup.i, align 4
  %cond.i = select i1 %tobool.i, ptr @.str.78, ptr @.str.79
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull %cond.i) #13
  br label %do_kiss_params.exit

do_kiss_params.exit:                              ; preds = %sw.bb35.i, %sw.bb25.i, %sw.bb15.i, %sw.bb5.i, %sw.bb.i, %if.end.i.do_kiss_params.exit_crit_edge, %if.then6.do_kiss_params.exit_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %skb9 = getelementptr i8, ptr %dev, i32 3500
  %24 = ptrtoint ptr %skb9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb9, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %len12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len12, align 4
  %28 = add i32 %27, -401
  call void @__sanitizer_cov_trace_const_cmp4(i32 -398, i32 %28)
  %29 = icmp ult i32 %28, -398
  br i1 %29, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %31, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %32 = ptrtoint ptr %skb9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %skb, ptr %skb9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then18, %if.then10, %do_kiss_params.exit, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %do_kiss_params.exit ], [ 0, %if.then10 ], [ 0, %if.then18 ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @baycom_set_mac_address(ptr noundef %dev, ptr noundef %addr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %0 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %1 to i32
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef %conv.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @baycom_siocdevprivate(ptr noundef %dev, ptr nocapture noundef readnone %ifr, ptr noundef %data, i32 noundef %cmd) #7 align 64 {
entry:
  %hi = alloca %struct.hdlcdrv_ioctl, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %hi) #10
  %0 = call ptr @memset(ptr %hi, i32 255, i32 132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 35312, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 35312
  br i1 %cmp.not, label %if.then.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.84, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 132, i32 -1226833920) #15
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !226

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hi, i32 noundef 132) #10
  %2 = call i32 @llvm.read_register.i32(metadata !215) #10
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !227
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !228
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %hi, ptr noundef %data, i32 noundef 132) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #10, !srcloc !228
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !226

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 132, %if.then.i.if.then11.i.i_crit_edge ], [ 132, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 132, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %hi, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %6 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hi, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %7, label %if.end3.cleanup_crit_edge [
    i32 10, label %sw.bb
    i32 11, label %sw.bb19
    i32 0, label %sw.bb43
    i32 1, label %sw.bb53
    i32 22, label %sw.bb64
    i32 20, label %sw.bb89
    i32 21, label %sw.bb111
    i32 43, label %sw.bb117
    i32 40, label %sw.bb120
    i32 41, label %sw.bb133
    i32 42, label %sw.bb144
    i32 2, label %sw.bb148
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %ch_params = getelementptr i8, ptr %dev, i32 2452
  %9 = ptrtoint ptr %ch_params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ch_params, align 4
  %data5 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %11 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %data5, align 4
  %tx_tail = getelementptr i8, ptr %dev, i32 2456
  %12 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_tail, align 4
  %tx_tail9 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %tx_tail9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tx_tail9, align 4
  %slottime = getelementptr i8, ptr %dev, i32 2460
  %15 = ptrtoint ptr %slottime to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slottime, align 4
  %slottime12 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %slottime12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %slottime12, align 4
  %ppersist = getelementptr i8, ptr %dev, i32 2464
  %18 = ptrtoint ptr %ppersist to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ppersist, align 4
  %ppersist15 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %ppersist15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ppersist15, align 4
  %fulldup = getelementptr i8, ptr %dev, i32 2468
  %21 = ptrtoint ptr %fulldup to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fulldup, align 4
  %fulldup18 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %fulldup18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fulldup18, align 4
  br label %if.then.i199

sw.bb19:                                          ; preds = %if.end3
  %call20 = call zeroext i1 @capable(i32 noundef 12) #10
  br i1 %call20, label %if.end22, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  %data23 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %24 = ptrtoint ptr %data23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data23, align 4
  %ch_params25 = getelementptr i8, ptr %dev, i32 2452
  %26 = ptrtoint ptr %ch_params25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ch_params25, align 4
  %tx_tail28 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %tx_tail28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_tail28, align 4
  %tx_tail30 = getelementptr i8, ptr %dev, i32 2456
  %29 = ptrtoint ptr %tx_tail30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tx_tail30, align 4
  %slottime32 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 2
  %30 = ptrtoint ptr %slottime32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slottime32, align 4
  %slottime34 = getelementptr i8, ptr %dev, i32 2460
  %32 = ptrtoint ptr %slottime34 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %slottime34, align 4
  %ppersist36 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 3
  %33 = ptrtoint ptr %ppersist36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ppersist36, align 4
  %ppersist38 = getelementptr i8, ptr %dev, i32 2464
  %35 = ptrtoint ptr %ppersist38 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %ppersist38, align 4
  %fulldup40 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 4
  %36 = ptrtoint ptr %fulldup40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fulldup40, align 4
  %fulldup42 = getelementptr i8, ptr %dev, i32 2468
  %38 = ptrtoint ptr %fulldup42 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %fulldup42, align 4
  %slotcnt = getelementptr i8, ptr %dev, i32 2988
  %39 = ptrtoint ptr %slotcnt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %slotcnt, align 4
  br label %cleanup

sw.bb43:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %40 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base_addr, align 32
  %data44 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %42 = ptrtoint ptr %data44 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %data44, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq, align 4
  %irq46 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %irq46 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %irq46, align 4
  %dma = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 53
  %46 = ptrtoint ptr %dma to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dma, align 1
  %conv = zext i8 %47 to i32
  %dma48 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %dma48 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv, ptr %dma48, align 4
  %dma2 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 3
  %49 = call ptr @memset(ptr %dma2, i32 0, i32 16)
  br label %if.then.i199

sw.bb53:                                          ; preds = %if.end3
  %call54 = call zeroext i1 @capable(i32 noundef 17) #10
  br i1 %call54, label %lor.lhs.false, label %sw.bb53.cleanup_crit_edge

sw.bb53.cleanup_crit_edge:                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb53
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %50 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end58, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end58:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %data59 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %52 = ptrtoint ptr %data59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data59, align 4
  %base_addr61 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %54 = ptrtoint ptr %base_addr61 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %base_addr61, align 32
  %irq62 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %55 = ptrtoint ptr %irq62 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %irq62, align 4
  %dma63 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 53
  %56 = ptrtoint ptr %dma63 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %dma63, align 1
  br label %cleanup

sw.bb64:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %stat = getelementptr i8, ptr %dev, i32 2428
  %57 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %stat, align 4
  %59 = lshr i8 %58, 3
  %.lobit193 = and i8 %59, 1
  %60 = zext i8 %.lobit193 to i32
  %data68 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %61 = ptrtoint ptr %data68 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %data68, align 4
  %62 = xor i8 %58, -1
  %63 = lshr i8 %62, 7
  %.not195 = zext i8 %63 to i32
  %dcd = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 1
  %64 = ptrtoint ptr %dcd to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.not195, ptr %dcd, align 4
  %ptt_keyed = getelementptr i8, ptr %dev, i32 3496
  %65 = ptrtoint ptr %ptt_keyed to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ptt_keyed, align 4
  %ptt_keyed77 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 2
  %67 = ptrtoint ptr %ptt_keyed77 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %ptt_keyed77, align 4
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %68 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_packets, align 4
  %tx_packets79 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 3
  %70 = ptrtoint ptr %tx_packets79 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %tx_packets79, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %71 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_errors, align 4
  %tx_errors82 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 4
  %73 = ptrtoint ptr %tx_errors82 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %tx_errors82, align 4
  %74 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %stats, align 8
  %rx_packets85 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 5
  %76 = ptrtoint ptr %rx_packets85 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %rx_packets85, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %77 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_errors, align 8
  %rx_errors88 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 6
  %79 = ptrtoint ptr %rx_errors88 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %rx_errors88, align 4
  br label %if.then.i199

sw.bb89:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %stat90 = getelementptr i8, ptr %dev, i32 2428
  %80 = ptrtoint ptr %stat90 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %stat90, align 4
  %82 = lshr i8 %81, 3
  %.lobit = and i8 %82, 1
  %83 = zext i8 %.lobit to i32
  %data98 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %84 = ptrtoint ptr %data98 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %data98, align 4
  %85 = xor i8 %81, -1
  %86 = lshr i8 %85, 7
  %.not = zext i8 %86 to i32
  %dcd107 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 1
  %87 = ptrtoint ptr %dcd107 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %.not, ptr %dcd107, align 4
  %ptt_keyed108 = getelementptr i8, ptr %dev, i32 3496
  %88 = ptrtoint ptr %ptt_keyed108 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ptt_keyed108, align 4
  %ptt_keyed110 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 0, i32 2
  %90 = ptrtoint ptr %ptt_keyed110 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %ptt_keyed110, align 4
  br label %if.then.i199

sw.bb111:                                         ; preds = %if.end3
  %call112 = call zeroext i1 @capable(i32 noundef 17) #10
  br i1 %call112, label %if.end114, label %sw.bb111.cleanup_crit_edge

sw.bb111.cleanup_crit_edge:                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end114:                                        ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #12
  %data115 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %91 = ptrtoint ptr %data115 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data115, align 4
  %bitrate = getelementptr i8, ptr %dev, i32 2424
  %93 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bitrate, align 4
  %mul = mul i32 %94, %92
  %div191 = lshr i32 %mul, 3
  %hdlctx116 = getelementptr i8, ptr %dev, i32 2984
  %95 = ptrtoint ptr %hdlctx116 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %div191, ptr %hdlctx116, align 4
  br label %cleanup

sw.bb117:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %data118 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %96 = call ptr @memcpy(ptr %data118, ptr @str.93, i32 32)
  br label %if.then.i199

sw.bb120:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %data121 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %cfg = getelementptr i8, ptr %dev, i32 2432
  %97 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool123.not = icmp eq i32 %98, 0
  %cond = select i1 %tobool123.not, ptr @.str.54, ptr @.str.53
  %extmodem = getelementptr i8, ptr %dev, i32 2444
  %99 = ptrtoint ptr %extmodem to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %extmodem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool125.not = icmp eq i32 %100, 0
  %cond126 = select i1 %tobool125.not, ptr @.str.53, ptr @.str.54
  %fclk = getelementptr i8, ptr %dev, i32 2436
  %101 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fclk, align 4
  %bps = getelementptr i8, ptr %dev, i32 2440
  %103 = ptrtoint ptr %bps to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bps, align 4
  %loopback = getelementptr i8, ptr %dev, i32 2448
  %105 = ptrtoint ptr %loopback to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %loopback, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool130.not = icmp eq i32 %106, 0
  %cond131 = select i1 %tobool130.not, ptr @.str.3, ptr @.str.55
  %call132 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data121, ptr noundef nonnull @.str.80, ptr noundef nonnull %cond, ptr noundef nonnull %cond126, i32 noundef %102, i32 noundef %104, ptr noundef nonnull %cond131)
  br label %if.then.i199

sw.bb133:                                         ; preds = %if.end3
  %call134 = call zeroext i1 @capable(i32 noundef 12) #10
  br i1 %call134, label %lor.lhs.false135, label %sw.bb133.cleanup_crit_edge

sw.bb133.cleanup_crit_edge:                       ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false135:                                 ; preds = %sw.bb133
  %state.i205 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %107 = ptrtoint ptr %state.i205 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %state.i205, align 4
  %and1.i.i206 = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i206)
  %tobool.i207.not = icmp eq i32 %and1.i.i206, 0
  br i1 %tobool.i207.not, label %if.end139, label %lor.lhs.false135.cleanup_crit_edge

lor.lhs.false135.cleanup_crit_edge:               ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end139:                                        ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #12
  %data140 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %arrayidx = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 1, i32 99
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %arrayidx, align 1
  call fastcc void @baycom_setmode(ptr noundef %add.ptr.i, ptr noundef %data140)
  br label %cleanup

sw.bb144:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %data145 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %110 = call ptr @memcpy(ptr %data145, ptr @str, i32 128)
  br label %if.then.i199

sw.bb148:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i199:                                     ; preds = %sw.bb144, %sw.bb120, %sw.bb117, %sw.bb89, %sw.bb64, %sw.bb43, %sw.bb
  call void @__might_fault(ptr noundef nonnull @.str.84, i32 noundef 174) #10
  %call.i.i198 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i198, label %if.then.i199.cleanup_crit_edge, label %copy_to_user.exit

if.then.i199.cleanup_crit_edge:                   ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i203 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %hi, i32 noundef 132) #10
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %hi, i32 noundef 132) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool150.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool150.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then.i199.cleanup_crit_edge, %sw.bb148, %if.end139, %lor.lhs.false135.cleanup_crit_edge, %sw.bb133.cleanup_crit_edge, %if.end114, %sw.bb111.cleanup_crit_edge, %if.end58, %lor.lhs.false.cleanup_crit_edge, %sw.bb53.cleanup_crit_edge, %if.end22, %sw.bb19.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb148 ], [ 0, %if.end139 ], [ 0, %if.end114 ], [ 0, %if.end58 ], [ 0, %if.end22 ], [ -515, %entry.cleanup_crit_edge ], [ -515, %if.end3.cleanup_crit_edge ], [ -13, %sw.bb19.cleanup_crit_edge ], [ -13, %lor.lhs.false.cleanup_crit_edge ], [ -13, %sw.bb53.cleanup_crit_edge ], [ -13, %sw.bb111.cleanup_crit_edge ], [ -13, %lor.lhs.false135.cleanup_crit_edge ], [ -13, %sw.bb133.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i199.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %hi) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_find_base(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_put_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epp_wakeup(ptr noundef %handle) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %handle) #13
  %pdev = getelementptr i8, ptr %handle, i32 2308
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %call2 = tail call i32 @parport_claim(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end5, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %handle) #13
  br label %if.end

if.end:                                           ; preds = %do.end5, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epp_bh(ptr noundef %work) #7 align 64 {
entry:
  %stat = alloca i8, align 1
  %tmp = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat) #10
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %stat, align 1, !annotation !225
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #10
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %tmp, align 1, !annotation !225
  %2 = getelementptr inbounds [2 x i8], ptr %tmp, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !225
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %dev2 = getelementptr i8, ptr %work, i32 -8
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %work_running = getelementptr i8, ptr %work, i32 -4
  %6 = ptrtoint ptr %work_running to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %work_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %debug_vals.i = getelementptr i8, ptr %work, i32 1184
  %cur_intcnt.i = getelementptr i8, ptr %work, i32 1188
  %9 = ptrtoint ptr %cur_intcnt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_intcnt.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %cur_intcnt.i, align 4
  %11 = ptrtoint ptr %debug_vals.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug_vals.i, align 4
  %add.neg.i = add i32 %8, -100
  %sub.i = sub i32 %add.neg.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.baycom_int_freq.exit_crit_edge

if.end.baycom_int_freq.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %baycom_int_freq.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %debug_vals.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %debug_vals.i, align 4
  %last_intcnt.i = getelementptr i8, ptr %work, i32 1192
  %14 = ptrtoint ptr %last_intcnt.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i, ptr %last_intcnt.i, align 4
  %15 = ptrtoint ptr %cur_intcnt.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %cur_intcnt.i, align 4
  %cur_pllcorr.i = getelementptr i8, ptr %work, i32 1196
  %16 = ptrtoint ptr %cur_pllcorr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_pllcorr.i, align 4
  %last_pllcorr.i = getelementptr i8, ptr %work, i32 1200
  %18 = ptrtoint ptr %last_pllcorr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %last_pllcorr.i, align 4
  store i32 0, ptr %cur_pllcorr.i, align 4
  br label %baycom_int_freq.exit

baycom_int_freq.exit:                             ; preds = %if.then.i, %if.end.baycom_int_freq.exit_crit_edge
  %pdev = getelementptr i8, ptr %work, i32 -12
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %22, i32 0, i32 24
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %epp_read_addr = getelementptr inbounds %struct.parport_operations, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %epp_read_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %epp_read_addr, align 4
  %call = call i32 %26(ptr noundef %22, ptr noundef nonnull %stat, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end4, label %baycom_int_freq.exit.do.end_crit_edge

baycom_int_freq.exit.do.end_crit_edge:            ; preds = %baycom_int_freq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end4:                                          ; preds = %baycom_int_freq.exit
  %27 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %stat, align 1
  %stat5 = getelementptr i8, ptr %work, i32 108
  %29 = ptrtoint ptr %stat5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %stat5, align 4
  %conv = zext i8 %28 to i32
  %last_pllcorr = getelementptr i8, ptr %work, i32 1200
  %30 = ptrtoint ptr %last_pllcorr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %last_pllcorr, align 4
  %modem = getelementptr i8, ptr %work, i32 100
  %31 = ptrtoint ptr %modem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %modem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp6 = icmp eq i32 %32, 2
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  %33 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 57, ptr %tmp, align 1
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %epp_write_addr = getelementptr inbounds %struct.parport_operations, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %epp_write_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %epp_write_addr, align 4
  %call10 = call i32 %37(ptr noundef %22, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 1
  br i1 %cmp11.not, label %if.end14, label %if.then8.do.end_crit_edge

if.then8.do.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end14:                                         ; preds = %if.then8
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %epp_read_addr16 = getelementptr inbounds %struct.parport_operations, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %epp_read_addr16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %epp_read_addr16, align 4
  %call18 = call i32 %41(ptr noundef %22, ptr noundef nonnull %tmp, i32 noundef 2, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 2
  br i1 %cmp19.not, label %if.end22, label %if.end14.do.end_crit_edge

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end22:                                         ; preds = %if.end14
  %42 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tmp, align 1
  %conv24 = zext i8 %43 to i32
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %2, align 1
  %conv26 = zext i8 %45 to i32
  %shl = shl nuw nsw i32 %conv26, 8
  %shl.masked = and i32 %shl, 32512
  %and = or i32 %shl.masked, %conv24
  store i8 58, ptr %tmp, align 1
  %46 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops, align 4
  %epp_write_addr29 = getelementptr inbounds %struct.parport_operations, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %epp_write_addr29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %epp_write_addr29, align 4
  %call31 = call i32 %49(ptr noundef %22, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 1
  br i1 %cmp32.not, label %if.end35, label %if.end22.do.end_crit_edge

if.end22.do.end_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end35:                                         ; preds = %if.end22
  %50 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops, align 4
  %epp_read_addr37 = getelementptr inbounds %struct.parport_operations, ptr %51, i32 0, i32 16
  %52 = ptrtoint ptr %epp_read_addr37 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %epp_read_addr37, align 4
  %call39 = call i32 %53(ptr noundef %22, ptr noundef nonnull %tmp, i32 noundef 2, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 2
  br i1 %cmp40.not, label %if.end43, label %if.end35.do.end_crit_edge

if.end35.do.end_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end43:                                         ; preds = %if.end35
  %54 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tmp, align 1
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %2, align 1
  store i8 56, ptr %tmp, align 1
  %58 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops, align 4
  %epp_write_addr53 = getelementptr inbounds %struct.parport_operations, ptr %59, i32 0, i32 15
  %60 = ptrtoint ptr %epp_write_addr53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %epp_write_addr53, align 4
  %call55 = call i32 %61(ptr noundef %22, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55)
  %cmp56.not = icmp eq i32 %call55, 1
  br i1 %cmp56.not, label %if.end59, label %if.end43.do.end_crit_edge

if.end43.do.end_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end59:                                         ; preds = %if.end43
  %conv47 = zext i8 %57 to i32
  %shl48 = shl nuw nsw i32 %conv47, 8
  %shl48.masked = and i32 %shl48, 32512
  %conv45 = zext i8 %55 to i32
  %62 = or i32 %shl48.masked, %conv45
  %sub = sub nsw i32 16384, %62
  %63 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %stat, align 1
  %call60 = call fastcc i32 @transmit(ptr noundef %add.ptr, i32 noundef %sub, i8 noundef zeroext %64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.do.end_crit_edge

if.end59.do.end_crit_edge:                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end63:                                         ; preds = %if.end59
  %call64 = call fastcc i32 @receive(ptr noundef %5, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.do.end_crit_edge

if.end63.do.end_crit_edge:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end67:                                         ; preds = %if.end63
  %65 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops, align 4
  %epp_read_addr69 = getelementptr inbounds %struct.parport_operations, ptr %66, i32 0, i32 16
  %67 = ptrtoint ptr %epp_read_addr69 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %epp_read_addr69, align 4
  %call70 = call i32 %68(ptr noundef %22, ptr noundef nonnull %stat, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call70)
  %cmp71.not = icmp eq i32 %call70, 1
  br i1 %cmp71.not, label %if.end74, label %if.end67.do.end_crit_edge

if.end67.do.end_crit_edge:                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %stat, align 1
  %71 = ptrtoint ptr %stat5 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %stat5, align 4
  br label %if.end134

if.else:                                          ; preds = %if.end4
  %72 = and i8 %28, 48
  %and77 = zext i8 %72 to i32
  %73 = zext i32 %and77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %and77, label %sw.default [
    i32 32, label %if.else.sw.epilog_crit_edge
    i32 16, label %sw.bb78
    i32 0, label %sw.bb79
  ]

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb79, %sw.bb78, %if.else.sw.epilog_crit_edge
  %cnt.0 = phi i32 [ 1023, %sw.default ], [ 0, %sw.bb79 ], [ 255, %sw.bb78 ], [ 1792, %if.else.sw.epilog_crit_edge ]
  %call80 = call fastcc i32 @transmit(ptr noundef %add.ptr, i32 noundef %cnt.0, i8 noundef zeroext %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %sw.epilog.while.cond_crit_edge, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sw.epilog.while.cond_crit_edge:                   ; preds = %sw.epilog
  br label %while.cond

while.cond:                                       ; preds = %if.end97.while.cond_crit_edge, %sw.epilog.while.cond_crit_edge
  %74 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %stat, align 1
  %76 = and i8 %75, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %76)
  %cmp86.not = icmp eq i8 %76, 4
  br i1 %cmp86.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %switch.selectcmp = icmp eq i8 %76, 0
  %switch.select = select i1 %switch.selectcmp, i32 1793, i32 256
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %76)
  %switch.selectcmp196 = icmp eq i8 %76, 2
  %switch.select197 = select i1 %switch.selectcmp196, i32 1025, i32 %switch.select
  %call94 = call fastcc i32 @receive(ptr noundef %5, i32 noundef %switch.select197)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %while.body.do.end_crit_edge

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end97:                                         ; preds = %while.body
  %77 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops, align 4
  %epp_read_addr99 = getelementptr inbounds %struct.parport_operations, ptr %78, i32 0, i32 16
  %79 = ptrtoint ptr %epp_read_addr99 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %epp_read_addr99, align 4
  %call100 = call i32 %80(ptr noundef %22, ptr noundef nonnull %stat, i32 noundef 1, i32 noundef 0) #10
  %cmp101.not = icmp eq i32 %call100, 1
  br i1 %cmp101.not, label %if.end97.while.cond_crit_edge, label %if.end97.do.end_crit_edge

if.end97.do.end_crit_edge:                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end97.while.cond_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %bitrate = getelementptr i8, ptr %work, i32 104
  %81 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bitrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %82)
  %cmp105 = icmp ult i32 %82, 50000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %82)
  %cmp110 = icmp ult i32 %82, 100000
  %spec.select = select i1 %cmp110, i32 128, i32 0
  %spec.select202 = select i1 %cmp105, i32 256, i32 %spec.select
  br label %while.cond115

while.cond115:                                    ; preds = %if.end125.while.cond115_crit_edge, %while.end
  %cnt.3 = phi i32 [ %dec, %if.end125.while.cond115_crit_edge ], [ %spec.select202, %while.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.3)
  %cmp116 = icmp sgt i32 %cnt.3, 0
  br i1 %cmp116, label %land.rhs, label %while.cond115.if.end134_crit_edge

while.cond115.if.end134_crit_edge:                ; preds = %while.cond115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

land.rhs:                                         ; preds = %while.cond115
  %83 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %stat, align 1
  %85 = and i8 %84, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool120.not = icmp eq i8 %85, 0
  br i1 %tobool120.not, label %land.rhs.if.end134_crit_edge, label %while.body121

land.rhs.if.end134_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

while.body121:                                    ; preds = %land.rhs
  %call122 = call fastcc i32 @receive(ptr noundef %5, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %while.body121.do.end_crit_edge

while.body121.do.end_crit_edge:                   ; preds = %while.body121
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end125:                                        ; preds = %while.body121
  %dec = add nsw i32 %cnt.3, -1
  %86 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ops, align 4
  %epp_read_addr127 = getelementptr inbounds %struct.parport_operations, ptr %87, i32 0, i32 16
  %88 = ptrtoint ptr %epp_read_addr127 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %epp_read_addr127, align 4
  %call128 = call i32 %89(ptr noundef %22, ptr noundef nonnull %stat, i32 noundef 1, i32 noundef 0) #10
  %cmp129.not = icmp eq i32 %call128, 1
  br i1 %cmp129.not, label %if.end125.while.cond115_crit_edge, label %if.end125.do.end_crit_edge

if.end125.do.end_crit_edge:                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end125.while.cond115_crit_edge:                ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond115

if.end134:                                        ; preds = %land.rhs.if.end134_crit_edge, %while.cond115.if.end134_crit_edge, %if.end74
  %mod_cycles = getelementptr i8, ptr %work, i32 1204
  %90 = ptrtoint ptr %mod_cycles to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %mod_cycles, align 4
  %demod_cycles = getelementptr i8, ptr %work, i32 1208
  %91 = ptrtoint ptr %demod_cycles to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %demod_cycles, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %92 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %92, ptr noundef %work, i32 noundef 1) #10
  %skb = getelementptr i8, ptr %work, i32 1180
  %93 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %skb, align 4
  %tobool140.not = icmp eq ptr %94, null
  br i1 %tobool140.not, label %if.then141, label %if.end134.cleanup_crit_edge

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then141:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %95 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %96) #10
  br label %cleanup

do.end:                                           ; preds = %if.end125.do.end_crit_edge, %while.body121.do.end_crit_edge, %if.end97.do.end_crit_edge, %while.body.do.end_crit_edge, %sw.epilog.do.end_crit_edge, %if.end67.do.end_crit_edge, %if.end63.do.end_crit_edge, %if.end59.do.end_crit_edge, %if.end43.do.end_crit_edge, %if.end35.do.end_crit_edge, %if.end22.do.end_crit_edge, %if.end14.do.end_crit_edge, %if.then8.do.end_crit_edge, %baycom_int_freq.exit.do.end_crit_edge
  %call144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @bc_drvname) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then141, %if.end134.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @transmit(ptr noundef %bc, i32 noundef %cnt, i8 noundef zeroext %stat) unnamed_addr #7 align 64 {
entry:
  %tmp = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp) #10
  %4 = call ptr @memset(ptr %tmp, i32 255, i32 128)
  %hdlctx = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 11
  %state = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 11, i32 3
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp eq i32 %6, 3
  %7 = and i8 %stat, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state, align 4
  br label %land.lhs.true7

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %if.end.land.lhs.true7_crit_edge, label %if.end.if.end48_crit_edge

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.end.land.lhs.true7_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end.land.lhs.true7_crit_edge, %if.end.thread
  %9 = ptrtoint ptr %hdlctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hdlctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp9 = icmp slt i32 %10, 1
  br i1 %cmp9, label %if.then11, label %land.lhs.true7.if.end48_crit_edge

land.lhs.true7.if.end48_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then11:                                        ; preds = %land.lhs.true7
  %bufcnt = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 11, i32 5
  %11 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bufcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp13 = icmp slt i32 %12, 1
  br i1 %cmp13, label %if.end16, label %if.then11.if.end22_crit_edge

if.then11.if.end22_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end16:                                         ; preds = %if.then11
  tail call fastcc void @encode_hdlc(ptr noundef %bc)
  %13 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %bufcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp19 = icmp slt i32 %.pr, 1
  br i1 %cmp19, label %if.end16.cleanup_crit_edge, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end16.if.end22_crit_edge, %if.then11.if.end22_crit_edge
  %fulldup = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 9, i32 4
  %14 = ptrtoint ptr %fulldup to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fulldup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool23.not = icmp eq i32 %15, 0
  br i1 %tobool23.not, label %if.then24, label %if.end22.if.end48_crit_edge

if.end22.if.end48_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %stat)
  %tobool27.not = icmp sgt i8 %stat, -1
  br i1 %tobool27.not, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %slottime = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 9, i32 2
  %16 = ptrtoint ptr %slottime to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slottime, align 4
  %slotcnt = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %slotcnt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %slotcnt, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.then24
  %slotcnt33 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %slotcnt33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slotcnt33, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %slotcnt33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp34 = icmp sgt i32 %dec, 0
  br i1 %cmp34, label %if.end31.cleanup_crit_edge, label %if.end37

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %slottime39 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 9, i32 2
  %21 = ptrtoint ptr %slottime39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slottime39, align 4
  %23 = ptrtoint ptr %slotcnt33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %slotcnt33, align 4
  %call = tail call i32 @prandom_u32() #10
  %rem = and i32 %call, 255
  %ppersist = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 9, i32 3
  %24 = ptrtoint ptr %ppersist to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ppersist, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %25)
  %cmp43 = icmp ugt i32 %rem, %25
  br i1 %cmp43, label %if.end37.cleanup_crit_edge, label %if.end37.if.end48_crit_edge

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48:                                         ; preds = %if.end37.if.end48_crit_edge, %if.end22.if.end48_crit_edge, %land.lhs.true7.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp51 = icmp eq i32 %27, 0
  br i1 %cmp51, label %land.lhs.true53, label %if.end48.if.end63_crit_edge

if.end48.if.end63_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

land.lhs.true53:                                  ; preds = %if.end48
  %bufcnt55 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 11, i32 5
  %28 = ptrtoint ptr %bufcnt55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bufcnt55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp56 = icmp sgt i32 %29, 0
  br i1 %cmp56, label %if.then58, label %land.lhs.true53.if.end63_crit_edge

land.lhs.true53.if.end63_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then58:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %state, align 4
  %ch_params61 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 9
  %31 = ptrtoint ptr %ch_params61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ch_params61, align 4
  %bitrate = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 6
  %33 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bitrate, align 4
  %mul = mul i32 %34, %32
  %div = udiv i32 %mul, 800
  %flags = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 11, i32 2
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div, ptr %flags, align 4
  %ptt_keyed = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 12
  %36 = ptrtoint ptr %ptt_keyed to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ptt_keyed, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %ptt_keyed, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %land.lhs.true53.if.end63_crit_edge, %if.end48.if.end63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp64356 = icmp sgt i32 %cnt, 0
  br i1 %cmp64356, label %while.body.lr.ph, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end63
  %bufcnt147 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 11, i32 5
  %flags155 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 11, i32 2
  %ops180 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %bufptr = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 11, i32 4
  %tx_tail = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 9, i32 1
  %bitrate115 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %cnt.addr.0357 = phi i32 [ %cnt, %while.body.lr.ph ], [ %cnt.addr.1, %sw.epilog.while.body_crit_edge ]
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %39, label %while.body.sw.default_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb101
    i32 3, label %sw.bb145
  ]

while.body.sw.default_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb:                                            ; preds = %while.body
  %41 = ptrtoint ptr %flags155 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags155, align 4
  %43 = call i32 @llvm.smin.i32(i32 %cnt.addr.0357, i32 %42)
  %sub = sub i32 %cnt.addr.0357, %43
  %sub75 = sub i32 %42, %43
  %44 = ptrtoint ptr %flags155 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub75, ptr %flags155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub75)
  %cmp78 = icmp slt i32 %sub75, 1
  br i1 %cmp78, label %if.then80, label %sw.bb.if.end83_crit_edge

sw.bb.if.end83_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then80:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %state, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %sw.bb.if.end83_crit_edge
  %46 = call ptr @memset(ptr %tmp, i32 126, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp85352 = icmp sgt i32 %43, 0
  br i1 %cmp85352, label %if.end83.while.body87_crit_edge, label %if.end83.sw.epilog_crit_edge

if.end83.sw.epilog_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end83.while.body87_crit_edge:                  ; preds = %if.end83
  br label %while.body87

while.cond84:                                     ; preds = %while.body87
  %sub100 = sub nsw i32 %i.0353, %47
  %cmp85 = icmp sgt i32 %sub100, 0
  br i1 %cmp85, label %while.cond84.while.body87_crit_edge, label %while.cond84.sw.epilog_crit_edge

while.cond84.sw.epilog_crit_edge:                 ; preds = %while.cond84
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.cond84.while.body87_crit_edge:              ; preds = %while.cond84
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body87

while.body87:                                     ; preds = %while.cond84.while.body87_crit_edge, %if.end83.while.body87_crit_edge
  %i.0353 = phi i32 [ %sub100, %while.cond84.while.body87_crit_edge ], [ %43, %if.end83.while.body87_crit_edge ]
  %47 = call i32 @llvm.umin.i32(i32 %i.0353, i32 128)
  %48 = ptrtoint ptr %ops180 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops180, align 4
  %epp_write_data = getelementptr inbounds %struct.parport_operations, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %epp_write_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %epp_write_data, align 4
  %call95 = call i32 %51(ptr noundef %3, ptr noundef nonnull %tmp, i32 noundef %47, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %call95)
  %cmp96.not = icmp eq i32 %47, %call95
  br i1 %cmp96.not, label %while.cond84, label %while.body87.cleanup_crit_edge

while.body87.cleanup_crit_edge:                   ; preds = %while.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb101:                                         ; preds = %while.body
  %52 = ptrtoint ptr %bufcnt147 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bufcnt147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp104 = icmp slt i32 %53, 1
  br i1 %cmp104, label %if.then106, label %sw.bb101.if.end121_crit_edge

sw.bb101.if.end121_crit_edge:                     ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then106:                                       ; preds = %sw.bb101
  call fastcc void @encode_hdlc(ptr noundef %bc)
  %54 = ptrtoint ptr %bufcnt147 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bufcnt147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp109 = icmp slt i32 %55, 1
  br i1 %cmp109, label %if.then111, label %if.then106.if.end121_crit_edge

if.then106.if.end121_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then111:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %state, align 4
  %57 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_tail, align 4
  %59 = ptrtoint ptr %bitrate115 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bitrate115, align 4
  %mul116 = mul i32 %60, %58
  %div117 = udiv i32 %mul116, 800
  %61 = ptrtoint ptr %flags155 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div117, ptr %flags155, align 4
  br label %sw.epilog

if.end121:                                        ; preds = %if.then106.if.end121_crit_edge, %sw.bb101.if.end121_crit_edge
  %62 = ptrtoint ptr %bufcnt147 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bufcnt147, align 4
  %64 = call i32 @llvm.smin.i32(i32 %cnt.addr.0357, i32 %63)
  %sub133 = sub i32 %63, %64
  %65 = ptrtoint ptr %bufcnt147 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub133, ptr %bufcnt147, align 4
  %66 = ptrtoint ptr %ops180 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops180, align 4
  %epp_write_data136 = getelementptr inbounds %struct.parport_operations, ptr %67, i32 0, i32 13
  %68 = ptrtoint ptr %epp_write_data136 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %epp_write_data136, align 4
  %70 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bufptr, align 4
  %call138 = call i32 %69(ptr noundef %3, ptr noundef %71, i32 noundef %64, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %call138)
  %cmp139.not = icmp eq i32 %64, %call138
  br i1 %cmp139.not, label %if.end142, label %if.end121.cleanup_crit_edge

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end142:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %sub134 = sub i32 %cnt.addr.0357, %64
  %72 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bufptr, align 4
  %add.ptr = getelementptr i8, ptr %73, i32 %64
  store ptr %add.ptr, ptr %bufptr, align 4
  br label %sw.epilog

sw.bb145:                                         ; preds = %while.body
  call fastcc void @encode_hdlc(ptr noundef %bc)
  %74 = ptrtoint ptr %bufcnt147 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bufcnt147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp148 = icmp sgt i32 %75, 0
  br i1 %cmp148, label %if.then150, label %if.end153

if.then150:                                       ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %state, align 4
  br label %sw.epilog

if.end153:                                        ; preds = %sw.bb145
  %77 = ptrtoint ptr %flags155 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags155, align 4
  %79 = call i32 @llvm.smin.i32(i32 %cnt.addr.0357, i32 %78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool163.not = icmp eq i32 %79, 0
  br i1 %tobool163.not, label %if.end153.sw.default_crit_edge, label %if.then164

if.end153.sw.default_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.then164:                                       ; preds = %if.end153
  %sub165 = sub i32 %cnt.addr.0357, %79
  %sub168 = sub i32 %78, %79
  %80 = ptrtoint ptr %flags155 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %sub168, ptr %flags155, align 4
  %81 = call ptr @memset(ptr %tmp, i32 126, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp171350 = icmp sgt i32 %79, 0
  br i1 %cmp171350, label %if.then164.while.body173_crit_edge, label %if.then164.sw.epilog_crit_edge

if.then164.sw.epilog_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then164.while.body173_crit_edge:               ; preds = %if.then164
  br label %while.body173

while.cond170:                                    ; preds = %while.body173
  %sub188 = sub nsw i32 %i.1351, %82
  %cmp171 = icmp sgt i32 %sub188, 0
  br i1 %cmp171, label %while.cond170.while.body173_crit_edge, label %while.cond170.sw.epilog_crit_edge

while.cond170.sw.epilog_crit_edge:                ; preds = %while.cond170
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.cond170.while.body173_crit_edge:            ; preds = %while.cond170
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body173

while.body173:                                    ; preds = %while.cond170.while.body173_crit_edge, %if.then164.while.body173_crit_edge
  %i.1351 = phi i32 [ %sub188, %while.cond170.while.body173_crit_edge ], [ %79, %if.then164.while.body173_crit_edge ]
  %82 = call i32 @llvm.umin.i32(i32 %i.1351, i32 128)
  %83 = ptrtoint ptr %ops180 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops180, align 4
  %epp_write_data181 = getelementptr inbounds %struct.parport_operations, ptr %84, i32 0, i32 13
  %85 = ptrtoint ptr %epp_write_data181 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %epp_write_data181, align 4
  %call183 = call i32 %86(ptr noundef %3, ptr noundef nonnull %tmp, i32 noundef %82, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %call183)
  %cmp184.not = icmp eq i32 %82, %call183
  br i1 %cmp184.not, label %while.cond170, label %while.body173.cleanup_crit_edge

while.body173.cleanup_crit_edge:                  ; preds = %while.body173
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.default:                                       ; preds = %if.end153.sw.default_crit_edge, %while.body.sw.default_crit_edge
  %87 = ptrtoint ptr %hdlctx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %hdlctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp193 = icmp slt i32 %88, 1
  br i1 %cmp193, label %sw.default.cleanup_crit_edge, label %if.end196

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end196:                                        ; preds = %sw.default
  %89 = call i32 @llvm.umin.i32(i32 %cnt.addr.0357, i32 %88)
  %sub206 = sub nsw i32 %cnt.addr.0357, %89
  %sub209 = sub nsw i32 %88, %89
  %90 = ptrtoint ptr %hdlctx to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %sub209, ptr %hdlctx, align 4
  %91 = call ptr @memset(ptr %tmp, i32 0, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp212354.not = icmp eq i32 %89, 0
  br i1 %cmp212354.not, label %if.end196.sw.epilog_crit_edge, label %if.end196.while.body214_crit_edge

if.end196.while.body214_crit_edge:                ; preds = %if.end196
  br label %while.body214

if.end196.sw.epilog_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.cond211:                                    ; preds = %while.body214
  %sub229 = sub nsw i32 %i.2355, %92
  %cmp212 = icmp sgt i32 %sub229, 0
  br i1 %cmp212, label %while.cond211.while.body214_crit_edge, label %while.cond211.sw.epilog_crit_edge

while.cond211.sw.epilog_crit_edge:                ; preds = %while.cond211
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.cond211.while.body214_crit_edge:            ; preds = %while.cond211
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body214

while.body214:                                    ; preds = %while.cond211.while.body214_crit_edge, %if.end196.while.body214_crit_edge
  %i.2355 = phi i32 [ %sub229, %while.cond211.while.body214_crit_edge ], [ %89, %if.end196.while.body214_crit_edge ]
  %92 = call i32 @llvm.umin.i32(i32 %i.2355, i32 128)
  %93 = ptrtoint ptr %ops180 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops180, align 4
  %epp_write_data222 = getelementptr inbounds %struct.parport_operations, ptr %94, i32 0, i32 13
  %95 = ptrtoint ptr %epp_write_data222 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %epp_write_data222, align 4
  %call224 = call i32 %96(ptr noundef %3, ptr noundef nonnull %tmp, i32 noundef %92, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %call224)
  %cmp225.not = icmp eq i32 %92, %call224
  br i1 %cmp225.not, label %while.cond211, label %while.body214.cleanup_crit_edge

while.body214.cleanup_crit_edge:                  ; preds = %while.body214
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %while.cond211.sw.epilog_crit_edge, %if.end196.sw.epilog_crit_edge, %while.cond170.sw.epilog_crit_edge, %if.then164.sw.epilog_crit_edge, %if.then150, %if.end142, %if.then111, %while.cond84.sw.epilog_crit_edge, %if.end83.sw.epilog_crit_edge
  %cnt.addr.1 = phi i32 [ %cnt.addr.0357, %if.then150 ], [ %cnt.addr.0357, %if.then111 ], [ %sub134, %if.end142 ], [ %sub206, %if.end196.sw.epilog_crit_edge ], [ %sub, %if.end83.sw.epilog_crit_edge ], [ %sub165, %if.then164.sw.epilog_crit_edge ], [ %sub206, %while.cond211.sw.epilog_crit_edge ], [ %sub, %while.cond84.sw.epilog_crit_edge ], [ %sub165, %while.cond170.sw.epilog_crit_edge ]
  %cmp64 = icmp sgt i32 %cnt.addr.1, 0
  br i1 %cmp64, label %sw.epilog.while.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %while.body214.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %while.body173.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %while.body87.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then28, %if.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then28 ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ], [ -1, %while.body214.cleanup_crit_edge ], [ -1, %while.body87.cleanup_crit_edge ], [ -1, %while.body173.cleanup_crit_edge ], [ -1, %if.end121.cleanup_crit_edge ], [ 0, %sw.default.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @receive(ptr noundef %dev, i32 noundef %cnt) unnamed_addr #7 align 64 {
entry:
  %tmp = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp) #10
  %4 = call ptr @memset(ptr %tmp, i32 255, i32 128)
  %hdlcrx = getelementptr i8, ptr %dev, i32 2472
  %numbits1 = getelementptr i8, ptr %dev, i32 2480
  %5 = ptrtoint ptr %numbits1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %numbits1, align 4
  %state3 = getelementptr i8, ptr %dev, i32 2484
  %7 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state3, align 4
  %bitstream5 = getelementptr i8, ptr %dev, i32 2476
  %9 = ptrtoint ptr %bitstream5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bitstream5, align 4
  %11 = ptrtoint ptr %hdlcrx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hdlcrx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp177 = icmp sgt i32 %cnt, 0
  br i1 %cmp177, label %while.body.lr.ph, label %entry.while.end93_crit_edge

entry.while.end93_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end93

while.body.lr.ph:                                 ; preds = %entry
  %ops = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %bufcnt.i = getelementptr i8, ptr %dev, i32 2492
  %buf.i = getelementptr i8, ptr %dev, i32 2496
  %stats22.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %bufptr = getelementptr i8, ptr %dev, i32 2488
  %uglygep = getelementptr i8, ptr %tmp, i32 -1
  br label %while.body

while.cond.loopexit:                              ; preds = %for.inc89.while.cond.loopexit_crit_edge, %for.cond.preheader.while.cond.loopexit_crit_edge
  %bitbuf.1.lcssa = phi i32 [ %bitbuf.0179, %for.cond.preheader.while.cond.loopexit_crit_edge ], [ %bitbuf.3, %for.inc89.while.cond.loopexit_crit_edge ]
  %bitstream.1.lcssa = phi i32 [ %bitstream.0180, %for.cond.preheader.while.cond.loopexit_crit_edge ], [ %or, %for.inc89.while.cond.loopexit_crit_edge ]
  %numbits.1.lcssa = phi i32 [ %numbits.0181, %for.cond.preheader.while.cond.loopexit_crit_edge ], [ %numbits.4.lcssa, %for.inc89.while.cond.loopexit_crit_edge ]
  %state.1.lcssa = phi i32 [ %state.0182, %for.cond.preheader.while.cond.loopexit_crit_edge ], [ %state.4.lcssa, %for.inc89.while.cond.loopexit_crit_edge ]
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.while.end93_crit_edge

while.cond.loopexit.while.end93_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end93

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %state.0182 = phi i32 [ %8, %while.body.lr.ph ], [ %state.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %numbits.0181 = phi i32 [ %6, %while.body.lr.ph ], [ %numbits.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %bitstream.0180 = phi i32 [ %10, %while.body.lr.ph ], [ %bitstream.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %bitbuf.0179 = phi i32 [ %12, %while.body.lr.ph ], [ %bitbuf.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %cnt.addr.0178 = phi i32 [ %cnt, %while.body.lr.ph ], [ %sub, %while.cond.loopexit.while.body_crit_edge ]
  %13 = call i32 @llvm.umin.i32(i32 %cnt.addr.0178, i32 128)
  %sub = sub nsw i32 %cnt.addr.0178, %13
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %epp_read_data = getelementptr inbounds %struct.parport_operations, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %epp_read_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %epp_read_data, align 4
  %call9 = call i32 %17(ptr noundef %3, ptr noundef nonnull %tmp, i32 noundef %13, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call9)
  %cmp10.not = icmp eq i32 %13, %call9
  br i1 %cmp10.not, label %for.cond.preheader, label %while.body.while.end93_crit_edge

while.body.while.end93_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end93

for.cond.preheader:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp12166.not = icmp eq i32 %13, 0
  br i1 %cmp12166.not, label %for.cond.preheader.while.cond.loopexit_crit_edge, label %for.body.preheader

for.cond.preheader.while.cond.loopexit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.loopexit

for.body.preheader:                               ; preds = %for.cond.preheader
  %uglygep193 = getelementptr i8, ptr %uglygep, i32 %13
  br label %for.body

for.body:                                         ; preds = %for.inc89.for.body_crit_edge, %for.body.preheader
  %cp.0171 = phi ptr [ %incdec.ptr91, %for.inc89.for.body_crit_edge ], [ %tmp, %for.body.preheader ]
  %state.1170 = phi i32 [ %state.4.lcssa, %for.inc89.for.body_crit_edge ], [ %state.0182, %for.body.preheader ]
  %numbits.1169 = phi i32 [ %numbits.4.lcssa, %for.inc89.for.body_crit_edge ], [ %numbits.0181, %for.body.preheader ]
  %bitstream.1168 = phi i32 [ %or, %for.inc89.for.body_crit_edge ], [ %bitstream.0180, %for.body.preheader ]
  %bitbuf.1167 = phi i32 [ %bitbuf.3, %for.inc89.for.body_crit_edge ], [ %bitbuf.0179, %for.body.preheader ]
  %shr = lshr i32 %bitstream.1168, 8
  %18 = ptrtoint ptr %cp.0171 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cp.0171, align 1
  %conv = zext i8 %19 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %shr
  %shr13 = lshr i32 %bitbuf.1167, 8
  %or16 = or i32 %shl, %shr13
  %add = add i32 %numbits.1169, 8
  %neg = xor i32 %or, -1
  br label %for.body20

while.cond68.preheader:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.3)
  %tobool69.not160 = icmp ne i32 %state.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %numbits.3)
  %cmp70161 = icmp ugt i32 %numbits.3, 7
  %or.cond162 = select i1 %tobool69.not160, i1 %cmp70161, i1 false
  br i1 %or.cond162, label %while.body72.preheader, label %while.cond68.preheader.for.inc89_crit_edge

while.cond68.preheader.for.inc89_crit_edge:       ; preds = %while.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc89

while.body72.preheader:                           ; preds = %while.cond68.preheader
  %20 = ptrtoint ptr %bufcnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %bufcnt.i, align 4
  br label %while.body72

for.body20:                                       ; preds = %for.inc.for.body20_crit_edge, %for.body
  %j.0158 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body20_crit_edge ]
  %state.2157 = phi i32 [ %state.1170, %for.body ], [ %state.3, %for.inc.for.body20_crit_edge ]
  %numbits.2156 = phi i32 [ %add, %for.body ], [ %numbits.3, %for.inc.for.body20_crit_edge ]
  %bitbuf.2155 = phi i32 [ %or16, %for.body ], [ %bitbuf.3, %for.inc.for.body20_crit_edge ]
  %shl21 = shl nuw nsw i32 252, %j.0158
  %and = and i32 %shl21, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then25, label %if.else46, !prof !230

if.then25:                                        ; preds = %for.body20
  %shl26 = shl nuw nsw i32 508, %j.0158
  %and27 = and i32 %shl26, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then25.for.inc_crit_edge, label %if.else

if.then25.for.inc_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else:                                          ; preds = %if.then25
  %shl30 = shl nuw nsw i32 510, %j.0158
  %and31 = and i32 %shl30, %or
  call void @__sanitizer_cov_trace_cmp4(i32 %and31, i32 %shl21)
  %cmp33 = icmp eq i32 %and31, %shl21
  br i1 %cmp33, label %if.then35, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.2157)
  %tobool36.not = icmp eq i32 %state.2157, 0
  br i1 %tobool36.not, label %if.then35.if.end38_crit_edge, label %if.then37

if.then35.if.end38_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then37:                                        ; preds = %if.then35
  %21 = ptrtoint ptr %bufcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bufcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp.i = icmp slt i32 %22, 4
  br i1 %cmp.i, label %if.then37.if.end38_crit_edge, label %if.end.i

if.then37.if.end38_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end.i:                                         ; preds = %if.then37
  %call.i.i = call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %buf.i, i32 noundef %22) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3912, i16 %call.i.i)
  %cmp.i.not.i = icmp eq i16 %call.i.i, -3912
  br i1 %cmp.i.not.i, label %if.end6.i, label %if.end.i.if.end38_crit_edge

if.end.i.if.end38_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end6.i:                                        ; preds = %if.end.i
  %23 = ptrtoint ptr %bufcnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bufcnt.i, align 4
  %add.i = add i32 %24, -1
  %call.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i, i32 noundef 2592) #10
  %tobool10.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool10.not.i, label %do.end.i, label %if.end14.i

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %dev) #13
  br label %cleanup.sink.split.i

if.end14.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %24, -2
  %call15.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %add.i) #10
  %incdec.ptr.i = getelementptr i8, ptr %call15.i, i32 1
  %25 = ptrtoint ptr %call15.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %call15.i, align 1
  %26 = call ptr @memcpy(ptr %incdec.ptr.i, ptr %buf.i, i32 %sub.i)
  %27 = getelementptr inbounds %struct.anon.51, ptr %call.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %27, align 8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 18
  %31 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 21
  %33 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %pkt_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15
  %34 = ptrtoint ptr %pkt_type.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i.i = load i16, ptr %pkt_type.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, 8191
  store i16 %bf.clear.i.i, ptr %pkt_type.i.i, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %35 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 2, ptr %protocol.i, align 8
  %call21.i = call i32 @netif_rx(ptr noundef nonnull %call.i.i.i) #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end14.i, %do.end.i
  %stats22.sink41.i = phi ptr [ %stats22.i, %if.end14.i ], [ %rx_dropped.i, %do.end.i ]
  %36 = ptrtoint ptr %stats22.sink41.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stats22.sink41.i, align 8
  %inc23.i = add i32 %37, 1
  store i32 %inc23.i, ptr %stats22.sink41.i, align 8
  br label %if.end38

if.end38:                                         ; preds = %cleanup.sink.split.i, %if.end.i.if.end38_crit_edge, %if.then37.if.end38_crit_edge, %if.then35.if.end38_crit_edge
  %38 = ptrtoint ptr %bufcnt.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %bufcnt.i, align 4
  %39 = ptrtoint ptr %bufptr to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf.i, ptr %bufptr, align 4
  %sub43 = sub nuw nsw i32 7, %j.0158
  br label %for.inc

if.else46:                                        ; preds = %for.body20
  %shl47 = shl nuw nsw i32 504, %j.0158
  %and48 = and i32 %shl47, %or
  %shl49 = shl nuw nsw i32 248, %j.0158
  call void @__sanitizer_cov_trace_cmp4(i32 %and48, i32 %shl49)
  %cmp50 = icmp eq i32 %and48, %shl49
  br i1 %cmp50, label %if.then58, label %if.else46.for.inc_crit_edge, !prof !230

if.else46.for.inc_crit_edge:                      ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then58:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add i32 %numbits.2156, -1
  %shl59 = shl nsw i32 -256, %j.0158
  %and60 = and i32 %shl59, %bitbuf.2155
  %neg62 = xor i32 %shl59, -1
  %and63 = and i32 %bitbuf.2155, %neg62
  %shl64 = shl i32 %and63, 1
  %or65 = or i32 %shl64, %and60
  br label %for.inc

for.inc:                                          ; preds = %if.then58, %if.else46.for.inc_crit_edge, %if.end38, %if.else.for.inc_crit_edge, %if.then25.for.inc_crit_edge
  %bitbuf.3 = phi i32 [ %bitbuf.2155, %if.end38 ], [ %bitbuf.2155, %if.else.for.inc_crit_edge ], [ %or65, %if.then58 ], [ %bitbuf.2155, %if.else46.for.inc_crit_edge ], [ %bitbuf.2155, %if.then25.for.inc_crit_edge ]
  %numbits.3 = phi i32 [ %sub43, %if.end38 ], [ %numbits.2156, %if.else.for.inc_crit_edge ], [ %dec, %if.then58 ], [ %numbits.2156, %if.else46.for.inc_crit_edge ], [ %numbits.2156, %if.then25.for.inc_crit_edge ]
  %state.3 = phi i32 [ 1, %if.end38 ], [ %state.2157, %if.else.for.inc_crit_edge ], [ %state.2157, %if.then58 ], [ %state.2157, %if.else46.for.inc_crit_edge ], [ 0, %if.then25.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %j.0158, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %while.cond68.preheader, label %for.inc.for.body20_crit_edge

for.inc.for.body20_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20

while.body72:                                     ; preds = %if.end88.while.body72_crit_edge, %while.body72.preheader
  %40 = phi i32 [ %.pr, %while.body72.preheader ], [ %inc86, %if.end88.while.body72_crit_edge ]
  %numbits.4163 = phi i32 [ %numbits.3, %while.body72.preheader ], [ %sub87, %if.end88.while.body72_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 487, i32 %40)
  %cmp75 = icmp sgt i32 %40, 487
  br i1 %cmp75, label %while.body72.for.inc89_crit_edge, label %if.end88

while.body72.for.inc89_crit_edge:                 ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc89

if.end88:                                         ; preds = %while.body72
  %sub79 = sub i32 16, %numbits.4163
  %shr80 = lshr i32 %bitbuf.3, %sub79
  %conv81 = trunc i32 %shr80 to i8
  %41 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bufptr, align 4
  %incdec.ptr = getelementptr i8, ptr %42, i32 1
  store ptr %incdec.ptr, ptr %bufptr, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv81, ptr %42, align 1
  %44 = ptrtoint ptr %bufcnt.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bufcnt.i, align 4
  %inc86 = add i32 %45, 1
  store i32 %inc86, ptr %bufcnt.i, align 4
  %sub87 = add i32 %numbits.4163, -8
  %cmp70 = icmp ugt i32 %sub87, 7
  br i1 %cmp70, label %if.end88.while.body72_crit_edge, label %if.end88.for.inc89_crit_edge

if.end88.for.inc89_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc89

if.end88.while.body72_crit_edge:                  ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body72

for.inc89:                                        ; preds = %if.end88.for.inc89_crit_edge, %while.body72.for.inc89_crit_edge, %while.cond68.preheader.for.inc89_crit_edge
  %numbits.4.lcssa = phi i32 [ %numbits.3, %while.cond68.preheader.for.inc89_crit_edge ], [ %numbits.4163, %while.body72.for.inc89_crit_edge ], [ %sub87, %if.end88.for.inc89_crit_edge ]
  %state.4.lcssa = phi i32 [ %state.3, %while.cond68.preheader.for.inc89_crit_edge ], [ 0, %while.body72.for.inc89_crit_edge ], [ %state.3, %if.end88.for.inc89_crit_edge ]
  %incdec.ptr91 = getelementptr i8, ptr %cp.0171, i32 1
  %exitcond194.not = icmp eq ptr %cp.0171, %uglygep193
  br i1 %exitcond194.not, label %for.inc89.while.cond.loopexit_crit_edge, label %for.inc89.for.body_crit_edge

for.inc89.for.body_crit_edge:                     ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc89.while.cond.loopexit_crit_edge:          ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.loopexit

while.end93:                                      ; preds = %while.body.while.end93_crit_edge, %while.cond.loopexit.while.end93_crit_edge, %entry.while.end93_crit_edge
  %bitbuf.0.lcssa = phi i32 [ %12, %entry.while.end93_crit_edge ], [ %bitbuf.0179, %while.body.while.end93_crit_edge ], [ %bitbuf.1.lcssa, %while.cond.loopexit.while.end93_crit_edge ]
  %bitstream.0.lcssa = phi i32 [ %10, %entry.while.end93_crit_edge ], [ %bitstream.0180, %while.body.while.end93_crit_edge ], [ %bitstream.1.lcssa, %while.cond.loopexit.while.end93_crit_edge ]
  %numbits.0.lcssa = phi i32 [ %6, %entry.while.end93_crit_edge ], [ %numbits.0181, %while.body.while.end93_crit_edge ], [ %numbits.1.lcssa, %while.cond.loopexit.while.end93_crit_edge ]
  %state.0.lcssa = phi i32 [ %8, %entry.while.end93_crit_edge ], [ %state.0182, %while.body.while.end93_crit_edge ], [ %state.1.lcssa, %while.cond.loopexit.while.end93_crit_edge ]
  %ret.0 = phi i32 [ 0, %entry.while.end93_crit_edge ], [ -1, %while.body.while.end93_crit_edge ], [ 0, %while.cond.loopexit.while.end93_crit_edge ]
  %46 = ptrtoint ptr %numbits1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %numbits.0.lcssa, ptr %numbits1, align 4
  %47 = ptrtoint ptr %state3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %state.0.lcssa, ptr %state3, align 4
  %48 = ptrtoint ptr %bitstream5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %bitstream.0.lcssa, ptr %bitstream5, align 4
  %49 = ptrtoint ptr %hdlcrx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %bitbuf.0.lcssa, ptr %hdlcrx, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @encode_hdlc(ptr noundef %bc) unnamed_addr #7 align 64 {
entry:
  %crcarr = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crcarr) #10
  %0 = getelementptr inbounds [2 x i8], ptr %crcarr, i32 0, i32 1
  %bufcnt = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 11, i32 5
  %1 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bufcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %skb1 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 13
  %3 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb1, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %skb1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %skb1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %sub = add i32 %7, -1
  %buf = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 11, i32 6
  %data = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 1
  %call.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %add.ptr, i32 noundef %sub) #10
  %10 = xor i16 %call.i, -1
  %conv = trunc i16 %10 to i8
  %11 = ptrtoint ptr %crcarr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %crcarr, align 1
  %12 = lshr i16 %10, 8
  %conv6 = trunc i16 %12 to i8
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6, ptr %0, align 1
  %incdec.ptr = getelementptr %struct.baycom_state, ptr %bc, i32 0, i32 11, i32 6, i32 1
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 126, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %7)
  %cmp8145 = icmp ult i32 %7, -2147483647
  br i1 %cmp8145, label %if.end3.while.body_crit_edge, label %if.end3.while.end53_crit_edge

if.end3.while.end53_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end53

if.end3.while.body_crit_edge:                     ; preds = %if.end3
  br label %while.body

while.cond.loopexit:                              ; preds = %while.body48
  %cmp8 = icmp sgt i32 %pkt_len.0148, -1
  br i1 %cmp8, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.while.end53_crit_edge

while.cond.loopexit.while.end53_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end53

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %if.end3.while.body_crit_edge
  %numbit.0151 = phi i32 [ %sub52, %while.cond.loopexit.while.body_crit_edge ], [ 0, %if.end3.while.body_crit_edge ]
  %bitbuf.0150 = phi i32 [ %shr51, %while.cond.loopexit.while.body_crit_edge ], [ 0, %if.end3.while.body_crit_edge ]
  %bitstream.0149 = phi i32 [ %bitstream.2.7, %while.cond.loopexit.while.body_crit_edge ], [ 0, %if.end3.while.body_crit_edge ]
  %pkt_len.0148 = phi i32 [ %dec, %while.cond.loopexit.while.body_crit_edge ], [ %sub, %if.end3.while.body_crit_edge ]
  %bp.0147 = phi ptr [ %spec.select, %while.cond.loopexit.while.body_crit_edge ], [ %add.ptr, %if.end3.while.body_crit_edge ]
  %wp.0146 = phi ptr [ %incdec.ptr50, %while.cond.loopexit.while.body_crit_edge ], [ %incdec.ptr, %if.end3.while.body_crit_edge ]
  %shr10 = lshr i32 %bitstream.0149, 8
  %15 = ptrtoint ptr %bp.0147 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bp.0147, align 1
  %conv11 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %or = or i32 %shl, %shr10
  %shl13 = shl nuw nsw i32 %conv11, %numbit.0151
  %or14 = or i32 %shl13, %bitbuf.0150
  %neg = xor i32 %or, -1
  %dec = add nsw i32 %pkt_len.0148, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool16.not = icmp eq i32 %dec, 0
  %and = and i32 %neg, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.then27, label %while.body.for.inc_crit_edge, !prof !230

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then27:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %and30 = and i32 %or, 16776959
  %shl32 = shl nuw nsw i32 2, %numbit.0151
  %sub33 = add nsw i32 %shl32, -1
  %and34 = and i32 %sub33, %or14
  %neg38 = sub nsw i32 0, %shl32
  %and39 = and i32 %or14, %neg38
  %shl40 = shl i32 %and39, 1
  %or41 = or i32 %and34, %shl40
  %inc = add nuw nsw i32 %numbit.0151, 1
  %neg42 = xor i32 %and30, -1
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %while.body.for.inc_crit_edge
  %bitstream.2 = phi i32 [ %and30, %if.then27 ], [ %or, %while.body.for.inc_crit_edge ]
  %notbitstream.1 = phi i32 [ %neg42, %if.then27 ], [ %neg, %while.body.for.inc_crit_edge ]
  %bitbuf.2 = phi i32 [ %or41, %if.then27 ], [ %or14, %while.body.for.inc_crit_edge ]
  %numbit.2 = phi i32 [ %inc, %if.then27 ], [ %numbit.0151, %while.body.for.inc_crit_edge ]
  %and.1 = and i32 %notbitstream.1, 992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool23.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool23.not.1, label %if.then27.1, label %for.inc.for.inc.1_crit_edge, !prof !230

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then27.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %and30.1 = and i32 %bitstream.2, -513
  %shl32.1 = shl nuw nsw i32 4, %numbit.2
  %sub33.1 = add nsw i32 %shl32.1, -1
  %and34.1 = and i32 %sub33.1, %bitbuf.2
  %neg38.1 = sub nsw i32 0, %shl32.1
  %and39.1 = and i32 %bitbuf.2, %neg38.1
  %shl40.1 = shl i32 %and39.1, 1
  %or41.1 = or i32 %and34.1, %shl40.1
  %inc.1 = add nuw nsw i32 %numbit.2, 1
  %neg42.1 = xor i32 %and30.1, -1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then27.1, %for.inc.for.inc.1_crit_edge
  %bitstream.2.1 = phi i32 [ %and30.1, %if.then27.1 ], [ %bitstream.2, %for.inc.for.inc.1_crit_edge ]
  %notbitstream.1.1 = phi i32 [ %neg42.1, %if.then27.1 ], [ %notbitstream.1, %for.inc.for.inc.1_crit_edge ]
  %bitbuf.2.1 = phi i32 [ %or41.1, %if.then27.1 ], [ %bitbuf.2, %for.inc.for.inc.1_crit_edge ]
  %numbit.2.1 = phi i32 [ %inc.1, %if.then27.1 ], [ %numbit.2, %for.inc.for.inc.1_crit_edge ]
  %and.2 = and i32 %notbitstream.1.1, 1984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool23.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool23.not.2, label %if.then27.2, label %for.inc.1.for.inc.2_crit_edge, !prof !230

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then27.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %and30.2 = and i32 %bitstream.2.1, -1025
  %shl32.2 = shl nuw nsw i32 8, %numbit.2.1
  %sub33.2 = add nsw i32 %shl32.2, -1
  %and34.2 = and i32 %sub33.2, %bitbuf.2.1
  %neg38.2 = sub nsw i32 0, %shl32.2
  %and39.2 = and i32 %bitbuf.2.1, %neg38.2
  %shl40.2 = shl i32 %and39.2, 1
  %or41.2 = or i32 %and34.2, %shl40.2
  %inc.2 = add nuw nsw i32 %numbit.2.1, 1
  %neg42.2 = xor i32 %and30.2, -1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then27.2, %for.inc.1.for.inc.2_crit_edge
  %bitstream.2.2 = phi i32 [ %and30.2, %if.then27.2 ], [ %bitstream.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %notbitstream.1.2 = phi i32 [ %neg42.2, %if.then27.2 ], [ %notbitstream.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %bitbuf.2.2 = phi i32 [ %or41.2, %if.then27.2 ], [ %bitbuf.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %numbit.2.2 = phi i32 [ %inc.2, %if.then27.2 ], [ %numbit.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %and.3 = and i32 %notbitstream.1.2, 3968
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool23.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool23.not.3, label %if.then27.3, label %for.inc.2.for.inc.3_crit_edge, !prof !230

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then27.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %and30.3 = and i32 %bitstream.2.2, -2049
  %shl32.3 = shl nuw nsw i32 16, %numbit.2.2
  %sub33.3 = add nsw i32 %shl32.3, -1
  %and34.3 = and i32 %sub33.3, %bitbuf.2.2
  %neg38.3 = sub nsw i32 0, %shl32.3
  %and39.3 = and i32 %bitbuf.2.2, %neg38.3
  %shl40.3 = shl i32 %and39.3, 1
  %or41.3 = or i32 %and34.3, %shl40.3
  %inc.3 = add nuw nsw i32 %numbit.2.2, 1
  %neg42.3 = xor i32 %and30.3, -1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then27.3, %for.inc.2.for.inc.3_crit_edge
  %bitstream.2.3 = phi i32 [ %and30.3, %if.then27.3 ], [ %bitstream.2.2, %for.inc.2.for.inc.3_crit_edge ]
  %notbitstream.1.3 = phi i32 [ %neg42.3, %if.then27.3 ], [ %notbitstream.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %bitbuf.2.3 = phi i32 [ %or41.3, %if.then27.3 ], [ %bitbuf.2.2, %for.inc.2.for.inc.3_crit_edge ]
  %numbit.2.3 = phi i32 [ %inc.3, %if.then27.3 ], [ %numbit.2.2, %for.inc.2.for.inc.3_crit_edge ]
  %and.4 = and i32 %notbitstream.1.3, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool23.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool23.not.4, label %if.then27.4, label %for.inc.3.for.inc.4_crit_edge, !prof !230

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then27.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %and30.4 = and i32 %bitstream.2.3, -4097
  %shl32.4 = shl nuw nsw i32 32, %numbit.2.3
  %sub33.4 = add nsw i32 %shl32.4, -1
  %and34.4 = and i32 %sub33.4, %bitbuf.2.3
  %neg38.4 = sub nsw i32 0, %shl32.4
  %and39.4 = and i32 %bitbuf.2.3, %neg38.4
  %shl40.4 = shl i32 %and39.4, 1
  %or41.4 = or i32 %and34.4, %shl40.4
  %inc.4 = add nuw nsw i32 %numbit.2.3, 1
  %neg42.4 = xor i32 %and30.4, -1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then27.4, %for.inc.3.for.inc.4_crit_edge
  %bitstream.2.4 = phi i32 [ %and30.4, %if.then27.4 ], [ %bitstream.2.3, %for.inc.3.for.inc.4_crit_edge ]
  %notbitstream.1.4 = phi i32 [ %neg42.4, %if.then27.4 ], [ %notbitstream.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %bitbuf.2.4 = phi i32 [ %or41.4, %if.then27.4 ], [ %bitbuf.2.3, %for.inc.3.for.inc.4_crit_edge ]
  %numbit.2.4 = phi i32 [ %inc.4, %if.then27.4 ], [ %numbit.2.3, %for.inc.3.for.inc.4_crit_edge ]
  %and.5 = and i32 %notbitstream.1.4, 15872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool23.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool23.not.5, label %if.then27.5, label %for.inc.4.for.inc.5_crit_edge, !prof !230

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then27.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  %and30.5 = and i32 %bitstream.2.4, -8193
  %shl32.5 = shl nuw nsw i32 64, %numbit.2.4
  %sub33.5 = add nsw i32 %shl32.5, -1
  %and34.5 = and i32 %sub33.5, %bitbuf.2.4
  %neg38.5 = sub nsw i32 0, %shl32.5
  %and39.5 = and i32 %bitbuf.2.4, %neg38.5
  %shl40.5 = shl i32 %and39.5, 1
  %or41.5 = or i32 %and34.5, %shl40.5
  %inc.5 = add nuw nsw i32 %numbit.2.4, 1
  %neg42.5 = xor i32 %and30.5, -1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then27.5, %for.inc.4.for.inc.5_crit_edge
  %bitstream.2.5 = phi i32 [ %and30.5, %if.then27.5 ], [ %bitstream.2.4, %for.inc.4.for.inc.5_crit_edge ]
  %notbitstream.1.5 = phi i32 [ %neg42.5, %if.then27.5 ], [ %notbitstream.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %bitbuf.2.5 = phi i32 [ %or41.5, %if.then27.5 ], [ %bitbuf.2.4, %for.inc.4.for.inc.5_crit_edge ]
  %numbit.2.5 = phi i32 [ %inc.5, %if.then27.5 ], [ %numbit.2.4, %for.inc.4.for.inc.5_crit_edge ]
  %and.6 = and i32 %notbitstream.1.5, 31744
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool23.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool23.not.6, label %if.then27.6, label %for.inc.5.for.inc.6_crit_edge, !prof !230

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then27.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  %and30.6 = and i32 %bitstream.2.5, -16385
  %shl32.6 = shl nuw nsw i32 128, %numbit.2.5
  %sub33.6 = add nsw i32 %shl32.6, -1
  %and34.6 = and i32 %sub33.6, %bitbuf.2.5
  %neg38.6 = sub nsw i32 0, %shl32.6
  %and39.6 = and i32 %bitbuf.2.5, %neg38.6
  %shl40.6 = shl i32 %and39.6, 1
  %or41.6 = or i32 %and34.6, %shl40.6
  %inc.6 = add nuw nsw i32 %numbit.2.5, 1
  %neg42.6 = xor i32 %and30.6, -1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then27.6, %for.inc.5.for.inc.6_crit_edge
  %bitstream.2.6 = phi i32 [ %and30.6, %if.then27.6 ], [ %bitstream.2.5, %for.inc.5.for.inc.6_crit_edge ]
  %notbitstream.1.6 = phi i32 [ %neg42.6, %if.then27.6 ], [ %notbitstream.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %bitbuf.2.6 = phi i32 [ %or41.6, %if.then27.6 ], [ %bitbuf.2.5, %for.inc.5.for.inc.6_crit_edge ]
  %numbit.2.6 = phi i32 [ %inc.6, %if.then27.6 ], [ %numbit.2.5, %for.inc.5.for.inc.6_crit_edge ]
  %and.7 = and i32 %notbitstream.1.6, 63488
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool23.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool23.not.7, label %if.then27.7, label %for.inc.6.while.body48.preheader_crit_edge, !prof !230

for.inc.6.while.body48.preheader_crit_edge:       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body48.preheader

if.then27.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  %and30.7 = and i32 %bitstream.2.6, -32769
  %shl32.7 = shl nuw nsw i32 256, %numbit.2.6
  %sub33.7 = add nsw i32 %shl32.7, -1
  %and34.7 = and i32 %sub33.7, %bitbuf.2.6
  %neg38.7 = sub nsw i32 0, %shl32.7
  %and39.7 = and i32 %bitbuf.2.6, %neg38.7
  %shl40.7 = shl i32 %and39.7, 1
  %or41.7 = or i32 %and34.7, %shl40.7
  %inc.7 = add nuw nsw i32 %numbit.2.6, 1
  br label %while.body48.preheader

while.body48.preheader:                           ; preds = %if.then27.7, %for.inc.6.while.body48.preheader_crit_edge
  %bitstream.2.7 = phi i32 [ %and30.7, %if.then27.7 ], [ %bitstream.2.6, %for.inc.6.while.body48.preheader_crit_edge ]
  %bitbuf.2.7 = phi i32 [ %or41.7, %if.then27.7 ], [ %bitbuf.2.6, %for.inc.6.while.body48.preheader_crit_edge ]
  %numbit.2.7 = phi i32 [ %inc.7, %if.then27.7 ], [ %numbit.2.6, %for.inc.6.while.body48.preheader_crit_edge ]
  %incdec.ptr15 = getelementptr i8, ptr %bp.0147, i32 1
  %spec.select = select i1 %tobool16.not, ptr %crcarr, ptr %incdec.ptr15
  %add = add nuw nsw i32 %numbit.2.7, 8
  br label %while.body48

while.body48:                                     ; preds = %while.body48.while.body48_crit_edge, %while.body48.preheader
  %numbit.3142 = phi i32 [ %sub52, %while.body48.while.body48_crit_edge ], [ %add, %while.body48.preheader ]
  %bitbuf.3141 = phi i32 [ %shr51, %while.body48.while.body48_crit_edge ], [ %bitbuf.2.7, %while.body48.preheader ]
  %wp.1140 = phi ptr [ %incdec.ptr50, %while.body48.while.body48_crit_edge ], [ %wp.0146, %while.body48.preheader ]
  %conv49 = trunc i32 %bitbuf.3141 to i8
  %incdec.ptr50 = getelementptr i8, ptr %wp.1140, i32 1
  %17 = ptrtoint ptr %wp.1140 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv49, ptr %wp.1140, align 1
  %shr51 = lshr i32 %bitbuf.3141, 8
  %sub52 = add i32 %numbit.3142, -8
  %cmp46 = icmp ugt i32 %sub52, 7
  br i1 %cmp46, label %while.body48.while.body48_crit_edge, label %while.cond.loopexit

while.body48.while.body48_crit_edge:              ; preds = %while.body48
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body48

while.end53:                                      ; preds = %while.cond.loopexit.while.end53_crit_edge, %if.end3.while.end53_crit_edge
  %wp.0.lcssa = phi ptr [ %incdec.ptr, %if.end3.while.end53_crit_edge ], [ %incdec.ptr50, %while.cond.loopexit.while.end53_crit_edge ]
  %bitbuf.0.lcssa = phi i32 [ 0, %if.end3.while.end53_crit_edge ], [ %shr51, %while.cond.loopexit.while.end53_crit_edge ]
  %numbit.0.lcssa = phi i32 [ 0, %if.end3.while.end53_crit_edge ], [ %sub52, %while.cond.loopexit.while.end53_crit_edge ]
  %shl54 = shl nuw nsw i32 32382, %numbit.0.lcssa
  %or55 = or i32 %shl54, %bitbuf.0.lcssa
  %add56 = add nuw nsw i32 %numbit.0.lcssa, 16
  br label %while.body60

while.body60:                                     ; preds = %while.body60.while.body60_crit_edge, %while.end53
  %numbit.4157 = phi i32 [ %add56, %while.end53 ], [ %sub64, %while.body60.while.body60_crit_edge ]
  %bitbuf.4156 = phi i32 [ %or55, %while.end53 ], [ %shr63, %while.body60.while.body60_crit_edge ]
  %wp.2155 = phi ptr [ %wp.0.lcssa, %while.end53 ], [ %incdec.ptr62, %while.body60.while.body60_crit_edge ]
  %conv61 = trunc i32 %bitbuf.4156 to i8
  %incdec.ptr62 = getelementptr i8, ptr %wp.2155, i32 1
  %18 = ptrtoint ptr %wp.2155 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv61, ptr %wp.2155, align 1
  %shr63 = lshr i32 %bitbuf.4156, 8
  %sub64 = add i32 %numbit.4157, -8
  %cmp58 = icmp ugt i32 %sub64, 7
  br i1 %cmp58, label %while.body60.while.body60_crit_edge, label %while.end65

while.body60.while.body60_crit_edge:              ; preds = %while.body60
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body60

while.end65:                                      ; preds = %while.body60
  call void @__sanitizer_cov_trace_pc() #12
  %bufptr = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 11, i32 4
  %19 = ptrtoint ptr %bufptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf, ptr %bufptr, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr62 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %20 = ptrtoint ptr %bufcnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.ptr.sub, ptr %bufcnt, align 4
  tail call void @consume_skb(ptr noundef nonnull %4) #10
  %dev = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 2
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 36, i32 1
  %23 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_packets, align 4
  %inc75 = add i32 %24, 1
  store i32 %inc75, ptr %tx_packets, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end65, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crcarr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_ip_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_options(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !27, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !45, !47, !49, !50, !51, !53, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !145, !147, !149, !151, !153, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !183, !185, !187, !189, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !213}
!llvm.named.register.sp = !{!215}
!llvm.module.flags = !{!216, !217, !218, !219, !220, !221, !222, !223}
!llvm.ident = !{!224}

!0 = !{ptr @__param_mode, !1, !"__param_mode", i1 false, i1 false}
!1 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1177, i32 1}
!2 = !{ptr @__UNIQUE_ID_modetype465, !1, !"__UNIQUE_ID_modetype465", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_mode466, !4, !"__UNIQUE_ID_mode466", i1 false, i1 false}
!4 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1178, i32 1}
!5 = !{ptr @__param_iobase, !6, !"__param_iobase", i1 false, i1 false}
!6 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1179, i32 1}
!7 = !{ptr @__UNIQUE_ID_iobasetype467, !6, !"__UNIQUE_ID_iobasetype467", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_iobase468, !9, !"__UNIQUE_ID_iobase468", i1 false, i1 false}
!9 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1180, i32 1}
!10 = !{ptr @__UNIQUE_ID_author469, !11, !"__UNIQUE_ID_author469", i1 false, i1 false}
!11 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1182, i32 1}
!12 = !{ptr @__UNIQUE_ID_description470, !13, !"__UNIQUE_ID_description470", i1 false, i1 false}
!13 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1183, i32 1}
!14 = !{ptr @__UNIQUE_ID_file471, !15, !"__UNIQUE_ID_file471", i1 false, i1 false}
!15 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1184, i32 1}
!16 = !{ptr @__UNIQUE_ID_license472, !15, !"__UNIQUE_ID_license472", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1287, i32 5}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cleanup_baycomepp._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @cleanup_baycomepp._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__initcall__kmod_baycom_epp__473_1293_init_baycomepp6, !24, !"__initcall__kmod_baycom_epp__473_1293_init_baycomepp6", i1 false, i1 false}
!24 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1293, i32 1}
!25 = !{ptr @__exitcall_cleanup_baycomepp, !26, !"__exitcall_cleanup_baycomepp", i1 false, i1 false}
!26 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1294, i32 1}
!27 = !{ptr @__setup_baycom_epp_setup, !28, !"__setup_baycom_epp_setup", i1 false, i1 false}
!28 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1321, i32 1}
!29 = !{ptr @baycom_device, !30, !"baycom_device", i1 false, i1 false}
!30 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 63, i32 27}
!31 = !{ptr @__param_str_mode, !1, !"__param_str_mode", i1 false, i1 false}
!32 = !{ptr @__param_arr_mode, !1, !"__param_arr_mode", i1 false, i1 false}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1174, i32 33}
!35 = !{ptr @mode, !36, !"mode", i1 false, i1 false}
!36 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1174, i32 14}
!37 = !{ptr @__param_str_iobase, !6, !"__param_str_iobase", i1 false, i1 false}
!38 = !{ptr @__param_arr_iobase, !6, !"__param_arr_iobase", i1 false, i1 false}
!39 = !{ptr @iobase, !40, !"iobase", i1 false, i1 false}
!40 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1175, i32 12}
!41 = !{ptr @paranoia_str, !42, !"paranoia_str", i1 false, i1 false}
!42 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 52, i32 19}
!43 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1200, i32 10}
!45 = !{ptr @baycom_epp_par_driver, !46, !"baycom_epp_par_driver", i1 false, i1 false}
!46 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1199, i32 30}
!47 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1227, i32 2}
!49 = !{ptr @init_baycomepp._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @init_baycomepp._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1229, i32 8}
!53 = !{ptr @.str.7, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1239, i32 9}
!55 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1243, i32 4}
!57 = !{ptr @init_baycomepp._entry.8, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @init_baycomepp._entry_ptr.10, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1256, i32 4}
!61 = !{ptr @init_baycomepp._entry.11, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @init_baycomepp._entry_ptr.13, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @bc_drvinfo, !64, !"bc_drvinfo", i1 false, i1 false}
!64 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 56, i32 19}
!65 = !{ptr @baycom_netdev_ops, !66, !"baycom_netdev_ops", i1 false, i1 false}
!66 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1115, i32 36}
!67 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 832, i32 17}
!69 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @epp_open._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @epp_open._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 843, i32 17}
!74 = !{ptr @epp_open._entry.16, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @epp_open._entry_ptr.18, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 858, i32 3}
!78 = !{ptr @epp_open._entry.19, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @epp_open._entry_ptr.21, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 866, i32 17}
!82 = !{ptr @epp_open._entry.22, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @epp_open._entry_ptr.24, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 870, i32 17}
!86 = !{ptr @epp_open._entry.25, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @epp_open._entry_ptr.27, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @epp_open.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 875, i32 2}
!90 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @epp_open.__key.29, !89, !"__key", i1 false, i1 false}
!92 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 879, i32 3}
!95 = !{ptr @epp_open._entry.31, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @epp_open._entry_ptr.33, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 921, i32 2}
!99 = !{ptr @epp_open._entry.34, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @epp_open._entry_ptr.36, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 941, i32 2}
!103 = !{ptr @epp_open._entry.37, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @epp_open._entry_ptr.39, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 805, i32 9}
!107 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @epp_wakeup._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @epp_wakeup._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 807, i32 17}
!112 = !{ptr @epp_wakeup._entry.42, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @epp_wakeup._entry_ptr.44, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 753, i32 2}
!116 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @epp_bh._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @epp_bh._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 539, i32 3}
!121 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @do_rxpacket._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @do_rxpacket._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 298, i32 3}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 299, i32 3}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 300, i32 3}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 304, i32 19}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 305, i32 20}
!134 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 305, i32 28}
!136 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 308, i32 22}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 309, i32 19}
!140 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 310, i32 2}
!142 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @eppconfig._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @eppconfig._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @eppconfig_path, !146, !"eppconfig_path", i1 false, i1 false}
!146 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 287, i32 19}
!147 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 289, i32 25}
!149 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 289, i32 35}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 289, i32 49}
!153 = !{ptr @envp, !154, !"envp", i1 false, i1 false}
!154 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 289, i32 14}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 966, i32 2}
!157 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @epp_close._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @epp_close._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.64, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 332, i32 3}
!162 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @do_kiss_params._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @do_kiss_params._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 336, i32 3}
!167 = !{ptr @do_kiss_params._entry.66, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @do_kiss_params._entry_ptr.68, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.70, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 340, i32 3}
!171 = !{ptr @do_kiss_params._entry.69, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @do_kiss_params._entry_ptr.71, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.73, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 344, i32 3}
!175 = !{ptr @do_kiss_params._entry.72, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @do_kiss_params._entry_ptr.74, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.76, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 348, i32 3}
!179 = !{ptr @do_kiss_params._entry.75, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @do_kiss_params._entry_ptr.77, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.80, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1087, i32 29}
!185 = distinct !{null, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1100, i32 29}
!187 = distinct !{null, !188, !"__already_done", i1 false, i1 false}
!188 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!189 = distinct !{null, !188, !"<string literal>", i1 false, i1 false}
!190 = distinct !{null, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!192 = !{ptr @.str.84, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!194 = !{ptr @bc_drvname, !195, !"bc_drvname", i1 false, i1 false}
!195 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 55, i32 19}
!196 = !{ptr @.str.85, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 977, i32 21}
!198 = !{ptr @.str.86, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 979, i32 21}
!200 = !{ptr @.str.87, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 981, i32 21}
!202 = !{ptr @.str.88, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 983, i32 21}
!204 = !{ptr @.str.89, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 985, i32 21}
!206 = !{ptr @.str.90, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 987, i32 21}
!208 = !{ptr @.str.91, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 989, i32 27}
!210 = !{ptr @.str.92, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 996, i32 27}
!212 = !{ptr @__setup_str_baycom_epp_setup, !28, !"__setup_str_baycom_epp_setup", i1 false, i1 false}
!213 = !{ptr @baycom_epp_setup.nr_dev, !214, !"nr_dev", i1 false, i1 false}
!214 = !{!"../drivers/net/hamradio/baycom_epp.c", i32 1307, i32 36}
!215 = !{!"sp"}
!216 = !{i32 1, !"wchar_size", i32 2}
!217 = !{i32 1, !"min_enum_size", i32 4}
!218 = !{i32 8, !"branch-target-enforcement", i32 0}
!219 = !{i32 8, !"sign-return-address", i32 0}
!220 = !{i32 8, !"sign-return-address-all", i32 0}
!221 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!222 = !{i32 7, !"uwtable", i32 1}
!223 = !{i32 7, !"frame-pointer", i32 2}
!224 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!225 = !{!"auto-init"}
!226 = !{!"branch_weights", i32 2000, i32 1}
!227 = !{i64 4934384}
!228 = !{i64 4934581}
!229 = !{i64 2152419814}
!230 = !{!"branch_weights", i32 1, i32 2000}
