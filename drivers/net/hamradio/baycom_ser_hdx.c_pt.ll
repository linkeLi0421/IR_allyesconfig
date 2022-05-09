; ModuleID = '/llk/IR_all_yes/drivers/net/hamradio/baycom_ser_hdx.c_pt.bc'
source_filename = "../drivers/net/hamradio/baycom_ser_hdx.c"
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
%struct.baycom_state = type { %struct.hdlcdrv_state, i32, %struct.modem_state, %struct.debug_vals }
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
%struct.modem_state = type { i16, i8, i32, %struct.modem_state_ser12 }
%struct.modem_state_ser12 = type { i8, i32, i32, i32, i8, i8, i32, i32, i32, i8 }
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

@__param_str_mode = internal constant [20 x i8] c"baycom_ser_hdx.mode\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_mode = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_charp, ptr @mode }, align 4
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_mode } }, section "__param", align 4
@__UNIQUE_ID_modetype337 = internal constant [44 x i8] c"baycom_ser_hdx.parmtype=mode:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode338 = internal constant [67 x i8] c"baycom_ser_hdx.parm=mode:baycom operating mode; * for software DCD\00", section ".modinfo", align 1
@__param_str_iobase = internal constant [22 x i8] c"baycom_ser_hdx.iobase\00", align 1
@__param_arr_iobase = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @iobase }, align 4
@__param_iobase = internal constant %struct.kernel_param { ptr @__param_str_iobase, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 2, %union.anon.97 { ptr @__param_arr_iobase } }, section "__param", align 4
@__UNIQUE_ID_iobasetype339 = internal constant [44 x i8] c"baycom_ser_hdx.parmtype=iobase:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_iobase340 = internal constant [50 x i8] c"baycom_ser_hdx.parm=iobase:baycom io base address\00", section ".modinfo", align 1
@__param_str_irq = internal constant [19 x i8] c"baycom_ser_hdx.irq\00", align 1
@__param_arr_irq = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @irq }, align 4
@__param_irq = internal constant %struct.kernel_param { ptr @__param_str_irq, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 2, %union.anon.97 { ptr @__param_arr_irq } }, section "__param", align 4
@__UNIQUE_ID_irqtype341 = internal constant [41 x i8] c"baycom_ser_hdx.parmtype=irq:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq342 = internal constant [42 x i8] c"baycom_ser_hdx.parm=irq:baycom irq number\00", section ".modinfo", align 1
@__UNIQUE_ID_author343 = internal constant [82 x i8] c"baycom_ser_hdx.author=Thomas M. Sailer, sailer@ife.ee.ethz.ch, hb9jnx@hb9w.che.eu\00", section ".modinfo", align 1
@__UNIQUE_ID_description344 = internal constant [79 x i8] c"baycom_ser_hdx.description=Baycom ser12 half duplex amateur radio modem driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [56 x i8] c"baycom_ser_hdx.file=drivers/net/hamradio/baycom_ser_hdx\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [27 x i8] c"baycom_ser_hdx.license=GPL\00", section ".modinfo", align 1
@baycom_device = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@__initcall__kmod_baycom_ser_hdx__347_691_init_baycomserhdx6 = internal global ptr @init_baycomserhdx, section ".initcall6.init", align 4
@__exitcall_cleanup_baycomserhdx = internal global ptr @cleanup_baycomserhdx, section ".exitcall.exit", align 4
@__setup_str_baycom_ser_hdx_setup = internal constant [16 x i8] c"baycom_ser_hdx=\00", section ".init.rodata", align 1
@__setup_baycom_ser_hdx_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_baycom_ser_hdx_setup, ptr @baycom_ser_hdx_setup, i32 0 }, section ".init.setup", align 4
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str, ptr null, ptr null, ptr null], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ser12*\00", [25 x i8] zeroinitializer }, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@iobase = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1016, i32 0, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@irq = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 0, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@init_baycomserhdx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.1, ptr @.str.2, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init_baycomserhdx\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/hamradio/baycom_ser_hdx.c\00", [58 x i8] zeroinitializer }, align 32
@init_baycomserhdx._entry_ptr = internal global ptr @init_baycomserhdx._entry, section ".printk_index", align 4
@bc_drvinfo = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\016baycom_ser_hdx: (C) 1996-2000 Thomas Sailer, HB9JNX/AE4WA\0Abaycom_ser_hdx: version 0.10\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcsh%d\00", [25 x i8] zeroinitializer }, align 32
@ser12_ops = internal constant { %struct.hdlcdrv_ops, [44 x i8] } { %struct.hdlcdrv_ops { ptr @bc_drvname, ptr @bc_drvinfo, ptr @ser12_open, ptr @ser12_close, ptr @baycom_ioctl }, [44 x i8] zeroinitializer }, align 32
@bc_drvname = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"baycom_ser_hdx\00", [17 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"baycom_ser12\00", [19 x i8] zeroinitializer }, align 32
@ser12_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: ser12 at iobase 0x%lx irq %u uart %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ser12_open\00", [21 x i8] zeroinitializer }, align 32
@ser12_open._entry_ptr = internal global ptr @ser12_open._entry, section ".printk_index", align 4
@uart_str = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], [44 x i8] zeroinitializer }, align 32
@__const.ser12_check_uart.uart_tab = private unnamed_addr constant [4 x i32] [i32 2, i32 0, i32 3, i32 4], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8250\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"16450\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"16550\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"16550A\00", [25 x i8] zeroinitializer }, align 32
@ser12_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: close ser12 at iobase 0x%lx irq %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ser12_close\00", [20 x i8] zeroinitializer }, align 32
@ser12_close._entry_ptr = internal global ptr @ser12_close._entry, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ser12\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@baycom_ser_hdx_setup.nr_dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 40, i64 41, i64 42]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"baycom_device\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 74, i32 27 }
@___asan_gen_.27 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 623, i32 14 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 623, i32 33 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"iobase\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 624, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 625, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 645, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [11 x i8] c"bc_drvinfo\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 67, i32 19 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 654, i32 19 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"ser12_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 529, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"bc_drvname\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 66, i32 19 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 466, i32 7 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 492, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [9 x i8] c"uart_str\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 419, i32 20 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 420, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 420, i32 13 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 420, i32 21 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 420, i32 30 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 420, i32 39 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 512, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 573, i32 29 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 174, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"nr_dev\00", align 1
@___asan_gen_.106 = private constant [41 x i8] c"../drivers/net/hamradio/baycom_ser_hdx.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 709, i32 25 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_description344, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_iobase340, ptr @__UNIQUE_ID_iobasetype339, ptr @__UNIQUE_ID_irq342, ptr @__UNIQUE_ID_irqtype341, ptr @__UNIQUE_ID_license346, ptr @__UNIQUE_ID_mode338, ptr @__UNIQUE_ID_modetype337, ptr @__exitcall_cleanup_baycomserhdx, ptr @__initcall__kmod_baycom_ser_hdx__347_691_init_baycomserhdx6, ptr @__param_iobase, ptr @__param_irq, ptr @__param_mode, ptr @__setup_baycom_ser_hdx_setup, ptr @cleanup_baycomserhdx, ptr @init_baycomserhdx._entry, ptr @init_baycomserhdx._entry_ptr, ptr @ser12_close._entry, ptr @ser12_close._entry_ptr, ptr @ser12_open._entry, ptr @ser12_open._entry_ptr, ptr @baycom_device, ptr @mode, ptr @.str, ptr @iobase, ptr @irq, ptr @.str.1, ptr @.str.2, ptr @bc_drvinfo, ptr @.str.3, ptr @ser12_ops, ptr @bc_drvname, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @uart_str, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.20, ptr @baycom_ser_hdx_setup.nr_dev], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baycom_device to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iobase to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_baycomserhdx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc_drvinfo to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser12_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc_drvname to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser12_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser12_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baycom_ser_hdx_setup.nr_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_baycomserhdx() #0 section ".exit.text" align 64 {
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
define internal i32 @init_baycomserhdx() #0 section ".init.text" align 64 {
entry:
  %ifname = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @bc_drvinfo) #14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %set_hw.054 = phi i8 [ 1, %entry ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %found.053 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ifname) #11
  %0 = call ptr @memset(ptr %ifname, i32 255, i32 16)
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %ifname, ptr noundef nonnull @.str.3, i32 noundef %found.053)
  %arrayidx = getelementptr [4 x ptr], ptr @mode, i32 0, i32 %found.053
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  %spec.select = select i1 %tobool.not, i8 0, i8 %set_hw.054
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select)
  %tobool4.not = icmp eq i8 %spec.select, 0
  br i1 %tobool4.not, label %if.then5, label %for.body.if.end8_crit_edge

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx6 = getelementptr [4 x i32], ptr @irq, i32 0, i32 %found.053
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr [4 x i32], ptr @iobase, i32 0, i32 %found.053
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %for.body.if.end8_crit_edge
  %arrayidx10 = getelementptr [4 x i32], ptr @iobase, i32 0, i32 %found.053
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr [4 x i32], ptr @irq, i32 0, i32 %found.053
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx11, align 4
  %call12 = call ptr @hdlcdrv_register(ptr noundef nonnull @ser12_ops, i32 noundef 1784, ptr noundef nonnull %ifname, i32 noundef %6, i32 noundef %8, i32 noundef 0) #11
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
  %inc = add nuw nsw i32 %found.053, 1
  %arrayidx23 = getelementptr [4 x ptr], ptr @baycom_device, i32 0, i32 %found.053
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call12, ptr %arrayidx23, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.053)
  %tobool27.not = icmp eq i32 %found.053, 0
  %spec.select59 = select i1 %tobool27.not, i32 -6, i32 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %for.inc.for.end.thread_crit_edge
  %12 = phi i32 [ %spec.select59, %for.end ], [ 0, %for.inc.for.end.thread_crit_edge ]
  ret i32 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @baycom_ser_hdx_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  %ints = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ints) #11
  %0 = ptrtoint ptr %ints to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ints, align 4, !annotation !109
  %1 = getelementptr inbounds [3 x i32], ptr %ints, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !109
  %3 = getelementptr inbounds [3 x i32], ptr %ints, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !109
  %5 = load i32, ptr @baycom_ser_hdx_setup.nr_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @get_options(ptr noundef %str, i32 noundef 3, ptr noundef nonnull %ints) #11
  %6 = ptrtoint ptr %ints to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ints, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1 = icmp slt i32 %7, 2
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = load i32, ptr @baycom_ser_hdx_setup.nr_dev, align 4
  %arrayidx4 = getelementptr [4 x ptr], ptr @mode, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %arrayidx4, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %arrayidx6 = getelementptr [4 x i32], ptr @iobase, i32 0, i32 %8
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx6, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  %arrayidx8 = getelementptr [4 x i32], ptr @irq, i32 0, i32 %8
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx8, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr @baycom_ser_hdx_setup.nr_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ints) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hdlcdrv_register(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @baycom_setmode(ptr nocapture noundef writeonly %bc, ptr noundef readonly %modestr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strchr(ptr noundef %modestr, i32 noundef 42)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %opt_dcd = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 1
  %0 = ptrtoint ptr %opt_dcd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %opt_dcd, align 4
  br label %if.end13

if.else:                                          ; preds = %entry
  %call1 = tail call ptr @strchr(ptr noundef %modestr, i32 noundef 43)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.else5, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %opt_dcd4 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 1
  %1 = ptrtoint ptr %opt_dcd4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %opt_dcd4, align 4
  br label %if.end13

if.else5:                                         ; preds = %if.else
  %call6 = tail call ptr @strchr(ptr noundef %modestr, i32 noundef 64)
  %tobool7.not = icmp eq ptr %call6, null
  %opt_dcd11 = getelementptr inbounds %struct.baycom_state, ptr %bc, i32 0, i32 1
  br i1 %tobool7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %opt_dcd11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -2, ptr %opt_dcd11, align 4
  br label %if.end13

if.else10:                                        ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %opt_dcd11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %opt_dcd11, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.then8, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ser12_open(ptr noundef %dev) #6 align 64 {
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
  %2 = add i32 %1, -4089
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4088, i32 %2)
  %3 = icmp ult i32 %2, -4088
  br i1 %3, label %if.end.cleanup_crit_edge, label %lor.lhs.false5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false5:                                   ; preds = %if.end
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %6 = add i32 %5, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %6)
  %7 = icmp ult i32 %6, -14
  br i1 %7, label %lor.lhs.false5.cleanup_crit_edge, label %if.end11

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false5
  %call13 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 8, ptr noundef nonnull @.str.4, i32 noundef 0) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %modem = getelementptr i8, ptr %dev, i32 4024
  %8 = call ptr @memset(ptr %modem, i32 0, i32 44)
  %par = getelementptr i8, ptr %dev, i32 2316
  %9 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1200, ptr %par, align 4
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_addr, align 32
  %add.i = add i32 %11, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add1.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #11, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %14 = or i8 %13, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %14) #11, !srcloc !113
  %add9.i = add i32 %11, 6
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %15 = inttoptr i32 %add11.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #11, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !115
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 26) #11, !srcloc !113
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #11, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %18 = and i8 %17, -16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !117
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %13) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !118
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %16) #11, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %18)
  %cmp.not.i = icmp eq i8 %18, -112
  br i1 %cmp.not.i, label %if.end.i, label %if.end16.if.then20_crit_edge

if.end16.if.then20_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.end.i:                                         ; preds = %if.end16
  %and50.i = and i32 %11, 1048575
  %add51.i = or i32 %and50.i, -18874368
  %19 = inttoptr i32 %add51.i to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #11, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !119
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #11, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !121
  tail call void @arm_heavy_mb() #11
  %add65.i = add i32 %11, 2
  %and66.i = and i32 %add65.i, 1048575
  %add67.i = or i32 %and66.i, -18874368
  %22 = inttoptr i32 %add67.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 1) #11, !srcloc !113
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #11, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %23)
  %cmp78.i = icmp ult i8 %23, 64
  br i1 %cmp78.i, label %ser12_check_uart.exit.thread90, label %ser12_check_uart.exit

ser12_check_uart.exit.thread90:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !123
  tail call void @arm_heavy_mb() #11
  %add84.i = add i32 %11, 7
  %and85.i = and i32 %add84.i, 1048575
  %add86.i = or i32 %and85.i, -18874368
  %24 = inttoptr i32 %add86.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 90) #11, !srcloc !113
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #11, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 -91) #11, !srcloc !113
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #11, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %25)
  %cmp110.not.i = icmp eq i8 %25, 90
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %26)
  %cmp113.not.i = icmp eq i8 %26, -91
  %or.cond.i = select i1 %cmp110.not.i, i1 %cmp113.not.i, i1 false
  %spec.select.i = select i1 %or.cond.i, i32 2, i32 1
  br label %do.body

ser12_check_uart.exit:                            ; preds = %if.end.i
  %27 = lshr i8 %23, 6
  %28 = zext i8 %27 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__const.ser12_check_uart.uart_tab, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp19 = icmp eq i8 %27, 1
  br i1 %cmp19, label %ser12_check_uart.exit.if.then20_crit_edge, label %ser12_check_uart.exit.do.body_crit_edge

ser12_check_uart.exit.do.body_crit_edge:          ; preds = %ser12_check_uart.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

ser12_check_uart.exit.if.then20_crit_edge:        ; preds = %ser12_check_uart.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then20:                                        ; preds = %ser12_check_uart.exit.if.then20_crit_edge, %if.end16.if.then20_crit_edge
  %31 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_addr, align 32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %32, i32 noundef 8) #11
  br label %cleanup

do.body:                                          ; preds = %ser12_check_uart.exit.do.body_crit_edge, %ser12_check_uart.exit.thread90
  %retval.0.i93 = phi i32 [ %spec.select.i, %ser12_check_uart.exit.thread90 ], [ %30, %ser12_check_uart.exit.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !127
  tail call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base_addr, align 32
  %add = add i32 %34, 2
  %and = and i32 %add, 1048575
  %add24 = or i32 %and, -18874368
  %35 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 0) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base_addr, align 32
  %add30 = add i32 %37, 4
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %38 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 13) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @arm_heavy_mb() #11
  %39 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %base_addr, align 32
  %add38 = add i32 %40, 1
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %41 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 0) #11, !srcloc !113
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %43, ptr noundef nonnull @ser12_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef nonnull %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool44.not = icmp eq i32 %call.i, 0
  br i1 %tobool44.not, label %do.body48, label %if.then45

if.then45:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base_addr, align 32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %45, i32 noundef 8) #11
  br label %cleanup

do.body48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !130
  tail call void @arm_heavy_mb() #11
  %46 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base_addr, align 32
  %add52 = add i32 %47, 1
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %48 = inttoptr i32 %add54 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 2) #11, !srcloc !113
  %opt_dcd = getelementptr i8, ptr %dev, i32 4020
  %49 = ptrtoint ptr %opt_dcd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %opt_dcd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool56.not = icmp eq i32 %50, 0
  %conv = select i1 %tobool56.not, i8 4, i8 6
  tail call fastcc void @ser12_set_divisor(ptr noundef nonnull %dev, i8 noundef zeroext %conv)
  %51 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base_addr, align 32
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @uart_str, i32 0, i32 %retval.0.i93
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @bc_drvname, i32 noundef %52, i32 noundef %54, ptr noundef %56) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body48, %if.then45, %if.then20, %if.end11.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then20 ], [ -16, %if.then45 ], [ 0, %do.body48 ], [ -6, %entry.cleanup_crit_edge ], [ -6, %lor.lhs.false5.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -13, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ser12_close(ptr noundef %dev) #6 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !131
  tail call void @arm_heavy_mb() #11
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %2 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !132
  tail call void @arm_heavy_mb() #11
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base_addr, align 32
  %add8 = add i32 %4, 4
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %5 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 1) #11, !srcloc !113
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
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @bc_drvname, i32 noundef %11, i32 noundef %13) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @baycom_ioctl(ptr noundef %dev, ptr noundef %data, ptr noundef %hi, i32 noundef %cmd) #6 align 64 {
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
  br i1 %cmp.not, label %do.end10, label %do.body4, !prof !133

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/hamradio/baycom_ser_hdx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 564, 0\0A.popsection", ""() #11, !srcloc !134
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
    i32 41, label %sw.bb32
    i32 42, label %sw.bb41
    i32 2, label %if.end13.cleanup_crit_edge
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  %data15 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %data15, ptr @.str.14, i32 6)
  %opt_dcd = getelementptr i8, ptr %dev, i32 4020
  %10 = ptrtoint ptr %opt_dcd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %opt_dcd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp17 = icmp slt i32 %11, 1
  br i1 %cmp17, label %if.then18, label %sw.bb.if.end59.i.i_crit_edge

sw.bb.if.end59.i.i_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i

if.then18:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool22.not = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %11)
  %cmp24 = icmp eq i32 %11, -2
  %strlen = tail call i32 @strlen(ptr noundef %data15) #15
  %endptr = getelementptr i8, ptr %data15, i32 %strlen
  %cond.val = select i1 %cmp24, i16 16384, i16 11008
  %12 = select i1 %tobool22.not, i16 10752, i16 %cond.val
  %13 = ptrtoint ptr %endptr to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %endptr, align 1
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %if.then18, %sw.bb.if.end59.i.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end59.i.i.cleanup_crit_edge, label %if.end.i.i

if.end59.i.i.cleanup_crit_edge:                   ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end59.i.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 132, i32 -1226833920) #16, !srcloc !135
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
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
  %tobool29.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool29.not, i32 0, i32 -14
  br label %cleanup

sw.bb32:                                          ; preds = %if.end13
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %sw.bb32.cleanup_crit_edge

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb32
  %call34 = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call34, label %if.end36, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %data37 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %arrayidx = getelementptr %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1, i32 1, i32 99
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx, align 1
  tail call fastcc void @baycom_setmode(ptr noundef %add.ptr.i, ptr noundef %data37)
  br label %cleanup

sw.bb41:                                          ; preds = %if.end13
  %data42 = getelementptr inbounds %struct.hdlcdrv_ioctl, ptr %hi, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %data42, ptr @.str.14, i32 6)
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #11
  %call.i.i94 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i94, label %sw.bb41.cleanup_crit_edge, label %if.end.i.i97

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i97:                                     ; preds = %sw.bb41
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 132, i32 -1226833920) #16, !srcloc !135
  %asmresult.i.i95 = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i95)
  %cmp.i6.i96 = icmp eq i32 %asmresult.i.i95, 0
  br i1 %cmp.i6.i96, label %copy_to_user.exit102, label %if.end.i.i97.cleanup_crit_edge

if.end.i.i97.cleanup_crit_edge:                   ; preds = %if.end.i.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit102:                             ; preds = %if.end.i.i97
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i98 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hi, i32 noundef 132) #11
  %call.i12.i.i99 = tail call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef %hi, i32 noundef 132) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i99)
  %tobool46.not = icmp eq i32 %call.i12.i.i99, 0
  %spec.select131 = select i1 %tobool46.not, i32 0, i32 -14
  br label %cleanup

if.then.i:                                        ; preds = %if.end13
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #11
  %call.i.i104 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i104, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 16, i32 -1226833920) #16
  %asmresult.i.i105 = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i105)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i105, 0
  br i1 %cmp.i1.i, label %if.end.i.i107, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !133

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i107:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i106 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bi, i32 noundef 16) #11
  %21 = call i32 @llvm.read_register.i32(metadata !99) #11
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !136
  %and.i.i.i.i = and i32 %23, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %bi, ptr noundef %data, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end53, label %if.end.i.i107.if.then11.i.i_crit_edge, !prof !133

if.end.i.i107.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i107.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i107.if.then11.i.i_crit_edge ], [ 16, %if.then.i.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %bi, i32 %sub.i.i
  %24 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end53:                                         ; preds = %if.end.i.i107
  %25 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 146, i32 %26)
  %cond68 = icmp eq i32 %26, 146
  br i1 %cond68, label %if.end59.i.i112, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59.i.i112:                                  ; preds = %if.end53
  %ptt_keyed = getelementptr i8, ptr %dev, i32 4012
  %27 = ptrtoint ptr %ptt_keyed to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ptt_keyed, align 4
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %0, align 4
  %last_intcnt = getelementptr i8, ptr %dev, i32 4076
  %30 = ptrtoint ptr %last_intcnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_intcnt, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %1, align 4
  %last_pllcorr = getelementptr i8, ptr %dev, i32 4084
  %33 = ptrtoint ptr %last_pllcorr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %last_pllcorr, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %2, align 4
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #11
  %call.i.i113 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i113, label %if.end59.i.i112.cleanup_crit_edge, label %copy_to_user.exit122

if.end59.i.i112.cleanup_crit_edge:                ; preds = %if.end59.i.i112
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit122:                             ; preds = %if.end59.i.i112
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i118 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %bi, i32 noundef 16) #11
  %call.i12.i.i119 = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %bi, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i119)
  %tobool64.not = icmp eq i32 %call.i12.i.i119, 0
  %spec.select132 = select i1 %tobool64.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit122, %if.end59.i.i112.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.then11.i.i, %copy_to_user.exit102, %if.end.i.i97.cleanup_crit_edge, %sw.bb41.cleanup_crit_edge, %if.end36, %lor.lhs.false.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end59.i.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -22, %entry.cleanup_crit_edge ], [ -515, %do.end10.cleanup_crit_edge ], [ -13, %lor.lhs.false.cleanup_crit_edge ], [ -13, %sw.bb32.cleanup_crit_edge ], [ 3, %if.end13.cleanup_crit_edge ], [ -515, %if.end53.cleanup_crit_edge ], [ -14, %if.end59.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %sw.bb41.cleanup_crit_edge ], [ -14, %if.end.i.i97.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end59.i.i112.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ %spec.select131, %copy_to_user.exit102 ], [ %spec.select132, %copy_to_user.exit122 ]
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
define internal i32 @ser12_interrupt(i32 noundef %irq, ptr noundef %dev_id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %tobool.not = icmp eq ptr %dev_id, null
  %tobool1.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1522984824, i32 %1)
  %cmp.not = icmp eq i32 %1, 1522984824
  br i1 %cmp.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %add = add i32 %3, 2
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %4 = inttoptr i32 %add3 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #11, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !139
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %debug_vals.i = getelementptr i8, ptr %dev_id, i32 4068
  %cur_intcnt.i = getelementptr i8, ptr %dev_id, i32 4072
  %8 = ptrtoint ptr %cur_intcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_intcnt.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %cur_intcnt.i, align 4
  %10 = ptrtoint ptr %debug_vals.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_vals.i, align 4
  %add.neg.i = add i32 %7, -100
  %sub.i = sub i32 %add.neg.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.end9.baycom_int_freq.exit_crit_edge

if.end9.baycom_int_freq.exit_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %baycom_int_freq.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %debug_vals.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %debug_vals.i, align 4
  %last_intcnt.i = getelementptr i8, ptr %dev_id, i32 4076
  %13 = ptrtoint ptr %last_intcnt.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %inc.i, ptr %last_intcnt.i, align 4
  %14 = ptrtoint ptr %cur_intcnt.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cur_intcnt.i, align 4
  %cur_pllcorr.i = getelementptr i8, ptr %dev_id, i32 4080
  %15 = ptrtoint ptr %cur_pllcorr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_pllcorr.i, align 4
  %last_pllcorr.i = getelementptr i8, ptr %dev_id, i32 4084
  %17 = ptrtoint ptr %last_pllcorr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %last_pllcorr.i, align 4
  store i32 0, ptr %cur_pllcorr.i, align 4
  br label %baycom_int_freq.exit

baycom_int_freq.exit:                             ; preds = %if.then.i, %if.end9.baycom_int_freq.exit_crit_edge
  %ptt.i = getelementptr i8, ptr %dev_id, i32 3044
  %calibrate.i = getelementptr i8, ptr %dev_id, i32 3048
  %ser12.i = getelementptr i8, ptr %dev_id, i32 4032
  %shreg.i = getelementptr i8, ptr %dev_id, i32 4028
  %hdlctx.i.i = getelementptr i8, ptr %dev_id, i32 2912
  %rd.i.i.i = getelementptr i8, ptr %dev_id, i32 2956
  %wr.i.i.i = getelementptr i8, ptr %dev_id, i32 2960
  %shreg.i.i.i = getelementptr i8, ptr %dev_id, i32 3484
  %wr.i.i.i122 = getelementptr i8, ptr %dev_id, i32 3480
  %dcd_shreg.i = getelementptr i8, ptr %dev_id, i32 4052
  %last_sample.i = getelementptr i8, ptr %dev_id, i32 4048
  %opt_dcd.i = getelementptr i8, ptr %dev_id, i32 4020
  %dcd_sum058.i = getelementptr i8, ptr %dev_id, i32 4036
  %dcd_time.i = getelementptr i8, ptr %dev_id, i32 4056
  %dcd_sum1.i = getelementptr i8, ptr %dev_id, i32 4040
  %dcd_sum2.i = getelementptr i8, ptr %dev_id, i32 4044
  %dcd2.i.i = getelementptr i8, ptr %dev_id, i32 2496
  %interm_sample.i = getelementptr i8, ptr %dev_id, i32 4064
  %cur_pllcorr216.i = getelementptr i8, ptr %dev_id, i32 4080
  %last_rxbit229.i = getelementptr i8, ptr %dev_id, i32 4049
  %hdlcrx.i.i = getelementptr i8, ptr %dev_id, i32 2360
  %wr.i.i548.i = getelementptr i8, ptr %dev_id, i32 2408
  %rd.i.i.i147 = getelementptr i8, ptr %dev_id, i32 2404
  %modem = getelementptr i8, ptr %dev_id, i32 4024
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %baycom_int_freq.exit
  %iir.0 = phi i8 [ %5, %baycom_int_freq.exit ], [ %354, %sw.epilog.do.body_crit_edge ]
  %18 = and i8 %iir.0, 6
  %and11 = zext i8 %18 to i32
  %19 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and11, label %sw.default [
    i32 6, label %sw.bb
    i32 4, label %sw.bb20
    i32 2, label %sw.bb29
  ]

sw.bb:                                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_addr, align 32
  %add14 = add i32 %21, 5
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %22 = inttoptr i32 %add16 to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #11, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base_addr, align 32
  %and24 = and i32 %25, 1048575
  %add25 = or i32 %and24, -18874368
  %26 = inttoptr i32 %add25 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #11, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  br label %sw.epilog

sw.bb29:                                          ; preds = %do.body
  %28 = ptrtoint ptr %ptt.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ptt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %hdlcdrv_ptt.exit, label %sw.bb29.if.then33_crit_edge

sw.bb29.if.then33_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

hdlcdrv_ptt.exit:                                 ; preds = %sw.bb29
  %30 = ptrtoint ptr %calibrate.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %calibrate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i117 = icmp slt i32 %31, 1
  br i1 %cmp.i117, label %if.else, label %hdlcdrv_ptt.exit.if.then33_crit_edge

hdlcdrv_ptt.exit.if.then33_crit_edge:             ; preds = %hdlcdrv_ptt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

if.then33:                                        ; preds = %hdlcdrv_ptt.exit.if.then33_crit_edge, %sw.bb29.if.then33_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %32 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base_addr, align 32
  %add.i.i = add i32 %33, 3
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %34 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 -127) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !143
  tail call void @arm_heavy_mb() #11
  %35 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_addr, align 32
  %and6.i.i = and i32 %36, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %37 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 12) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void @arm_heavy_mb() #11
  %38 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base_addr, align 32
  %add12.i.i = add i32 %39, 1
  %and13.i.i = and i32 %add12.i.i, 1048575
  %add14.i.i = or i32 %and13.i.i, -18874368
  %40 = inttoptr i32 %add14.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 0) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base_addr, align 32
  %add19.i.i = add i32 %42, 3
  %and20.i.i = and i32 %add19.i.i, 1048575
  %add21.i.i = or i32 %and20.i.i, -18874368
  %43 = inttoptr i32 %add21.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 1) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base_addr, align 32
  %and27.i.i = and i32 %45, 1048575
  %add28.i.i = or i32 %and27.i.i, -18874368
  %46 = inttoptr i32 %add28.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 0) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !147
  tail call void @arm_heavy_mb() #11
  %47 = ptrtoint ptr %ser12.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ser12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.i = icmp ne i8 %48, 0
  %lnot.ext.i = zext i1 %tobool.i to i8
  %or.i = or i8 %lnot.ext.i, 14
  %49 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %base_addr, align 32
  %add.i = add i32 %50, 4
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %51 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %or.i) #11, !srcloc !113
  %52 = ptrtoint ptr %shreg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %shreg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp.i118 = icmp ult i32 %53, 2
  br i1 %cmp.i118, label %if.then.i119, label %if.then33.ser12_tx.exit_crit_edge

if.then33.ser12_tx.exit_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %ser12_tx.exit

if.then.i119:                                     ; preds = %if.then33
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hdlctx.i.i) #11
  %54 = ptrtoint ptr %rd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rd.i.i.i, align 4
  %56 = ptrtoint ptr %wr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %wr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp5.i.not.i.i = icmp eq i32 %55, %57
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hdlctx.i.i, i32 noundef %call2.i.i.i) #11
  br i1 %cmp5.i.not.i.i, label %if.then.i.i, label %if.else6.i.i

if.then.i.i:                                      ; preds = %if.then.i119
  %58 = ptrtoint ptr %calibrate.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %calibrate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i.i = icmp sgt i32 %59, 0
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i.i = add nsw i32 %59, -1
  %60 = ptrtoint ptr %calibrate.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %dec.i.i, ptr %calibrate.i, align 4
  br label %hdlcdrv_getbits.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %ptt.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %ptt.i, align 4
  br label %hdlcdrv_getbits.exit.i

if.else6.i.i:                                     ; preds = %if.then.i119
  %call2.i15.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hdlctx.i.i) #11
  %62 = ptrtoint ptr %rd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rd.i.i.i, align 4
  %64 = ptrtoint ptr %wr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %wr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp5.i18.i.i = icmp eq i32 %63, %65
  br i1 %cmp5.i18.i.i, label %if.else6.i.i.hdlcdrv_hbuf_get.exit.i.i_crit_edge, label %if.else.i.i.i

if.else6.i.i.hdlcdrv_hbuf_get.exit.i.i_crit_edge: ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdlcdrv_hbuf_get.exit.i.i

if.else.i.i.i:                                    ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i.i = add i32 %63, 1
  %rem.i.i.i = and i32 %add.i.i.i, 31
  %arrayidx.i.i.i = getelementptr %struct.hdlcdrv_hdlcbuffer, ptr %hdlctx.i.i, i32 0, i32 3, i32 %63
  %66 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.i.i.i, align 2
  %68 = ptrtoint ptr %rd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %rem.i.i.i, ptr %rd.i.i.i, align 4
  %phi.cast.i.i = zext i16 %67 to i32
  br label %hdlcdrv_hbuf_get.exit.i.i

hdlcdrv_hbuf_get.exit.i.i:                        ; preds = %if.else.i.i.i, %if.else6.i.i.hdlcdrv_hbuf_get.exit.i.i_crit_edge
  %val.0.i.i.i = phi i32 [ %phi.cast.i.i, %if.else.i.i.i ], [ 0, %if.else6.i.i.hdlcdrv_hbuf_get.exit.i.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hdlctx.i.i, i32 noundef %call2.i15.i.i) #11
  br label %hdlcdrv_getbits.exit.i

hdlcdrv_getbits.exit.i:                           ; preds = %hdlcdrv_hbuf_get.exit.i.i, %if.else.i.i, %if.then2.i.i
  %ret.0.i.i = phi i32 [ %val.0.i.i.i, %hdlcdrv_hbuf_get.exit.i.i ], [ 0, %if.else.i.i ], [ 0, %if.then2.i.i ]
  %or6.i = or i32 %ret.0.i.i, 65536
  %69 = ptrtoint ptr %shreg.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or6.i, ptr %shreg.i, align 4
  br label %ser12_tx.exit

ser12_tx.exit:                                    ; preds = %hdlcdrv_getbits.exit.i, %if.then33.ser12_tx.exit_crit_edge
  %70 = ptrtoint ptr %ser12.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ser12.i, align 4
  %conv12.i = zext i8 %71 to i32
  %72 = ptrtoint ptr %shreg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %shreg.i, align 4
  %and15.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i, i32 %conv12.i)
  %tobool16.not.i = icmp eq i32 %and15.i, %conv12.i
  %conv19.i = zext i1 %tobool16.not.i to i8
  %74 = ptrtoint ptr %ser12.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv19.i, ptr %ser12.i, align 4
  %shr.i = lshr i32 %73, 1
  %75 = ptrtoint ptr %shreg.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shr.i, ptr %shreg.i, align 4
  br label %do.body35

if.else:                                          ; preds = %hdlcdrv_ptt.exit
  %76 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %base_addr, align 32
  %add.i120 = add i32 %77, 6
  %and.i121 = and i32 %add.i120, 1048575
  %add1.i = or i32 %and.i121, -18874368
  %78 = inttoptr i32 %add1.i to ptr
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %78) #11, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  %80 = and i8 %79, 16
  %81 = ptrtoint ptr %shreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %shreg.i.i.i, align 4
  %shr.i.i.i = lshr i32 %82, 1
  %83 = shl nuw i8 %80, 3
  %84 = zext i8 %83 to i32
  %or.i.i.i = or i32 %shr.i.i.i, %84
  store i32 %or.i.i.i, ptr %shreg.i.i.i, align 4
  %conv18.i.i.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv18.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv18.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.else.hdlcdrv_channelbit.exit.i_crit_edge, label %if.then.i.i.i

if.else.hdlcdrv_channelbit.exit.i_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdlcdrv_channelbit.exit.i

if.then.i.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv6.i.i.i = trunc i32 %or.i.i.i to i8
  %85 = ptrtoint ptr %wr.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %wr.i.i.i122, align 4
  %arrayidx.i.i.i123 = getelementptr %struct.hdlcdrv_state, ptr %add.ptr.i, i32 0, i32 8, i32 3, i32 %86
  %87 = ptrtoint ptr %arrayidx.i.i.i123 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv6.i.i.i, ptr %arrayidx.i.i.i123, align 1
  %88 = load i32, ptr %wr.i.i.i122, align 4
  %add.i.i.i124 = add i32 %88, 1
  %rem.i.i.i125 = and i32 %add.i.i.i124, 255
  store i32 %rem.i.i.i125, ptr %wr.i.i.i122, align 4
  %89 = ptrtoint ptr %shreg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 128, ptr %shreg.i.i.i, align 4
  br label %hdlcdrv_channelbit.exit.i

hdlcdrv_channelbit.exit.i:                        ; preds = %if.then.i.i.i, %if.else.hdlcdrv_channelbit.exit.i_crit_edge
  %90 = ptrtoint ptr %dcd_shreg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dcd_shreg.i, align 4
  %shl.i = shl i32 %91, 1
  %92 = ptrtoint ptr %last_sample.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %last_sample.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %93)
  %cmp.i126 = icmp ne i8 %80, %93
  %conv10.i = zext i1 %cmp.i126 to i32
  %or.i127 = or i32 %shl.i, %conv10.i
  %94 = ptrtoint ptr %dcd_shreg.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or.i127, ptr %dcd_shreg.i, align 4
  %95 = ptrtoint ptr %last_sample.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %80, ptr %last_sample.i, align 4
  br i1 %cmp.i126, label %if.then.i128, label %hdlcdrv_channelbit.exit.i.if.end60.i_crit_edge

hdlcdrv_channelbit.exit.i.if.end60.i_crit_edge:   ; preds = %hdlcdrv_channelbit.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i

if.then.i128:                                     ; preds = %hdlcdrv_channelbit.exit.i
  %96 = ptrtoint ptr %opt_dcd.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %opt_dcd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool21.not.i = icmp eq i32 %97, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %if.then.i128
  call void @__sanitizer_cov_trace_pc() #13
  %98 = and i32 %91, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool32.not.i = icmp eq i32 %98, 0
  %99 = shl i32 %91, 30
  %100 = ashr i32 %99, 31
  %101 = shl i32 %91, 29
  %102 = ashr i32 %101, 31
  %add46.neg.i = add nsw i32 %100, %102
  %103 = shl i32 %91, 28
  %104 = ashr i32 %103, 31
  %add52.neg.i = add nsw i32 %add46.neg.i, %104
  %and26.i = shl i32 %91, 4
  %105 = and i32 %and26.i, 16
  %106 = or i32 %105, 32
  %mul.i = select i1 %tobool32.not.i, i32 %106, i32 %105
  %sub.i129 = add nsw i32 %add52.neg.i, %mul.i
  %107 = ptrtoint ptr %dcd_sum058.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dcd_sum058.i, align 4
  br label %if.end60.sink.split.i

if.else.i:                                        ; preds = %if.then.i128
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %dcd_sum058.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dcd_sum058.i, align 4
  br label %if.end60.sink.split.i

if.end60.sink.split.i:                            ; preds = %if.else.i, %if.then22.i
  %.sink560.i = phi i32 [ %108, %if.then22.i ], [ -1, %if.else.i ]
  %sub.sink.i = phi i32 [ %sub.i129, %if.then22.i ], [ %110, %if.else.i ]
  %add55.i = add i32 %sub.sink.i, %.sink560.i
  %111 = ptrtoint ptr %dcd_sum058.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %add55.i, ptr %dcd_sum058.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.end60.sink.split.i, %hdlcdrv_channelbit.exit.i.if.end60.i_crit_edge
  %112 = ptrtoint ptr %dcd_time.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dcd_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool63.not.i = icmp eq i32 %113, 0
  br i1 %tobool63.not.i, label %if.then64.i, label %if.end97.ithread-pre-split

if.then64.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %dcd_sum058.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dcd_sum058.i, align 4
  %116 = ptrtoint ptr %dcd_sum1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dcd_sum1.i, align 4
  %add71.i = add i32 %117, %115
  %118 = ptrtoint ptr %dcd_sum2.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dcd_sum2.i, align 4
  %add74.i = add i32 %add71.i, %119
  %add74.lobit.i = lshr i32 %add74.i, 31
  %120 = trunc i32 %add74.lobit.i to i8
  %121 = ptrtoint ptr %dcd2.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %dcd2.i.i, align 4
  store i32 %117, ptr %dcd_sum2.i, align 4
  store i32 %115, ptr %dcd_sum1.i, align 4
  store i32 2, ptr %dcd_sum058.i, align 4
  %122 = ptrtoint ptr %opt_dcd.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %opt_dcd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool93.not.i = icmp eq i32 %123, 0
  %cond.i = select i1 %tobool93.not.i, i32 240, i32 12
  %124 = ptrtoint ptr %dcd_time.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %cond.i, ptr %dcd_time.i, align 4
  br label %if.end97.i

if.end97.ithread-pre-split:                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  %125 = ptrtoint ptr %opt_dcd.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pr = load i32, ptr %opt_dcd.i, align 4
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.end97.ithread-pre-split, %if.then64.i
  %126 = phi i32 [ %.pr, %if.end97.ithread-pre-split ], [ %123, %if.then64.i ]
  %127 = ptrtoint ptr %dcd_time.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dcd_time.i, align 4
  %dec101.i = add i32 %128, -1
  store i32 %dec101.i, ptr %dcd_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool103.not.i = icmp eq i32 %126, 0
  %129 = ptrtoint ptr %interm_sample.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %interm_sample.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool107.not.i = icmp eq i8 %130, 0
  br i1 %tobool103.not.i, label %if.then104.i, label %if.else199.i

if.then104.i:                                     ; preds = %if.end97.i
  br i1 %tobool107.not.i, label %if.else109.i, label %if.then108.i

if.then108.i:                                     ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %131 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %base_addr, align 32
  %add.i.i130 = add i32 %132, 3
  %and.i.i131 = and i32 %add.i.i130, 1048575
  %add1.i.i132 = or i32 %and.i.i131, -18874368
  %133 = inttoptr i32 %add1.i.i132 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %133, i8 -127) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !143
  tail call void @arm_heavy_mb() #11
  %134 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %base_addr, align 32
  %and6.i.i133 = and i32 %135, 1048575
  %add7.i.i134 = or i32 %and6.i.i133, -18874368
  %136 = inttoptr i32 %add7.i.i134 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 4) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void @arm_heavy_mb() #11
  %137 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %base_addr, align 32
  %add12.i.i135 = add i32 %138, 1
  %and13.i.i136 = and i32 %add12.i.i135, 1048575
  %add14.i.i137 = or i32 %and13.i.i136, -18874368
  %139 = inttoptr i32 %add14.i.i137 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 0) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @arm_heavy_mb() #11
  %140 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %base_addr, align 32
  %add19.i.i138 = add i32 %141, 3
  %and20.i.i139 = and i32 %add19.i.i138, 1048575
  %add21.i.i140 = or i32 %and20.i.i139, -18874368
  %142 = inttoptr i32 %add21.i.i140 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 1) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @arm_heavy_mb() #11
  %143 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %base_addr, align 32
  %and27.i.i141 = and i32 %144, 1048575
  %add28.i.i142 = or i32 %and27.i.i141, -18874368
  %145 = inttoptr i32 %add28.i.i142 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 0) #11, !srcloc !113
  br label %if.end140.i

if.else109.i:                                     ; preds = %if.then104.i
  %and113.i = and i32 %or.i127, 7
  %146 = zext i32 %and113.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %and113.i, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 4, label %sw.bb114.i
  ]

sw.bb.i:                                          ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %147 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %base_addr, align 32
  %add.i451.i = add i32 %148, 3
  %and.i452.i = and i32 %add.i451.i, 1048575
  %add1.i453.i = or i32 %and.i452.i, -18874368
  %149 = inttoptr i32 %add1.i453.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %149, i8 -127) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !143
  tail call void @arm_heavy_mb() #11
  %150 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %base_addr, align 32
  %and6.i454.i = and i32 %151, 1048575
  %add7.i455.i = or i32 %and6.i454.i, -18874368
  %152 = inttoptr i32 %add7.i455.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %152, i8 5) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void @arm_heavy_mb() #11
  %153 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %base_addr, align 32
  %add12.i456.i = add i32 %154, 1
  %and13.i457.i = and i32 %add12.i456.i, 1048575
  %add14.i458.i = or i32 %and13.i457.i, -18874368
  %155 = inttoptr i32 %add14.i458.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %155, i8 0) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @arm_heavy_mb() #11
  %156 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %base_addr, align 32
  %add19.i459.i = add i32 %157, 3
  %and20.i460.i = and i32 %add19.i459.i, 1048575
  %add21.i461.i = or i32 %and20.i460.i, -18874368
  %158 = inttoptr i32 %add21.i461.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 1) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @arm_heavy_mb() #11
  %159 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %base_addr, align 32
  %and27.i462.i = and i32 %160, 1048575
  %add28.i463.i = or i32 %and27.i462.i, -18874368
  %161 = inttoptr i32 %add28.i463.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %161, i8 0) #11, !srcloc !113
  %162 = ptrtoint ptr %cur_pllcorr216.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cur_pllcorr216.i, align 4
  %inc.i144 = add i32 %163, 1
  store i32 %inc.i144, ptr %cur_pllcorr216.i, align 4
  br label %sw.epilog.i

sw.bb114.i:                                       ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %164 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %base_addr, align 32
  %add.i465.i = add i32 %165, 3
  %and.i466.i = and i32 %add.i465.i, 1048575
  %add1.i467.i = or i32 %and.i466.i, -18874368
  %166 = inttoptr i32 %add1.i467.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %166, i8 -127) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !143
  tail call void @arm_heavy_mb() #11
  %167 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %base_addr, align 32
  %and6.i468.i = and i32 %168, 1048575
  %add7.i469.i = or i32 %and6.i468.i, -18874368
  %169 = inttoptr i32 %add7.i469.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %169, i8 3) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void @arm_heavy_mb() #11
  %170 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %base_addr, align 32
  %add12.i470.i = add i32 %171, 1
  %and13.i471.i = and i32 %add12.i470.i, 1048575
  %add14.i472.i = or i32 %and13.i471.i, -18874368
  %172 = inttoptr i32 %add14.i472.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %172, i8 0) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @arm_heavy_mb() #11
  %173 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %base_addr, align 32
  %add19.i473.i = add i32 %174, 3
  %and20.i474.i = and i32 %add19.i473.i, 1048575
  %add21.i475.i = or i32 %and20.i474.i, -18874368
  %175 = inttoptr i32 %add21.i475.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %175, i8 1) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @arm_heavy_mb() #11
  %176 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %base_addr, align 32
  %and27.i476.i = and i32 %177, 1048575
  %add28.i477.i = or i32 %and27.i476.i, -18874368
  %178 = inttoptr i32 %add28.i477.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %178, i8 0) #11, !srcloc !113
  %179 = ptrtoint ptr %cur_pllcorr216.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %cur_pllcorr216.i, align 4
  %dec117.i = add i32 %180, -1
  store i32 %dec117.i, ptr %cur_pllcorr216.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %181 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %base_addr, align 32
  %add.i479.i = add i32 %182, 3
  %and.i480.i = and i32 %add.i479.i, 1048575
  %add1.i481.i = or i32 %and.i480.i, -18874368
  %183 = inttoptr i32 %add1.i481.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %183, i8 -127) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !143
  tail call void @arm_heavy_mb() #11
  %184 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %base_addr, align 32
  %and6.i482.i = and i32 %185, 1048575
  %add7.i483.i = or i32 %and6.i482.i, -18874368
  %186 = inttoptr i32 %add7.i483.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %186, i8 4) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void @arm_heavy_mb() #11
  %187 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %base_addr, align 32
  %add12.i484.i = add i32 %188, 1
  %and13.i485.i = and i32 %add12.i484.i, 1048575
  %add14.i486.i = or i32 %and13.i485.i, -18874368
  %189 = inttoptr i32 %add14.i486.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %189, i8 0) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @arm_heavy_mb() #11
  %190 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %base_addr, align 32
  %add19.i487.i = add i32 %191, 3
  %and20.i488.i = and i32 %add19.i487.i, 1048575
  %add21.i489.i = or i32 %and20.i488.i, -18874368
  %192 = inttoptr i32 %add21.i489.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %192, i8 1) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @arm_heavy_mb() #11
  %193 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %base_addr, align 32
  %and27.i490.i = and i32 %194, 1048575
  %add28.i491.i = or i32 %and27.i490.i, -18874368
  %195 = inttoptr i32 %add28.i491.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %195, i8 0) #11, !srcloc !113
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb114.i, %sw.bb.i
  %196 = ptrtoint ptr %shreg.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %shreg.i, align 4
  %shr119.i = lshr i32 %197, 1
  store i32 %shr119.i, ptr %shreg.i, align 4
  %198 = ptrtoint ptr %last_sample.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %last_sample.i, align 4
  %200 = ptrtoint ptr %last_rxbit229.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %last_rxbit229.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %199, i8 %201)
  %cmp127.i = icmp eq i8 %199, %201
  br i1 %cmp127.i, label %if.then129.i, label %sw.epilog.i.if.end133.i_crit_edge

sw.epilog.i.if.end133.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133.i

if.then129.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %or132.i = or i32 %shr119.i, 65536
  %202 = ptrtoint ptr %shreg.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %or132.i, ptr %shreg.i, align 4
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then129.i, %sw.epilog.i.if.end133.i_crit_edge
  %203 = ptrtoint ptr %last_rxbit229.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %199, ptr %last_rxbit229.i, align 1
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.end133.i, %if.then108.i
  %204 = ptrtoint ptr %interm_sample.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %interm_sample.i, align 4
  %inc144.i = add i8 %205, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc144.i)
  %cmp146.i = icmp ugt i8 %inc144.i, 2
  %spec.select449.i = select i1 %cmp146.i, i8 0, i8 %inc144.i
  %206 = ptrtoint ptr %interm_sample.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %spec.select449.i, ptr %interm_sample.i, align 4
  %207 = ptrtoint ptr %dcd_shreg.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %dcd_shreg.i, align 4
  %and156.i = and i32 %208, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156.i)
  %tobool157.not.i = icmp eq i32 %and156.i, 0
  br i1 %tobool157.not.i, label %if.end140.i.do.body.i_crit_edge, label %if.then158.i

if.end140.i.do.body.i_crit_edge:                  ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then158.i:                                     ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr164.i = lshr i32 %208, 1
  %and165.i = and i32 %shr164.i, 1
  %and170.i = and i32 %208, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.i)
  %tobool171.not.i = icmp eq i32 %and170.i, 0
  %shl172.i = select i1 %tobool171.not.i, i32 2, i32 0
  %add173.i = or i32 %shl172.i, %and165.i
  %209 = shl i32 %208, 29
  %210 = ashr i32 %209, 31
  %211 = shl i32 %208, 28
  %212 = ashr i32 %211, 31
  %add185.neg.i = add nsw i32 %210, %212
  %213 = shl i32 %208, 27
  %214 = ashr i32 %213, 31
  %add191.neg.i = add nsw i32 %add185.neg.i, %214
  %mul192.i = shl nuw nsw i32 %add173.i, 4
  %sub193.i = add nsw i32 %add191.neg.i, %mul192.i
  %215 = ptrtoint ptr %dcd_sum058.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %dcd_sum058.i, align 4
  %add197.i = add i32 %sub193.i, %216
  br label %do.body.i.sink.split

if.else199.i:                                     ; preds = %if.end97.i
  br i1 %tobool107.not.i, label %if.else205.i, label %if.then204.i

if.then204.i:                                     ; preds = %if.else199.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %217 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %base_addr, align 32
  %add.i493.i = add i32 %218, 3
  %and.i494.i = and i32 %add.i493.i, 1048575
  %add1.i495.i = or i32 %and.i494.i, -18874368
  %219 = inttoptr i32 %add1.i495.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %219, i8 -127) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !143
  tail call void @arm_heavy_mb() #11
  %220 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %base_addr, align 32
  %and6.i496.i = and i32 %221, 1048575
  %add7.i497.i = or i32 %and6.i496.i, -18874368
  %222 = inttoptr i32 %add7.i497.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %222, i8 6) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void @arm_heavy_mb() #11
  %223 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %base_addr, align 32
  %add12.i498.i = add i32 %224, 1
  %and13.i499.i = and i32 %add12.i498.i, 1048575
  %add14.i500.i = or i32 %and13.i499.i, -18874368
  %225 = inttoptr i32 %add14.i500.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %225, i8 0) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @arm_heavy_mb() #11
  %226 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %base_addr, align 32
  %add19.i501.i = add i32 %227, 3
  %and20.i502.i = and i32 %add19.i501.i, 1048575
  %add21.i503.i = or i32 %and20.i502.i, -18874368
  %228 = inttoptr i32 %add21.i503.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %228, i8 1) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @arm_heavy_mb() #11
  %229 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %base_addr, align 32
  %and27.i504.i = and i32 %230, 1048575
  %add28.i505.i = or i32 %and27.i504.i, -18874368
  %231 = inttoptr i32 %add28.i505.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %231, i8 0) #11, !srcloc !113
  br label %if.end244.i

if.else205.i:                                     ; preds = %if.else199.i
  %and209.i = and i32 %or.i127, 3
  %232 = zext i32 %and209.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %232, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %and209.i, label %sw.default218.i [
    i32 1, label %sw.bb210.i
    i32 2, label %sw.bb214.i
  ]

sw.bb210.i:                                       ; preds = %if.else205.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %233 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %base_addr, align 32
  %add.i507.i = add i32 %234, 3
  %and.i508.i = and i32 %add.i507.i, 1048575
  %add1.i509.i = or i32 %and.i508.i, -18874368
  %235 = inttoptr i32 %add1.i509.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %235, i8 -127) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !143
  tail call void @arm_heavy_mb() #11
  %236 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %base_addr, align 32
  %and6.i510.i = and i32 %237, 1048575
  %add7.i511.i = or i32 %and6.i510.i, -18874368
  %238 = inttoptr i32 %add7.i511.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %238, i8 7) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void @arm_heavy_mb() #11
  %239 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %base_addr, align 32
  %add12.i512.i = add i32 %240, 1
  %and13.i513.i = and i32 %add12.i512.i, 1048575
  %add14.i514.i = or i32 %and13.i513.i, -18874368
  %241 = inttoptr i32 %add14.i514.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %241, i8 0) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @arm_heavy_mb() #11
  %242 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %base_addr, align 32
  %add19.i515.i = add i32 %243, 3
  %and20.i516.i = and i32 %add19.i515.i, 1048575
  %add21.i517.i = or i32 %and20.i516.i, -18874368
  %244 = inttoptr i32 %add21.i517.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %244, i8 1) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @arm_heavy_mb() #11
  %245 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %base_addr, align 32
  %and27.i518.i = and i32 %246, 1048575
  %add28.i519.i = or i32 %and27.i518.i, -18874368
  %247 = inttoptr i32 %add28.i519.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %247, i8 0) #11, !srcloc !113
  %248 = ptrtoint ptr %cur_pllcorr216.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %cur_pllcorr216.i, align 4
  %inc213.i = add i32 %249, 1
  store i32 %inc213.i, ptr %cur_pllcorr216.i, align 4
  br label %sw.epilog219.i

sw.bb214.i:                                       ; preds = %if.else205.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %250 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %base_addr, align 32
  %add.i521.i = add i32 %251, 3
  %and.i522.i = and i32 %add.i521.i, 1048575
  %add1.i523.i = or i32 %and.i522.i, -18874368
  %252 = inttoptr i32 %add1.i523.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %252, i8 -127) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !143
  tail call void @arm_heavy_mb() #11
  %253 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %base_addr, align 32
  %and6.i524.i = and i32 %254, 1048575
  %add7.i525.i = or i32 %and6.i524.i, -18874368
  %255 = inttoptr i32 %add7.i525.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %255, i8 5) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void @arm_heavy_mb() #11
  %256 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %base_addr, align 32
  %add12.i526.i = add i32 %257, 1
  %and13.i527.i = and i32 %add12.i526.i, 1048575
  %add14.i528.i = or i32 %and13.i527.i, -18874368
  %258 = inttoptr i32 %add14.i528.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %258, i8 0) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @arm_heavy_mb() #11
  %259 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %base_addr, align 32
  %add19.i529.i = add i32 %260, 3
  %and20.i530.i = and i32 %add19.i529.i, 1048575
  %add21.i531.i = or i32 %and20.i530.i, -18874368
  %261 = inttoptr i32 %add21.i531.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %261, i8 1) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @arm_heavy_mb() #11
  %262 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %base_addr, align 32
  %and27.i532.i = and i32 %263, 1048575
  %add28.i533.i = or i32 %and27.i532.i, -18874368
  %264 = inttoptr i32 %add28.i533.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %264, i8 0) #11, !srcloc !113
  %265 = ptrtoint ptr %cur_pllcorr216.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %cur_pllcorr216.i, align 4
  %dec217.i = add i32 %266, -1
  store i32 %dec217.i, ptr %cur_pllcorr216.i, align 4
  br label %sw.epilog219.i

sw.default218.i:                                  ; preds = %if.else205.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %267 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %base_addr, align 32
  %add.i535.i = add i32 %268, 3
  %and.i536.i = and i32 %add.i535.i, 1048575
  %add1.i537.i = or i32 %and.i536.i, -18874368
  %269 = inttoptr i32 %add1.i537.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %269, i8 -127) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !143
  tail call void @arm_heavy_mb() #11
  %270 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %base_addr, align 32
  %and6.i538.i = and i32 %271, 1048575
  %add7.i539.i = or i32 %and6.i538.i, -18874368
  %272 = inttoptr i32 %add7.i539.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %272, i8 6) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void @arm_heavy_mb() #11
  %273 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %base_addr, align 32
  %add12.i540.i = add i32 %274, 1
  %and13.i541.i = and i32 %add12.i540.i, 1048575
  %add14.i542.i = or i32 %and13.i541.i, -18874368
  %275 = inttoptr i32 %add14.i542.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %275, i8 0) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @arm_heavy_mb() #11
  %276 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %base_addr, align 32
  %add19.i543.i = add i32 %277, 3
  %and20.i544.i = and i32 %add19.i543.i, 1048575
  %add21.i545.i = or i32 %and20.i544.i, -18874368
  %278 = inttoptr i32 %add21.i545.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %278, i8 1) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @arm_heavy_mb() #11
  %279 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %base_addr, align 32
  %and27.i546.i = and i32 %280, 1048575
  %add28.i547.i = or i32 %and27.i546.i, -18874368
  %281 = inttoptr i32 %add28.i547.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %281, i8 0) #11, !srcloc !113
  br label %sw.epilog219.i

sw.epilog219.i:                                   ; preds = %sw.default218.i, %sw.bb214.i, %sw.bb210.i
  %282 = ptrtoint ptr %shreg.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %shreg.i, align 4
  %shr222.i = lshr i32 %283, 1
  store i32 %shr222.i, ptr %shreg.i, align 4
  %284 = ptrtoint ptr %last_sample.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %last_sample.i, align 4
  %286 = ptrtoint ptr %last_rxbit229.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %last_rxbit229.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %285, i8 %287)
  %cmp231.i = icmp eq i8 %285, %287
  br i1 %cmp231.i, label %if.then233.i, label %sw.epilog219.i.if.end237.i_crit_edge

sw.epilog219.i.if.end237.i_crit_edge:             ; preds = %sw.epilog219.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end237.i

if.then233.i:                                     ; preds = %sw.epilog219.i
  call void @__sanitizer_cov_trace_pc() #13
  %or236.i = or i32 %shr222.i, 65536
  %288 = ptrtoint ptr %shreg.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %or236.i, ptr %shreg.i, align 4
  br label %if.end237.i

if.end237.i:                                      ; preds = %if.then233.i, %sw.epilog219.i.if.end237.i_crit_edge
  %289 = ptrtoint ptr %last_rxbit229.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %285, ptr %last_rxbit229.i, align 1
  br label %if.end244.i

if.end244.i:                                      ; preds = %if.end237.i, %if.then204.i
  %290 = ptrtoint ptr %interm_sample.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %interm_sample.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %291)
  %tobool248.not.i = icmp eq i8 %291, 0
  %conv251.i = zext i1 %tobool248.not.i to i8
  %292 = ptrtoint ptr %interm_sample.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %conv251.i, ptr %interm_sample.i, align 4
  %293 = ptrtoint ptr %dcd_shreg.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %dcd_shreg.i, align 4
  %and258.i = and i32 %294, 1
  %295 = ptrtoint ptr %dcd_sum058.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %dcd_sum058.i, align 4
  %sub262.i = sub i32 %296, %and258.i
  br label %do.body.i.sink.split

do.body.i.sink.split:                             ; preds = %if.end244.i, %if.then158.i
  %sub262.i.sink = phi i32 [ %sub262.i, %if.end244.i ], [ %add197.i, %if.then158.i ]
  %297 = ptrtoint ptr %dcd_sum058.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %sub262.i.sink, ptr %dcd_sum058.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.sink.split, %if.end140.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !149
  tail call void @arm_heavy_mb() #11
  %298 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %base_addr, align 32
  %add265.i = add i32 %299, 4
  %and266.i = and i32 %add265.i, 1048575
  %add267.i = or i32 %and266.i, -18874368
  %300 = inttoptr i32 %add267.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %300, i8 13) #11, !srcloc !113
  %301 = ptrtoint ptr %shreg.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %shreg.i, align 4
  %and271.i = and i32 %302, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and271.i)
  %tobool272.not.i = icmp eq i32 %and271.i, 0
  br i1 %tobool272.not.i, label %do.body.i.if.end280.i_crit_edge, label %if.then273.i

do.body.i.if.end280.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end280.i

if.then273.i:                                     ; preds = %do.body.i
  %call2.i.i.i146 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hdlcrx.i.i) #11
  %303 = ptrtoint ptr %wr.i.i548.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %wr.i.i548.i, align 4
  %add.i.i549.i = add i32 %304, 1
  %rem.i.i550.i = and i32 %add.i.i549.i, 31
  %305 = ptrtoint ptr %rd.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %rd.i.i.i147, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i550.i, i32 %306)
  %cmp5.not.i.i.i = icmp eq i32 %rem.i.i550.i, %306
  br i1 %cmp5.not.i.i.i, label %if.then273.i.hdlcdrv_putbits.exit.i_crit_edge, label %if.then.i.i553.i

if.then273.i.hdlcdrv_putbits.exit.i_crit_edge:    ; preds = %if.then273.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdlcdrv_putbits.exit.i

if.then.i.i553.i:                                 ; preds = %if.then273.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr277.i = lshr i32 %302, 1
  %conv.i551.i = trunc i32 %shr277.i to i16
  %arrayidx.i.i552.i = getelementptr %struct.hdlcdrv_hdlcbuffer, ptr %hdlcrx.i.i, i32 0, i32 3, i32 %304
  %307 = ptrtoint ptr %arrayidx.i.i552.i to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 %conv.i551.i, ptr %arrayidx.i.i552.i, align 2
  %308 = ptrtoint ptr %wr.i.i548.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %rem.i.i550.i, ptr %wr.i.i548.i, align 4
  br label %hdlcdrv_putbits.exit.i

hdlcdrv_putbits.exit.i:                           ; preds = %if.then.i.i553.i, %if.then273.i.hdlcdrv_putbits.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hdlcrx.i.i, i32 noundef %call2.i.i.i146) #11
  %309 = ptrtoint ptr %shreg.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 65536, ptr %shreg.i, align 4
  br label %if.end280.i

if.end280.i:                                      ; preds = %hdlcdrv_putbits.exit.i, %do.body.i.if.end280.i_crit_edge
  %310 = ptrtoint ptr %dcd_time.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %dcd_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %tobool284.not.i = icmp eq i32 %311, 0
  br i1 %tobool284.not.i, label %if.then285.i, label %if.end280.i.ser12_rx.exit_crit_edge

if.end280.i.ser12_rx.exit_crit_edge:              ; preds = %if.end280.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ser12_rx.exit

if.then285.i:                                     ; preds = %if.end280.i
  %312 = ptrtoint ptr %opt_dcd.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %opt_dcd.i, align 4
  %and287.i = and i32 %313, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and287.i)
  %tobool288.not.i = icmp eq i32 %and287.i, 0
  br i1 %tobool288.not.i, label %if.else305.i, label %if.then289.i

if.then289.i:                                     ; preds = %if.then285.i
  call void @__sanitizer_cov_trace_pc() #13
  %314 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %base_addr, align 32
  %add293.i = add i32 %315, 6
  %and294.i = and i32 %add293.i, 1048575
  %add295.i = or i32 %and294.i, -18874368
  %316 = inttoptr i32 %add295.i to ptr
  %317 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %316) #11, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !150
  %318 = ptrtoint ptr %opt_dcd.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %opt_dcd.i, align 4
  %320 = trunc i32 %319 to i8
  %321 = xor i8 %317, %320
  %322 = xor i8 %321, -1
  %323 = lshr i8 %322, 7
  br label %if.end320.i

if.else305.i:                                     ; preds = %if.then285.i
  call void @__sanitizer_cov_trace_pc() #13
  %324 = ptrtoint ptr %dcd_sum058.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %dcd_sum058.i, align 4
  %326 = ptrtoint ptr %dcd_sum1.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %dcd_sum1.i, align 4
  %add313.i = add i32 %327, %325
  %328 = ptrtoint ptr %dcd_sum2.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %dcd_sum2.i, align 4
  %add317.i = add i32 %add313.i, %329
  %add317.lobit.i = lshr i32 %add317.i, 31
  %330 = trunc i32 %add317.lobit.i to i8
  br label %if.end320.i

if.end320.i:                                      ; preds = %if.else305.i, %if.then289.i
  %.sink.i = phi i8 [ %330, %if.else305.i ], [ %323, %if.then289.i ]
  %331 = ptrtoint ptr %dcd2.i.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 %.sink.i, ptr %dcd2.i.i, align 4
  %332 = ptrtoint ptr %dcd_sum1.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %dcd_sum1.i, align 4
  %334 = ptrtoint ptr %dcd_sum2.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %333, ptr %dcd_sum2.i, align 4
  %335 = ptrtoint ptr %dcd_sum058.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %dcd_sum058.i, align 4
  store i32 %336, ptr %dcd_sum1.i, align 4
  store i32 2, ptr %dcd_sum058.i, align 4
  %337 = ptrtoint ptr %opt_dcd.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %opt_dcd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %338)
  %tobool337.not.i = icmp eq i32 %338, 0
  %cond338.i = select i1 %tobool337.not.i, i32 240, i32 12
  %339 = ptrtoint ptr %dcd_time.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %cond338.i, ptr %dcd_time.i, align 4
  br label %ser12_rx.exit

ser12_rx.exit:                                    ; preds = %if.end320.i, %if.end280.i.ser12_rx.exit_crit_edge
  %340 = ptrtoint ptr %dcd_time.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %dcd_time.i, align 4
  %dec346.i = add i32 %341, -1
  store i32 %dec346.i, ptr %dcd_time.i, align 4
  %342 = ptrtoint ptr %modem to i32
  call void @__asan_load2_noabort(i32 %342)
  %343 = load i16, ptr %modem, align 4
  %dec = add i16 %343, -1
  store i16 %dec, ptr %modem, align 4
  br label %do.body35

do.body35:                                        ; preds = %ser12_rx.exit, %ser12_tx.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  tail call void @arm_heavy_mb() #11
  %344 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %base_addr, align 32
  %and38 = and i32 %345, 1048575
  %add39 = or i32 %and38, -18874368
  %346 = inttoptr i32 %add39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %346, i8 0) #11, !srcloc !113
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %347 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %base_addr, align 32
  %add43 = add i32 %348, 6
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %349 = inttoptr i32 %add45 to ptr
  %350 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %349) #11, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !152
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.body35, %sw.bb20, %sw.bb
  %351 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %base_addr, align 32
  %add51 = add i32 %352, 2
  %and52 = and i32 %add51, 1048575
  %add53 = or i32 %and52, -18874368
  %353 = inttoptr i32 %add53 to ptr
  %354 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %353) #11, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !153
  %355 = and i8 %354, 1
  %tobool60.not = icmp eq i8 %355, 0
  br i1 %tobool60.not, label %sw.epilog.do.body_crit_edge, label %do.end61

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end61:                                         ; preds = %sw.epilog
  %356 = ptrtoint ptr %modem to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %modem, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %357)
  %cmp65 = icmp slt i16 %357, 1
  br i1 %cmp65, label %if.then67, label %do.end61.do.body77_crit_edge

do.end61.do.body77_crit_edge:                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77

if.then67:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #13
  %358 = ptrtoint ptr %opt_dcd.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %opt_dcd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %tobool68.not = icmp eq i32 %359, 0
  %conv69 = select i1 %tobool68.not, i16 36, i16 24
  %360 = ptrtoint ptr %modem to i32
  call void @__asan_store2_noabort(i32 %360)
  store i16 %conv69, ptr %modem, align 4
  tail call void @trace_hardirqs_on() #11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !154
  tail call void @hdlcdrv_arbitrate(ptr noundef nonnull %dev_id, ptr noundef nonnull %add.ptr.i) #11
  br label %do.body77

do.body77:                                        ; preds = %if.then67, %do.end61.do.body77_crit_edge
  tail call void @trace_hardirqs_on() #11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !154
  tail call void @hdlcdrv_transmitter(ptr noundef nonnull %dev_id, ptr noundef nonnull %add.ptr.i) #11
  tail call void @hdlcdrv_receiver(ptr noundef nonnull %dev_id, ptr noundef nonnull %add.ptr.i) #11
  %361 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !155
  %and.i.i148 = and i32 %361, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i148)
  %tobool84.not = icmp eq i32 %and.i.i148, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #11, !srcloc !156
  br i1 %tobool84.not, label %if.then86, label %do.body77.cleanup_crit_edge

do.body77.cleanup_crit_edge:                      ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then86:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %do.body77.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false2.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then86 ], [ 1, %do.body77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ser12_set_divisor(ptr nocapture noundef readonly %dev, i8 noundef zeroext %divisor) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -127) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !143
  tail call void @arm_heavy_mb() #11
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base_addr, align 32
  %and6 = and i32 %4, 1048575
  %add7 = or i32 %and6, -18874368
  %5 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %divisor) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_addr, align 32
  %add12 = add i32 %7, 1
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %8 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base_addr, align 32
  %add19 = add i32 %10, 3
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %11 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 1) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_addr, align 32
  %and27 = and i32 %13, 1048575
  %add28 = or i32 %and27, -18874368
  %14 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #11, !srcloc !113
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_options(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !83, !85, !87, !89, !91, !92, !94, !96, !97}
!llvm.named.register.sp = !{!99}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__param_mode, !1, !"__param_mode", i1 false, i1 false}
!1 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 627, i32 1}
!2 = !{ptr @__UNIQUE_ID_modetype337, !1, !"__UNIQUE_ID_modetype337", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_mode338, !4, !"__UNIQUE_ID_mode338", i1 false, i1 false}
!4 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 628, i32 1}
!5 = !{ptr @__param_iobase, !6, !"__param_iobase", i1 false, i1 false}
!6 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 629, i32 1}
!7 = !{ptr @__UNIQUE_ID_iobasetype339, !6, !"__UNIQUE_ID_iobasetype339", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_iobase340, !9, !"__UNIQUE_ID_iobase340", i1 false, i1 false}
!9 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 630, i32 1}
!10 = !{ptr @__param_irq, !11, !"__param_irq", i1 false, i1 false}
!11 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 631, i32 1}
!12 = !{ptr @__UNIQUE_ID_irqtype341, !11, !"__UNIQUE_ID_irqtype341", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_irq342, !14, !"__UNIQUE_ID_irq342", i1 false, i1 false}
!14 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 632, i32 1}
!15 = !{ptr @__UNIQUE_ID_author343, !16, !"__UNIQUE_ID_author343", i1 false, i1 false}
!16 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 634, i32 1}
!17 = !{ptr @__UNIQUE_ID_description344, !18, !"__UNIQUE_ID_description344", i1 false, i1 false}
!18 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 635, i32 1}
!19 = !{ptr @__UNIQUE_ID_file345, !20, !"__UNIQUE_ID_file345", i1 false, i1 false}
!20 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 636, i32 1}
!21 = !{ptr @__UNIQUE_ID_license346, !20, !"__UNIQUE_ID_license346", i1 false, i1 false}
!22 = !{ptr @__initcall__kmod_baycom_ser_hdx__347_691_init_baycomserhdx6, !23, !"__initcall__kmod_baycom_ser_hdx__347_691_init_baycomserhdx6", i1 false, i1 false}
!23 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 691, i32 1}
!24 = !{ptr @__exitcall_cleanup_baycomserhdx, !25, !"__exitcall_cleanup_baycomserhdx", i1 false, i1 false}
!25 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 692, i32 1}
!26 = !{ptr @__setup_baycom_ser_hdx_setup, !27, !"__setup_baycom_ser_hdx_setup", i1 false, i1 false}
!27 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 724, i32 1}
!28 = !{ptr @baycom_device, !29, !"baycom_device", i1 false, i1 false}
!29 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 74, i32 27}
!30 = !{ptr @__param_str_mode, !1, !"__param_str_mode", i1 false, i1 false}
!31 = !{ptr @__param_arr_mode, !1, !"__param_arr_mode", i1 false, i1 false}
!32 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 623, i32 33}
!34 = !{ptr @mode, !35, !"mode", i1 false, i1 false}
!35 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 623, i32 14}
!36 = !{ptr @__param_str_iobase, !6, !"__param_str_iobase", i1 false, i1 false}
!37 = !{ptr @__param_arr_iobase, !6, !"__param_arr_iobase", i1 false, i1 false}
!38 = !{ptr @iobase, !39, !"iobase", i1 false, i1 false}
!39 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 624, i32 12}
!40 = !{ptr @__param_str_irq, !11, !"__param_str_irq", i1 false, i1 false}
!41 = !{ptr @__param_arr_irq, !11, !"__param_arr_irq", i1 false, i1 false}
!42 = !{ptr @irq, !43, !"irq", i1 false, i1 false}
!43 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 625, i32 12}
!44 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 645, i32 2}
!46 = !{ptr @.str.2, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @init_baycomserhdx._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @init_baycomserhdx._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 654, i32 19}
!51 = !{ptr @bc_drvinfo, !52, !"bc_drvinfo", i1 false, i1 false}
!52 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 67, i32 19}
!53 = !{ptr @ser12_ops, !54, !"ser12_ops", i1 false, i1 false}
!54 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 529, i32 33}
!55 = !{ptr @bc_drvname, !56, !"bc_drvname", i1 false, i1 false}
!56 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 66, i32 19}
!57 = !{ptr @.str.4, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 466, i32 7}
!59 = !{ptr @.str.5, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 492, i32 2}
!61 = !{ptr @.str.6, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ser12_open._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @ser12_open._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.7, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 420, i32 2}
!66 = !{ptr @.str.8, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 420, i32 13}
!68 = !{ptr @.str.9, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 420, i32 21}
!70 = !{ptr @.str.10, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 420, i32 30}
!72 = !{ptr @.str.11, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 420, i32 39}
!74 = !{ptr @uart_str, !75, !"uart_str", i1 false, i1 false}
!75 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 419, i32 20}
!76 = !{ptr @.str.12, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 512, i32 2}
!78 = !{ptr @.str.13, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ser12_close._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @ser12_close._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.14, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 573, i32 29}
!83 = distinct !{null, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 575, i32 47}
!85 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 575, i32 75}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 575, i32 81}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!91 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!94 = !{ptr @.str.20, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!96 = !{ptr @__setup_str_baycom_ser_hdx_setup, !27, !"__setup_str_baycom_ser_hdx_setup", i1 false, i1 false}
!97 = !{ptr @baycom_ser_hdx_setup.nr_dev, !98, !"nr_dev", i1 false, i1 false}
!98 = !{!"../drivers/net/hamradio/baycom_ser_hdx.c", i32 709, i32 25}
!99 = !{!"sp"}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"auto-init"}
!110 = !{i64 4682485}
!111 = !{i64 2155922490}
!112 = !{i64 2155922727}
!113 = !{i64 4682090}
!114 = !{i64 2155923151}
!115 = !{i64 2155923383}
!116 = !{i64 2155923807}
!117 = !{i64 2155924037}
!118 = !{i64 2155924388}
!119 = !{i64 2155924812}
!120 = !{i64 2155925115}
!121 = !{i64 2155925347}
!122 = !{i64 2155925771}
!123 = !{i64 2155926003}
!124 = !{i64 2155926427}
!125 = !{i64 2155926659}
!126 = !{i64 2155927083}
!127 = !{i64 2155927501}
!128 = !{i64 2155927878}
!129 = !{i64 2155928252}
!130 = !{i64 2155928708}
!131 = !{i64 2155930715}
!132 = !{i64 2155931089}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{i64 2155933296, i64 2155937859, i64 2155933333, i64 2155933389, i64 2155933423, i64 2155933447, i64 2155933488, i64 2155933509, i64 2155933537, i64 2155933571}
!135 = !{i64 2152843764, i64 2152843789}
!136 = !{i64 5338638}
!137 = !{i64 5338835}
!138 = !{i64 2152824068}
!139 = !{i64 2155919996}
!140 = !{i64 2155920323}
!141 = !{i64 2155920650}
!142 = !{i64 2155916190}
!143 = !{i64 2155916570}
!144 = !{i64 2155916944}
!145 = !{i64 2155917321}
!146 = !{i64 2155917698}
!147 = !{i64 2155918273}
!148 = !{i64 2155918898}
!149 = !{i64 2155919174}
!150 = !{i64 2155919630}
!151 = !{i64 2155920898}
!152 = !{i64 2155921354}
!153 = !{i64 2155921681}
!154 = !{i64 800854}
!155 = !{i64 803341}
!156 = !{i64 801044}
