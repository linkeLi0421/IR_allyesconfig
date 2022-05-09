; ModuleID = '/llk/IR_all_yes/drivers/net/hamradio/baycom_par.c_pt.bc'
source_filename = "../drivers/net/hamradio/baycom_par.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hdlcdrv_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.baycom_state = type { %struct.hdlcdrv_state, ptr, i32, %struct.modem_state, %struct.debug_vals }
%struct.hdlcdrv_state = type { i32, i32, ptr, %struct.anon.120, %struct.hdlcdrv_pttoutput, %struct.hdlcdrv_channel_params, %struct.hdlcdrv_hdlcrx, %struct.hdlcdrv_hdlctx, %struct.hdlcdrv_bitbuffer, %struct.hdlcdrv_bitbuffer, i32, ptr }
%struct.anon.120 = type { i32 }
%struct.hdlcdrv_pttoutput = type { i32, i32, i32, i32, i32 }
%struct.hdlcdrv_channel_params = type { i32, i32, i32, i32, i32 }
%struct.hdlcdrv_hdlcrx = type { %struct.hdlcdrv_hdlcbuffer, i32, i32, i32, i32, i32, i8, i32, ptr, [402 x i8] }
%struct.hdlcdrv_hdlcbuffer = type { %struct.spinlock, i32, i32, [32 x i16] }
%struct.hdlcdrv_hdlctx = type { %struct.hdlcdrv_hdlcbuffer, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, [402 x i8] }
%struct.hdlcdrv_bitbuffer = type { i32, i32, i32, [256 x i8] }
%struct.modem_state = type { i16, i8, i32, %struct.modem_state_par96 }
%struct.modem_state_par96 = type { i32, i32, i32, i32 }
%struct.debug_vals = type { i32, i32, i32, i32, i32 }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
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
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.baycom_ioctl = type { i32, %union.anon.121 }
%union.anon.121 = type { %struct.baycom_debug_data }
%struct.baycom_debug_data = type { i32, i32, i32 }
%struct.hdlcdrv_ioctl = type { i32, %union.anon.119 }
%union.anon.119 = type { %struct.hdlcdrv_params, [100 x i8] }
%struct.hdlcdrv_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_mode = internal constant [16 x i8] c"baycom_par.mode\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_mode = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_charp, ptr @mode }, align 4
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_mode } }, section "__param", align 4
@__UNIQUE_ID_modetype337 = internal constant [40 x i8] c"baycom_par.parmtype=mode:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode338 = internal constant [64 x i8] c"baycom_par.parm=mode:baycom operating mode; eg. par96 or picpar\00", section ".modinfo", align 1
@__param_str_iobase = internal constant [18 x i8] c"baycom_par.iobase\00", align 1
@__param_arr_iobase = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @iobase }, align 4
@__param_iobase = internal constant %struct.kernel_param { ptr @__param_str_iobase, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 2, %union.anon.97 { ptr @__param_arr_iobase } }, section "__param", align 4
@__UNIQUE_ID_iobasetype339 = internal constant [40 x i8] c"baycom_par.parmtype=iobase:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_iobase340 = internal constant [46 x i8] c"baycom_par.parm=iobase:baycom io base address\00", section ".modinfo", align 1
@__UNIQUE_ID_author341 = internal constant [78 x i8] c"baycom_par.author=Thomas M. Sailer, sailer@ife.ee.ethz.ch, hb9jnx@hb9w.che.eu\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [74 x i8] c"baycom_par.description=Baycom par96 and picpar amateur radio modem driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [48 x i8] c"baycom_par.file=drivers/net/hamradio/baycom_par\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [23 x i8] c"baycom_par.license=GPL\00", section ".modinfo", align 1
@baycom_device = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@baycom_par_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str.1, ptr null, ptr null, ptr null, ptr @baycom_par_probe, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_baycom_par__345_568_init_baycompar6 = internal global ptr @init_baycompar, section ".initcall6.init", align 4
@__exitcall_cleanup_baycompar = internal global ptr @cleanup_baycompar, section ".exitcall.exit", align 4
@__setup_str_baycom_par_setup = internal constant [12 x i8] c"baycom_par=\00", section ".init.rodata", align 1
@__setup_baycom_par_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_baycom_par_setup, ptr @baycom_par_setup, i32 0 }, section ".init.setup", align 4
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str, ptr null, ptr null, ptr null], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"picpar\00", [25 x i8] zeroinitializer }, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@iobase = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 888, i32 0, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bcp\00", [28 x i8] zeroinitializer }, align 32
@init_baycompar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.2, ptr @.str.3, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_baycompar\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/hamradio/baycom_par.c\00", [62 x i8] zeroinitializer }, align 32
@init_baycompar._entry_ptr = internal global ptr @init_baycompar._entry, section ".printk_index", align 4
@bc_drvinfo = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016baycom_par: (C) 1996-2000 Thomas Sailer, HB9JNX/AE4WA\0Abaycom_par: version 0.9\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"baycom_par\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bcp%d\00", [26 x i8] zeroinitializer }, align 32
@par96_ops = internal constant { %struct.hdlcdrv_ops, [44 x i8] } { %struct.hdlcdrv_ops { ptr @bc_drvname, ptr @bc_drvinfo, ptr @par96_open, ptr @par96_close, ptr @baycom_ioctl }, [44 x i8] zeroinitializer }, align 32
@bc_drvname = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"baycom_par\00", [21 x i8] zeroinitializer }, align 32
@par96_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013baycom_par: parport at 0x%lx unknown\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"par96_open\00", [21 x i8] zeroinitializer }, align 32
@par96_open._entry_ptr = internal global ptr @par96_open._entry, section ".printk_index", align 4
@par96_open._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013baycom_par: parport at 0x%lx has no irq\0A\00", [53 x i8] zeroinitializer }, align 32
@par96_open._entry_ptr.10 = internal global ptr @par96_open._entry.8, section ".printk_index", align 4
@par96_open._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013baycom_par: parport at 0x%lx cannot be used\0A\00", [49 x i8] zeroinitializer }, align 32
@par96_open._entry_ptr.13 = internal global ptr @par96_open._entry.11, section ".printk_index", align 4
@par96_open._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.3, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: no device found\0A\00", [41 x i8] zeroinitializer }, align 32
@par96_open._entry_ptr.16 = internal global ptr @par96_open._entry.14, section ".printk_index", align 4
@par96_open._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.3, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013baycom_par: cannot register parport at 0x%lx\0A\00", [48 x i8] zeroinitializer }, align 32
@par96_open._entry_ptr.19 = internal global ptr @par96_open._entry.17, section ".printk_index", align 4
@par96_open._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.3, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013baycom_par: parport at 0x%lx busy\0A\00", [59 x i8] zeroinitializer }, align 32
@par96_open._entry_ptr.22 = internal global ptr @par96_open._entry.20, section ".printk_index", align 4
@par96_open._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.3, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: par96 at iobase 0x%lx irq %u options 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@par96_open._entry_ptr.25 = internal global ptr @par96_open._entry.23, section ".printk_index", align 4
@par96_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017baycom_par: %s: why am I being woken up?\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"par96_wakeup\00", [19 x i8] zeroinitializer }, align 32
@par96_wakeup._entry_ptr = internal global ptr @par96_wakeup._entry, section ".printk_index", align 4
@par96_wakeup._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017baycom_par: %s: I'm broken.\0A\00", [33 x i8] zeroinitializer }, align 32
@par96_wakeup._entry_ptr.30 = internal global ptr @par96_wakeup._entry.28, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@par96_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: close par96 at iobase 0x%lx irq %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"par96_close\00", [20 x i8] zeroinitializer }, align 32
@par96_close._entry_ptr = internal global ptr @par96_close._entry, section ".printk_index", align 4
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"par96\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"par96,picpar\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@baycom_par_setup.nr_dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 40, i64 41, i64 42]
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"baycom_device\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 94, i32 27 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"baycom_par_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 503, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 478, i32 14 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 478, i32 33 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"iobase\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 479, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 504, i32 10 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 514, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"bc_drvinfo\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 87, i32 19 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 516, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 528, i32 19 }
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"par96_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 388, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"bc_drvname\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 86, i32 19 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 306, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 310, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 315, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 331, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 338, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 342, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 352, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 288, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 290, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 373, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 430, i32 43 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 442, i32 29 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 174, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"nr_dev\00", align 1
@___asan_gen_.159 = private constant [37 x i8] c"../drivers/net/hamradio/baycom_par.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 582, i32 25 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_iobase340, ptr @__UNIQUE_ID_iobasetype339, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_mode338, ptr @__UNIQUE_ID_modetype337, ptr @__exitcall_cleanup_baycompar, ptr @__initcall__kmod_baycom_par__345_568_init_baycompar6, ptr @__param_iobase, ptr @__param_mode, ptr @__setup_baycom_par_setup, ptr @cleanup_baycompar, ptr @init_baycompar._entry, ptr @init_baycompar._entry_ptr, ptr @par96_close._entry, ptr @par96_close._entry_ptr, ptr @par96_open._entry, ptr @par96_open._entry.11, ptr @par96_open._entry.14, ptr @par96_open._entry.17, ptr @par96_open._entry.20, ptr @par96_open._entry.23, ptr @par96_open._entry.8, ptr @par96_open._entry_ptr, ptr @par96_open._entry_ptr.10, ptr @par96_open._entry_ptr.13, ptr @par96_open._entry_ptr.16, ptr @par96_open._entry_ptr.19, ptr @par96_open._entry_ptr.22, ptr @par96_open._entry_ptr.25, ptr @par96_wakeup._entry, ptr @par96_wakeup._entry.28, ptr @par96_wakeup._entry_ptr, ptr @par96_wakeup._entry_ptr.30, ptr @baycom_device, ptr @baycom_par_driver, ptr @mode, ptr @.str, ptr @iobase, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @bc_drvinfo, ptr @.str.4, ptr @.str.5, ptr @par96_ops, ptr @bc_drvname, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @baycom_par_setup.nr_dev], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baycom_device to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baycom_par_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iobase to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_baycompar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc_drvinfo to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par96_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc_drvname to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par96_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par96_open._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par96_open._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par96_open._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par96_open._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par96_open._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par96_open._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par96_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par96_wakeup._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par96_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baycom_par_setup.nr_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_baycompar() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @baycom_device, i32 0, i32 %i.04
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @hdlcdrv_unregister(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @parport_unregister_driver(ptr noundef nonnull @baycom_par_driver) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdlcdrv_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_baycompar() #0 section ".init.text" align 64 {
entry:
  %ifname = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @bc_drvinfo) #15
  %call1 = tail call i32 @__parport_register_driver(ptr noundef nonnull @baycom_par_driver, ptr noundef null, ptr noundef nonnull @.str.4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup32_crit_edge

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %set_hw.056 = phi i8 [ %spec.select, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %found.055 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ifname) #12
  %0 = call ptr @memset(ptr %ifname, i32 255, i32 16)
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %ifname, ptr noundef nonnull @.str.5, i32 noundef %found.055)
  %arrayidx = getelementptr [4 x ptr], ptr @mode, i32 0, i32 %found.055
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %2, null
  %spec.select = select i1 %tobool5.not, i8 0, i8 %set_hw.056
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select)
  %tobool8.not = icmp eq i8 %spec.select, 0
  br i1 %tobool8.not, label %if.then9, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx10 = getelementptr [4 x i32], ptr @iobase, i32 0, i32 %found.055
  %3 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.body.if.end11_crit_edge
  %arrayidx13 = getelementptr [4 x i32], ptr @iobase, i32 0, i32 %found.055
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx13, align 4
  %call14 = call ptr @hdlcdrv_register(ptr noundef nonnull @par96_ops, i32 noundef 1768, ptr noundef nonnull %ifname, i32 noundef %5, i32 noundef 0, i32 noundef 0) #12
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.end, label %if.end17

if.end17:                                         ; preds = %if.end11
  br i1 %tobool8.not, label %if.end17.for.inc_crit_edge, label %land.lhs.true

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %call14, i32 2304
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  call fastcc void @baycom_setmode(ptr noundef %add.ptr.i, ptr noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end17.for.inc_crit_edge
  %inc = add nuw nsw i32 %found.055, 1
  %arrayidx25 = getelementptr [4 x ptr], ptr @baycom_device, i32 0, i32 %found.055
  %8 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call14, ptr %arrayidx25, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ifname) #12
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup32_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup32_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32

for.end:                                          ; preds = %if.end11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ifname) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.055)
  %tobool29.not = icmp eq i32 %found.055, 0
  br i1 %tobool29.not, label %if.then30, label %for.end.cleanup32_crit_edge

for.end.cleanup32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @parport_unregister_driver(ptr noundef nonnull @baycom_par_driver) #12
  br label %cleanup32

cleanup32:                                        ; preds = %if.then30, %for.end.cleanup32_crit_edge, %for.inc.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.0 = phi i32 [ -6, %if.then30 ], [ %call1, %entry.cleanup32_crit_edge ], [ 0, %for.end.cleanup32_crit_edge ], [ 0, %for.inc.cleanup32_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @baycom_par_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  %ints = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ints) #12
  %0 = ptrtoint ptr %ints to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ints, align 4, !annotation !121
  %1 = getelementptr inbounds [2 x i32], ptr %ints, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !121
  %3 = load i32, ptr @baycom_par_setup.nr_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @get_options(ptr noundef %str, i32 noundef 2, ptr noundef nonnull %ints) #12
  %4 = ptrtoint ptr %ints to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ints, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp slt i32 %5, 1
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = load i32, ptr @baycom_par_setup.nr_dev, align 4
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
  store i32 %inc, ptr @baycom_par_setup.nr_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ints) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @baycom_par_probe(ptr nocapture noundef readonly %par_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.pardevice, ptr %par_dev, i32 0, i32 10, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @strlen(ptr noundef %3) #16
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
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hdlcdrv_register(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @baycom_setmode(ptr nocapture noundef writeonly %bc, ptr noundef readonly %modestr) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %modestr, ptr noundef nonnull dereferenceable(7) @.str, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.else

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %modestr, ptr noundef nonnull dereferenceable(6) @.str.33, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else.if.end10_crit_edge, label %if.else5

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call ptr @strchr(ptr noundef %modestr, i32 noundef 42)
  %tobool7 = icmp ne ptr %call6, null
  %lnot.ext = zext i1 %tobool7 to i32
  br label %if.end10

if.end10:                                         ; preds = %if.else5, %if.else.if.end10_crit_edge, %entry.if.end10_crit_edge
  %.sink = phi i32 [ %lnot.ext, %if.else5 ], [ 0, %entry.if.end10_crit_edge ], [ 1, %if.else.if.end10_crit_edge ]
  %options4 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 2
  %0 = ptrtoint ptr %options4 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %.sink, ptr %options4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @par96_open(ptr noundef %dev) #8 align 64 {
entry:
  %par_cb = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %par_cb) #12
  %0 = getelementptr inbounds %struct.pardev_cb, ptr %par_cb, i32 0, i32 1
  %1 = getelementptr inbounds %struct.pardev_cb, ptr %par_cb, i32 0, i32 2
  %2 = getelementptr inbounds %struct.pardev_cb, ptr %par_cb, i32 0, i32 3
  %3 = getelementptr inbounds %struct.pardev_cb, ptr %par_cb, i32 0, i32 4
  %tobool.not = icmp eq ptr %dev, null
  %tobool1.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr, align 32
  %call2 = tail call ptr @parport_find_base(i32 noundef %5) #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_addr, align 32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %7) #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.parport, ptr %call2, i32 0, i32 5
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call2, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %11) #15
  tail call void @parport_put_port(ptr noundef nonnull %call2) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %modes = getelementptr inbounds %struct.parport, ptr %call2, i32 0, i32 4
  %12 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %modes, align 8
  %neg = and i32 %13, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %neg)
  %tobool15.not = icmp eq i32 %neg, 65
  br i1 %tobool15.not, label %if.end23, label %do.end19

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call2, align 8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %15) #15
  tail call void @parport_put_port(ptr noundef nonnull %call2) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %modem = getelementptr i8, ptr %dev, i32 4028
  %16 = call ptr @memset(ptr %modem, i32 0, i32 24)
  %par = getelementptr i8, ptr %dev, i32 2316
  %17 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 9600, ptr %par, align 4
  %18 = ptrtoint ptr %par_cb to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %par_cb, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @par96_wakeup, ptr %0, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @par96_interrupt, ptr %2, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %1, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %3, align 4
  %23 = load ptr, ptr @baycom_device, align 4
  %cmp25 = icmp eq ptr %23, %dev
  br i1 %cmp25, label %if.end23.if.end35_crit_edge, label %for.inc

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

for.inc:                                          ; preds = %if.end23
  %24 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @baycom_device, i32 0, i32 1), align 4
  %cmp25.1 = icmp eq ptr %24, %dev
  br i1 %cmp25.1, label %for.inc.if.end35_crit_edge, label %for.inc.1

for.inc.if.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

for.inc.1:                                        ; preds = %for.inc
  %25 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @baycom_device, i32 0, i32 2), align 4
  %cmp25.2 = icmp eq ptr %25, %dev
  br i1 %cmp25.2, label %for.inc.1.if.end35_crit_edge, label %for.inc.2

for.inc.1.if.end35_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

for.inc.2:                                        ; preds = %for.inc.1
  %26 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @baycom_device, i32 0, i32 3), align 4
  %cmp25.3 = icmp eq ptr %26, %dev
  br i1 %cmp25.3, label %for.inc.2.if.end35_crit_edge, label %do.end32

for.inc.2.if.end35_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end32:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @bc_drvname) #15
  tail call void @parport_put_port(ptr noundef nonnull %call2) #12
  br label %cleanup

if.end35:                                         ; preds = %for.inc.2.if.end35_crit_edge, %for.inc.1.if.end35_crit_edge, %for.inc.if.end35_crit_edge, %if.end23.if.end35_crit_edge
  %i.0120.lcssa = phi i32 [ 0, %if.end23.if.end35_crit_edge ], [ 1, %for.inc.if.end35_crit_edge ], [ 2, %for.inc.1.if.end35_crit_edge ], [ 3, %for.inc.2.if.end35_crit_edge ]
  %call36 = call ptr @parport_register_dev_model(ptr noundef nonnull %call2, ptr noundef nonnull %dev, ptr noundef nonnull %par_cb, i32 noundef %i.0120.lcssa) #12
  %pdev = getelementptr i8, ptr %dev, i32 4020
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call36, ptr %pdev, align 4
  call void @parport_put_port(ptr noundef nonnull %call2) #12
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 4
  %tobool38.not = icmp eq ptr %29, null
  br i1 %tobool38.not, label %do.end42, label %if.end46

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base_addr, align 32
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %31) #15
  br label %cleanup

if.end46:                                         ; preds = %if.end35
  %call48 = call i32 @parport_claim(ptr noundef nonnull %29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end58, label %do.end53

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call2, align 8
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %33) #15
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 4
  call void @parport_unregister_device(ptr noundef %35) #12
  br label %cleanup

if.end58:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port, align 4
  %irq60 = getelementptr inbounds %struct.parport, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %irq60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq60, align 4
  %irq61 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %42 = ptrtoint ptr %irq61 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %irq61, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %39, i32 0, i32 24
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops, align 4
  %data_forward = getelementptr inbounds %struct.parport_operations, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %data_forward to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data_forward, align 4
  call void %46(ptr noundef %39) #12
  %47 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 9600, ptr %par, align 4
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  call void %51(ptr noundef %39, i8 noundef zeroext -6) #12
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops, align 4
  %enable_irq = getelementptr inbounds %struct.parport_operations, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %enable_irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %enable_irq, align 4
  call void %55(ptr noundef %39) #12
  %56 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %base_addr, align 32
  %58 = ptrtoint ptr %irq61 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq61, align 4
  %options = getelementptr i8, ptr %dev, i32 4024
  %60 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %options, align 4
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @bc_drvname, i32 noundef %57, i32 noundef %59, i32 noundef %61) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %do.end53, %do.end42, %do.end32, %do.end19, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end11 ], [ -6, %do.end19 ], [ -19, %do.end32 ], [ -16, %do.end53 ], [ 0, %if.end58 ], [ -6, %do.end42 ], [ -6, %do.end ], [ -6, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %par_cb) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @par96_close(ptr noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %dev, null
  %tobool1.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr i8, ptr %dev, i32 4020
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %disable_irq = getelementptr inbounds %struct.parport_operations, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %disable_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_irq, align 4
  tail call void %7(ptr noundef %3) #12
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void %11(ptr noundef %3, i8 noundef zeroext -6) #12
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  tail call void @parport_release(ptr noundef %13) #12
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  tail call void @parport_unregister_device(ptr noundef %15) #12
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %16 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_addr, align 32
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @bc_drvname, i32 noundef %17, i32 noundef %19) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @baycom_ioctl(ptr noundef %dev, ptr noundef %data, ptr noundef %hi, i32 noundef %cmd) #8 align 64 {
entry:
  %bi = alloca %struct.baycom_ioctl, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi) #12
  %0 = getelementptr inbounds %struct.baycom_ioctl, ptr %bi, i32 0, i32 1
  %1 = getelementptr inbounds %struct.baycom_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 1
  %2 = getelementptr inbounds %struct.baycom_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 2
  %tobool.not = icmp eq ptr %dev, null
  %3 = call ptr @memset(ptr %bi, i32 255, i32 16)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1522984824, i32 %5)
  %cmp.not = icmp eq i32 %5, 1522984824
  br i1 %cmp.not, label %do.end10, label %do.body4, !prof !122

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/hamradio/baycom_par.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 421, 0\0A.popsection", ""() #12, !srcloc !123
  unreachable

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 35312, i32 %cmd)
  %cmp11.not = icmp eq i32 %cmd, 35312
  br i1 %cmp11.not, label %if.end13, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  %6 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hi, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.then.i [
    i32 40, label %sw.bb
    i32 41, label %sw.bb22
    i32 42, label %sw.bb31
    i32 2, label %if.end13.cleanup_crit_edge
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  %data15 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %options = getelementptr i8, ptr %dev, i32 4024
  %9 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %options, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool16.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool16.not, ptr @.str, ptr @.str.33
  %call17 = tail call ptr @strcpy(ptr noundef %data15, ptr noundef nonnull %cond) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %sw.bb.cleanup_crit_edge, label %if.end.i.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 132, i32 -1226833920) #17, !srcloc !124
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hi, i32 noundef 132) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef %hi, i32 noundef 132) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool19.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool19.not, i32 0, i32 -14
  br label %cleanup

sw.bb22:                                          ; preds = %if.end13
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb22
  %call24 = tail call zeroext i1 @capable(i32 noundef 12) #12
  br i1 %call24, label %if.end26, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %data27 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %arrayidx = getelementptr %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 1, i32 99
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx, align 1
  tail call fastcc void @baycom_setmode(ptr noundef %add.ptr.i, ptr noundef %data27)
  br label %cleanup

sw.bb31:                                          ; preds = %if.end13
  %data32 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %15 = call ptr @memcpy(ptr %data32, ptr @.str.34, i32 13)
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #12
  %call.i.i81 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i81, label %sw.bb31.cleanup_crit_edge, label %if.end.i.i84

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i84:                                     ; preds = %sw.bb31
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 132, i32 -1226833920) #17, !srcloc !124
  %asmresult.i.i82 = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i82)
  %cmp.i6.i83 = icmp eq i32 %asmresult.i.i82, 0
  br i1 %cmp.i6.i83, label %copy_to_user.exit89, label %if.end.i.i84.cleanup_crit_edge

if.end.i.i84.cleanup_crit_edge:                   ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit89:                              ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i85 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hi, i32 noundef 132) #12
  %call.i12.i.i86 = tail call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef %hi, i32 noundef 132) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i86)
  %tobool36.not = icmp eq i32 %call.i12.i.i86, 0
  %spec.select118 = select i1 %tobool36.not, i32 0, i32 -14
  br label %cleanup

if.then.i:                                        ; preds = %if.end13
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 156) #12
  %call.i.i91 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i91, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 16, i32 -1226833920) #17
  %asmresult.i.i92 = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i92)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i92, 0
  br i1 %cmp.i1.i, label %if.end.i.i94, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !122

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i94:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i93 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bi, i32 noundef 16) #12
  %18 = call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !125
  %and.i.i.i.i = and i32 %20, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %bi, ptr noundef %data, i32 noundef 16) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #12, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end43, label %if.end.i.i94.if.then11.i.i_crit_edge, !prof !122

if.end.i.i94.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i94.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i94.if.then11.i.i_crit_edge ], [ 16, %if.then.i.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %bi, i32 %sub.i.i
  %21 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end43:                                         ; preds = %if.end.i.i94
  %22 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 146, i32 %23)
  %cond58 = icmp eq i32 %23, 146
  br i1 %cond58, label %if.end59.i.i99, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end59.i.i99:                                   ; preds = %if.end43
  %ptt_keyed = getelementptr i8, ptr %dev, i32 4012
  %24 = ptrtoint ptr %ptt_keyed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ptt_keyed, align 4
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %0, align 4
  %last_intcnt = getelementptr i8, ptr %dev, i32 4060
  %27 = ptrtoint ptr %last_intcnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_intcnt, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %1, align 4
  %last_pllcorr = getelementptr i8, ptr %dev, i32 4068
  %30 = ptrtoint ptr %last_pllcorr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_pllcorr, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %2, align 4
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #12
  %call.i.i100 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i100, label %if.end59.i.i99.cleanup_crit_edge, label %copy_to_user.exit109

if.end59.i.i99.cleanup_crit_edge:                 ; preds = %if.end59.i.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit109:                             ; preds = %if.end59.i.i99
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i105 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %bi, i32 noundef 16) #12
  %call.i12.i.i106 = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %bi, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i106)
  %tobool54.not = icmp eq i32 %call.i12.i.i106, 0
  %spec.select119 = select i1 %tobool54.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit109, %if.end59.i.i99.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then11.i.i, %copy_to_user.exit89, %if.end.i.i84.cleanup_crit_edge, %sw.bb31.cleanup_crit_edge, %if.end26, %lor.lhs.false.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -22, %entry.cleanup_crit_edge ], [ -515, %do.end10.cleanup_crit_edge ], [ -13, %lor.lhs.false.cleanup_crit_edge ], [ -13, %sw.bb22.cleanup_crit_edge ], [ 1, %if.end13.cleanup_crit_edge ], [ -515, %if.end43.cleanup_crit_edge ], [ -14, %sw.bb.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %sw.bb31.cleanup_crit_edge ], [ -14, %if.end.i.i84.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end59.i.i99.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ %spec.select118, %copy_to_user.exit89 ], [ %spec.select119, %copy_to_user.exit109 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_find_base(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_put_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @par96_wakeup(ptr noundef %handle) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %handle) #15
  %pdev = getelementptr i8, ptr %handle, i32 4020
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %call2 = tail call i32 @parport_claim(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end5, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %handle) #15
  br label %if.end

if.end:                                           ; preds = %do.end5, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @par96_interrupt(ptr noundef %dev_id) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %debug_vals.i = getelementptr i8, ptr %dev_id, i32 4052
  %cur_intcnt.i = getelementptr i8, ptr %dev_id, i32 4056
  %1 = ptrtoint ptr %cur_intcnt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cur_intcnt.i, align 4
  %inc.i = add i32 %2, 1
  store i32 %inc.i, ptr %cur_intcnt.i, align 4
  %3 = ptrtoint ptr %debug_vals.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_vals.i, align 4
  %add.neg.i = add i32 %0, -100
  %sub.i = sub i32 %add.neg.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %if.then.i, label %entry.baycom_int_freq.exit_crit_edge

entry.baycom_int_freq.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %baycom_int_freq.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %debug_vals.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %0, ptr %debug_vals.i, align 4
  %last_intcnt.i = getelementptr i8, ptr %dev_id, i32 4060
  %6 = ptrtoint ptr %last_intcnt.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc.i, ptr %last_intcnt.i, align 4
  %7 = ptrtoint ptr %cur_intcnt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cur_intcnt.i, align 4
  %cur_pllcorr.i = getelementptr i8, ptr %dev_id, i32 4064
  %8 = ptrtoint ptr %cur_pllcorr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_pllcorr.i, align 4
  %last_pllcorr.i = getelementptr i8, ptr %dev_id, i32 4068
  %10 = ptrtoint ptr %last_pllcorr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %last_pllcorr.i, align 4
  store i32 0, ptr %cur_pllcorr.i, align 4
  br label %baycom_int_freq.exit

baycom_int_freq.exit:                             ; preds = %if.then.i, %entry.baycom_int_freq.exit_crit_edge
  %ptt.i = getelementptr i8, ptr %dev_id, i32 3044
  %11 = ptrtoint ptr %ptt.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ptt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %hdlcdrv_ptt.exit, label %baycom_int_freq.exit.if.then_crit_edge

baycom_int_freq.exit.if.then_crit_edge:           ; preds = %baycom_int_freq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

hdlcdrv_ptt.exit:                                 ; preds = %baycom_int_freq.exit
  %calibrate.i = getelementptr i8, ptr %dev_id, i32 3048
  %13 = ptrtoint ptr %calibrate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %calibrate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i34 = icmp slt i32 %14, 1
  br i1 %cmp.i34, label %if.else, label %hdlcdrv_ptt.exit.if.then_crit_edge

hdlcdrv_ptt.exit.if.then_crit_edge:               ; preds = %hdlcdrv_ptt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %hdlcdrv_ptt.exit.if.then_crit_edge, %baycom_int_freq.exit.if.then_crit_edge
  %hdlctx.i.i = getelementptr i8, ptr %dev_id, i32 2912
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hdlctx.i.i) #12
  %rd.i.i.i = getelementptr i8, ptr %dev_id, i32 2956
  %15 = ptrtoint ptr %rd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rd.i.i.i, align 4
  %wr.i.i.i = getelementptr i8, ptr %dev_id, i32 2960
  %17 = ptrtoint ptr %wr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp5.i.not.i.i = icmp eq i32 %16, %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hdlctx.i.i, i32 noundef %call2.i.i.i) #12
  br i1 %cmp5.i.not.i.i, label %if.then.i.i, label %if.else6.i.i

if.then.i.i:                                      ; preds = %if.then
  %calibrate.i.i = getelementptr i8, ptr %dev_id, i32 3048
  %19 = ptrtoint ptr %calibrate.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %calibrate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i = icmp sgt i32 %20, 0
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dec.i.i = add nsw i32 %20, -1
  %21 = ptrtoint ptr %calibrate.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %dec.i.i, ptr %calibrate.i.i, align 4
  br label %hdlcdrv_getbits.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %ptt.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %ptt.i, align 4
  br label %hdlcdrv_getbits.exit.i

if.else6.i.i:                                     ; preds = %if.then
  %call2.i15.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hdlctx.i.i) #12
  %23 = ptrtoint ptr %rd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rd.i.i.i, align 4
  %25 = ptrtoint ptr %wr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp5.i18.i.i = icmp eq i32 %24, %26
  br i1 %cmp5.i18.i.i, label %if.else6.i.i.hdlcdrv_hbuf_get.exit.i.i_crit_edge, label %if.else.i.i.i

if.else6.i.i.hdlcdrv_hbuf_get.exit.i.i_crit_edge: ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hdlcdrv_hbuf_get.exit.i.i

if.else.i.i.i:                                    ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i.i.i = add i32 %24, 1
  %rem.i.i.i = and i32 %add.i.i.i, 31
  %arrayidx.i.i.i = getelementptr %struct.hdlcdrv_hdlcbuffer, ptr %hdlctx.i.i, i32 0, i32 3, i32 %24
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.i.i.i, align 2
  %29 = ptrtoint ptr %rd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %rem.i.i.i, ptr %rd.i.i.i, align 4
  %phi.cast.i.i = zext i16 %28 to i32
  br label %hdlcdrv_hbuf_get.exit.i.i

hdlcdrv_hbuf_get.exit.i.i:                        ; preds = %if.else.i.i.i, %if.else6.i.i.hdlcdrv_hbuf_get.exit.i.i_crit_edge
  %val.0.i.i.i = phi i32 [ %phi.cast.i.i, %if.else.i.i.i ], [ 0, %if.else6.i.i.hdlcdrv_hbuf_get.exit.i.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hdlctx.i.i, i32 noundef %call2.i15.i.i) #12
  br label %hdlcdrv_getbits.exit.i

hdlcdrv_getbits.exit.i:                           ; preds = %hdlcdrv_hbuf_get.exit.i.i, %if.else.i.i, %if.then2.i.i
  %ret.0.i.i = phi i32 [ %val.0.i.i.i, %hdlcdrv_hbuf_get.exit.i.i ], [ 0, %if.else.i.i ], [ 0, %if.then2.i.i ]
  %pdev.i = getelementptr i8, ptr %dev_id, i32 4020
  %30 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port.i, align 4
  %scram.i = getelementptr i8, ptr %dev_id, i32 4048
  %ops.i = getelementptr inbounds %struct.parport, ptr %33, i32 0, i32 24
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %hdlcdrv_getbits.exit.i
  %data.03.i = phi i32 [ %ret.0.i.i, %hdlcdrv_getbits.exit.i ], [ %shr.i, %for.body.i.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ 0, %hdlcdrv_getbits.exit.i ], [ %inc.i35, %for.body.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %scram.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scram.i, align 4
  %shl.i = shl i32 %35, 1
  %and.i = and i32 %35, 1
  %or.i = or i32 %shl.i, %and.i
  %and7.i = and i32 %data.03.i, 1
  %36 = xor i32 %or.i, %and7.i
  %37 = and i32 %35, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool15.not.i = icmp eq i32 %37, 0
  %storemerge1.v.i = select i1 %tobool15.not.i, i32 1, i32 67
  %storemerge1.i = xor i32 %36, %storemerge1.v.i
  %38 = ptrtoint ptr %scram.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %storemerge1.i, ptr %scram.i, align 4
  %39 = and i32 %35, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool26.not.i = icmp eq i32 %39, 0
  %val.0.i = select i1 %tobool26.not.i, i8 -8, i8 -7
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  tail call void %43(ptr noundef %33, i8 noundef zeroext %val.0.i) #12
  %44 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = or i8 %val.0.i, 4
  tail call void %47(ptr noundef %33, i8 noundef zeroext %48) #12
  %inc.i35 = add nuw nsw i32 %i.02.i, 1
  %shr.i = lshr i32 %data.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i35, 16
  br i1 %exitcond.not.i, label %for.body.i.do.body8_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.do.body8_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8

if.else:                                          ; preds = %hdlcdrv_ptt.exit
  %pdev.i36 = getelementptr i8, ptr %dev_id, i32 4020
  %49 = ptrtoint ptr %pdev.i36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev.i36, align 4
  %port.i37 = getelementptr inbounds %struct.pardevice, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %port.i37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port.i37, align 4
  %descram.i = getelementptr i8, ptr %dev_id, i32 4044
  %ops.i38 = getelementptr inbounds %struct.parport, ptr %52, i32 0, i32 24
  br label %for.body.i41

for.body.i41:                                     ; preds = %if.end.i.for.body.i41_crit_edge, %if.else
  %data.05.i = phi i32 [ 0, %if.else ], [ %70, %if.end.i.for.body.i41_crit_edge ]
  %i.04.i = phi i32 [ 0, %if.else ], [ %inc.i45, %if.end.i.for.body.i41_crit_edge ]
  %53 = ptrtoint ptr %descram.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %descram.i, align 4
  %shl.i39 = shl i32 %54, 1
  store i32 %shl.i39, ptr %descram.i, align 4
  %55 = ptrtoint ptr %ops.i38 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i38, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read_status.i, align 4
  %call.i = tail call zeroext i8 %58(ptr noundef %52) #12
  %59 = and i8 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i40 = icmp eq i8 %59, 0
  br i1 %tobool.not.i40, label %for.body.i41.if.end.i_crit_edge, label %if.then.i43

for.body.i41.if.end.i_crit_edge:                  ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i43:                                      ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %descram.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %descram.i, align 4
  %or.i42 = or i32 %61, 1
  store i32 %or.i42, ptr %descram.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i43, %for.body.i41.if.end.i_crit_edge
  %62 = ptrtoint ptr %descram.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %descram.i, align 4
  %shr.i44 = lshr i32 %63, 1
  %xor.i = xor i32 %shr.i44, %63
  %64 = ptrtoint ptr %ops.i38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i38, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  tail call void %67(ptr noundef %52, i8 noundef zeroext -6) #12
  %shr14.i = lshr i32 %xor.i, 17
  %shr15.i = lshr i32 %xor.i, 12
  %xor16.i = xor i32 %shr15.i, %xor.i
  %xor17.i = xor i32 %xor16.i, %shr14.i
  %shr18.i = lshr i32 %data.05.i, 1
  %and19.i = shl i32 %xor17.i, 15
  %68 = and i32 %and19.i, 32768
  %69 = xor i32 %68, 32768
  %70 = or i32 %69, %shr18.i
  %71 = ptrtoint ptr %ops.i38 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i38, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  tail call void %74(ptr noundef %52, i8 noundef zeroext -2) #12
  %inc.i45 = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i46 = icmp eq i32 %inc.i45, 16
  br i1 %exitcond.not.i46, label %for.end.i, label %if.end.i.for.body.i41_crit_edge

if.end.i.for.body.i41_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i41

for.end.i:                                        ; preds = %if.end.i
  %hdlcrx.i.i = getelementptr i8, ptr %dev_id, i32 2360
  %call2.i.i.i47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hdlcrx.i.i) #12
  %wr.i.i.i48 = getelementptr i8, ptr %dev_id, i32 2408
  %75 = ptrtoint ptr %wr.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %wr.i.i.i48, align 4
  %add.i.i.i49 = add i32 %76, 1
  %rem.i.i.i50 = and i32 %add.i.i.i49, 31
  %rd.i.i.i51 = getelementptr i8, ptr %dev_id, i32 2404
  %77 = ptrtoint ptr %rd.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rd.i.i.i51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i.i50, i32 %78)
  %cmp5.not.i.i.i = icmp eq i32 %rem.i.i.i50, %78
  br i1 %cmp5.not.i.i.i, label %for.end.i.hdlcdrv_putbits.exit.i_crit_edge, label %if.then.i.i.i

for.end.i.hdlcdrv_putbits.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hdlcdrv_putbits.exit.i

if.then.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i = trunc i32 %70 to i16
  %arrayidx.i.i.i52 = getelementptr %struct.hdlcdrv_hdlcbuffer, ptr %hdlcrx.i.i, i32 0, i32 3, i32 %76
  %79 = ptrtoint ptr %arrayidx.i.i.i52 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i.i, ptr %arrayidx.i.i.i52, align 2
  %80 = ptrtoint ptr %wr.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %rem.i.i.i50, ptr %wr.i.i.i48, align 4
  br label %hdlcdrv_putbits.exit.i

hdlcdrv_putbits.exit.i:                           ; preds = %if.then.i.i.i, %for.end.i.hdlcdrv_putbits.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hdlcrx.i.i, i32 noundef %call2.i.i.i47) #12
  %options.i = getelementptr i8, ptr %dev_id, i32 4024
  %81 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %options.i, align 4
  %and26.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.else.i, label %if.then28.i

if.then28.i:                                      ; preds = %hdlcdrv_putbits.exit.i
  %par9630.i = getelementptr i8, ptr %dev_id, i32 4036
  %dcd_shreg.i = getelementptr i8, ptr %dev_id, i32 4040
  %83 = ptrtoint ptr %dcd_shreg.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dcd_shreg.i, align 4
  %or33.i = tail call i32 @llvm.fshl.i32(i32 %70, i32 %84, i32 16) #12
  %85 = ptrtoint ptr %dcd_shreg.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or33.i, ptr %dcd_shreg.i, align 4
  %and44.i = and i32 %or33.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 64512, i32 %and44.i)
  %cmp45.not.i = icmp eq i32 %and44.i, 64512
  %and44.1.i = and i32 %or33.i, 261120
  call void @__sanitizer_cov_trace_const_cmp4(i32 129024, i32 %and44.1.i)
  %cmp45.1.not.i = icmp eq i32 %and44.1.i, 129024
  %and44.2.i = and i32 %or33.i, 522240
  call void @__sanitizer_cov_trace_const_cmp4(i32 258048, i32 %and44.2.i)
  %cmp45.2.not.i = icmp eq i32 %and44.2.i, 258048
  %86 = or i1 %cmp45.not.i, %cmp45.1.not.i
  %87 = or i1 %cmp45.2.not.i, %86
  %and44.3.i = and i32 %or33.i, 1044480
  call void @__sanitizer_cov_trace_const_cmp4(i32 516096, i32 %and44.3.i)
  %cmp45.3.not.i = icmp eq i32 %and44.3.i, 516096
  %88 = or i1 %cmp45.3.not.i, %87
  %and44.4.i = and i32 %or33.i, 2088960
  call void @__sanitizer_cov_trace_const_cmp4(i32 1032192, i32 %and44.4.i)
  %cmp45.4.not.i = icmp eq i32 %and44.4.i, 1032192
  %89 = or i1 %cmp45.4.not.i, %88
  %and44.5.i = and i32 %or33.i, 4177920
  call void @__sanitizer_cov_trace_const_cmp4(i32 2064384, i32 %and44.5.i)
  %cmp45.5.not.i = icmp eq i32 %and44.5.i, 2064384
  %90 = or i1 %cmp45.5.not.i, %89
  %and44.6.i = and i32 %or33.i, 8355840
  call void @__sanitizer_cov_trace_const_cmp4(i32 4128768, i32 %and44.6.i)
  %cmp45.6.not.i = icmp eq i32 %and44.6.i, 4128768
  %91 = or i1 %cmp45.6.not.i, %90
  %and44.7.i = and i32 %or33.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 8257536, i32 %and44.7.i)
  %cmp45.7.not.i = icmp eq i32 %and44.7.i, 8257536
  %92 = or i1 %cmp45.7.not.i, %91
  %and44.8.i = and i32 %or33.i, 33423360
  call void @__sanitizer_cov_trace_const_cmp4(i32 16515072, i32 %and44.8.i)
  %cmp45.8.not.i = icmp eq i32 %and44.8.i, 16515072
  %93 = or i1 %cmp45.8.not.i, %92
  %and44.9.i = and i32 %or33.i, 66846720
  call void @__sanitizer_cov_trace_const_cmp4(i32 33030144, i32 %and44.9.i)
  %cmp45.9.not.i = icmp eq i32 %and44.9.i, 33030144
  %94 = or i1 %cmp45.9.not.i, %93
  %and44.10.i = and i32 %or33.i, 133693440
  call void @__sanitizer_cov_trace_const_cmp4(i32 66060288, i32 %and44.10.i)
  %cmp45.10.not.i = icmp eq i32 %and44.10.i, 66060288
  %95 = or i1 %cmp45.10.not.i, %94
  %and44.11.i = and i32 %or33.i, 267386880
  call void @__sanitizer_cov_trace_const_cmp4(i32 132120576, i32 %and44.11.i)
  %cmp45.11.not.i = icmp eq i32 %and44.11.i, 132120576
  %96 = or i1 %cmp45.11.not.i, %95
  %and44.12.i = and i32 %or33.i, 534773760
  call void @__sanitizer_cov_trace_const_cmp4(i32 264241152, i32 %and44.12.i)
  %cmp45.12.not.i = icmp eq i32 %and44.12.i, 264241152
  %97 = or i1 %cmp45.12.not.i, %96
  %and44.13.i = and i32 %or33.i, 1069547520
  call void @__sanitizer_cov_trace_const_cmp4(i32 528482304, i32 %and44.13.i)
  %cmp45.13.not.i = icmp eq i32 %and44.13.i, 528482304
  %98 = or i1 %cmp45.13.not.i, %97
  %and44.14.i = and i32 %or33.i, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056964608, i32 %and44.14.i)
  %cmp45.14.not.i = icmp eq i32 %and44.14.i, 1056964608
  %99 = or i1 %cmp45.14.not.i, %98
  %and44.15.i = and i32 %or33.i, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2113929216, i32 %and44.15.i)
  %cmp45.15.not.i = icmp eq i32 %and44.15.i, 2113929216
  %100 = or i1 %cmp45.15.not.i, %99
  br i1 %100, label %101, label %if.then28.i.for.body59.i.preheader_crit_edge

if.then28.i.for.body59.i.preheader_crit_edge:     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body59.i.preheader

101:                                              ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %par9630.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 404, ptr %par9630.i, align 4
  br label %for.body59.i.preheader

for.body59.i.preheader:                           ; preds = %101, %if.then28.i.for.body59.i.preheader_crit_edge
  br label %for.body59.i

for.body59.i:                                     ; preds = %for.inc76.i.for.body59.i_crit_edge, %for.body59.i.preheader
  %mask2.111.i = phi i32 [ %shl79.i, %for.inc76.i.for.body59.i_crit_edge ], [ 130560, %for.body59.i.preheader ]
  %mask.110.i = phi i32 [ %shl78.i, %for.inc76.i.for.body59.i_crit_edge ], [ 130560, %for.body59.i.preheader ]
  %i.29.i = phi i32 [ %inc77.i, %for.inc76.i.for.body59.i_crit_edge ], [ 0, %for.body59.i.preheader ]
  %and63.i = and i32 %mask.110.i, %or33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and63.i, i32 %mask2.111.i)
  %cmp64.i = icmp eq i32 %and63.i, %mask2.111.i
  br i1 %cmp64.i, label %land.lhs.true.i, label %for.body59.i.for.inc76.i_crit_edge

for.body59.i.for.inc76.i_crit_edge:               ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc76.i

land.lhs.true.i:                                  ; preds = %for.body59.i
  %103 = ptrtoint ptr %par9630.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %par9630.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %104)
  %cmp69.i = icmp sgt i32 %104, -1
  br i1 %cmp69.i, label %if.then71.i, label %land.lhs.true.i.for.inc76.i_crit_edge

land.lhs.true.i.for.inc76.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc76.i

if.then71.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i53 = add nsw i32 %104, -390
  %105 = ptrtoint ptr %par9630.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub.i53, ptr %par9630.i, align 4
  br label %for.inc76.i

for.inc76.i:                                      ; preds = %if.then71.i, %land.lhs.true.i.for.inc76.i_crit_edge, %for.body59.i.for.inc76.i_crit_edge
  %inc77.i = add nuw nsw i32 %i.29.i, 1
  %shl78.i = shl i32 %mask.110.i, 1
  %shl79.i = shl i32 %mask2.111.i, 1
  %exitcond13.not.i = icmp eq i32 %inc77.i, 16
  br i1 %exitcond13.not.i, label %for.end80.i, label %for.inc76.i.for.body59.i_crit_edge

for.inc76.i.for.body59.i_crit_edge:               ; preds = %for.inc76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body59.i

for.end80.i:                                      ; preds = %for.inc76.i
  %106 = ptrtoint ptr %par9630.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %par9630.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %107)
  %cmp84.i = icmp sgt i32 %107, -1
  br i1 %cmp84.i, label %if.then86.i, label %for.end80.i.if.end91.i_crit_edge

for.end80.i.if.end91.i_crit_edge:                 ; preds = %for.end80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.i

if.then86.i:                                      ; preds = %for.end80.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub90.i = add nsw i32 %107, -2
  %108 = ptrtoint ptr %par9630.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %sub90.i, ptr %par9630.i, align 4
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then86.i, %for.end80.i.if.end91.i_crit_edge
  %109 = ptrtoint ptr %par9630.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %par9630.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp96.i = icmp sgt i32 %110, 0
  %conv.i1.i = zext i1 %cmp96.i to i8
  br label %par96_rx.exit

if.else.i:                                        ; preds = %hdlcdrv_putbits.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %111 = ptrtoint ptr %ops.i38 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops.i38, align 4
  %read_status100.i = getelementptr inbounds %struct.parport_operations, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %read_status100.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %read_status100.i, align 4
  %call101.i = tail call zeroext i8 %114(ptr noundef %52) #12
  %115 = lshr i8 %call101.i, 4
  %.lobit.i = and i8 %115, 1
  br label %par96_rx.exit

par96_rx.exit:                                    ; preds = %if.else.i, %if.end91.i
  %.lobit.sink.i = phi i8 [ %.lobit.i, %if.else.i ], [ %conv.i1.i, %if.end91.i ]
  %dcd2.i3.i = getelementptr i8, ptr %dev_id, i32 2496
  %116 = ptrtoint ptr %dcd2.i3.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %.lobit.sink.i, ptr %dcd2.i3.i, align 4
  %modem = getelementptr i8, ptr %dev_id, i32 4028
  %117 = ptrtoint ptr %modem to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %modem, align 4
  %dec = add i16 %118, -1
  store i16 %dec, ptr %modem, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %dec)
  %cmp = icmp slt i16 %dec, 1
  br i1 %cmp, label %if.then3, label %par96_rx.exit.do.body8_crit_edge

par96_rx.exit.do.body8_crit_edge:                 ; preds = %par96_rx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8

if.then3:                                         ; preds = %par96_rx.exit
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %modem to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 6, ptr %modem, align 4
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !128
  tail call void @hdlcdrv_arbitrate(ptr noundef %dev_id, ptr noundef %add.ptr.i) #12
  br label %do.body8

do.body8:                                         ; preds = %if.then3, %par96_rx.exit.do.body8_crit_edge, %for.body.i.do.body8_crit_edge
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !128
  tail call void @hdlcdrv_transmitter(ptr noundef %dev_id, ptr noundef %add.ptr.i) #12
  tail call void @hdlcdrv_receiver(ptr noundef %dev_id, ptr noundef %add.ptr.i) #12
  %120 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !129
  %and.i.i = and i32 %120, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool15.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !130
  br i1 %tobool15.not, label %if.then17, label %do.body8.if.end18_crit_edge

do.body8.if.end18_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.body8.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdlcdrv_arbitrate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdlcdrv_transmitter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdlcdrv_receiver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_options(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !29, !31, !32, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !101, !103, !104, !106, !108, !109}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__param_mode, !1, !"__param_mode", i1 false, i1 false}
!1 = !{!"../drivers/net/hamradio/baycom_par.c", i32 481, i32 1}
!2 = !{ptr @__UNIQUE_ID_modetype337, !1, !"__UNIQUE_ID_modetype337", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_mode338, !4, !"__UNIQUE_ID_mode338", i1 false, i1 false}
!4 = !{!"../drivers/net/hamradio/baycom_par.c", i32 482, i32 1}
!5 = !{ptr @__param_iobase, !6, !"__param_iobase", i1 false, i1 false}
!6 = !{!"../drivers/net/hamradio/baycom_par.c", i32 483, i32 1}
!7 = !{ptr @__UNIQUE_ID_iobasetype339, !6, !"__UNIQUE_ID_iobasetype339", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_iobase340, !9, !"__UNIQUE_ID_iobase340", i1 false, i1 false}
!9 = !{!"../drivers/net/hamradio/baycom_par.c", i32 484, i32 1}
!10 = !{ptr @__UNIQUE_ID_author341, !11, !"__UNIQUE_ID_author341", i1 false, i1 false}
!11 = !{!"../drivers/net/hamradio/baycom_par.c", i32 486, i32 1}
!12 = !{ptr @__UNIQUE_ID_description342, !13, !"__UNIQUE_ID_description342", i1 false, i1 false}
!13 = !{!"../drivers/net/hamradio/baycom_par.c", i32 487, i32 1}
!14 = !{ptr @__UNIQUE_ID_file343, !15, !"__UNIQUE_ID_file343", i1 false, i1 false}
!15 = !{!"../drivers/net/hamradio/baycom_par.c", i32 488, i32 1}
!16 = !{ptr @__UNIQUE_ID_license344, !15, !"__UNIQUE_ID_license344", i1 false, i1 false}
!17 = !{ptr @__initcall__kmod_baycom_par__345_568_init_baycompar6, !18, !"__initcall__kmod_baycom_par__345_568_init_baycompar6", i1 false, i1 false}
!18 = !{!"../drivers/net/hamradio/baycom_par.c", i32 568, i32 1}
!19 = !{ptr @__exitcall_cleanup_baycompar, !20, !"__exitcall_cleanup_baycompar", i1 false, i1 false}
!20 = !{!"../drivers/net/hamradio/baycom_par.c", i32 569, i32 1}
!21 = !{ptr @__setup_baycom_par_setup, !22, !"__setup_baycom_par_setup", i1 false, i1 false}
!22 = !{!"../drivers/net/hamradio/baycom_par.c", i32 596, i32 1}
!23 = !{ptr @baycom_device, !24, !"baycom_device", i1 false, i1 false}
!24 = !{!"../drivers/net/hamradio/baycom_par.c", i32 94, i32 27}
!25 = !{ptr @__param_str_mode, !1, !"__param_str_mode", i1 false, i1 false}
!26 = !{ptr @__param_arr_mode, !1, !"__param_arr_mode", i1 false, i1 false}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/hamradio/baycom_par.c", i32 478, i32 33}
!29 = !{ptr @mode, !30, !"mode", i1 false, i1 false}
!30 = !{!"../drivers/net/hamradio/baycom_par.c", i32 478, i32 14}
!31 = !{ptr @__param_str_iobase, !6, !"__param_str_iobase", i1 false, i1 false}
!32 = !{ptr @__param_arr_iobase, !6, !"__param_arr_iobase", i1 false, i1 false}
!33 = !{ptr @iobase, !34, !"iobase", i1 false, i1 false}
!34 = !{!"../drivers/net/hamradio/baycom_par.c", i32 479, i32 12}
!35 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/hamradio/baycom_par.c", i32 504, i32 10}
!37 = !{ptr @baycom_par_driver, !38, !"baycom_par_driver", i1 false, i1 false}
!38 = !{!"../drivers/net/hamradio/baycom_par.c", i32 503, i32 30}
!39 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/hamradio/baycom_par.c", i32 514, i32 2}
!41 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @init_baycompar._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @init_baycompar._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/hamradio/baycom_par.c", i32 516, i32 8}
!46 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/hamradio/baycom_par.c", i32 528, i32 19}
!48 = !{ptr @bc_drvinfo, !49, !"bc_drvinfo", i1 false, i1 false}
!49 = !{!"../drivers/net/hamradio/baycom_par.c", i32 87, i32 19}
!50 = !{ptr @par96_ops, !51, !"par96_ops", i1 false, i1 false}
!51 = !{!"../drivers/net/hamradio/baycom_par.c", i32 388, i32 33}
!52 = !{ptr @bc_drvname, !53, !"bc_drvname", i1 false, i1 false}
!53 = !{!"../drivers/net/hamradio/baycom_par.c", i32 86, i32 19}
!54 = !{ptr @.str.6, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/hamradio/baycom_par.c", i32 306, i32 3}
!56 = !{ptr @.str.7, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @par96_open._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @par96_open._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/hamradio/baycom_par.c", i32 310, i32 3}
!61 = !{ptr @par96_open._entry.8, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @par96_open._entry_ptr.10, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/hamradio/baycom_par.c", i32 315, i32 3}
!65 = !{ptr @par96_open._entry.11, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @par96_open._entry_ptr.13, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/hamradio/baycom_par.c", i32 331, i32 3}
!69 = !{ptr @par96_open._entry.14, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @par96_open._entry_ptr.16, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/hamradio/baycom_par.c", i32 338, i32 3}
!73 = !{ptr @par96_open._entry.17, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @par96_open._entry_ptr.19, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/hamradio/baycom_par.c", i32 342, i32 3}
!77 = !{ptr @par96_open._entry.20, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @par96_open._entry_ptr.22, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/hamradio/baycom_par.c", i32 352, i32 2}
!81 = !{ptr @par96_open._entry.23, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @par96_open._entry_ptr.25, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/hamradio/baycom_par.c", i32 288, i32 2}
!85 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @par96_wakeup._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @par96_wakeup._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/hamradio/baycom_par.c", i32 290, i32 3}
!90 = !{ptr @par96_wakeup._entry.28, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @par96_wakeup._entry_ptr.30, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/hamradio/baycom_par.c", i32 373, i32 2}
!94 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @par96_close._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @par96_close._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/hamradio/baycom_par.c", i32 430, i32 43}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/hamradio/baycom_par.c", i32 442, i32 29}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!103 = distinct !{null, !102, !"<string literal>", i1 false, i1 false}
!104 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!108 = !{ptr @__setup_str_baycom_par_setup, !22, !"__setup_str_baycom_par_setup", i1 false, i1 false}
!109 = !{ptr @baycom_par_setup.nr_dev, !110, !"nr_dev", i1 false, i1 false}
!110 = !{!"../drivers/net/hamradio/baycom_par.c", i32 582, i32 25}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"auto-init"}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{i64 2155966818, i64 2155967316, i64 2155966855, i64 2155966911, i64 2155966945, i64 2155966969, i64 2155967010, i64 2155967031, i64 2155967059, i64 2155967093}
!124 = !{i64 2153810193, i64 2153810218}
!125 = !{i64 6305067}
!126 = !{i64 6305264}
!127 = !{i64 2153790497}
!128 = !{i64 759035}
!129 = !{i64 761522}
!130 = !{i64 759225}
