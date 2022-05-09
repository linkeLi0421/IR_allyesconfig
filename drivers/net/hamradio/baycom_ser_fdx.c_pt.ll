; ModuleID = '/llk/IR_all_yes/drivers/net/hamradio/baycom_ser_fdx.c_pt.bc'
source_filename = "../drivers/net/hamradio/baycom_ser_fdx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hdlcdrv_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.baycom_state = type { %struct.hdlcdrv_state, i32, i32, i32, i32, i32, i32, %struct.modem_state, %struct.debug_vals }
%struct.hdlcdrv_state = type { i32, i32, ptr, %struct.anon.119, %struct.hdlcdrv_pttoutput, %struct.hdlcdrv_channel_params, %struct.hdlcdrv_hdlcrx, %struct.hdlcdrv_hdlctx, %struct.hdlcdrv_bitbuffer, %struct.hdlcdrv_bitbuffer, i32, ptr }
%struct.anon.119 = type { i32 }
%struct.hdlcdrv_pttoutput = type { i32, i32, i32, i32, i32 }
%struct.hdlcdrv_channel_params = type { i32, i32, i32, i32, i32 }
%struct.hdlcdrv_hdlcrx = type { %struct.hdlcdrv_hdlcbuffer, i32, i32, i32, i32, i32, i8, i32, ptr, [402 x i8] }
%struct.hdlcdrv_hdlcbuffer = type { %struct.spinlock, i32, i32, [32 x i16] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hdlcdrv_hdlctx = type { %struct.hdlcdrv_hdlcbuffer, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, [402 x i8] }
%struct.hdlcdrv_bitbuffer = type { i32, i32, i32, [256 x i8] }
%struct.modem_state = type { i8, i8, i32, %struct.modem_state_ser12 }
%struct.modem_state_ser12 = type { i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.debug_vals = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.baycom_ioctl = type { i32, %union.anon.120 }
%union.anon.120 = type { %struct.baycom_debug_data }
%struct.baycom_debug_data = type { i32, i32, i32 }
%struct.hdlcdrv_ioctl = type { i32, %union.anon.118 }
%union.anon.118 = type { %struct.hdlcdrv_params, [100 x i8] }
%struct.hdlcdrv_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }

@__param_str_mode = internal constant [20 x i8] c"baycom_ser_fdx.mode\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_mode = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_charp, ptr @mode }, align 4
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_mode } }, section "__param", align 4
@__UNIQUE_ID_modetype337 = internal constant [44 x i8] c"baycom_ser_fdx.parmtype=mode:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode338 = internal constant [67 x i8] c"baycom_ser_fdx.parm=mode:baycom operating mode; * for software DCD\00", section ".modinfo", align 1
@__param_str_iobase = internal constant [22 x i8] c"baycom_ser_fdx.iobase\00", align 1
@__param_arr_iobase = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @iobase }, align 4
@__param_iobase = internal constant %struct.kernel_param { ptr @__param_str_iobase, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 2, %union.anon.97 { ptr @__param_arr_iobase } }, section "__param", align 4
@__UNIQUE_ID_iobasetype339 = internal constant [44 x i8] c"baycom_ser_fdx.parmtype=iobase:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_iobase340 = internal constant [50 x i8] c"baycom_ser_fdx.parm=iobase:baycom io base address\00", section ".modinfo", align 1
@__param_str_irq = internal constant [19 x i8] c"baycom_ser_fdx.irq\00", align 1
@__param_arr_irq = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @irq }, align 4
@__param_irq = internal constant %struct.kernel_param { ptr @__param_str_irq, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 2, %union.anon.97 { ptr @__param_arr_irq } }, section "__param", align 4
@__UNIQUE_ID_irqtype341 = internal constant [41 x i8] c"baycom_ser_fdx.parmtype=irq:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq342 = internal constant [42 x i8] c"baycom_ser_fdx.parm=irq:baycom irq number\00", section ".modinfo", align 1
@__param_str_baud = internal constant [20 x i8] c"baycom_ser_fdx.baud\00", align 1
@__param_arr_baud = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @baud }, align 4
@__param_baud = internal constant %struct.kernel_param { ptr @__param_str_baud, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_baud } }, section "__param", align 4
@__UNIQUE_ID_baudtype343 = internal constant [42 x i8] c"baycom_ser_fdx.parmtype=baud:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_baud344 = internal constant [56 x i8] c"baycom_ser_fdx.parm=baud:baycom baud rate (300 to 4800)\00", section ".modinfo", align 1
@__UNIQUE_ID_author345 = internal constant [82 x i8] c"baycom_ser_fdx.author=Thomas M. Sailer, sailer@ife.ee.ethz.ch, hb9jnx@hb9w.che.eu\00", section ".modinfo", align 1
@__UNIQUE_ID_description346 = internal constant [79 x i8] c"baycom_ser_fdx.description=Baycom ser12 full duplex amateur radio modem driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file347 = internal constant [56 x i8] c"baycom_ser_fdx.file=drivers/net/hamradio/baycom_ser_fdx\00", section ".modinfo", align 1
@__UNIQUE_ID_license348 = internal constant [27 x i8] c"baycom_ser_fdx.license=GPL\00", section ".modinfo", align 1
@baycom_device = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@__initcall__kmod_baycom_ser_fdx__349_640_init_baycomserfdx6 = internal global ptr @init_baycomserfdx, section ".initcall6.init", align 4
@__exitcall_cleanup_baycomserfdx = internal global ptr @cleanup_baycomserfdx, section ".exitcall.exit", align 4
@__setup_str_baycom_ser_fdx_setup = internal constant [16 x i8] c"baycom_ser_fdx=\00", section ".init.rodata", align 1
@__setup_baycom_ser_fdx_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_baycom_ser_fdx_setup, ptr @baycom_ser_fdx_setup, i32 0 }, section ".init.setup", align 4
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str, ptr null, ptr null, ptr null], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ser12*\00", [25 x i8] zeroinitializer }, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@iobase = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1016, i32 0, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@irq = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 0, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@baud = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1200, i32 1200, i32 1200, i32 1200], [16 x i8] zeroinitializer }, align 32
@init_baycomserfdx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.1, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init_baycomserfdx\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/hamradio/baycom_ser_fdx.c\00", [58 x i8] zeroinitializer }, align 32
@init_baycomserfdx._entry_ptr = internal global ptr @init_baycomserfdx._entry, section ".printk_index", align 4
@bc_drvinfo = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\016baycom_ser_fdx: (C) 1996-2000 Thomas Sailer, HB9JNX/AE4WA\0Abaycom_ser_fdx: version 0.10\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcsf%d\00", [25 x i8] zeroinitializer }, align 32
@ser12_ops = internal constant { %struct.hdlcdrv_ops, [44 x i8] } { %struct.hdlcdrv_ops { ptr @bc_drvname, ptr @bc_drvinfo, ptr @ser12_open, ptr @ser12_close, ptr @baycom_ioctl }, [44 x i8] zeroinitializer }, align 32
@bc_drvname = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"baycom_ser_fdx\00", [17 x i8] zeroinitializer }, align 32
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@ser12_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016baycom_ser_fdx: invalid portnumber (max %u) or irq (2 <= irq <= %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ser12_open\00", [21 x i8] zeroinitializer }, align 32
@ser12_open._entry_ptr = internal global ptr @ser12_open._entry, section ".printk_index", align 4
@ser12_open._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016baycom_ser_fdx: invalid baudrate (300...4800)\0A\00", [47 x i8] zeroinitializer }, align 32
@ser12_open._entry_ptr.8 = internal global ptr @ser12_open._entry.6, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"baycom_ser_fdx\00", [17 x i8] zeroinitializer }, align 32
@ser12_open._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014BAYCOM_SER_FSX: I/O port 0x%04lx busy\0A\00", [55 x i8] zeroinitializer }, align 32
@ser12_open._entry_ptr.12 = internal global ptr @ser12_open._entry.10, section ".printk_index", align 4
@ser12_open._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s: ser_fdx at iobase 0x%lx irq %u baud %u uart %s\0A\00", [42 x i8] zeroinitializer }, align 32
@ser12_open._entry_ptr.15 = internal global ptr @ser12_open._entry.13, section ".printk_index", align 4
@uart_str = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], [44 x i8] zeroinitializer }, align 32
@__const.ser12_check_uart.uart_tab = private unnamed_addr constant [4 x i32] [i32 2, i32 0, i32 3, i32 4], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8250\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"16450\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"16550\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"16550A\00", [25 x i8] zeroinitializer }, align 32
@ser12_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: close ser_fdx at iobase 0x%lx irq %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ser12_close\00", [20 x i8] zeroinitializer }, align 32
@ser12_close._entry_ptr = internal global ptr @ser12_close._entry, section ".printk_index", align 4
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ser%u\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ser12,ser3,ser24\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ser\00", [28 x i8] zeroinitializer }, align 32
@baycom_ser_fdx_setup.nr_dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 40, i64 41, i64 42]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"baycom_device\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 88, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 569, i32 14 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 569, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"iobase\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 570, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 571, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [5 x i8] c"baud\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 572, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 594, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"bc_drvinfo\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 81, i32 19 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 603, i32 19 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"ser12_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 470, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"bc_drvname\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 80, i32 19 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 383, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 389, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 393, i32 7 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 394, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 433, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [9 x i8] c"uart_str\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 337, i32 20 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 338, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 338, i32 13 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 338, i32 21 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 338, i32 30 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 338, i32 39 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 453, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 519, i32 30 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 533, i32 29 }
@___asan_gen_.135 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 174, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 484, i32 24 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"nr_dev\00", align 1
@___asan_gen_.141 = private constant [41 x i8] c"../drivers/net/hamradio/baycom_ser_fdx.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 657, i32 25 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author345, ptr @__UNIQUE_ID_baud344, ptr @__UNIQUE_ID_baudtype343, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_file347, ptr @__UNIQUE_ID_iobase340, ptr @__UNIQUE_ID_iobasetype339, ptr @__UNIQUE_ID_irq342, ptr @__UNIQUE_ID_irqtype341, ptr @__UNIQUE_ID_license348, ptr @__UNIQUE_ID_mode338, ptr @__UNIQUE_ID_modetype337, ptr @__exitcall_cleanup_baycomserfdx, ptr @__initcall__kmod_baycom_ser_fdx__349_640_init_baycomserfdx6, ptr @__param_baud, ptr @__param_iobase, ptr @__param_irq, ptr @__param_mode, ptr @__setup_baycom_ser_fdx_setup, ptr @cleanup_baycomserfdx, ptr @init_baycomserfdx._entry, ptr @init_baycomserfdx._entry_ptr, ptr @ser12_close._entry, ptr @ser12_close._entry_ptr, ptr @ser12_open._entry, ptr @ser12_open._entry.10, ptr @ser12_open._entry.13, ptr @ser12_open._entry.6, ptr @ser12_open._entry_ptr, ptr @ser12_open._entry_ptr.12, ptr @ser12_open._entry_ptr.15, ptr @ser12_open._entry_ptr.8, ptr @baycom_device, ptr @mode, ptr @.str, ptr @iobase, ptr @irq, ptr @baud, ptr @.str.1, ptr @.str.2, ptr @bc_drvinfo, ptr @.str.3, ptr @ser12_ops, ptr @bc_drvname, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @uart_str, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @baycom_ser_fdx_setup.nr_dev], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baycom_device to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iobase to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baud to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_baycomserfdx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc_drvinfo to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser12_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc_drvname to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser12_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser12_open._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser12_open._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser12_open._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser12_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baycom_ser_fdx_setup.nr_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_baycomserfdx() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @hdlcdrv_unregister(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdlcdrv_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_baycomserfdx() #0 section ".init.text" align 64 {
entry:
  %ifname = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @bc_drvinfo) #14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %set_hw.057 = phi i8 [ 1, %entry ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %found.056 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ifname) #11
  %0 = call ptr @memset(ptr %ifname, i32 255, i32 16)
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %ifname, ptr noundef nonnull @.str.3, i32 noundef %found.056)
  %arrayidx = getelementptr [4 x ptr], ptr @mode, i32 0, i32 %found.056
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  %spec.select = select i1 %tobool.not, i8 0, i8 %set_hw.057
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select)
  %tobool4.not = icmp eq i8 %spec.select, 0
  br i1 %tobool4.not, label %if.then5, label %for.body.if.end8_crit_edge

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx6 = getelementptr [4 x i32], ptr @irq, i32 0, i32 %found.056
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr [4 x i32], ptr @iobase, i32 0, i32 %found.056
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %for.body.if.end8_crit_edge
  %arrayidx10 = getelementptr [4 x i32], ptr @iobase, i32 0, i32 %found.056
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr [4 x i32], ptr @irq, i32 0, i32 %found.056
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx11, align 4
  %call12 = call ptr @hdlcdrv_register(ptr noundef nonnull @ser12_ops, i32 noundef 1796, ptr noundef nonnull %ifname, i32 noundef %6, i32 noundef %8, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.end, label %if.end15

if.end15:                                         ; preds = %if.end8
  br i1 %tobool4.not, label %if.end15.for.inc_crit_edge, label %land.lhs.true

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call12, i32 2304
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  call fastcc void @baycom_setmode(ptr noundef %add.ptr.i, ptr noundef %10)
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end15.for.inc_crit_edge
  %arrayidx23 = getelementptr [4 x i32], ptr @baud, i32 0, i32 %found.056
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx23, align 4
  %baud = getelementptr i8, ptr %call12, i32 4020
  %13 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %baud, align 4
  %inc = add nuw nsw i32 %found.056, 1
  %arrayidx24 = getelementptr [4 x ptr], ptr @baycom_device, i32 0, i32 %found.056
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call12, ptr %arrayidx24, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ifname) #11
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

for.end:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ifname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.056)
  %tobool28.not = icmp eq i32 %found.056, 0
  %spec.select62 = select i1 %tobool28.not, i32 -6, i32 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %for.inc.for.end.thread_crit_edge
  %15 = phi i32 [ %spec.select62, %for.end ], [ 0, %for.inc.for.end.thread_crit_edge ]
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @baycom_ser_fdx_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  %ints = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ints) #11
  %0 = getelementptr inbounds [4 x i32], ptr %ints, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %ints, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %ints, i32 0, i32 3
  %3 = call ptr @memset(ptr %ints, i32 255, i32 16)
  %4 = load i32, ptr @baycom_ser_fdx_setup.nr_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp ugt i32 %4, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @get_options(ptr noundef %str, i32 noundef 4, ptr noundef nonnull %ints) #11
  %5 = ptrtoint ptr %ints to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ints, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1 = icmp slt i32 %6, 2
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = load i32, ptr @baycom_ser_fdx_setup.nr_dev, align 4
  %arrayidx4 = getelementptr [4 x ptr], ptr @mode, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %arrayidx4, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  %arrayidx6 = getelementptr [4 x i32], ptr @iobase, i32 0, i32 %7
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx6, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %arrayidx8 = getelementptr [4 x i32], ptr @irq, i32 0, i32 %7
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp10.not = icmp eq i32 %6, 2
  br i1 %cmp10.not, label %if.end3.if.end14_crit_edge, label %if.then11

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 4
  %arrayidx13 = getelementptr [4 x i32], ptr @baud, i32 0, i32 %7
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end3.if.end14_crit_edge
  %inc = add i32 %7, 1
  store i32 %inc, ptr @baycom_ser_fdx_setup.nr_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ints) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hdlcdrv_register(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @baycom_setmode(ptr nocapture noundef writeonly %bc, ptr noundef %modestr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %modestr, ptr noundef nonnull dereferenceable(4) @.str.30, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %modestr, i32 3
  %call1 = tail call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 10) #11
  %0 = add i32 %call1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %0)
  %1 = icmp ult i32 %0, 46
  br i1 %1, label %if.then3, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul nuw nsw i32 %call1, 100
  %baud4 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 1
  %2 = ptrtoint ptr %baud4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %baud4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call ptr @strchr(ptr noundef %modestr, i32 noundef 42)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %opt_dcd = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 6
  %3 = ptrtoint ptr %opt_dcd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %opt_dcd, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end5
  %call9 = tail call ptr @strchr(ptr noundef %modestr, i32 noundef 43)
  %tobool10.not = icmp eq ptr %call9, null
  %opt_dcd14 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 6
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %opt_dcd14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %opt_dcd14, align 4
  br label %if.end16

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %opt_dcd14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %opt_dcd14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then11, %if.then8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ser12_open(ptr noundef %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %dev, null
  %tobool1.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %2 = add i32 %1, -65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65527, i32 %2)
  %3 = icmp ult i32 %2, -65527
  br i1 %3, label %if.end.do.end_crit_edge, label %lor.lhs.false5

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false5:                                   ; preds = %if.end
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp6 = icmp slt i32 %5, 2
  br i1 %cmp6, label %lor.lhs.false5.do.end_crit_edge, label %lor.lhs.false7

lor.lhs.false5.do.end_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %6 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp9 = icmp sgt i32 %5, %6
  br i1 %cmp9, label %lor.lhs.false7.do.end_crit_edge, label %if.end12

lor.lhs.false7.do.end_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false7.do.end_crit_edge, %lor.lhs.false5.do.end_crit_edge, %if.end.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %7 = load i32, ptr @nr_irqs, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 65527, i32 noundef %7) #14
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false7
  %baud = getelementptr i8, ptr %dev, i32 4020
  %8 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %baud, align 4
  %10 = add i32 %9, -4801
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4501, i32 %10)
  %11 = icmp ult i32 %10, -4501
  br i1 %11, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %call25 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 8, ptr noundef nonnull @.str.9, i32 noundef 0) #11
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end34

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_addr, align 32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %13) #14
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  %modem = getelementptr i8, ptr %dev, i32 4044
  %14 = call ptr @memset(ptr %modem, i32 0, i32 36)
  %15 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %baud, align 4
  %par = getelementptr i8, ptr %dev, i32 2316
  %17 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %par, align 4
  %div = udiv i32 1000000, %16
  %baud_us = getelementptr i8, ptr %dev, i32 4024
  %18 = ptrtoint ptr %baud_us to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %baud_us, align 4
  %div38 = udiv i32 14400, %16
  %baud_uartdiv = getelementptr i8, ptr %dev, i32 4032
  %19 = ptrtoint ptr %baud_uartdiv to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div38, ptr %baud_uartdiv, align 4
  %20 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_addr, align 32
  %add.i = add i32 %21, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %22 = inttoptr i32 %add1.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #11, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @arm_heavy_mb() #11
  %24 = or i8 %23, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %24) #11, !srcloc !135
  %add9.i = add i32 %21, 6
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %25 = inttoptr i32 %add11.i to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #11, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 26) #11, !srcloc !135
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #11, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %28 = and i8 %27, -16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !139
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %23) #11, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %26) #11, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %28)
  %cmp.not.i = icmp eq i8 %28, -112
  br i1 %cmp.not.i, label %if.end.i, label %if.end34.if.then42_crit_edge

if.end34.if.then42_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then42

if.end.i:                                         ; preds = %if.end34
  %and50.i = and i32 %21, 1048575
  %add51.i = or i32 %and50.i, -18874368
  %29 = inttoptr i32 %add51.i to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #11, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #11, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !143
  tail call void @arm_heavy_mb() #11
  %add65.i = add i32 %21, 2
  %and66.i = and i32 %add65.i, 1048575
  %add67.i = or i32 %and66.i, -18874368
  %32 = inttoptr i32 %add67.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 1) #11, !srcloc !135
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #11, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %33)
  %cmp78.i = icmp ult i8 %33, 64
  br i1 %cmp78.i, label %ser12_check_uart.exit.thread136, label %ser12_check_uart.exit

ser12_check_uart.exit.thread136:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @arm_heavy_mb() #11
  %add84.i = add i32 %21, 7
  %and85.i = and i32 %add84.i, 1048575
  %add86.i = or i32 %and85.i, -18874368
  %34 = inttoptr i32 %add86.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 90) #11, !srcloc !135
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #11, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !147
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 -91) #11, !srcloc !135
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #11, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %35)
  %cmp110.not.i = icmp eq i8 %35, 90
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %36)
  %cmp113.not.i = icmp eq i8 %36, -91
  %or.cond.i = select i1 %cmp110.not.i, i1 %cmp113.not.i, i1 false
  %spec.select.i = select i1 %or.cond.i, i32 2, i32 1
  br label %do.body45

ser12_check_uart.exit:                            ; preds = %if.end.i
  %37 = lshr i8 %33, 6
  %38 = zext i8 %37 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__const.ser12_check_uart.uart_tab, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp41 = icmp eq i8 %37, 1
  br i1 %cmp41, label %ser12_check_uart.exit.if.then42_crit_edge, label %ser12_check_uart.exit.do.body45_crit_edge

ser12_check_uart.exit.do.body45_crit_edge:        ; preds = %ser12_check_uart.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body45

ser12_check_uart.exit.if.then42_crit_edge:        ; preds = %ser12_check_uart.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then42

if.then42:                                        ; preds = %ser12_check_uart.exit.if.then42_crit_edge, %if.end34.if.then42_crit_edge
  %41 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base_addr, align 32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %42, i32 noundef 8) #11
  br label %cleanup

do.body45:                                        ; preds = %ser12_check_uart.exit.do.body45_crit_edge, %ser12_check_uart.exit.thread136
  %retval.0.i139 = phi i32 [ %spec.select.i, %ser12_check_uart.exit.thread136 ], [ %40, %ser12_check_uart.exit.do.body45_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !149
  tail call void @arm_heavy_mb() #11
  %43 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_addr, align 32
  %add = add i32 %44, 2
  %and = and i32 %add, 1048575
  %add49 = or i32 %and, -18874368
  %45 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 0) #11, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !150
  tail call void @arm_heavy_mb() #11
  %46 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base_addr, align 32
  %add55 = add i32 %47, 4
  %and56 = and i32 %add55, 1048575
  %add57 = or i32 %and56, -18874368
  %48 = inttoptr i32 %add57 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 13) #11, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  tail call void @arm_heavy_mb() #11
  %49 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %base_addr, align 32
  %add63 = add i32 %50, 1
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %51 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 0) #11, !srcloc !135
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %53, ptr noundef nonnull @ser12_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.9, ptr noundef nonnull %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool69.not = icmp eq i32 %call.i, 0
  br i1 %tobool69.not, label %if.end72, label %if.then70

if.then70:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %base_addr, align 32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %55, i32 noundef 8) #11
  br label %cleanup

if.end72:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ser12_set_divisor(ptr noundef nonnull %dev, i32 noundef 144)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !152
  tail call void @arm_heavy_mb() #11
  %56 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %base_addr, align 32
  %add77 = add i32 %57, 1
  %and78 = and i32 %add77, 1048575
  %add79 = or i32 %and78, -18874368
  %58 = inttoptr i32 %add79 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 10) #11, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !153
  tail call void @arm_heavy_mb() #11
  %59 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base_addr, align 32
  %and86 = and i32 %60, 1048575
  %add87 = or i32 %and86, -18874368
  %61 = inttoptr i32 %add87 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 0) #11, !srcloc !135
  %dcd2.i = getelementptr i8, ptr %dev, i32 2496
  %62 = ptrtoint ptr %dcd2.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %dcd2.i, align 4
  %63 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %base_addr, align 32
  %65 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq, align 4
  %67 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %baud, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @uart_str, i32 0, i32 %retval.0.i139
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx, align 4
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @bc_drvname, i32 noundef %64, i32 noundef %66, i32 noundef %68, ptr noundef %70) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then70, %if.then42, %do.end30, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end ], [ -22, %do.end20 ], [ -5, %if.then42 ], [ -16, %if.then70 ], [ 0, %if.end72 ], [ -13, %do.end30 ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ser12_close(ptr noundef %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %dev, null
  %tobool1.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  tail call void @arm_heavy_mb() #11
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %2 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #11, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !155
  tail call void @arm_heavy_mb() #11
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base_addr, align 32
  %add8 = add i32 %4, 4
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %5 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 1) #11, !srcloc !135
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call12 = tail call ptr @free_irq(i32 noundef %7, ptr noundef nonnull %dev) #11
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr, align 32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %9, i32 noundef 8) #11
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_addr, align 32
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @bc_drvname, i32 noundef %11, i32 noundef %13) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @baycom_ioctl(ptr noundef %dev, ptr noundef %data, ptr noundef %hi, i32 noundef %cmd) #5 align 64 {
entry:
  %bi = alloca %struct.baycom_ioctl, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi) #11
  %0 = getelementptr inbounds %struct.baycom_ioctl, ptr %bi, i32 0, i32 1
  %1 = getelementptr inbounds %struct.baycom_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 1
  %2 = getelementptr inbounds %struct.baycom_ioctl, ptr %bi, i32 0, i32 1, i32 0, i32 2
  %tobool.not = icmp eq ptr %dev, null
  %3 = call ptr @memset(ptr %bi, i32 255, i32 16)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1522984824, i32 %5)
  %cmp.not = icmp eq i32 %5, 1522984824
  br i1 %cmp.not, label %do.end10, label %do.body4, !prof !156

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/hamradio/baycom_ser_fdx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 510, 0\0A.popsection", ""() #11, !srcloc !157
  unreachable

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 35312, i32 %cmd)
  %cmp11.not = icmp eq i32 %cmd, 35312
  br i1 %cmp11.not, label %if.end13, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  %6 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hi, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.then.i [
    i32 40, label %sw.bb
    i32 41, label %sw.bb31
    i32 42, label %sw.bb40
    i32 2, label %if.end13.cleanup_crit_edge
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  %data15 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %baud = getelementptr i8, ptr %dev, i32 4020
  %9 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %baud, align 4
  %div = udiv i32 %10, 100
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data15, ptr noundef nonnull @.str.23, i32 noundef %div)
  %opt_dcd = getelementptr i8, ptr %dev, i32 4040
  %11 = ptrtoint ptr %opt_dcd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opt_dcd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp17 = icmp slt i32 %12, 1
  br i1 %cmp17, label %if.then18, label %sw.bb.if.end59.i.i_crit_edge

sw.bb.if.end59.i.i_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i

if.then18:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool22.not = icmp eq i32 %12, 0
  %strlen = tail call i32 @strlen(ptr noundef %data15) #15
  %endptr = getelementptr i8, ptr %data15, i32 %strlen
  %13 = select i1 %tobool22.not, i16 10752, i16 11008
  %14 = ptrtoint ptr %endptr to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %endptr, align 1
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %if.then18, %sw.bb.if.end59.i.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end59.i.i.cleanup_crit_edge, label %if.end.i.i

if.end59.i.i.cleanup_crit_edge:                   ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end59.i.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 132, i32 -1226833920) #16, !srcloc !158
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hi, i32 noundef 132) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef %hi, i32 noundef 132) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool28.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool28.not, i32 0, i32 -14
  br label %cleanup

sw.bb31:                                          ; preds = %if.end13
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %sw.bb31.cleanup_crit_edge

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb31
  %call33 = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call33, label %if.end35, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %data36 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %arrayidx = getelementptr %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 1, i32 99
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx, align 1
  tail call fastcc void @baycom_setmode(ptr noundef %add.ptr.i, ptr noundef %data36)
  br label %cleanup

sw.bb40:                                          ; preds = %if.end13
  %data41 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %data41, ptr @.str.26, i32 17)
  tail call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #11
  %call.i.i93 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i93, label %sw.bb40.cleanup_crit_edge, label %if.end.i.i96

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i96:                                     ; preds = %sw.bb40
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 132, i32 -1226833920) #16, !srcloc !158
  %asmresult.i.i94 = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i94)
  %cmp.i6.i95 = icmp eq i32 %asmresult.i.i94, 0
  br i1 %cmp.i6.i95, label %copy_to_user.exit101, label %if.end.i.i96.cleanup_crit_edge

if.end.i.i96.cleanup_crit_edge:                   ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit101:                             ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i97 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hi, i32 noundef 132) #11
  %call.i12.i.i98 = tail call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef %hi, i32 noundef 132) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i98)
  %tobool45.not = icmp eq i32 %call.i12.i.i98, 0
  %spec.select130 = select i1 %tobool45.not, i32 0, i32 -14
  br label %cleanup

if.then.i:                                        ; preds = %if.end13
  tail call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 156) #11
  %call.i.i103 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i103, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 16, i32 -1226833920) #16
  %asmresult.i.i104 = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i104)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i104, 0
  br i1 %cmp.i1.i, label %if.end.i.i106, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !156

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i106:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i105 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bi, i32 noundef 16) #11
  %22 = call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !159
  %and.i.i.i.i = and i32 %24, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !161
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %bi, ptr noundef %data, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #11, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end52, label %if.end.i.i106.if.then11.i.i_crit_edge, !prof !156

if.end.i.i106.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i106.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i106.if.then11.i.i_crit_edge ], [ 16, %if.then.i.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %bi, i32 %sub.i.i
  %25 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end52:                                         ; preds = %if.end.i.i106
  %26 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 146, i32 %27)
  %cond67 = icmp eq i32 %27, 146
  br i1 %cond67, label %if.end59.i.i111, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59.i.i111:                                  ; preds = %if.end52
  %ptt_keyed = getelementptr i8, ptr %dev, i32 4012
  %28 = ptrtoint ptr %ptt_keyed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ptt_keyed, align 4
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %0, align 4
  %last_intcnt = getelementptr i8, ptr %dev, i32 4088
  %31 = ptrtoint ptr %last_intcnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_intcnt, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %1, align 4
  %last_pllcorr = getelementptr i8, ptr %dev, i32 4096
  %34 = ptrtoint ptr %last_pllcorr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_pllcorr, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %2, align 4
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #11
  %call.i.i112 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i112, label %if.end59.i.i111.cleanup_crit_edge, label %copy_to_user.exit121

if.end59.i.i111.cleanup_crit_edge:                ; preds = %if.end59.i.i111
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit121:                             ; preds = %if.end59.i.i111
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i117 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %bi, i32 noundef 16) #11
  %call.i12.i.i118 = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %bi, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i118)
  %tobool63.not = icmp eq i32 %call.i12.i.i118, 0
  %spec.select131 = select i1 %tobool63.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit121, %if.end59.i.i111.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.then11.i.i, %copy_to_user.exit101, %if.end.i.i96.cleanup_crit_edge, %sw.bb40.cleanup_crit_edge, %if.end35, %lor.lhs.false.cleanup_crit_edge, %sw.bb31.cleanup_crit_edge, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end59.i.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -22, %entry.cleanup_crit_edge ], [ -515, %do.end10.cleanup_crit_edge ], [ -13, %lor.lhs.false.cleanup_crit_edge ], [ -13, %sw.bb31.cleanup_crit_edge ], [ 3, %if.end13.cleanup_crit_edge ], [ -515, %if.end52.cleanup_crit_edge ], [ -14, %if.end59.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %sw.bb40.cleanup_crit_edge ], [ -14, %if.end.i.i96.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end59.i.i111.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ %spec.select130, %copy_to_user.exit101 ], [ %spec.select131, %copy_to_user.exit121 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ser12_interrupt(i32 noundef %irq, ptr noundef %dev_id) #5 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #11
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1522984824, i32 %2)
  %cmp.not = icmp eq i32 %2, 1522984824
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 5
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base_addr, align 32
  %add = add i32 %4, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #11, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !162
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @ktime_get_ts64(ptr noundef nonnull %ts) #11
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr, align 32
  %add10 = add i32 %9, 6
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %10 = inttoptr i32 %add12 to ptr
  %11 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #11, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !163
  %12 = and i8 %11, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool18.not = icmp eq i8 %12, 0
  br i1 %tobool18.not, label %if.end7.if.end26_crit_edge, label %land.lhs.true

if.end7.if.end26_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end7
  %opt_dcd = getelementptr i8, ptr %dev_id, i32 4040
  %13 = ptrtoint ptr %opt_dcd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %opt_dcd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end26_crit_edge, label %if.then20

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %15 = trunc i32 %14 to i8
  %16 = xor i8 %11, %15
  %17 = xor i8 %16, -1
  %18 = lshr i8 %17, 7
  %dcd2.i = getelementptr i8, ptr %dev_id, i32 2496
  %19 = ptrtoint ptr %dcd2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %dcd2.i, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %land.lhs.true.if.end26_crit_edge, %if.end7.if.end26_crit_edge
  %debug_vals.i = getelementptr i8, ptr %dev_id, i32 4080
  %cur_intcnt.i = getelementptr i8, ptr %dev_id, i32 4084
  %last_intcnt.i = getelementptr i8, ptr %dev_id, i32 4088
  %cur_pllcorr.i = getelementptr i8, ptr %dev_id, i32 4092
  %last_pllcorr.i = getelementptr i8, ptr %dev_id, i32 4096
  %ptt = getelementptr i8, ptr %dev_id, i32 4045
  %ser12 = getelementptr i8, ptr %dev_id, i32 4052
  %opt_dcd91 = getelementptr i8, ptr %dev_id, i32 4040
  %dcd2.i258 = getelementptr i8, ptr %dev_id, i32 2496
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %if.end26
  %txcount.0 = phi i32 [ 0, %if.end26 ], [ %txcount.1, %sw.epilog.do.body_crit_edge ]
  %msr.0 = phi i8 [ %11, %if.end26 ], [ %msr.1, %sw.epilog.do.body_crit_edge ]
  %iir.0 = phi i8 [ %6, %if.end26 ], [ %69, %sw.epilog.do.body_crit_edge ]
  %20 = and i8 %iir.0, 6
  %and28 = zext i8 %20 to i32
  %21 = zext i32 %and28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %and28, label %sw.default [
    i32 6, label %sw.bb
    i32 4, label %sw.bb37
    i32 2, label %do.body47
  ]

sw.bb:                                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_addr, align 32
  %add31 = add i32 %23, 5
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %24 = inttoptr i32 %add33 to ptr
  %25 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #11, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !164
  br label %sw.epilog

sw.bb37:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_addr, align 32
  %and41 = and i32 %27, 1048575
  %add42 = or i32 %and41, -18874368
  %28 = inttoptr i32 %add42 to ptr
  %29 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #11, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  br label %sw.epilog

do.body47:                                        ; preds = %do.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  call void @arm_heavy_mb() #11
  %30 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base_addr, align 32
  %and50 = and i32 %31, 1048575
  %add51 = or i32 %and50, -18874368
  %32 = inttoptr i32 %add51 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 0) #11, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %34 = ptrtoint ptr %cur_intcnt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur_intcnt.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %cur_intcnt.i, align 4
  %36 = ptrtoint ptr %debug_vals.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug_vals.i, align 4
  %add.neg.i = add i32 %33, -100
  %sub.i = sub i32 %add.neg.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %if.then.i, label %do.body47.baycom_int_freq.exit_crit_edge

do.body47.baycom_int_freq.exit_crit_edge:         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  br label %baycom_int_freq.exit

if.then.i:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %debug_vals.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %33, ptr %debug_vals.i, align 4
  %39 = ptrtoint ptr %last_intcnt.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inc.i, ptr %last_intcnt.i, align 4
  %40 = ptrtoint ptr %cur_intcnt.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %cur_intcnt.i, align 4
  %41 = ptrtoint ptr %cur_pllcorr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cur_pllcorr.i, align 4
  %43 = ptrtoint ptr %last_pllcorr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %last_pllcorr.i, align 4
  store i32 0, ptr %cur_pllcorr.i, align 4
  br label %baycom_int_freq.exit

baycom_int_freq.exit:                             ; preds = %if.then.i, %do.body47.baycom_int_freq.exit_crit_edge
  %inc = add i32 %txcount.0, 1
  %44 = ptrtoint ptr %ptt to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ptt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool53.not = icmp eq i8 %45, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  call void @arm_heavy_mb() #11
  br i1 %tobool53.not, label %do.body70, label %do.body55

do.body55:                                        ; preds = %baycom_int_freq.exit
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %ser12 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ser12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool59 = icmp ne i8 %47, 0
  %lnot.ext63 = zext i1 %tobool59 to i8
  %or = or i8 %lnot.ext63, 14
  %48 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %base_addr, align 32
  %add66 = add i32 %49, 4
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %50 = inttoptr i32 %add68 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %or) #11, !srcloc !135
  br label %sw.epilog

do.body70:                                        ; preds = %baycom_int_freq.exit
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base_addr, align 32
  %add74 = add i32 %52, 4
  %and75 = and i32 %add74, 1048575
  %add76 = or i32 %and75, -18874368
  %53 = inttoptr i32 %add76 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 13) #11, !srcloc !135
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  %54 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %base_addr, align 32
  %add81 = add i32 %55, 6
  %and82 = and i32 %add81, 1048575
  %add83 = or i32 %and82, -18874368
  %56 = inttoptr i32 %add83 to ptr
  %57 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #11, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !167
  %58 = and i8 %57, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool89.not = icmp eq i8 %58, 0
  br i1 %tobool89.not, label %sw.default.sw.epilog_crit_edge, label %land.lhs.true90

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true90:                                  ; preds = %sw.default
  %59 = ptrtoint ptr %opt_dcd91 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %opt_dcd91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool92.not = icmp eq i32 %60, 0
  br i1 %tobool92.not, label %land.lhs.true90.sw.epilog_crit_edge, label %if.then93

land.lhs.true90.sw.epilog_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then93:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #13
  %61 = trunc i32 %60 to i8
  %62 = xor i8 %57, %61
  %63 = xor i8 %62, -1
  %64 = lshr i8 %63, 7
  %65 = ptrtoint ptr %dcd2.i258 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %dcd2.i258, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then93, %land.lhs.true90.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %do.body70, %do.body55, %sw.bb37, %sw.bb
  %txcount.1 = phi i32 [ %txcount.0, %if.then93 ], [ %txcount.0, %land.lhs.true90.sw.epilog_crit_edge ], [ %txcount.0, %sw.default.sw.epilog_crit_edge ], [ %inc, %do.body55 ], [ %inc, %do.body70 ], [ %txcount.0, %sw.bb37 ], [ %txcount.0, %sw.bb ]
  %msr.1 = phi i8 [ %57, %if.then93 ], [ %57, %land.lhs.true90.sw.epilog_crit_edge ], [ %57, %sw.default.sw.epilog_crit_edge ], [ %msr.0, %do.body55 ], [ %msr.0, %do.body70 ], [ %msr.0, %sw.bb37 ], [ %msr.0, %sw.bb ]
  %66 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %base_addr, align 32
  %add105 = add i32 %67, 2
  %and106 = and i32 %add105, 1048575
  %add107 = or i32 %and106, -18874368
  %68 = inttoptr i32 %add107 to ptr
  %69 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #11, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !168
  %70 = and i8 %69, 1
  %tobool114.not = icmp eq i8 %70, 0
  br i1 %tobool114.not, label %sw.epilog.do.body_crit_edge, label %do.end117

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end117:                                        ; preds = %sw.epilog
  %71 = and i8 %msr.1, 16
  %baud_us.i = getelementptr i8, ptr %dev_id, i32 4024
  %72 = ptrtoint ptr %baud_us.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %baud_us.i, align 4
  %shr2.i = lshr i32 %73, 2
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %74 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %75, 1000
  %add.i = add nsw i32 %div.i, 1000000
  %pll_time.i = getelementptr i8, ptr %dev_id, i32 4072
  %76 = ptrtoint ptr %pll_time.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pll_time.i, align 4
  %sub.i259 = sub i32 %add.i, %77
  %smin.i = call i32 @llvm.smin.i32(i32 %sub.i259, i32 499999) #11
  %.neg286 = add nsw i32 %div.i, 1999999
  %78 = add i32 %77, %smin.i
  %79 = sub i32 %.neg286, %78
  %80 = urem i32 %79, 1000000
  %.neg.i = sub i32 %80, %79
  %shr.i = lshr i32 %73, 3
  %shr4.i = lshr i32 %73, 1
  %81 = add i32 %.neg.i, %sub.i259
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %shr4.i)
  %cmp7.not2.i = icmp slt i32 %81, %shr4.i
  br i1 %cmp7.not2.i, label %do.end117.while.end27.i_crit_edge, label %while.body8.lr.ph.i

do.end117.while.end27.i_crit_edge:                ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end27.i

while.body8.lr.ph.i:                              ; preds = %do.end117
  %dcd_time.i = getelementptr i8, ptr %dev_id, i32 4068
  %shreg.i = getelementptr i8, ptr %dev_id, i32 4048
  %hdlcrx.i.i = getelementptr i8, ptr %dev_id, i32 2360
  %wr.i.i.i = getelementptr i8, ptr %dev_id, i32 2408
  %rd.i.i.i = getelementptr i8, ptr %dev_id, i32 2404
  br label %while.body8.i

while.body8.i:                                    ; preds = %if.end.i.while.body8.i_crit_edge, %while.body8.lr.ph.i
  %timediff.13.i = phi i32 [ %81, %while.body8.lr.ph.i ], [ %sub10.i, %if.end.i.while.body8.i_crit_edge ]
  %82 = ptrtoint ptr %baud_us.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %baud_us.i, align 4
  %sub10.i = sub i32 %timediff.13.i, %83
  %84 = ptrtoint ptr %pll_time.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pll_time.i, align 4
  %add15.i = add i32 %85, %83
  store i32 %add15.i, ptr %pll_time.i, align 4
  %86 = ptrtoint ptr %dcd_time.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dcd_time.i, align 4
  %dec.i = add i32 %87, -1
  store i32 %dec.i, ptr %dcd_time.i, align 4
  %88 = ptrtoint ptr %shreg.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %shreg.i, align 4
  %and.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body8.i.if.end.i_crit_edge, label %if.then.i260

while.body8.i.if.end.i_crit_edge:                 ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i260:                                     ; preds = %while.body8.i
  %call2.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %hdlcrx.i.i) #11
  %90 = ptrtoint ptr %wr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %wr.i.i.i, align 4
  %add.i.i.i = add i32 %91, 1
  %rem.i.i.i = and i32 %add.i.i.i, 31
  %92 = ptrtoint ptr %rd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rd.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i.i, i32 %93)
  %cmp5.not.i.i.i = icmp eq i32 %rem.i.i.i, %93
  br i1 %cmp5.not.i.i.i, label %if.then.i260.hdlcdrv_putbits.exit.i_crit_edge, label %if.then.i.i.i

if.then.i260.hdlcdrv_putbits.exit.i_crit_edge:    ; preds = %if.then.i260
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdlcdrv_putbits.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i260
  call void @__sanitizer_cov_trace_pc() #13
  %shr21.i = lshr i32 %89, 1
  %94 = trunc i32 %shr21.i to i16
  %conv.i.i = xor i16 %94, -1
  %arrayidx.i.i.i = getelementptr %struct.hdlcdrv_hdlcbuffer, ptr %hdlcrx.i.i, i32 0, i32 3, i32 %91
  %95 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv.i.i, ptr %arrayidx.i.i.i, align 2
  %96 = ptrtoint ptr %wr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %rem.i.i.i, ptr %wr.i.i.i, align 4
  br label %hdlcdrv_putbits.exit.i

hdlcdrv_putbits.exit.i:                           ; preds = %if.then.i.i.i, %if.then.i260.hdlcdrv_putbits.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hdlcrx.i.i, i32 noundef %call2.i.i.i) #11
  %97 = ptrtoint ptr %shreg.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 65536, ptr %shreg.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %hdlcdrv_putbits.exit.i, %while.body8.i.if.end.i_crit_edge
  %98 = ptrtoint ptr %shreg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %shreg.i, align 4
  %shr26.i = lshr i32 %99, 1
  store i32 %shr26.i, ptr %shreg.i, align 4
  %cmp7.not.i = icmp slt i32 %sub10.i, %shr4.i
  br i1 %cmp7.not.i, label %if.end.i.while.end27.i_crit_edge, label %if.end.i.while.body8.i_crit_edge

if.end.i.while.body8.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body8.i

if.end.i.while.end27.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end27.i

while.end27.i:                                    ; preds = %if.end.i.while.end27.i_crit_edge, %do.end117.while.end27.i_crit_edge
  %timediff.1.lcssa.i = phi i32 [ %81, %do.end117.while.end27.i_crit_edge ], [ %sub10.i, %if.end.i.while.end27.i_crit_edge ]
  %dcd_time30.i = getelementptr i8, ptr %dev_id, i32 4068
  %100 = ptrtoint ptr %dcd_time30.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dcd_time30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp31.i = icmp slt i32 %101, 1
  br i1 %cmp31.i, label %if.then32.i, label %while.end27.i.if.end65.i_crit_edge

while.end27.i.if.end65.i_crit_edge:               ; preds = %while.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i

if.then32.i:                                      ; preds = %while.end27.i
  %102 = ptrtoint ptr %opt_dcd91 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %opt_dcd91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool33.not.i = icmp eq i32 %103, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.then32.i.if.end45.i_crit_edge

if.then32.i.if.end45.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

if.then34.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  %dcd_sum0.i = getelementptr i8, ptr %dev_id, i32 4056
  %104 = ptrtoint ptr %dcd_sum0.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dcd_sum0.i, align 4
  %dcd_sum1.i = getelementptr i8, ptr %dev_id, i32 4060
  %106 = ptrtoint ptr %dcd_sum1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dcd_sum1.i, align 4
  %add40.i = add i32 %107, %105
  %dcd_sum2.i = getelementptr i8, ptr %dev_id, i32 4064
  %108 = ptrtoint ptr %dcd_sum2.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dcd_sum2.i, align 4
  %add43.i = add i32 %add40.i, %109
  %add43.lobit.i = lshr i32 %add43.i, 31
  %110 = trunc i32 %add43.lobit.i to i8
  %111 = ptrtoint ptr %dcd2.i258 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %dcd2.i258, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then34.i, %if.then32.i.if.end45.i_crit_edge
  %dcd_sum148.i = getelementptr i8, ptr %dev_id, i32 4060
  %112 = ptrtoint ptr %dcd_sum148.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dcd_sum148.i, align 4
  %dcd_sum251.i = getelementptr i8, ptr %dev_id, i32 4064
  %114 = ptrtoint ptr %dcd_sum251.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %dcd_sum251.i, align 4
  %dcd_sum054.i = getelementptr i8, ptr %dev_id, i32 4056
  %115 = ptrtoint ptr %dcd_sum054.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dcd_sum054.i, align 4
  store i32 %116, ptr %dcd_sum148.i, align 4
  store i32 2, ptr %dcd_sum054.i, align 4
  %add64.i = add nsw i32 %101, 120
  %117 = ptrtoint ptr %dcd_time30.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %add64.i, ptr %dcd_time30.i, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end45.i, %while.end27.i.if.end65.i_crit_edge
  %last_rxbit.i = getelementptr i8, ptr %dev_id, i32 4053
  %118 = ptrtoint ptr %last_rxbit.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %last_rxbit.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %119, i8 %71)
  %cmp70.not.i = icmp eq i8 %119, %71
  br i1 %cmp70.not.i, label %if.end65.i.if.end107.i_crit_edge, label %if.then72.i

if.end65.i.if.end107.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107.i

if.then72.i:                                      ; preds = %if.end65.i
  %120 = ptrtoint ptr %last_rxbit.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %71, ptr %last_rxbit.i, align 1
  %shreg77.i = getelementptr i8, ptr %dev_id, i32 4048
  %121 = ptrtoint ptr %shreg77.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %shreg77.i, align 4
  %or.i = or i32 %122, 65536
  store i32 %or.i, ptr %shreg77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timediff.1.lcssa.i)
  %cmp78.i = icmp sgt i32 %timediff.1.lcssa.i, 0
  br i1 %cmp78.i, label %if.then80.i, label %if.else.i

if.then80.i:                                      ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %pll_time.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pll_time.i, align 4
  br label %if.end90.i

if.else.i:                                        ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub85.i = sub nsw i32 1000000, %shr.i
  %125 = ptrtoint ptr %pll_time.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pll_time.i, align 4
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.else.i, %if.then80.i
  %.sink.i = phi i32 [ %126, %if.else.i ], [ %shr.i, %if.then80.i ]
  %sub85.sink.i = phi i32 [ %sub85.i, %if.else.i ], [ %124, %if.then80.i ]
  %add89.i = add i32 %sub85.sink.i, %.sink.i
  %127 = ptrtoint ptr %pll_time.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %add89.i, ptr %pll_time.i, align 4
  %128 = call i32 @llvm.abs.i32(i32 %timediff.1.lcssa.i, i1 false) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %shr2.i)
  %cmp94.i = icmp sgt i32 %128, %shr2.i
  %dcd_sum099.i = getelementptr i8, ptr %dev_id, i32 4056
  %..i = select i1 %cmp94.i, i32 4, i32 -1
  %129 = ptrtoint ptr %dcd_sum099.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dcd_sum099.i, align 4
  %dec105.i = add i32 %130, %..i
  store i32 %dec105.i, ptr %dcd_sum099.i, align 4
  %131 = ptrtoint ptr %cur_pllcorr.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %timediff.1.lcssa.i, ptr %cur_pllcorr.i, align 4
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.end90.i, %if.end65.i.if.end107.i_crit_edge
  %132 = ptrtoint ptr %pll_time.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %.pr.i = load i32, ptr %pll_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %.pr.i)
  %cmp1124.i = icmp ugt i32 %.pr.i, 999999
  br i1 %cmp1124.i, label %while.body114.preheader.i, label %if.end107.i.ser12_rx.exit_crit_edge

if.end107.i.ser12_rx.exit_crit_edge:              ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ser12_rx.exit

while.body114.preheader.i:                        ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #13
  %133 = add i32 %.pr.i, -1000000
  %134 = urem i32 %133, 1000000
  %135 = ptrtoint ptr %pll_time.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %pll_time.i, align 4
  br label %ser12_rx.exit

ser12_rx.exit:                                    ; preds = %while.body114.preheader.i, %if.end107.i.ser12_rx.exit_crit_edge
  %136 = ptrtoint ptr %ptt to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %ptt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool124.not = icmp eq i8 %137, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %txcount.1)
  %tobool126.not = icmp eq i32 %txcount.1, 0
  %or.cond = select i1 %tobool124.not, i1 true, i1 %tobool126.not
  br i1 %or.cond, label %ser12_rx.exit.do.body167_crit_edge, label %if.then127

ser12_rx.exit.do.body167_crit_edge:               ; preds = %ser12_rx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body167

if.then127:                                       ; preds = %ser12_rx.exit
  %txshreg = getelementptr i8, ptr %dev_id, i32 4076
  %138 = ptrtoint ptr %txshreg to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %txshreg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %139)
  %cmp130 = icmp ult i32 %139, 2
  br i1 %cmp130, label %if.then132, label %if.then127.if.end146_crit_edge

if.then127.if.end146_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

if.then132:                                       ; preds = %if.then127
  %hdlctx.i = getelementptr i8, ptr %dev_id, i32 2912
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %hdlctx.i) #11
  %rd.i.i = getelementptr i8, ptr %dev_id, i32 2956
  %140 = ptrtoint ptr %rd.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %rd.i.i, align 4
  %wr.i.i = getelementptr i8, ptr %dev_id, i32 2960
  %142 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %wr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %143)
  %cmp5.i.not.i = icmp eq i32 %141, %143
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hdlctx.i, i32 noundef %call2.i.i) #11
  br i1 %cmp5.i.not.i, label %if.then.i263, label %if.else6.i

if.then.i263:                                     ; preds = %if.then132
  %calibrate.i = getelementptr i8, ptr %dev_id, i32 3048
  %144 = ptrtoint ptr %calibrate.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %calibrate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp.i262 = icmp sgt i32 %145, 0
  br i1 %cmp.i262, label %if.then2.i, label %if.else.i265

if.then2.i:                                       ; preds = %if.then.i263
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i264 = add nsw i32 %145, -1
  %146 = ptrtoint ptr %calibrate.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %dec.i264, ptr %calibrate.i, align 4
  br label %hdlcdrv_getbits.exit

if.else.i265:                                     ; preds = %if.then.i263
  call void @__sanitizer_cov_trace_pc() #13
  %ptt.i = getelementptr i8, ptr %dev_id, i32 3044
  %147 = ptrtoint ptr %ptt.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %ptt.i, align 4
  br label %hdlcdrv_getbits.exit

if.else6.i:                                       ; preds = %if.then132
  %call2.i15.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %hdlctx.i) #11
  %148 = ptrtoint ptr %rd.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rd.i.i, align 4
  %150 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %wr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %151)
  %cmp5.i18.i = icmp eq i32 %149, %151
  br i1 %cmp5.i18.i, label %if.else6.i.hdlcdrv_hbuf_get.exit.i_crit_edge, label %if.else.i.i

if.else6.i.hdlcdrv_hbuf_get.exit.i_crit_edge:     ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdlcdrv_hbuf_get.exit.i

if.else.i.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i = add i32 %149, 1
  %rem.i.i = and i32 %add.i.i, 31
  %arrayidx.i.i = getelementptr %struct.hdlcdrv_hdlcbuffer, ptr %hdlctx.i, i32 0, i32 3, i32 %149
  %152 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %arrayidx.i.i, align 2
  %154 = ptrtoint ptr %rd.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %rem.i.i, ptr %rd.i.i, align 4
  %phi.cast.i = zext i16 %153 to i32
  br label %hdlcdrv_hbuf_get.exit.i

hdlcdrv_hbuf_get.exit.i:                          ; preds = %if.else.i.i, %if.else6.i.hdlcdrv_hbuf_get.exit.i_crit_edge
  %val.0.i.i = phi i32 [ %phi.cast.i, %if.else.i.i ], [ 0, %if.else6.i.hdlcdrv_hbuf_get.exit.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hdlctx.i, i32 noundef %call2.i15.i) #11
  br label %hdlcdrv_getbits.exit

hdlcdrv_getbits.exit:                             ; preds = %hdlcdrv_hbuf_get.exit.i, %if.else.i265, %if.then2.i
  %ret.0.i = phi i32 [ %val.0.i.i, %hdlcdrv_hbuf_get.exit.i ], [ 0, %if.else.i265 ], [ 0, %if.then2.i ]
  %or135 = or i32 %ret.0.i, 65536
  %155 = ptrtoint ptr %txshreg to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %or135, ptr %txshreg, align 4
  %ptt.i266 = getelementptr i8, ptr %dev_id, i32 3044
  %156 = ptrtoint ptr %ptt.i266 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %ptt.i266, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool.not.i267 = icmp eq i8 %157, 0
  br i1 %tobool.not.i267, label %hdlcdrv_ptt.exit, label %hdlcdrv_getbits.exit.if.end146_crit_edge

hdlcdrv_getbits.exit.if.end146_crit_edge:         ; preds = %hdlcdrv_getbits.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

hdlcdrv_ptt.exit:                                 ; preds = %hdlcdrv_getbits.exit
  %calibrate.i268 = getelementptr i8, ptr %dev_id, i32 3048
  %158 = ptrtoint ptr %calibrate.i268 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %calibrate.i268, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %159)
  %cmp.i269 = icmp slt i32 %159, 1
  br i1 %cmp.i269, label %if.then142, label %hdlcdrv_ptt.exit.if.end146_crit_edge

hdlcdrv_ptt.exit.if.end146_crit_edge:             ; preds = %hdlcdrv_ptt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

if.then142:                                       ; preds = %hdlcdrv_ptt.exit
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @ser12_set_divisor(ptr noundef %dev_id, i32 noundef 144)
  %160 = ptrtoint ptr %ptt to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %ptt, align 1
  br label %do.body167

if.end146:                                        ; preds = %hdlcdrv_ptt.exit.if.end146_crit_edge, %hdlcdrv_getbits.exit.if.end146_crit_edge, %if.then127.if.end146_crit_edge
  %161 = ptrtoint ptr %ser12 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %ser12, align 4
  %conv150 = zext i8 %162 to i32
  %163 = ptrtoint ptr %txshreg to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %txshreg, align 4
  %and154 = and i32 %164, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and154, i32 %conv150)
  %tobool156.not = icmp eq i32 %and154, %conv150
  %conv159 = zext i1 %tobool156.not to i8
  %165 = ptrtoint ptr %ser12 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv159, ptr %ser12, align 4
  %shr = lshr i32 %164, 1
  %166 = ptrtoint ptr %txshreg to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %shr, ptr %txshreg, align 4
  br label %do.body167

do.body167:                                       ; preds = %if.end146, %if.then142, %ser12_rx.exit.do.body167_crit_edge
  call void @trace_hardirqs_on() #11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !169
  %167 = ptrtoint ptr %ptt to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %ptt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool172.not = icmp ne i8 %168, 0
  %or.cond255 = select i1 %tobool172.not, i1 true, i1 %tobool126.not
  br i1 %or.cond255, label %do.body167.if.end187_crit_edge, label %if.then175

do.body167.if.end187_crit_edge:                   ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end187

if.then175:                                       ; preds = %do.body167
  call void @hdlcdrv_arbitrate(ptr noundef %dev_id, ptr noundef nonnull %add.ptr.i) #11
  %ptt.i271 = getelementptr i8, ptr %dev_id, i32 3044
  %169 = ptrtoint ptr %ptt.i271 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %ptt.i271, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i272 = icmp eq i8 %170, 0
  br i1 %tobool.not.i272, label %hdlcdrv_ptt.exit277, label %if.then175.if.then180_crit_edge

if.then175.if.then180_crit_edge:                  ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then180

hdlcdrv_ptt.exit277:                              ; preds = %if.then175
  %calibrate.i273 = getelementptr i8, ptr %dev_id, i32 3048
  %171 = ptrtoint ptr %calibrate.i273 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %calibrate.i273, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %172)
  %cmp.i274 = icmp slt i32 %172, 1
  br i1 %cmp.i274, label %hdlcdrv_ptt.exit277.if.end187_crit_edge, label %hdlcdrv_ptt.exit277.if.then180_crit_edge

hdlcdrv_ptt.exit277.if.then180_crit_edge:         ; preds = %hdlcdrv_ptt.exit277
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then180

hdlcdrv_ptt.exit277.if.end187_crit_edge:          ; preds = %hdlcdrv_ptt.exit277
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end187

if.then180:                                       ; preds = %hdlcdrv_ptt.exit277.if.then180_crit_edge, %if.then175.if.then180_crit_edge
  %baud_uartdiv = getelementptr i8, ptr %dev_id, i32 4032
  %173 = ptrtoint ptr %baud_uartdiv to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %baud_uartdiv, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !170
  call void @arm_heavy_mb() #11
  %175 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %base_addr, align 32
  %add.i278 = add i32 %176, 3
  %and.i279 = and i32 %add.i278, 1048575
  %add1.i = or i32 %and.i279, -18874368
  %177 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %177, i8 -127) #11, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !171
  call void @arm_heavy_mb() #11
  %conv.i280 = trunc i32 %174 to i8
  %178 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %base_addr, align 32
  %and6.i = and i32 %179, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %180 = inttoptr i32 %add7.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %180, i8 %conv.i280) #11, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  call void @arm_heavy_mb() #11
  %shr.i281 = lshr i32 %174, 8
  %conv11.i = trunc i32 %shr.i281 to i8
  %181 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %base_addr, align 32
  %add13.i = add i32 %182, 1
  %and14.i = and i32 %add13.i, 1048575
  %add15.i282 = or i32 %and14.i, -18874368
  %183 = inttoptr i32 %add15.i282 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %183, i8 %conv11.i) #11, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  call void @arm_heavy_mb() #11
  %184 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %base_addr, align 32
  %add20.i = add i32 %185, 3
  %and21.i = and i32 %add20.i, 1048575
  %add22.i = or i32 %and21.i, -18874368
  %186 = inttoptr i32 %add22.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %186, i8 1) #11, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  call void @arm_heavy_mb() #11
  %187 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %base_addr, align 32
  %and28.i = and i32 %188, 1048575
  %add29.i = or i32 %and28.i, -18874368
  %189 = inttoptr i32 %add29.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %189, i8 0) #11, !srcloc !135
  %txshreg183 = getelementptr i8, ptr %dev_id, i32 4076
  %190 = ptrtoint ptr %txshreg183 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 1, ptr %txshreg183, align 4
  %191 = ptrtoint ptr %ptt to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 1, ptr %ptt, align 1
  br label %if.end187

if.end187:                                        ; preds = %if.then180, %hdlcdrv_ptt.exit277.if.end187_crit_edge, %do.body167.if.end187_crit_edge
  call void @hdlcdrv_transmitter(ptr noundef %dev_id, ptr noundef nonnull %add.ptr.i) #11
  call void @hdlcdrv_receiver(ptr noundef %dev_id, ptr noundef nonnull %add.ptr.i) #11
  %192 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !175
  %and.i.i = and i32 %192, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool192.not = icmp eq i32 %and.i.i, 0
  call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #11, !srcloc !176
  br i1 %tobool192.not, label %if.then194, label %if.end187.cleanup_crit_edge

if.end187.cleanup_crit_edge:                      ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then194:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_off() #11
  br label %cleanup

cleanup:                                          ; preds = %if.then194, %if.end187.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then194 ], [ 1, %if.end187.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #11
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ser12_set_divisor(ptr nocapture noundef readonly %dev, i32 noundef %divisor) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !170
  tail call void @arm_heavy_mb() #11
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -127) #11, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !171
  tail call void @arm_heavy_mb() #11
  %conv = trunc i32 %divisor to i8
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base_addr, align 32
  %and6 = and i32 %4, 1048575
  %add7 = or i32 %and6, -18874368
  %5 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv) #11, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %shr = lshr i32 %divisor, 8
  %conv11 = trunc i32 %shr to i8
  %6 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_addr, align 32
  %add13 = add i32 %7, 1
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %8 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv11) #11, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base_addr, align 32
  %add20 = add i32 %10, 3
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %11 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 1) #11, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_addr, align 32
  %and28 = and i32 %13, 1048575
  %add29 = or i32 %and28, -18874368
  %14 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #11, !srcloc !135
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

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
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

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
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_options(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !104, !106, !108, !110, !112, !113, !115, !117, !119, !120}
!llvm.named.register.sp = !{!122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__param_mode, !1, !"__param_mode", i1 false, i1 false}
!1 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 574, i32 1}
!2 = !{ptr @__UNIQUE_ID_modetype337, !1, !"__UNIQUE_ID_modetype337", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_mode338, !4, !"__UNIQUE_ID_mode338", i1 false, i1 false}
!4 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 575, i32 1}
!5 = !{ptr @__param_iobase, !6, !"__param_iobase", i1 false, i1 false}
!6 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 576, i32 1}
!7 = !{ptr @__UNIQUE_ID_iobasetype339, !6, !"__UNIQUE_ID_iobasetype339", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_iobase340, !9, !"__UNIQUE_ID_iobase340", i1 false, i1 false}
!9 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 577, i32 1}
!10 = !{ptr @__param_irq, !11, !"__param_irq", i1 false, i1 false}
!11 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 578, i32 1}
!12 = !{ptr @__UNIQUE_ID_irqtype341, !11, !"__UNIQUE_ID_irqtype341", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_irq342, !14, !"__UNIQUE_ID_irq342", i1 false, i1 false}
!14 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 579, i32 1}
!15 = !{ptr @__param_baud, !16, !"__param_baud", i1 false, i1 false}
!16 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 580, i32 1}
!17 = !{ptr @__UNIQUE_ID_baudtype343, !16, !"__UNIQUE_ID_baudtype343", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_baud344, !19, !"__UNIQUE_ID_baud344", i1 false, i1 false}
!19 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 581, i32 1}
!20 = !{ptr @__UNIQUE_ID_author345, !21, !"__UNIQUE_ID_author345", i1 false, i1 false}
!21 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 583, i32 1}
!22 = !{ptr @__UNIQUE_ID_description346, !23, !"__UNIQUE_ID_description346", i1 false, i1 false}
!23 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 584, i32 1}
!24 = !{ptr @__UNIQUE_ID_file347, !25, !"__UNIQUE_ID_file347", i1 false, i1 false}
!25 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 585, i32 1}
!26 = !{ptr @__UNIQUE_ID_license348, !25, !"__UNIQUE_ID_license348", i1 false, i1 false}
!27 = !{ptr @__initcall__kmod_baycom_ser_fdx__349_640_init_baycomserfdx6, !28, !"__initcall__kmod_baycom_ser_fdx__349_640_init_baycomserfdx6", i1 false, i1 false}
!28 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 640, i32 1}
!29 = !{ptr @__exitcall_cleanup_baycomserfdx, !30, !"__exitcall_cleanup_baycomserfdx", i1 false, i1 false}
!30 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 641, i32 1}
!31 = !{ptr @__setup_baycom_ser_fdx_setup, !32, !"__setup_baycom_ser_fdx_setup", i1 false, i1 false}
!32 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 674, i32 1}
!33 = !{ptr @baycom_device, !34, !"baycom_device", i1 false, i1 false}
!34 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 88, i32 27}
!35 = !{ptr @__param_str_mode, !1, !"__param_str_mode", i1 false, i1 false}
!36 = !{ptr @__param_arr_mode, !1, !"__param_arr_mode", i1 false, i1 false}
!37 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 569, i32 33}
!39 = !{ptr @mode, !40, !"mode", i1 false, i1 false}
!40 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 569, i32 14}
!41 = !{ptr @__param_str_iobase, !6, !"__param_str_iobase", i1 false, i1 false}
!42 = !{ptr @__param_arr_iobase, !6, !"__param_arr_iobase", i1 false, i1 false}
!43 = !{ptr @iobase, !44, !"iobase", i1 false, i1 false}
!44 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 570, i32 12}
!45 = !{ptr @__param_str_irq, !11, !"__param_str_irq", i1 false, i1 false}
!46 = !{ptr @__param_arr_irq, !11, !"__param_arr_irq", i1 false, i1 false}
!47 = !{ptr @irq, !48, !"irq", i1 false, i1 false}
!48 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 571, i32 12}
!49 = !{ptr @__param_str_baud, !16, !"__param_str_baud", i1 false, i1 false}
!50 = !{ptr @__param_arr_baud, !16, !"__param_arr_baud", i1 false, i1 false}
!51 = !{ptr @baud, !52, !"baud", i1 false, i1 false}
!52 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 572, i32 12}
!53 = !{ptr @.str.1, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 594, i32 2}
!55 = !{ptr @.str.2, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @init_baycomserfdx._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @init_baycomserfdx._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.3, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 603, i32 19}
!60 = !{ptr @bc_drvinfo, !61, !"bc_drvinfo", i1 false, i1 false}
!61 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 81, i32 19}
!62 = !{ptr @ser12_ops, !63, !"ser12_ops", i1 false, i1 false}
!63 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 470, i32 33}
!64 = !{ptr @bc_drvname, !65, !"bc_drvname", i1 false, i1 false}
!65 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 80, i32 19}
!66 = !{ptr @.str.4, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 383, i32 3}
!68 = !{ptr @.str.5, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ser12_open._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @ser12_open._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.7, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 389, i32 3}
!73 = !{ptr @ser12_open._entry.6, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @ser12_open._entry_ptr.8, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.9, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 393, i32 7}
!77 = !{ptr @.str.11, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 394, i32 3}
!79 = !{ptr @ser12_open._entry.10, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ser12_open._entry_ptr.12, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.14, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 433, i32 2}
!83 = !{ptr @ser12_open._entry.13, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ser12_open._entry_ptr.15, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.16, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 338, i32 2}
!87 = !{ptr @.str.17, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 338, i32 13}
!89 = !{ptr @.str.18, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 338, i32 21}
!91 = !{ptr @.str.19, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 338, i32 30}
!93 = !{ptr @.str.20, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 338, i32 39}
!95 = !{ptr @uart_str, !96, !"uart_str", i1 false, i1 false}
!96 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 337, i32 20}
!97 = !{ptr @.str.21, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 453, i32 2}
!99 = !{ptr @.str.22, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ser12_close._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @ser12_close._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.23, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 519, i32 30}
!104 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 521, i32 47}
!106 = distinct !{null, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 521, i32 53}
!108 = !{ptr @.str.26, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 533, i32 29}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!112 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!115 = !{ptr @.str.29, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!117 = !{ptr @.str.30, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 484, i32 24}
!119 = !{ptr @__setup_str_baycom_ser_fdx_setup, !32, !"__setup_str_baycom_ser_fdx_setup", i1 false, i1 false}
!120 = !{ptr @baycom_ser_fdx_setup.nr_dev, !121, !"nr_dev", i1 false, i1 false}
!121 = !{!"../drivers/net/hamradio/baycom_ser_fdx.c", i32 657, i32 25}
!122 = !{!"sp"}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i64 4681906}
!133 = !{i64 2155926031}
!134 = !{i64 2155926268}
!135 = !{i64 4681511}
!136 = !{i64 2155926692}
!137 = !{i64 2155926924}
!138 = !{i64 2155927348}
!139 = !{i64 2155927578}
!140 = !{i64 2155927929}
!141 = !{i64 2155928353}
!142 = !{i64 2155928656}
!143 = !{i64 2155928888}
!144 = !{i64 2155929312}
!145 = !{i64 2155929544}
!146 = !{i64 2155929968}
!147 = !{i64 2155930200}
!148 = !{i64 2155930624}
!149 = !{i64 2155935961}
!150 = !{i64 2155936338}
!151 = !{i64 2155936712}
!152 = !{i64 2155937171}
!153 = !{i64 2155937548}
!154 = !{i64 2155943696}
!155 = !{i64 2155944070}
!156 = !{!"branch_weights", i32 2000, i32 1}
!157 = !{i64 2155946301, i64 2155946803, i64 2155946338, i64 2155946394, i64 2155946428, i64 2155946452, i64 2155946493, i64 2155946514, i64 2155946542, i64 2155946576}
!158 = !{i64 2153819439, i64 2153819464}
!159 = !{i64 6314313}
!160 = !{i64 6314510}
!161 = !{i64 2153799743}
!162 = !{i64 2155922582}
!163 = !{i64 2155922909}
!164 = !{i64 2155923236}
!165 = !{i64 2155923563}
!166 = !{i64 2155923811}
!167 = !{i64 2155925050}
!168 = !{i64 2155925377}
!169 = !{i64 800275}
!170 = !{i64 2155915611}
!171 = !{i64 2155915991}
!172 = !{i64 2155916376}
!173 = !{i64 2155916753}
!174 = !{i64 2155917130}
!175 = !{i64 802762}
!176 = !{i64 800465}
