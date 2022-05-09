; ModuleID = '/llk/IR_all_yes/drivers/net/wan/fsl_ucc_hdlc.c_pt.bc'
source_filename = "../drivers/net/wan/fsl_ucc_hdlc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ucc_tdm_info = type { %struct.ucc_fast_info, %struct.si_mode_info }
%struct.ucc_fast_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.si_mode_info = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ucc_hdlc_private = type { ptr, ptr, ptr, ptr, ptr, %struct.napi_struct, ptr, ptr, i16, i8, i8, i8, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, i16, ptr, ptr, i16, i16, i16, i16, i16, i32, i16, i16, i16, i32, %struct.spinlock, ptr, i32, i8, i32, i32, i32, [4 x i32] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ucc_tdm = type { i16, i32, ptr, ptr, i32, i32, i8, i32, i32 }
%struct.ucc_fast_private = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.ucc_fast = type <{ i32, i32, i16, [2 x i8], i16, [2 x i8], i32, i32, i8, [7 x i8], i32, i16, [2 x i8], i16, i16, i32, i16, [2 x i8], i16, [2 x i8], i16, [2 x i8], i16, [2 x i8], i32, [76 x i8], i8 }>
%struct.ucc_hdlc_param = type { i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.qe_bd = type { i16, i16, i32 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.hdlc_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.si1 = type { [4 x i16], i8, [1 x i8], i8, [1 x i8], i8, [1 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i16, i16, i16, i8, [1 x i8], i8, [1 x i8], i8, [1 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i32, i8, [187 x i8] }
%struct.te1_settings = type { i32, i32, i16, i32 }
%struct.if_settings = type { i32, i32, %union.anon.106 }
%union.anon.106 = type { ptr }
%struct.qe_immap = type { %struct.qe_iram, %struct.qe_ic_regs, %struct.cp_qe, %struct.qe_mux, %struct.qe_timers, [2 x %struct.spi], %struct.qe_mcc, %struct.qe_brg, %struct.qe_usb_ctlr, %struct.si1, [2048 x i8], %struct.sir, %struct.ucc, %struct.ucc, %struct.ucc, %struct.ucc, [1536 x i8], %struct.upc, %struct.ucc, %struct.ucc, %struct.ucc, %struct.ucc, [1536 x i8], %struct.upc, %struct.sdma, %struct.dbg, [2 x %struct.rsp], [768 x i8], [14848 x i8], [32768 x i8], [49152 x i8], [147456 x i8], [786432 x i8] }
%struct.qe_iram = type { i32, i32, [4 x i8], i32, [112 x i8] }
%struct.qe_ic_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i32, [4 x i8], i32, [32 x i8], i32, [28 x i8] }
%struct.cp_qe = type { i32, i32, i32, [10 x i8], i16, [2 x i8], i16, i32, i32, i32, [8 x i8], i32, i32, i16, [2 x i8], [36 x i8], i16, [2 x i8], i16, [2 x i8], i16, [2 x i8], i16, [2 x i8], i16, [2 x i8], i16, [2 x i8], i16, [2 x i8], i16, [58 x i8], i32, [580 x i8] }
%struct.qe_mux = type { i32, i32, i32, i32, [4 x i32], i32, [28 x i8] }
%struct.qe_timers = type { i8, [3 x i8], i8, [11 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [70 x i8] }
%struct.spi = type { [32 x i8], i32, [2 x i8], i8, [1 x i8], [2 x i8], i8, [1 x i8], [1 x i8], i8, [2 x i8], i32, i32, [8 x i8] }
%struct.qe_mcc = type { i32, i32, i32, i32, [240 x i8] }
%struct.qe_brg = type { [16 x i32], [64 x i8] }
%struct.qe_usb_ctlr = type { i8, i8, i8, [1 x i8], [4 x i16], [4 x i8], i16, [2 x i8], i16, [1 x i8], i8, i16, [2 x i8], i16, [34 x i8] }
%struct.sir = type { [1024 x i8], [1024 x i8], [2048 x i8] }
%struct.ucc = type { %union.anon.118 }
%union.anon.118 = type { [512 x i8] }
%struct.upc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [8 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, [336 x i8] }
%struct.sdma = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, [4 x i8], i32, [56 x i8] }
%struct.dbg = type { i32, i32, i32, i32, i32, [8 x i8], i32, i32, [8 x i8], i32, i32, i32, [72 x i8] }
%struct.rsp = type { [16 x i32], [64 x i8], i32, i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, [4 x i8], [4 x i32], i32, i32, [8 x i8] }

@__initcall__kmod_fsl_ucc_hdlc__337_1298_ucc_hdlc_driver_init6 = internal global ptr @ucc_hdlc_driver_init, section ".initcall6.init", align 4
@ucc_hdlc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ucc_hdlc_probe, ptr @ucc_hdlc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_ucc_hdlc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uhdlc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ucc_hdlc_driver_exit = internal global ptr @ucc_hdlc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file338 = internal constant [47 x i8] c"fsl_ucc_hdlc.file=drivers/net/wan/fsl_ucc_hdlc\00", section ".modinfo", align 1
@__UNIQUE_ID_license339 = internal constant [25 x i8] c"fsl_ucc_hdlc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [54 x i8] c"fsl_ucc_hdlc.description=Freescale QE UCC HDLC Driver\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ucc_hdlc\00", [23 x i8] zeroinitializer }, align 32
@fsl_ucc_hdlc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ucc-hdlc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@uhdlc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @uhdlc_suspend, ptr @uhdlc_resume, ptr @uhdlc_suspend, ptr @uhdlc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cell-index\00", [21 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1123, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid ucc property\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ucc_hdlc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/wan/fsl_ucc_hdlc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry_ptr = internal global ptr @ucc_hdlc_probe._entry, section ".printk_index", align 4
@ucc_hdlc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c": Invalid UCC num\0A\00", [45 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry_ptr.9 = internal global ptr @ucc_hdlc_probe._entry.7, section ".printk_index", align 4
@utdm_info = internal global { [8 x %struct.ucc_tdm_info], [256 x i8] } zeroinitializer, align 32
@utdm_primary_info = internal constant { %struct.ucc_tdm_info, [60 x i8] } { %struct.ucc_tdm_info { %struct.ucc_fast_info { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i16 0, i16 256, i16 128, i16 192, i16 256, i16 128, i16 64, i16 256, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.si_mode_info { i8 1, i8 2, i8 0, i8 0, i8 1, i8 1, i8 0 } }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx-clock-name\00", [18 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid rx-clock-name property\0A\00", [32 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry_ptr.13 = internal global ptr @ucc_hdlc_probe._entry.11, section ".printk_index", align 4
@ucc_hdlc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1148, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry_ptr.15 = internal global ptr @ucc_hdlc_probe._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx-clock-name\00", [18 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1157, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid tx-clock-name property\0A\00", [32 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry_ptr.19 = internal global ptr @ucc_hdlc_probe._entry.17, section ".printk_index", align 4
@ucc_hdlc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1161, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry_ptr.21 = internal global ptr @ucc_hdlc_probe._entry.20, section ".printk_index", align 4
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,tdm-interface\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fsl,ucc-internal-loopback\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,hdlc-bus\00", [19 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 1193, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No mem to alloc ucc tdm data\0A\00", [34 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry_ptr.27 = internal global ptr @ucc_hdlc_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,t1040-qe-si\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,t1040-qe-siram\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl,hmask\00", [22 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 1216, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to init uhdlc\0A\00", [42 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry_ptr.33 = internal global ptr @ucc_hdlc_probe._entry.31, section ".printk_index", align 4
@ucc_hdlc_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 1223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ucc_hdlc: unable to allocate memory\0A\00", [57 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry_ptr.36 = internal global ptr @ucc_hdlc_probe._entry.34, section ".printk_index", align 4
@uhdlc_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @uhdlc_open, ptr @uhdlc_close, ptr @hdlc_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uhdlc_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @uhdlc_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 1237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ucc_hdlc: unable to register hdlc device\0A\00", [52 x i8] zeroinitializer }, align 32
@ucc_hdlc_probe._entry_ptr.39 = internal global ptr @ucc_hdlc_probe._entry.37, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hdlc_map_iomem.siram_init_flag = internal global { i1, [31 x i8] } zeroinitializer, align 32
@hdlc_map_iomem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 1073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%pOFn: failed to lookup pdev\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdlc_map_iomem\00", [17 x i8] zeroinitializer }, align 32
@hdlc_map_iomem._entry_ptr = internal global ptr @hdlc_map_iomem._entry, section ".printk_index", align 4
@uhdlc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 116, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to init uccf.\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uhdlc_init\00", [21 x i8] zeroinitializer }, align 32
@uhdlc_init._entry_ptr = internal global ptr @uhdlc_init._entry, section ".printk_index", align 4
@uhdlc_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 125, ptr @.str.46, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Loopback Mode\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@uhdlc_init._entry_ptr.47 = internal global ptr @uhdlc_init._entry.44, section ".printk_index", align 4
@uhdlc_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.43, ptr @.str.4, i32 152, ptr @.str.46, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HDLC bus Mode\0A\00", [17 x i8] zeroinitializer }, align 32
@uhdlc_init._entry_ptr.50 = internal global ptr @uhdlc_init._entry.48, section ".printk_index", align 4
@uhdlc_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.43, ptr @.str.4, i32 178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot allocate MURAM memory for RxBDs\0A\00", [56 x i8] zeroinitializer }, align 32
@uhdlc_init._entry_ptr.53 = internal global ptr @uhdlc_init._entry.51, section ".printk_index", align 4
@uhdlc_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.43, ptr @.str.4, i32 189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot allocate MURAM memory for TxBDs\0A\00", [56 x i8] zeroinitializer }, align 32
@uhdlc_init._entry_ptr.56 = internal global ptr @uhdlc_init._entry.54, section ".printk_index", align 4
@uhdlc_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.43, ptr @.str.4, i32 199, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Can not allocate MURAM for hdlc parameter.\0A\00", [52 x i8] zeroinitializer }, align 32
@uhdlc_init._entry_ptr.59 = internal global ptr @uhdlc_init._entry.57, section ".printk_index", align 4
@uhdlc_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.43, ptr @.str.4, i32 241, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Cannot allocate MURAM mem for Receive internal temp data pointer\0A\00", [62 x i8] zeroinitializer }, align 32
@uhdlc_init._entry_ptr.62 = internal global ptr @uhdlc_init._entry.60, section ".printk_index", align 4
@uhdlc_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.43, ptr @.str.4, i32 248, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Cannot allocate MURAM mem for Transmit internal temp data pointer\0A\00", [61 x i8] zeroinitializer }, align 32
@uhdlc_init._entry_ptr.65 = internal global ptr @uhdlc_init._entry.63, section ".printk_index", align 4
@uhdlc_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.43, ptr @.str.4, i32 253, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MURAM allocation out of addressable range\0A\00", [53 x i8] zeroinitializer }, align 32
@uhdlc_init._entry_ptr.68 = internal global ptr @uhdlc_init._entry.66, section ".printk_index", align 4
@uhdlc_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.43, ptr @.str.4, i32 292, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not allocate buffer descriptors\0A\00", [57 x i8] zeroinitializer }, align 32
@uhdlc_init._entry_ptr.71 = internal global ptr @uhdlc_init._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdlc\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__func__.uhdlc_tx_timeout = private unnamed_addr constant [17 x i8] c"uhdlc_tx_timeout\00", align 1
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No enough space for hdlc head\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Wrong ppp header\0A\00", [46 x i8] zeroinitializer }, align 32
@ucc_hdlc_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.4, i32 1274, ptr @.str.46, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"UCC based hdlc module removed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ucc_hdlc_remove\00", [16 x i8] zeroinitializer }, align 32
@ucc_hdlc_remove._entry_ptr = internal global ptr @ucc_hdlc_remove._entry, section ".printk_index", align 4
@qe_immr = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 512, i64 518]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 512, i64 518]
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"ucc_hdlc_driver\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1288, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1292, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"fsl_ucc_hdlc_of_match\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1279, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"uhdlc_pm_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1032, i32 32 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1121, i32 39 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1123, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1129, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [10 x i8] c"utdm_info\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 76, i32 28 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"utdm_primary_info\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 37, i32 28 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1139, i32 30 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1144, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1148, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1152, i32 30 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1157, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1161, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1180, i32 26 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1183, i32 26 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1186, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1193, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1201, i32 24 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1205, i32 24 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1211, i32 31 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1216, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1223, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [10 x i8] c"uhdlc_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1051, i32 36 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1237, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [31 x i8] c"hdlc_map_iomem.siram_init_flag\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1073, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 116, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 125, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 152, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 178, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 189, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 199, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 241, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 248, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 253, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 292, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 714, i32 30 }
@___asan_gen_.277 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 174, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1048, i32 19 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 364, i32 20 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 381, i32 20 }
@___asan_gen_.288 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.295 = private constant [34 x i8] c"../drivers/net/wan/fsl_ucc_hdlc.c\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1274, i32 2 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file338, ptr @__UNIQUE_ID_license339, ptr @__exitcall_ucc_hdlc_driver_exit, ptr @__initcall__kmod_fsl_ucc_hdlc__337_1298_ucc_hdlc_driver_init6, ptr @hdlc_map_iomem._entry, ptr @hdlc_map_iomem._entry_ptr, ptr @ucc_hdlc_driver_exit, ptr @ucc_hdlc_probe._entry, ptr @ucc_hdlc_probe._entry.11, ptr @ucc_hdlc_probe._entry.14, ptr @ucc_hdlc_probe._entry.17, ptr @ucc_hdlc_probe._entry.20, ptr @ucc_hdlc_probe._entry.25, ptr @ucc_hdlc_probe._entry.31, ptr @ucc_hdlc_probe._entry.34, ptr @ucc_hdlc_probe._entry.37, ptr @ucc_hdlc_probe._entry.7, ptr @ucc_hdlc_probe._entry_ptr, ptr @ucc_hdlc_probe._entry_ptr.13, ptr @ucc_hdlc_probe._entry_ptr.15, ptr @ucc_hdlc_probe._entry_ptr.19, ptr @ucc_hdlc_probe._entry_ptr.21, ptr @ucc_hdlc_probe._entry_ptr.27, ptr @ucc_hdlc_probe._entry_ptr.33, ptr @ucc_hdlc_probe._entry_ptr.36, ptr @ucc_hdlc_probe._entry_ptr.39, ptr @ucc_hdlc_probe._entry_ptr.9, ptr @ucc_hdlc_remove._entry, ptr @ucc_hdlc_remove._entry_ptr, ptr @uhdlc_init._entry, ptr @uhdlc_init._entry.44, ptr @uhdlc_init._entry.48, ptr @uhdlc_init._entry.51, ptr @uhdlc_init._entry.54, ptr @uhdlc_init._entry.57, ptr @uhdlc_init._entry.60, ptr @uhdlc_init._entry.63, ptr @uhdlc_init._entry.66, ptr @uhdlc_init._entry.69, ptr @uhdlc_init._entry_ptr, ptr @uhdlc_init._entry_ptr.47, ptr @uhdlc_init._entry_ptr.50, ptr @uhdlc_init._entry_ptr.53, ptr @uhdlc_init._entry_ptr.56, ptr @uhdlc_init._entry_ptr.59, ptr @uhdlc_init._entry_ptr.62, ptr @uhdlc_init._entry_ptr.65, ptr @uhdlc_init._entry_ptr.68, ptr @uhdlc_init._entry_ptr.71, ptr @ucc_hdlc_driver, ptr @.str, ptr @fsl_ucc_hdlc_of_match, ptr @uhdlc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @utdm_info, ptr @utdm_primary_info, ptr @.str.10, ptr @.str.12, ptr @.str.16, ptr @.str.18, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @uhdlc_ops, ptr @.str.38, ptr @hdlc_map_iomem.siram_init_flag, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_hdlc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ucc_hdlc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhdlc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_hdlc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_hdlc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utdm_info to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utdm_primary_info to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_hdlc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_hdlc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_hdlc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_hdlc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_hdlc_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_hdlc_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_hdlc_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhdlc_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_hdlc_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlc_map_iomem.siram_init_flag to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlc_map_iomem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhdlc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhdlc_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhdlc_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhdlc_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhdlc_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhdlc_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhdlc_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhdlc_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhdlc_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhdlc_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_hdlc_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ucc_hdlc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ucc_hdlc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ucc_hdlc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @ucc_hdlc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucc_hdlc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %bd_dma_addr.i = alloca i32, align 4
  %res = alloca %struct.resource, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #8
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !162
  %call = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub)
  %6 = icmp ugt i32 %sub, 7
  br i1 %6, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %arrayidx = getelementptr [8 x %struct.ucc_tdm_info], ptr @utdm_info, i32 0, i32 %sub
  %7 = call ptr @memcpy(ptr %arrayidx, ptr @utdm_primary_info, i32 132)
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %arrayidx, align 4
  %call12 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end32, label %if.then14

if.then14:                                        ; preds = %if.end9
  %call15 = call i32 @qe_clock_source(ptr noundef nonnull %call12) #8
  %rx_clock = getelementptr inbounds %struct.ucc_fast_info, ptr %arrayidx, i32 0, i32 2
  %9 = ptrtoint ptr %rx_clock to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call15, ptr %rx_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %call15)
  %cmp23 = icmp ugt i32 %call15, 40
  br i1 %cmp23, label %do.end27, label %if.end34

do.end27:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  br label %cleanup

do.end32:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end34:                                         ; preds = %if.then14
  %call35 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef null) #8
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %do.end56, label %if.then37

if.then37:                                        ; preds = %if.end34
  %call38 = call i32 @qe_clock_source(ptr noundef nonnull %call35) #8
  %tx_clock = getelementptr inbounds %struct.ucc_fast_info, ptr %arrayidx, i32 0, i32 3
  %10 = ptrtoint ptr %tx_clock to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call38, ptr %tx_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %call38)
  %cmp46 = icmp ugt i32 %call38, 40
  br i1 %cmp46, label %do.end50, label %if.end58

do.end50:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  br label %cleanup

do.end56:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end58:                                         ; preds = %if.then37
  %call59 = call i32 @of_address_to_resource(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %11 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res, align 4
  %regs = getelementptr inbounds %struct.ucc_fast_info, ptr %arrayidx, i32 0, i32 6
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %regs, align 4
  %call64 = call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.ucc_fast_info, ptr %arrayidx, i32 0, i32 7
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call64, ptr %irq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 432) #12
  %tobool67.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool67.not, label %if.end62.cleanup_crit_edge, label %if.end69

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end69:                                         ; preds = %if.end62
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %dev72 = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %dev72 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %dev72, align 4
  %ut_info73 = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %ut_info73 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx, ptr %ut_info73, align 4
  %call74 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef null) #8
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %if.end69.if.end77_crit_edge, label %if.then76

if.end69.if.end77_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then76:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %tsa = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %tsa to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %tsa, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end69.if.end77_crit_edge
  %call78 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef null) #8
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.end77.if.end81_crit_edge, label %if.then80

if.end77.if.end81_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %loopback = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %loopback to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %loopback, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end77.if.end81_crit_edge
  %call82 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef null) #8
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %if.end81.if.end85_crit_edge, label %if.then84

if.end81.if.end85_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %hdlc_bus = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 11
  %21 = ptrtoint ptr %hdlc_bus to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %hdlc_bus, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end81.if.end85_crit_edge
  %tsa86 = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %tsa86 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %tsa86, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %23)
  %cmp87 = icmp eq i16 %23, 1
  br i1 %cmp87, label %if.then89, label %if.end85.if.end111_crit_edge

if.end85.if.end111_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then89:                                        ; preds = %if.end85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i233 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 36) #12
  %tobool91.not = icmp eq ptr %call7.i.i233, null
  br i1 %tobool91.not, label %if.then92, label %if.end97

if.then92:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #11
  br label %free_uhdlc_priv

if.end97:                                         ; preds = %if.then89
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i233, ptr %call7.i.i, align 8
  %call99 = call i32 @ucc_of_parse_tdm(ptr noundef %1, ptr noundef nonnull %call7.i.i233, ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end97.free_utdm_crit_edge

if.end97.free_utdm_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_utdm

if.end102:                                        ; preds = %if.end97
  %si_regs = getelementptr inbounds %struct.ucc_tdm, ptr %call7.i.i233, i32 0, i32 3
  %call103 = call fastcc i32 @hdlc_map_iomem(ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef %si_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.free_utdm_crit_edge

if.end102.free_utdm_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_utdm

if.end106:                                        ; preds = %if.end102
  %siram = getelementptr inbounds %struct.ucc_tdm, ptr %call7.i.i233, i32 0, i32 2
  %call107 = call fastcc i32 @hdlc_map_iomem(ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef %siram)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end106.if.end111_crit_edge, label %if.end106.unmap_si_regs_crit_edge

if.end106.unmap_si_regs_crit_edge:                ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %unmap_si_regs

if.end106.if.end111_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.end111:                                        ; preds = %if.end106.if.end111_crit_edge, %if.end85.if.end111_crit_edge
  %utdm.0 = phi ptr [ %call7.i.i233, %if.end106.if.end111_crit_edge ], [ null, %if.end85.if.end111_crit_edge ]
  %hmask = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 34
  %call.i.i = call i32 @of_property_read_variable_u16_array(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef %hmask, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool113.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool113.not, label %if.end111.if.end116_crit_edge, label %if.then114

if.end111.if.end116_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %hmask to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 255, ptr %hmask, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %if.end111.if.end116_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bd_dma_addr.i) #8
  %27 = ptrtoint ptr %bd_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %bd_dma_addr.i, align 4, !annotation !162
  %28 = ptrtoint ptr %ut_info73 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ut_info73, align 4
  %30 = ptrtoint ptr %tsa86 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tsa86, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i = icmp eq i16 %31, 0
  br i1 %tobool.not.i, label %if.end116.if.end.i_crit_edge, label %if.then.i

if.end116.if.end.i_crit_edge:                     ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  %tsa3.i = getelementptr inbounds %struct.ucc_fast_info, ptr %29, i32 0, i32 11
  %32 = ptrtoint ptr %tsa3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %tsa3.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end116.if.end.i_crit_edge
  %.sink495.i = phi i32 [ 1, %if.then.i ], [ 0, %if.end116.if.end.i_crit_edge ]
  %33 = getelementptr inbounds %struct.ucc_fast_info, ptr %29, i32 0, i32 13
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink495.i, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ucc_fast_info, ptr %29, i32 0, i32 14
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink495.i, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ucc_fast_info, ptr %29, i32 0, i32 15
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink495.i, ptr %37, align 4
  %hdlc_bus.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 11
  %39 = ptrtoint ptr %hdlc_bus.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hdlc_bus.i, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool7.not.i = icmp eq i8 %40, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then8.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %brkpt_support.i = getelementptr inbounds %struct.ucc_fast_info, ptr %29, i32 0, i32 9
  %41 = ptrtoint ptr %brkpt_support.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %brkpt_support.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end.i.if.end9.i_crit_edge
  %uccm_mask.i = getelementptr inbounds %struct.ucc_fast_info, ptr %29, i32 0, i32 8
  %42 = ptrtoint ptr %uccm_mask.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 720896, ptr %uccm_mask.i, align 4
  %uccf.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 2
  %call.i = call i32 @ucc_fast_init(ptr noundef %29, ptr noundef %uccf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %do.end.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev72, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.42) #11
  br label %do.end122

if.end12.i:                                       ; preds = %if.end9.i
  %45 = ptrtoint ptr %uccf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %uccf.i, align 8
  %uf_regs.i = getelementptr inbounds %struct.ucc_fast_private, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %uf_regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %uf_regs.i, align 4
  %uf_regs14.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %uf_regs14.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %uf_regs14.i, align 8
  call void @ucc_fast_disable(ptr noundef %46, i32 noundef 3) #8
  %loopback.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 10
  %50 = ptrtoint ptr %loopback.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %loopback.i, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool16.not.i = icmp eq i8 %51, 0
  br i1 %tobool16.not.i, label %if.end12.i.if.end32.i_crit_edge, label %do.end20.i

if.end12.i.if.end32.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

do.end20.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev72, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef nonnull @.str.45) #11
  %rx_clock.i = getelementptr inbounds %struct.ucc_fast_info, ptr %29, i32 0, i32 2
  %54 = ptrtoint ptr %rx_clock.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_clock.i, align 4
  %call23.i = call i32 @qe_setbrg(i32 noundef %55, i32 noundef 20000000, i32 noundef 1) #8
  %56 = ptrtoint ptr %uf_regs14.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %uf_regs14.i, align 8
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #8, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %or.i = and i32 %58, -1661009921
  %and.i = or i32 %or.i, 1627389952
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %uf_regs14.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %uf_regs14.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %and.i) #8, !srcloc !167
  br label %if.end32.i

if.end32.i:                                       ; preds = %do.end20.i, %if.end12.i.if.end32.i_crit_edge
  %61 = ptrtoint ptr %tsa86 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %tsa86, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool34.not.i = icmp eq i16 %62, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end37.i_crit_edge, label %if.then35.i

if.end32.i.if.end37.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call7.i.i, align 8
  %65 = ptrtoint ptr %ut_info73 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ut_info73, align 4
  call void @ucc_tdm_init(ptr noundef %64, ptr noundef %66) #8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %if.end32.i.if.end37.i_crit_edge
  %67 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %29, align 4
  %call38.i = call i32 @ucc_fast_get_qe_cr_subblock(i32 noundef %68) #8
  %call39.i = call i32 @qe_issue_cmd(i32 noundef 4, i32 noundef %call38.i, i8 noundef zeroext 0, i32 noundef 0) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %uf_regs14.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %uf_regs14.i, align 8
  %upsmr.i = getelementptr inbounds %struct.ucc_fast, ptr %70, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %upsmr.i, i32 0) #8, !srcloc !167
  %71 = ptrtoint ptr %hdlc_bus.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %hdlc_bus.i, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool45.not.i = icmp eq i8 %72, 0
  br i1 %tobool45.not.i, label %if.end37.i.if.end75.i_crit_edge, label %if.then46.i

if.end37.i.if.end75.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

if.then46.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev72, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %74, ptr noundef nonnull @.str.49) #11
  %75 = ptrtoint ptr %uf_regs14.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %uf_regs14.i, align 8
  %upsmr54.i = getelementptr inbounds %struct.ucc_fast, ptr %76, i32 0, i32 1
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %upsmr54.i) #8, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  %or57.i = or i32 %77, 35680256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  call void @arm_heavy_mb() #8
  %78 = ptrtoint ptr %uf_regs14.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %uf_regs14.i, align 8
  %upsmr62.i = getelementptr inbounds %struct.ucc_fast, ptr %79, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %upsmr62.i, i32 %or57.i) #8, !srcloc !167
  %80 = ptrtoint ptr %uf_regs14.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %uf_regs14.i, align 8
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #8, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  %and68.i = and i32 %82, -50348033
  %or69.i = or i32 %and68.i, 16384
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %uf_regs14.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %uf_regs14.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %or69.i) #8, !srcloc !167
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then46.i, %if.end37.i.if.end75.i_crit_edge
  %rx_ring_size.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 30
  %85 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 32, ptr %rx_ring_size.i, align 8
  %tx_ring_size.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 29
  %86 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 16, ptr %tx_ring_size.i, align 2
  %87 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev72, align 4
  %dma_rx_bd.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 19
  %call.i.i234 = call ptr @dma_alloc_attrs(ptr noundef %88, i32 noundef 256, ptr noundef %dma_rx_bd.i, i32 noundef 3264, i32 noundef 0) #8
  %rx_bd_base.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 17
  %89 = ptrtoint ptr %rx_bd_base.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i.i234, ptr %rx_bd_base.i, align 4
  %tobool79.not.i = icmp eq ptr %call.i.i234, null
  %90 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev72, align 4
  br i1 %tobool79.not.i, label %do.end83.i, label %if.end85.i

do.end83.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.52) #11
  br label %free_uccf.i

if.end85.i:                                       ; preds = %if.end75.i
  %dma_tx_bd.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 18
  %call.i440.i = call ptr @dma_alloc_attrs(ptr noundef %91, i32 noundef 128, ptr noundef %dma_tx_bd.i, i32 noundef 3264, i32 noundef 0) #8
  %tx_bd_base.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 16
  %92 = ptrtoint ptr %tx_bd_base.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i440.i, ptr %tx_bd_base.i, align 8
  %tobool89.not.i = icmp eq ptr %call.i440.i, null
  br i1 %tobool89.not.i, label %do.end93.i, label %if.end95.i

do.end93.i:                                       ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev72, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.55) #11
  br label %free_rx_bd.i

if.end95.i:                                       ; preds = %if.end85.i
  %call96.i = call i32 @cpm_muram_alloc(i32 noundef 108, i32 noundef 64) #8
  %ucc_pram_offset.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 31
  %95 = ptrtoint ptr %ucc_pram_offset.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call96.i, ptr %ucc_pram_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %cmp.i = icmp slt i32 %call96.i, 0
  br i1 %cmp.i, label %do.end101.i, label %if.end7.i.i.i

do.end101.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev72, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.58) #11
  br label %free_tx_bd.i

if.end7.i.i.i:                                    ; preds = %if.end95.i
  %98 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %rx_ring_size.i, align 8
  %conv.i = zext i16 %99 to i32
  %100 = shl nuw nsw i32 %conv.i, 2
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %100, i32 noundef 3520) #13
  %rx_skbuff.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 25
  %101 = ptrtoint ptr %rx_skbuff.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call8.i.i.i, ptr %rx_skbuff.i, align 4
  %tobool107.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool107.not.i, label %if.end7.i.i.i.free_ucc_pram.i_crit_edge, label %if.end7.i.i471.i

if.end7.i.i.i.free_ucc_pram.i_crit_edge:          ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_ucc_pram.i

if.end7.i.i471.i:                                 ; preds = %if.end7.i.i.i
  %102 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %tx_ring_size.i, align 2
  %conv111.i = zext i16 %103 to i32
  %104 = shl nuw nsw i32 %conv111.i, 2
  %call8.i.i470.i = call noalias align 128 ptr @__kmalloc(i32 noundef %104, i32 noundef 3520) #13
  %tx_skbuff.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 24
  %105 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call8.i.i470.i, ptr %tx_skbuff.i, align 8
  %tobool114.not.i = icmp eq ptr %call8.i.i470.i, null
  br i1 %tobool114.not.i, label %if.end7.i.i471.i.free_rx_skbuff.i_crit_edge, label %if.end116.i

if.end7.i.i471.i.free_rx_skbuff.i_crit_edge:      ; preds = %if.end7.i.i471.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rx_skbuff.i

if.end116.i:                                      ; preds = %if.end7.i.i471.i
  %skb_curtx.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 26
  %106 = ptrtoint ptr %skb_curtx.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %skb_curtx.i, align 8
  %skb_dirtytx.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 28
  %107 = ptrtoint ptr %skb_dirtytx.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %skb_dirtytx.i, align 4
  %108 = ptrtoint ptr %tx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tx_bd_base.i, align 8
  %curtx_bd.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 20
  %110 = ptrtoint ptr %curtx_bd.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %109, ptr %curtx_bd.i, align 8
  %dirty_tx.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 22
  %111 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %109, ptr %dirty_tx.i, align 8
  %112 = ptrtoint ptr %rx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rx_bd_base.i, align 4
  %currx_bd.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 21
  %114 = ptrtoint ptr %currx_bd.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %113, ptr %currx_bd.i, align 4
  %currx_bdnum.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 23
  %115 = ptrtoint ptr %currx_bdnum.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %currx_bdnum.i, align 4
  %116 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %29, align 4
  %call121.i = call i32 @ucc_fast_get_qe_cr_subblock(i32 noundef %117) #8
  %118 = ptrtoint ptr %ucc_pram_offset.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ucc_pram_offset.i, align 4
  %call123.i = call i32 @qe_issue_cmd(i32 noundef 22, i32 noundef %call121.i, i8 noundef zeroext 0, i32 noundef %119) #8
  %120 = ptrtoint ptr %ucc_pram_offset.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ucc_pram_offset.i, align 4
  %call125.i = call ptr @cpm_muram_addr(i32 noundef %121) #8
  %ucc_pram.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 7
  %122 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call125.i, ptr %ucc_pram.i, align 4
  call void @mmioset(ptr noundef %call125.i, i32 noundef 0, i32 noundef 108) #8
  %call127.i = call i32 @cpm_muram_alloc(i32 noundef 32, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127.i)
  %cmp128.i = icmp slt i32 %call127.i, 0
  br i1 %cmp128.i, label %do.end133.i, label %if.end135.i

do.end133.i:                                      ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev72, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.61) #11
  br label %free_tx_skbuff.i

if.end135.i:                                      ; preds = %if.end116.i
  %call136.i = call i32 @cpm_muram_alloc(i32 noundef 32, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.i)
  %cmp137.i = icmp slt i32 %call136.i, 0
  br i1 %cmp137.i, label %do.end142.i, label %if.end144.i

do.end142.i:                                      ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev72, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.64) #11
  br label %free_riptr.i

if.end144.i:                                      ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call127.i)
  %127 = icmp ult i32 %call127.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call136.i)
  %128 = icmp ult i32 %call136.i, 65536
  %or.cond.i = select i1 %127, i1 %128, i1 false
  br i1 %or.cond.i, label %do.body159.i, label %if.end144.i.free_tiptr.i_crit_edge

if.end144.i.free_tiptr.i_crit_edge:               ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tiptr.i

do.body159.i:                                     ; preds = %if.end144.i
  %conv145.i = trunc i32 %call127.i to i16
  %conv149.i = trunc i32 %call136.i to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  call void @arm_heavy_mb() #8
  %129 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ucc_pram.i, align 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %130, i16 %conv145.i) #8, !srcloc !174
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  call void @arm_heavy_mb() #8
  %131 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ucc_pram.i, align 4
  %tiptr170.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %132, i32 0, i32 1
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %tiptr170.i, i16 %conv149.i) #8, !srcloc !174
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  %133 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ucc_pram.i, align 4
  %mrblr.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %134, i32 0, i32 3
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mrblr.i, i16 1536) #8, !srcloc !174
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  call void @arm_heavy_mb() #8
  %135 = ptrtoint ptr %dma_rx_bd.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dma_rx_bd.i, align 4
  %137 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ucc_pram.i, align 4
  %rbase.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %138, i32 0, i32 5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rbase.i, i32 %136) #8, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  call void @arm_heavy_mb() #8
  %139 = ptrtoint ptr %dma_tx_bd.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dma_tx_bd.i, align 8
  %141 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ucc_pram.i, align 4
  %tbase.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %142, i32 0, i32 10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tbase.i, i32 %140) #8, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @arm_heavy_mb() #8
  %143 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ucc_pram.i, align 4
  %rstate.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %144, i32 0, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rstate.i, i32 805306368) #8, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  %145 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ucc_pram.i, align 4
  %tstate.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %146, i32 0, i32 9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tstate.i, i32 805306368) #8, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  call void @arm_heavy_mb() #8
  %147 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ucc_pram.i, align 4
  %c_mask.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %148, i32 0, i32 21
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %c_mask.i, i32 61624) #8, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void @arm_heavy_mb() #8
  %149 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ucc_pram.i, align 4
  %c_pres.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %150, i32 0, i32 22
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %c_pres.i, i32 65535) #8, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  call void @arm_heavy_mb() #8
  %151 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ucc_pram.i, align 4
  %mflr.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %152, i32 0, i32 28
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mflr.i, i16 1544) #8, !srcloc !174
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  call void @arm_heavy_mb() #8
  %153 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ucc_pram.i, align 4
  %rfthr.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %154, i32 0, i32 29
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %rfthr.i, i16 1) #8, !srcloc !174
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  call void @arm_heavy_mb() #8
  %155 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ucc_pram.i, align 4
  %rfcnt.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %156, i32 0, i32 30
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %rfcnt.i, i16 1) #8, !srcloc !174
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  call void @arm_heavy_mb() #8
  %157 = ptrtoint ptr %hmask to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %hmask, align 4
  %159 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ucc_pram.i, align 4
  %hmask217.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %160, i32 0, i32 31
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %hmask217.i, i16 %158) #8, !srcloc !174
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  call void @arm_heavy_mb() #8
  %161 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ucc_pram.i, align 4
  %haddr1.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %162, i32 0, i32 32
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %haddr1.i, i16 255) #8, !srcloc !174
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  call void @arm_heavy_mb() #8
  %163 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ucc_pram.i, align 4
  %haddr2.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %164, i32 0, i32 33
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %haddr2.i, i16 255) #8, !srcloc !174
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  %165 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ucc_pram.i, align 4
  %haddr3.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %166, i32 0, i32 34
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %haddr3.i, i16 255) #8, !srcloc !174
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @arm_heavy_mb() #8
  %167 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ucc_pram.i, align 4
  %haddr4.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %168, i32 0, i32 35
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %haddr4.i, i16 255) #8, !srcloc !174
  %169 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev72, align 4
  %call.i474.i = call ptr @dma_alloc_attrs(ptr noundef %170, i32 noundef 73728, ptr noundef nonnull %bd_dma_addr.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool236.not.i = icmp eq ptr %call.i474.i, null
  br i1 %tobool236.not.i, label %do.body159.i.free_tiptr.i_crit_edge, label %if.end242.i

do.body159.i.free_tiptr.i_crit_edge:              ; preds = %do.body159.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tiptr.i

if.end242.i:                                      ; preds = %do.body159.i
  %rx_buffer.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 13
  %171 = ptrtoint ptr %rx_buffer.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call.i474.i, ptr %rx_buffer.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i474.i, i32 49152
  %tx_buffer.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 12
  %172 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %add.ptr.i, ptr %tx_buffer.i, align 8
  %173 = ptrtoint ptr %bd_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %bd_dma_addr.i, align 4
  %dma_rx_addr.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 15
  %175 = ptrtoint ptr %dma_rx_addr.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %dma_rx_addr.i, align 4
  %add.i = add i32 %174, 49152
  %dma_tx_addr.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 14
  %176 = ptrtoint ptr %dma_tx_addr.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %add.i, ptr %dma_tx_addr.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end242.i
  %i.0491.i = phi i32 [ 0, %if.end242.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.0491.i)
  %cmp245.not.i = icmp eq i32 %i.0491.i, 31
  %..i = select i1 %cmp245.not.i, i16 -20480, i16 -28672
  %177 = ptrtoint ptr %rx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %rx_bd_base.i, align 4
  %arrayidx.i = getelementptr %struct.qe_bd, ptr %178, i32 %i.0491.i
  %179 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %179, i32 2)
  store i16 %..i, ptr %arrayidx.i, align 1
  %180 = ptrtoint ptr %dma_rx_addr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dma_rx_addr.i, align 4
  %mul.i = mul nuw nsw i32 %i.0491.i, 1536
  %add252.i = add i32 %181, %mul.i
  %182 = load ptr, ptr %rx_bd_base.i, align 4
  %buf.i = getelementptr %struct.qe_bd, ptr %182, i32 %i.0491.i, i32 2
  %183 = ptrtoint ptr %buf.i to i32
  call void @__asan_storeN_noabort(i32 %183, i32 4)
  store i32 %add252.i, ptr %buf.i, align 1
  %inc.i = add nuw nsw i32 %i.0491.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.body.i.for.body258.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.body258.i_crit_edge:               ; preds = %for.body.i
  br label %for.body258.i

for.body258.i:                                    ; preds = %for.body258.i.for.body258.i_crit_edge, %for.body.i.for.body258.i_crit_edge
  %i.1492.i = phi i32 [ %inc274.i, %for.body258.i.for.body258.i_crit_edge ], [ 0, %for.body.i.for.body258.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.1492.i)
  %cmp259.not.i = icmp eq i32 %i.1492.i, 15
  %.439.i = select i1 %cmp259.not.i, i16 13312, i16 5120
  %184 = ptrtoint ptr %tx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %tx_bd_base.i, align 8
  %arrayidx265.i = getelementptr %struct.qe_bd, ptr %185, i32 %i.1492.i
  %186 = ptrtoint ptr %arrayidx265.i to i32
  call void @__asan_storeN_noabort(i32 %186, i32 2)
  store i16 %.439.i, ptr %arrayidx265.i, align 1
  %187 = ptrtoint ptr %dma_tx_addr.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %dma_tx_addr.i, align 8
  %mul268.i = mul nuw nsw i32 %i.1492.i, 1536
  %add269.i = add i32 %188, %mul268.i
  %189 = load ptr, ptr %tx_bd_base.i, align 8
  %buf272.i = getelementptr %struct.qe_bd, ptr %189, i32 %i.1492.i, i32 2
  %190 = ptrtoint ptr %buf272.i to i32
  call void @__asan_storeN_noabort(i32 %190, i32 4)
  store i32 %add269.i, ptr %buf272.i, align 1
  %inc274.i = add nuw nsw i32 %i.1492.i, 1
  %exitcond493.not.i = icmp eq i32 %inc274.i, 16
  br i1 %exitcond493.not.i, label %if.end124, label %for.body258.i.for.body258.i_crit_edge

for.body258.i.for.body258.i_crit_edge:            ; preds = %for.body258.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body258.i

free_tiptr.i:                                     ; preds = %do.body159.i.free_tiptr.i_crit_edge, %if.end144.i.free_tiptr.i_crit_edge
  %.str.70.sink = phi ptr [ @.str.67, %if.end144.i.free_tiptr.i_crit_edge ], [ @.str.70, %do.body159.i.free_tiptr.i_crit_edge ]
  %191 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev72, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull %.str.70.sink) #11
  call void @cpm_muram_free(i32 noundef %call136.i) #8
  br label %free_riptr.i

free_riptr.i:                                     ; preds = %free_tiptr.i, %do.end142.i
  call void @cpm_muram_free(i32 noundef %call127.i) #8
  br label %free_tx_skbuff.i

free_tx_skbuff.i:                                 ; preds = %free_riptr.i, %do.end133.i
  %193 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %tx_skbuff.i, align 8
  call void @kfree(ptr noundef %194) #8
  br label %free_rx_skbuff.i

free_rx_skbuff.i:                                 ; preds = %free_tx_skbuff.i, %if.end7.i.i471.i.free_rx_skbuff.i_crit_edge
  %195 = ptrtoint ptr %rx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %rx_skbuff.i, align 4
  call void @kfree(ptr noundef %196) #8
  br label %free_ucc_pram.i

free_ucc_pram.i:                                  ; preds = %free_rx_skbuff.i, %if.end7.i.i.i.free_ucc_pram.i_crit_edge
  %197 = ptrtoint ptr %ucc_pram_offset.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %ucc_pram_offset.i, align 4
  call void @cpm_muram_free(i32 noundef %198) #8
  br label %free_tx_bd.i

free_tx_bd.i:                                     ; preds = %free_ucc_pram.i, %do.end101.i
  %199 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev72, align 4
  %201 = ptrtoint ptr %tx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %tx_bd_base.i, align 8
  %203 = ptrtoint ptr %dma_tx_bd.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %dma_tx_bd.i, align 8
  call void @dma_free_attrs(ptr noundef %200, i32 noundef 128, ptr noundef %202, i32 noundef %204, i32 noundef 0) #8
  br label %free_rx_bd.i

free_rx_bd.i:                                     ; preds = %free_tx_bd.i, %do.end93.i
  %205 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev72, align 4
  %207 = ptrtoint ptr %rx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %rx_bd_base.i, align 4
  %209 = ptrtoint ptr %dma_rx_bd.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %dma_rx_bd.i, align 4
  call void @dma_free_attrs(ptr noundef %206, i32 noundef 256, ptr noundef %208, i32 noundef %210, i32 noundef 0) #8
  br label %free_uccf.i

free_uccf.i:                                      ; preds = %free_rx_bd.i, %do.end83.i
  %211 = ptrtoint ptr %uccf.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %uccf.i, align 8
  call void @ucc_fast_free(ptr noundef %212) #8
  br label %do.end122

do.end122:                                        ; preds = %free_uccf.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %free_uccf.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bd_dma_addr.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #11
  br label %undo_uhdlc_init

if.end124:                                        ; preds = %for.body258.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !191
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bd_dma_addr.i) #8
  %call125 = call ptr @alloc_hdlcdev(ptr noundef nonnull %call7.i.i) #8
  %tobool126.not = icmp eq ptr %call125, null
  br i1 %tobool126.not, label %if.then127, label %if.end132

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  %call131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #11
  br label %undo_uhdlc_init

if.end132:                                        ; preds = %if.end124
  %ndev = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 4
  %213 = ptrtoint ptr %ndev to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call125, ptr %ndev, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call125, i32 2304
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %call125, i32 0, i32 107
  %214 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 16, ptr %tx_queue_len, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call125, i32 0, i32 16
  %215 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @uhdlc_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call125, i32 0, i32 115
  %216 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 200, ptr %watchdog_timeo, align 4
  %217 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr @ucc_hdlc_attach, ptr %add.ptr.i.i, align 4
  %xmit = getelementptr i8, ptr %call125, i32 2308
  %218 = ptrtoint ptr %xmit to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @ucc_hdlc_tx, ptr %xmit, align 4
  %napi = getelementptr inbounds %struct.ucc_hdlc_private, ptr %call7.i.i, i32 0, i32 5
  call void @netif_napi_add(ptr noundef nonnull %call125, ptr noundef %napi, ptr noundef nonnull @ucc_hdlc_poll, i32 noundef 32) #8
  %call134 = call i32 @register_netdev(ptr noundef nonnull %call125) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end132.cleanup_crit_edge, label %if.then136

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  %call141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #11
  call void @free_netdev(ptr noundef nonnull %call125) #8
  br label %undo_uhdlc_init

undo_uhdlc_init:                                  ; preds = %if.then136, %if.then127, %do.end122
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end122 ], [ -105, %if.then136 ], [ -12, %if.then127 ]
  %siram143 = getelementptr inbounds %struct.ucc_tdm, ptr %utdm.0, i32 0, i32 2
  %219 = ptrtoint ptr %siram143 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %siram143, align 8
  call void @iounmap(ptr noundef %220) #8
  br label %unmap_si_regs

unmap_si_regs:                                    ; preds = %undo_uhdlc_init, %if.end106.unmap_si_regs_crit_edge
  %utdm.1 = phi ptr [ %call7.i.i233, %if.end106.unmap_si_regs_crit_edge ], [ %utdm.0, %undo_uhdlc_init ]
  %ret.1 = phi i32 [ %call107, %if.end106.unmap_si_regs_crit_edge ], [ %ret.0, %undo_uhdlc_init ]
  %si_regs144 = getelementptr inbounds %struct.ucc_tdm, ptr %utdm.1, i32 0, i32 3
  %221 = ptrtoint ptr %si_regs144 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %si_regs144, align 4
  call void @iounmap(ptr noundef %222) #8
  br label %free_utdm

free_utdm:                                        ; preds = %unmap_si_regs, %if.end102.free_utdm_crit_edge, %if.end97.free_utdm_crit_edge
  %utdm.2 = phi ptr [ %call7.i.i233, %if.end97.free_utdm_crit_edge ], [ %call7.i.i233, %if.end102.free_utdm_crit_edge ], [ %utdm.1, %unmap_si_regs ]
  %ret.2 = phi i32 [ %call99, %if.end97.free_utdm_crit_edge ], [ %call103, %if.end102.free_utdm_crit_edge ], [ %ret.1, %unmap_si_regs ]
  %223 = ptrtoint ptr %tsa86 to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %tsa86, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %224)
  %tobool146.not = icmp eq i16 %224, 0
  br i1 %tobool146.not, label %free_utdm.free_uhdlc_priv_crit_edge, label %if.then147

free_utdm.free_uhdlc_priv_crit_edge:              ; preds = %free_utdm
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_uhdlc_priv

if.then147:                                       ; preds = %free_utdm
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %utdm.2) #8
  br label %free_uhdlc_priv

free_uhdlc_priv:                                  ; preds = %if.then147, %free_utdm.free_uhdlc_priv_crit_edge, %if.then92
  %ret.3 = phi i32 [ %ret.2, %if.then147 ], [ %ret.2, %free_utdm.free_uhdlc_priv_crit_edge ], [ -12, %if.then92 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_uhdlc_priv, %if.end132.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %do.end56, %do.end50, %do.end32, %do.end27, %do.end7, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %do.end7 ], [ -22, %do.end27 ], [ -22, %do.end50 ], [ %ret.3, %free_uhdlc_priv ], [ -22, %do.end56 ], [ -22, %do.end32 ], [ -22, %if.end58.cleanup_crit_edge ], [ -12, %if.end62.cleanup_crit_edge ], [ 0, %if.end132.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucc_hdlc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ucc_pram.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ucc_pram.i, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %conv.i = zext i16 %4 to i32
  tail call void @cpm_muram_free(i32 noundef %conv.i) #8
  %5 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ucc_pram.i, align 4
  %tiptr.i = getelementptr inbounds %struct.ucc_hdlc_param, ptr %6, i32 0, i32 1
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %tiptr.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  %conv5.i = zext i16 %7 to i32
  tail call void @cpm_muram_free(i32 noundef %conv5.i) #8
  %rx_bd_base.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %rx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_bd_base.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %dma_rx_bd.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %dma_rx_bd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_rx_bd.i, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef 256, ptr noundef nonnull %9, i32 noundef %13, i32 noundef 0) #8
  %14 = ptrtoint ptr %rx_bd_base.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rx_bd_base.i, align 4
  %15 = ptrtoint ptr %dma_rx_bd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %dma_rx_bd.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %tx_bd_base.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %tx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_bd_base.i, align 8
  %tobool9.not.i = icmp eq ptr %17, null
  br i1 %tobool9.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then10.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev11.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev11.i, align 4
  %dma_tx_bd.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 18
  %20 = ptrtoint ptr %dma_tx_bd.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_tx_bd.i, align 8
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef 128, ptr noundef nonnull %17, i32 noundef %21, i32 noundef 0) #8
  %22 = ptrtoint ptr %tx_bd_base.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %tx_bd_base.i, align 8
  %23 = ptrtoint ptr %dma_tx_bd.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %dma_tx_bd.i, align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %if.end.i.if.end15.i_crit_edge
  %24 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ucc_pram.i, align 4
  %tobool17.not.i = icmp eq ptr %25, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end21.i_crit_edge, label %if.then18.i

if.end15.i.if.end21.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %ucc_pram_offset.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 31
  %26 = ptrtoint ptr %ucc_pram_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ucc_pram_offset.i, align 4
  tail call void @cpm_muram_free(i32 noundef %27) #8
  %28 = ptrtoint ptr %ucc_pram.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %ucc_pram.i, align 4
  %29 = ptrtoint ptr %ucc_pram_offset.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ucc_pram_offset.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end21.i_crit_edge
  %rx_skbuff.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 25
  %30 = ptrtoint ptr %rx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_skbuff.i, align 4
  tail call void @kfree(ptr noundef %31) #8
  %32 = ptrtoint ptr %rx_skbuff.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %rx_skbuff.i, align 4
  %tx_skbuff.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 24
  %33 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_skbuff.i, align 8
  tail call void @kfree(ptr noundef %34) #8
  %35 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %tx_skbuff.i, align 8
  %uf_regs.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %uf_regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %uf_regs.i, align 8
  %tobool24.not.i = icmp eq ptr %37, null
  br i1 %tobool24.not.i, label %if.end21.i.if.end28.i_crit_edge, label %if.then25.i

if.end21.i.if.end28.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %37) #8
  %38 = ptrtoint ptr %uf_regs.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %uf_regs.i, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.end21.i.if.end28.i_crit_edge
  %uccf.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %uccf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %uccf.i, align 8
  %tobool29.not.i = icmp eq ptr %40, null
  br i1 %tobool29.not.i, label %if.end28.i.if.end33.i_crit_edge, label %if.then30.i

if.end28.i.if.end33.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ucc_fast_free(ptr noundef nonnull %40) #8
  %41 = ptrtoint ptr %uccf.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %uccf.i, align 8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %if.end28.i.if.end33.i_crit_edge
  %rx_buffer.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 13
  %42 = ptrtoint ptr %rx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_buffer.i, align 4
  %tobool34.not.i = icmp eq ptr %43, null
  br i1 %tobool34.not.i, label %if.end33.i.if.end40.i_crit_edge, label %if.then35.i

if.end33.i.if.end40.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev36.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %dev36.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev36.i, align 4
  %dma_rx_addr.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 15
  %46 = ptrtoint ptr %dma_rx_addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_rx_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %45, i32 noundef 49152, ptr noundef nonnull %43, i32 noundef %47, i32 noundef 0) #8
  %48 = ptrtoint ptr %rx_buffer.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %rx_buffer.i, align 4
  %49 = ptrtoint ptr %dma_rx_addr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %dma_rx_addr.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then35.i, %if.end33.i.if.end40.i_crit_edge
  %tx_buffer.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 12
  %50 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_buffer.i, align 8
  %tobool41.not.i = icmp eq ptr %51, null
  br i1 %tobool41.not.i, label %if.end40.i.uhdlc_memclean.exit_crit_edge, label %if.then42.i

if.end40.i.uhdlc_memclean.exit_crit_edge:         ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uhdlc_memclean.exit

if.then42.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev43.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %dev43.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev43.i, align 4
  %dma_tx_addr.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 14
  %54 = ptrtoint ptr %dma_tx_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_tx_addr.i, align 8
  tail call void @dma_free_attrs(ptr noundef %53, i32 noundef 24576, ptr noundef nonnull %51, i32 noundef %55, i32 noundef 0) #8
  %56 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %tx_buffer.i, align 8
  %57 = ptrtoint ptr %dma_tx_addr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %dma_tx_addr.i, align 8
  br label %uhdlc_memclean.exit

uhdlc_memclean.exit:                              ; preds = %if.then42.i, %if.end40.i.uhdlc_memclean.exit_crit_edge
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %si_regs = getelementptr inbounds %struct.ucc_tdm, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %si_regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %si_regs, align 4
  %tobool.not = icmp eq ptr %61, null
  br i1 %tobool.not, label %uhdlc_memclean.exit.if.end_crit_edge, label %if.then

uhdlc_memclean.exit.if.end_crit_edge:             ; preds = %uhdlc_memclean.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %uhdlc_memclean.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %61) #8
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %si_regs4 = getelementptr inbounds %struct.ucc_tdm, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %si_regs4 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %si_regs4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %uhdlc_memclean.exit.if.end_crit_edge
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 8
  %siram = getelementptr inbounds %struct.ucc_tdm, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %siram to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %siram, align 4
  %tobool6.not = icmp eq ptr %68, null
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %68) #8
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 8
  %siram11 = getelementptr inbounds %struct.ucc_tdm, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %siram11 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %siram11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @kfree(ptr noundef %1) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.79) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qe_clock_source(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ucc_of_parse_tdm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdlc_map_iomem(ptr noundef %name, i32 noundef %init_flag, ptr nocapture noundef %ptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %name) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %call) #11
  tail call void @of_node_put(ptr noundef nonnull %call) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @of_node_put(ptr noundef nonnull %call) #8
  %call6 = tail call ptr @platform_get_resource(ptr noundef nonnull %call1, i32 noundef 512, i32 noundef 0) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.error_put_device_crit_edge, label %if.end9

if.end5.error_put_device_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_put_device

if.end9:                                          ; preds = %if.end5
  %0 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call6, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %3
  %call11 = tail call ptr @ioremap(i32 noundef %1, i32 noundef %add.i) #8
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %ptr, align 4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.error_put_device_crit_edge, label %if.end14

if.end9.error_put_device_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_put_device

if.end14:                                         ; preds = %if.end9
  %dev = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3
  tail call void @put_device(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init_flag)
  %tobool15.not = icmp eq i32 %init_flag, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %land.lhs.true

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end14
  %.b = load i1, ptr @hdlc_map_iomem.siram_init_flag, align 4
  br i1 %.b, label %land.lhs.true.cleanup_crit_edge, label %if.then16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptr, align 4
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i, align 4
  %9 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call6, align 4
  %sub.i36 = add i32 %8, 1
  %add.i37 = sub i32 %sub.i36, %10
  tail call void @mmioset(ptr noundef %6, i32 noundef 0, i32 noundef %add.i37) #8
  store i1 true, ptr @hdlc_map_iomem.siram_init_flag, align 4
  br label %cleanup

error_put_device:                                 ; preds = %if.end9.error_put_device_crit_edge, %if.end5.error_put_device_crit_edge
  %ret.0 = phi i32 [ -22, %if.end5.error_put_device_crit_edge ], [ -12, %if.end9.error_put_device_crit_edge ]
  %dev19 = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3
  tail call void @put_device(ptr noundef %dev19) #8
  br label %cleanup

cleanup:                                          ; preds = %error_put_device, %if.then16, %land.lhs.true.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_put_device ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_hdlcdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ucc_hdlc_attach(ptr nocapture noundef readonly %dev, i16 noundef zeroext %encoding, i16 noundef zeroext %parity) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %encoding.off = add i16 %encoding, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %encoding.off)
  %switch = icmp ult i16 %encoding.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i16 %parity to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %parity, label %if.end.cleanup_crit_edge [
    i16 1, label %if.end.if.end22_crit_edge
    i16 7, label %if.end.if.end22_crit_edge32
    i16 4, label %if.end.if.end22_crit_edge33
    i16 5, label %if.end.if.end22_crit_edge34
  ]

if.end.if.end22_crit_edge34:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end.if.end22_crit_edge33:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end.if.end22_crit_edge32:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end.if.end22_crit_edge, %if.end.if.end22_crit_edge32, %if.end.if.end22_crit_edge33, %if.end.if.end22_crit_edge34
  %encoding23 = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 32
  %3 = ptrtoint ptr %encoding23 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %encoding, ptr %encoding23, align 8
  %parity24 = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %parity24 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %parity, ptr %parity24, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucc_hdlc_tx(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %3, label %sw.default [
    i16 518, label %sw.bb
    i16 512, label %sw.bb6
    i16 1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %9 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @consume_skb(ptr noundef %skb) #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.77) #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 2) #8
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -188, ptr %12, align 2
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %data7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data7, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -253, i16 %17)
  %cmp9.not = icmp eq i16 %17, -253
  br i1 %cmp9.not, label %sw.bb6.sw.epilog_crit_edge, label %if.then11

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then11:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %tx_dropped13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %18 = ptrtoint ptr %tx_dropped13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_dropped13, align 4
  %inc14 = add i32 %19, 1
  store i32 %inc14, ptr %tx_dropped13, align 4
  tail call void @consume_skb(ptr noundef %skb) #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.78) #11
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_dropped26 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %20 = ptrtoint ptr %tx_dropped26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_dropped26, align 4
  %inc27 = add i32 %21, 1
  store i32 %inc27, ptr %tx_dropped26, align 4
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6.sw.epilog_crit_edge, %if.end, %entry.sw.epilog_crit_edge
  %len21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len21, align 4
  %tx_bytes23 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %24 = ptrtoint ptr %tx_bytes23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_bytes23, align 4
  %add24 = add i32 %25, %23
  store i32 %add24, ptr %tx_bytes23, align 4
  %len28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len28, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %28 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_tx.i.i, align 128
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %27)
  %cmp.i.i.i = icmp ugt i32 %27, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !195

do.body2.i.i.i:                                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #8, !srcloc !196
  unreachable

dql_queued.exit.i.i:                              ; preds = %sw.epilog
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 15, i32 2
  %30 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !197
  %31 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %32, %27
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 15, i32 1
  %33 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %35 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %34, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i, label %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge, label %if.end.i.i, !prof !198

dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_sent_queue.exit

if.end.i.i:                                       ; preds = %dql_queued.exit.i.i
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !199
  %36 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %38 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %37, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i.netdev_sent_queue.exit_crit_edge, !prof !195

if.end.i.i.netdev_sent_queue.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_sent_queue.exit

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #8
  br label %netdev_sent_queue.exit

netdev_sent_queue.exit:                           ; preds = %if.then14.i.i, %if.end.i.i.netdev_sent_queue.exit_crit_edge, %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge
  %lock = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 36
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !200
  %curtx_bd = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 20
  %40 = ptrtoint ptr %curtx_bd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %curtx_bd, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %41, align 1
  %tx_skbuff = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 24
  %44 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_skbuff, align 8
  %skb_curtx = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 26
  %46 = ptrtoint ptr %skb_curtx to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %skb_curtx, align 8
  %idxprom = zext i16 %47 to i32
  %arrayidx = getelementptr ptr, ptr %45, i32 %idxprom
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %skb, ptr %arrayidx, align 4
  %49 = load i16, ptr %skb_curtx, align 8
  %50 = add i16 %49, 1
  %51 = and i16 %50, 15
  store i16 %51, ptr %skb_curtx, align 8
  %tx_buffer = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 12
  %52 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_buffer, align 8
  %buf = getelementptr inbounds %struct.qe_bd, ptr %41, i32 0, i32 2
  %54 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %buf, align 1
  %dma_tx_addr = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 14
  %56 = ptrtoint ptr %dma_tx_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_tx_addr, align 8
  %sub = sub i32 %55, %57
  %add.ptr = getelementptr i8, ptr %53, i32 %sub
  %data41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %58 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data41, align 4
  %60 = ptrtoint ptr %len28 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len28, align 4
  %62 = call ptr @memcpy(ptr %add.ptr, ptr %59, i32 %61)
  %63 = and i16 %43, 8192
  %64 = or i16 %63, -25600
  %65 = load i32, ptr %len28, align 4
  %conv50 = trunc i32 %65 to i16
  %length = getelementptr inbounds %struct.qe_bd, ptr %41, i32 0, i32 1
  %66 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %conv50, ptr %length, align 1
  store i16 %64, ptr %41, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.not = icmp eq i16 %63, 0
  br i1 %tobool.not, label %if.then54, label %if.else

if.then54:                                        ; preds = %netdev_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr55 = getelementptr %struct.qe_bd, ptr %41, i32 1
  br label %if.end56

if.else:                                          ; preds = %netdev_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  %tx_bd_base = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 16
  %67 = ptrtoint ptr %tx_bd_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_bd_base, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then54
  %bd.0 = phi ptr [ %68, %if.else ], [ %add.ptr55, %if.then54 ]
  %dirty_tx = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 22
  %69 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dirty_tx, align 8
  %cmp57 = icmp eq ptr %bd.0, %70
  br i1 %cmp57, label %if.then59, label %if.end56.if.end63_crit_edge

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then59:                                        ; preds = %if.end56
  %71 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i118 = getelementptr inbounds %struct.netdev_queue, ptr %72, i32 0, i32 13
  %73 = ptrtoint ptr %state.i.i118 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %state.i.i118, align 4
  %and1.i.i.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then61, label %if.then59.if.end63_crit_edge

if.then59.if.end63_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then61:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i118) #8
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then59.if.end63_crit_edge, %if.end56.if.end63_crit_edge
  %75 = ptrtoint ptr %curtx_bd to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %bd.0, ptr %curtx_bd, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call33) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %sw.default, %if.then11, %if.then
  %retval.0 = phi i32 [ -12, %sw.default ], [ 0, %if.end63 ], [ -12, %if.then11 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucc_hdlc_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %napi, i32 324
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %ndev.i = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !201
  %dirty_tx.i = getelementptr i8, ptr %napi, i32 280
  %2 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dirty_tx.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %bd_status.010.i = load i16, ptr %3, align 1
  %conv11.i = zext i16 %bd_status.010.i to i32
  %and12.i = and i32 %conv11.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %cmp13.i = icmp eq i32 %and12.i, 0
  br i1 %cmp13.i, label %while.body.lr.ph.i, label %entry.hdlc_tx_done.exit_crit_edge

entry.hdlc_tx_done.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdlc_tx_done.exit

while.body.lr.ph.i:                               ; preds = %entry
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %tx_skbuff.i = getelementptr i8, ptr %napi, i32 288
  %skb_dirtytx.i = getelementptr i8, ptr %napi, i32 300
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %tx_buffer.i = getelementptr i8, ptr %napi, i32 240
  %dma_tx_addr.i = getelementptr i8, ptr %napi, i32 248
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %tx_bd_base.i = getelementptr i8, ptr %napi, i32 256
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %conv17.i = phi i32 [ %conv11.i, %while.body.lr.ph.i ], [ %conv.i, %cleanup.i.while.body.i_crit_edge ]
  %tx_restart.016.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %tx_restart.2.i, %cleanup.i.while.body.i_crit_edge ]
  %bd.015.i = phi ptr [ %3, %while.body.lr.ph.i ], [ %bd.1.i, %cleanup.i.while.body.i_crit_edge ]
  %bytes_sent.014.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %cleanup.i.while.body.i_crit_edge ]
  %and3.i = and i32 %conv17.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %tx_fifo_errors.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %tx_restart.1.i = phi i32 [ 1, %if.then.i ], [ %tx_restart.016.i, %while.body.i.if.end.i_crit_edge ]
  %and5.i = and i32 %conv17.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then7.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_carrier_errors.i, align 4
  %inc9.i = add i32 %8, 1
  store i32 %inc9.i, ptr %tx_carrier_errors.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end.i.if.end10.i_crit_edge
  %tx_restart.2.i = phi i32 [ 1, %if.then7.i ], [ %tx_restart.1.i, %if.end.i.if.end10.i_crit_edge ]
  %9 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_skbuff.i, align 8
  %11 = ptrtoint ptr %skb_dirtytx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %skb_dirtytx.i, align 4
  %idxprom.i = zext i16 %12 to i32
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool11.not.i = icmp eq ptr %14, null
  br i1 %tobool11.not.i, label %if.end10.i.while.end.i_crit_edge, label %if.end13.i

if.end10.i.while.end.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end13.i:                                       ; preds = %if.end10.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  %add.i = add i32 %16, %bytes_sent.014.i
  %17 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_packets.i, align 4
  %inc16.i = add i32 %18, 1
  store i32 %inc16.i, ptr %tx_packets.i, align 4
  %19 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_buffer.i, align 8
  %buf.i = getelementptr inbounds %struct.qe_bd, ptr %bd.015.i, i32 0, i32 2
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %buf.i, align 1
  %23 = ptrtoint ptr %dma_tx_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_tx_addr.i, align 8
  %sub.i = sub i32 %22, %24
  %add.ptr.i = getelementptr i8, ptr %20, i32 %sub.i
  %25 = load i32, ptr %len.i, align 4
  %26 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %25)
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %14, i32 noundef 0) #8
  %27 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_skbuff.i, align 8
  %29 = ptrtoint ptr %skb_dirtytx.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %skb_dirtytx.i, align 4
  %idxprom20.i = zext i16 %30 to i32
  %arrayidx21.i = getelementptr ptr, ptr %28, i32 %idxprom20.i
  %31 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx21.i, align 4
  %32 = load i16, ptr %skb_dirtytx.i, align 4
  %33 = add i16 %32, 1
  %34 = and i16 %33, 15
  store i16 %34, ptr %skb_dirtytx.i, align 4
  %35 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end13.i.if.end29.i_crit_edge, label %if.then28.i

if.end13.i.if.end29.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then28.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_tx_wake_queue(ptr noundef %36) #8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %if.end13.i.if.end29.i_crit_edge
  %and31.i = and i32 %conv17.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.then33.i, label %if.else.i

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr34.i = getelementptr %struct.qe_bd, ptr %bd.015.i, i32 1
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %tx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_bd_base.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.then33.i
  %bd.1.i = phi ptr [ %40, %if.else.i ], [ %add.ptr34.i, %if.then33.i ]
  %41 = ptrtoint ptr %bd.1.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %bd_status.0.i = load i16, ptr %bd.1.i, align 1
  %conv.i = zext i16 %bd_status.0.i to i32
  %and.i = and i32 %conv.i, 32768
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.while.end.i_crit_edge

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.end10.i.while.end.i_crit_edge
  %bytes_sent.0.lcssa.i = phi i32 [ %add.i, %cleanup.i.while.end.i_crit_edge ], [ %bytes_sent.014.i, %if.end10.i.while.end.i_crit_edge ]
  %bd.0.lcssa.i = phi ptr [ %bd.1.i, %cleanup.i.while.end.i_crit_edge ], [ %bd.015.i, %if.end10.i.while.end.i_crit_edge ]
  %42 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %bd.0.lcssa.i, ptr %dirty_tx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_restart.2.i)
  %tobool38.not.i = icmp eq i32 %tx_restart.2.i, 0
  br i1 %tobool38.not.i, label %while.end.i.if.end41.i_crit_edge, label %if.then39.i

while.end.i.if.end41.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then39.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %ut_info.i.i = getelementptr i8, ptr %napi, i32 -20
  %43 = ptrtoint ptr %ut_info.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ut_info.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %call.i.i = tail call i32 @ucc_fast_get_qe_cr_subblock(i32 noundef %46) #8
  %call1.i.i = tail call i32 @qe_issue_cmd(i32 noundef 6, i32 noundef %call.i.i, i8 noundef zeroext 0, i32 noundef 0) #8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then39.i, %while.end.i.if.end41.i_crit_edge
  %47 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_sent.0.lcssa.i)
  %tobool.not.i.i.i = icmp eq i32 %bytes_sent.0.lcssa.i, 0
  br i1 %tobool.not.i.i.i, label %if.end41.i.hdlc_tx_done.exit_crit_edge, label %if.end.i.i.i, !prof !195

if.end41.i.hdlc_tx_done.exit_crit_edge:           ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdlc_tx_done.exit

if.end.i.i.i:                                     ; preds = %if.end41.i
  %dql.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %48, i32 0, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i.i, i32 noundef %bytes_sent.0.lcssa.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !202
  %adj_limit.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %48, i32 0, i32 15, i32 1
  %49 = ptrtoint ptr %adj_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %adj_limit.i.i.i.i, align 4
  %51 = ptrtoint ptr %dql.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %dql.i.i.i, align 128
  %sub.i.i.i.i = sub i32 %50, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.hdlc_tx_done.exit_crit_edge, label %if.end14.i.i.i, !prof !195

if.end.i.i.i.hdlc_tx_done.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdlc_tx_done.exit

if.end14.i.i.i:                                   ; preds = %if.end.i.i.i
  %state.i.i3.i = getelementptr inbounds %struct.netdev_queue, ptr %48, i32 0, i32 13
  %call15.i.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end14.i.i.i.hdlc_tx_done.exit_crit_edge, label %if.then17.i.i.i

if.end14.i.i.i.hdlc_tx_done.exit_crit_edge:       ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdlc_tx_done.exit

if.then17.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_schedule_queue(ptr noundef %48) #8
  br label %hdlc_tx_done.exit

hdlc_tx_done.exit:                                ; preds = %if.then17.i.i.i, %if.end14.i.i.i.hdlc_tx_done.exit_crit_edge, %if.end.i.i.i.hdlc_tx_done.exit_crit_edge, %if.end41.i.hdlc_tx_done.exit_crit_edge, %entry.hdlc_tx_done.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %53 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ndev.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !203
  %currx_bd.i = getelementptr i8, ptr %napi, i32 276
  %55 = ptrtoint ptr %currx_bd.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %currx_bd.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %bd_status.0194.i = load i16, ptr %56, align 1
  %conv195.i = zext i16 %bd_status.0194.i to i32
  %and196.i = and i32 %conv195.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196.i)
  %tobool.not197.i = icmp eq i32 %and196.i, 0
  %dec198.i = add i32 %budget, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec198.i)
  %cmp199.i = icmp sgt i32 %dec198.i, -1
  %58 = and i1 %cmp199.i, %tobool.not197.i
  br i1 %58, label %while.body.lr.ph.i20, label %hdlc_tx_done.exit.while.end.i41_crit_edge

hdlc_tx_done.exit.while.end.i41_crit_edge:        ; preds = %hdlc_tx_done.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i41

while.body.lr.ph.i20:                             ; preds = %hdlc_tx_done.exit
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 36, i32 4
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 36, i32 9
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 36, i32 14
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 36, i32 12
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 36, i32 11
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 36, i32 13
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 36, i32 10
  %rx_buffer.i = getelementptr i8, ptr %napi, i32 244
  %currx_bdnum.i = getelementptr i8, ptr %napi, i32 284
  %type.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 32
  %stats82.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 36, i32 2
  %proto.i = getelementptr i8, ptr %54, i32 2312
  %rx_bd_base.i = getelementptr i8, ptr %napi, i32 260
  br label %while.body.i22

while.body.i22:                                   ; preds = %if.end115.i.while.body.i22_crit_edge, %while.body.lr.ph.i20
  %rx_work_limit.addr.1206.i = phi i32 [ %dec198.i, %while.body.lr.ph.i20 ], [ %rx_work_limit.addr.1.i, %if.end115.i.while.body.i22_crit_edge ]
  %conv205.i = phi i32 [ %conv195.i, %while.body.lr.ph.i20 ], [ %conv.i36, %if.end115.i.while.body.i22_crit_edge ]
  %howmany.0204.i = phi i16 [ 0, %while.body.lr.ph.i20 ], [ %howmany.1.i, %if.end115.i.while.body.i22_crit_edge ]
  %bd.0203.i = phi ptr [ %56, %while.body.lr.ph.i20 ], [ %bd.1.i34, %if.end115.i.while.body.i22_crit_edge ]
  %skb.0202.i = phi ptr [ null, %while.body.lr.ph.i20 ], [ %skb.2.i, %if.end115.i.while.body.i22_crit_edge ]
  %and3.i21 = and i32 %conv205.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i21)
  %tobool4.not.i = icmp eq i32 %and3.i21, 0
  br i1 %tobool4.not.i, label %if.end46.i, label %if.then.i24

if.then.i24:                                      ; preds = %while.body.i22
  %59 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_errors.i, align 8
  %inc.i23 = add i32 %60, 1
  store i32 %inc.i23, ptr %rx_errors.i, align 8
  %and6.i = and i32 %conv205.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.then.i24.if.end.i26_crit_edge, label %if.then8.i

if.then.i24.if.end.i26_crit_edge:                 ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i26

if.then8.i:                                       ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %collisions.i, align 4
  %inc10.i = add i32 %62, 1
  store i32 %inc10.i, ptr %collisions.i, align 4
  br label %if.end.i26

if.end.i26:                                       ; preds = %if.then8.i, %if.then.i24.if.end.i26_crit_edge
  %and12.i25 = and i32 %conv205.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i25)
  %tobool13.not.i = icmp eq i32 %and12.i25, 0
  br i1 %tobool13.not.i, label %if.end.i26.if.end17.i_crit_edge, label %if.then14.i

if.end.i26.if.end17.i_crit_edge:                  ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc16.i27 = add i32 %64, 1
  store i32 %inc16.i27, ptr %rx_fifo_errors.i, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end.i26.if.end17.i_crit_edge
  %and19.i = and i32 %conv205.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end17.i.if.end24.i_crit_edge, label %if.then21.i

if.end17.i.if.end24.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_crc_errors.i, align 8
  %inc23.i = add i32 %66, 1
  store i32 %inc23.i, ptr %rx_crc_errors.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.end17.i.if.end24.i_crit_edge
  %and26.i = and i32 %conv205.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end24.i.if.end31.i_crit_edge, label %if.then28.i28

if.end24.i.if.end31.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then28.i28:                                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_over_errors.i, align 4
  %inc30.i = add i32 %68, 1
  store i32 %inc30.i, ptr %rx_over_errors.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then28.i28, %if.end24.i.if.end31.i_crit_edge
  %and33.i = and i32 %conv205.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end31.i.if.end38.i_crit_edge, label %if.then35.i

if.end31.i.if.end38.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then35.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_frame_errors.i, align 4
  %inc37.i = add i32 %70, 1
  store i32 %inc37.i, ptr %rx_frame_errors.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.end31.i.if.end38.i_crit_edge
  %and40.i = and i32 %conv205.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end38.i.recycle.i_crit_edge, label %if.then42.i

if.end38.i.recycle.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %recycle.i

if.then42.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_length_errors.i, align 8
  %inc44.i = add i32 %72, 1
  store i32 %inc44.i, ptr %rx_length_errors.i, align 8
  br label %recycle.i

if.end46.i:                                       ; preds = %while.body.i22
  %73 = ptrtoint ptr %rx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rx_buffer.i, align 4
  %75 = ptrtoint ptr %currx_bdnum.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %currx_bdnum.i, align 4
  %conv47.i = zext i16 %76 to i32
  %mul.i = mul nuw nsw i32 %conv47.i, 1536
  %add.ptr.i29 = getelementptr i8, ptr %74, i32 %mul.i
  %length48.i = getelementptr inbounds %struct.qe_bd, ptr %bd.0203.i, i32 0, i32 1
  %77 = ptrtoint ptr %length48.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %length48.i, align 1
  %79 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %type.i, align 16
  %81 = zext i16 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %80, label %if.end46.i.sw.epilog.i_crit_edge [
    i16 518, label %sw.bb.i
    i16 512, label %if.end46.i.sw.bb64.i_crit_edge
    i16 1, label %if.end46.i.sw.bb64.i_crit_edge43
  ]

if.end46.i.sw.bb64.i_crit_edge43:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb64.i

if.end46.i.sw.bb64.i_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb64.i

if.end46.i.sw.epilog.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end46.i
  %sub.i30 = add i16 %78, -4
  %conv53.i = zext i16 %sub.i30 to i32
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv53.i, i32 noundef 2592) #8
  %tobool55.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool55.not.i, label %if.then56.i, label %if.end59.i

if.then56.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 36, i32 6
  %82 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx_dropped.i, align 8
  %inc58.i = add i32 %83, 1
  store i32 %inc58.i, ptr %rx_dropped.i, align 8
  br label %hdlc_rx_done.exit

if.end59.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr50.i = getelementptr i8, ptr %add.ptr.i29, i32 2
  %call61.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %conv53.i) #8
  %len.i31 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %84 = ptrtoint ptr %len.i31 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv53.i, ptr %len.i31, align 4
  %85 = getelementptr inbounds %struct.anon.44, ptr %call.i.i.i, i32 0, i32 2
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %54, ptr %85, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %87 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data.i, align 4
  %89 = call ptr @memcpy(ptr %88, ptr %add.ptr50.i, i32 %conv53.i)
  br label %sw.epilog.i

sw.bb64.i:                                        ; preds = %if.end46.i.sw.bb64.i_crit_edge, %if.end46.i.sw.bb64.i_crit_edge43
  %sub66.i = add i16 %78, -2
  %conv68.i = zext i16 %sub66.i to i32
  %call.i.i189.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv68.i, i32 noundef 2592) #8
  %tobool70.not.i = icmp eq ptr %call.i.i189.i, null
  br i1 %tobool70.not.i, label %if.then71.i, label %if.end75.i

if.then71.i:                                      ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_dropped73.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 36, i32 6
  %90 = ptrtoint ptr %rx_dropped73.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_dropped73.i, align 8
  %inc74.i = add i32 %91, 1
  store i32 %inc74.i, ptr %rx_dropped73.i, align 8
  br label %hdlc_rx_done.exit

if.end75.i:                                       ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #10
  %call77.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i189.i, i32 noundef %conv68.i) #8
  %len79.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i189.i, i32 0, i32 6
  %92 = ptrtoint ptr %len79.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv68.i, ptr %len79.i, align 4
  %93 = getelementptr inbounds %struct.anon.44, ptr %call.i.i189.i, i32 0, i32 2
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %54, ptr %93, align 8
  %data80.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i189.i, i32 0, i32 19
  %95 = ptrtoint ptr %data80.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data80.i, align 4
  %97 = call ptr @memcpy(ptr %96, ptr %add.ptr.i29, i32 %conv68.i)
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end75.i, %if.end59.i, %if.end46.i.sw.epilog.i_crit_edge
  %skb.1.i = phi ptr [ %skb.0202.i, %if.end46.i.sw.epilog.i_crit_edge ], [ %call.i.i189.i, %if.end75.i ], [ %call.i.i.i, %if.end59.i ]
  %98 = ptrtoint ptr %stats82.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %stats82.i, align 8
  %inc83.i = add i32 %99, 1
  store i32 %inc83.i, ptr %stats82.i, align 8
  %len84.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 6
  %100 = ptrtoint ptr %len84.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len84.i, align 4
  %102 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rx_bytes.i, align 8
  %add.i32 = add i32 %103, %101
  store i32 %add.i32, ptr %rx_bytes.i, align 8
  %inc86.i = add i16 %howmany.0204.i, 1
  %104 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %proto.i, align 4
  %tobool87.not.i = icmp eq ptr %105, null
  br i1 %tobool87.not.i, label %sw.epilog.i.if.end90.i_crit_edge, label %if.then88.i

sw.epilog.i.if.end90.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i

if.then88.i:                                      ; preds = %sw.epilog.i
  %106 = getelementptr inbounds %struct.anon.44, ptr %skb.1.i, i32 0, i32 2
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %54, ptr %106, align 8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 19
  %108 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 18
  %110 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %109 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %111 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 15, i32 0, i32 21
  %112 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %113 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %proto.i, align 4
  %type_trans.i.i = getelementptr inbounds %struct.hdlc_proto, ptr %114, i32 0, i32 6
  %115 = ptrtoint ptr %type_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %type_trans.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %116, null
  br i1 %tobool.not.i.i, label %if.then88.i.hdlc_type_trans.exit.i_crit_edge, label %if.then.i.i

if.then88.i.hdlc_type_trans.exit.i_crit_edge:     ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdlc_type_trans.exit.i

if.then.i.i:                                      ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = tail call zeroext i16 %116(ptr noundef %skb.1.i, ptr noundef %54) #8
  br label %hdlc_type_trans.exit.i

hdlc_type_trans.exit.i:                           ; preds = %if.then.i.i, %if.then88.i.hdlc_type_trans.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %call3.i.i, %if.then.i.i ], [ 25, %if.then88.i.hdlc_type_trans.exit.i_crit_edge ]
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 15, i32 0, i32 18
  %117 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %retval.0.i.i, ptr %protocol.i, align 8
  br label %if.end90.i

if.end90.i:                                       ; preds = %hdlc_type_trans.exit.i, %sw.epilog.i.if.end90.i_crit_edge
  %call91.i = tail call i32 @netif_receive_skb(ptr noundef %skb.1.i) #8
  br label %recycle.i

recycle.i:                                        ; preds = %if.end90.i, %if.then42.i, %if.end38.i.recycle.i_crit_edge
  %skb.2.i = phi ptr [ %skb.0202.i, %if.then42.i ], [ %skb.0202.i, %if.end38.i.recycle.i_crit_edge ], [ %skb.1.i, %if.end90.i ]
  %howmany.1.i = phi i16 [ %howmany.0204.i, %if.then42.i ], [ %howmany.0204.i, %if.end38.i.recycle.i_crit_edge ], [ %inc86.i, %if.end90.i ]
  %and93.i = and i32 %conv205.i, 8192
  %118 = trunc i32 %and93.i to i16
  %conv95.i = or i16 %118, -28672
  %119 = ptrtoint ptr %bd.0203.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 2)
  store i16 %conv95.i, ptr %bd.0203.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool99.not.i = icmp eq i32 %and93.i, 0
  br i1 %tobool99.not.i, label %if.else.i33, label %if.then100.i

if.then100.i:                                     ; preds = %recycle.i
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %currx_bdnum.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %currx_bdnum.i, align 4
  %121 = ptrtoint ptr %rx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rx_bd_base.i, align 4
  br label %if.end115.i

if.else.i33:                                      ; preds = %recycle.i
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %currx_bdnum.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %currx_bdnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %124)
  %cmp104.i = icmp ult i16 %124, 31
  %add109.i = add i16 %124, 1
  %storemerge.i = select i1 %cmp104.i, i16 %add109.i, i16 31
  %125 = ptrtoint ptr %currx_bdnum.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %storemerge.i, ptr %currx_bdnum.i, align 4
  %add.ptr114.i = getelementptr %struct.qe_bd, ptr %bd.0203.i, i32 1
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.else.i33, %if.then100.i
  %bd.1.i34 = phi ptr [ %122, %if.then100.i ], [ %add.ptr114.i, %if.else.i33 ]
  %126 = ptrtoint ptr %bd.1.i34 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %bd_status.0.i35 = load i16, ptr %bd.1.i34, align 1
  %conv.i36 = zext i16 %bd_status.0.i35 to i32
  %and.i37 = and i32 %conv.i36, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool.not.i38 = icmp eq i32 %and.i37, 0
  %dec.i = add i32 %rx_work_limit.addr.1206.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i39 = icmp slt i32 %dec.i, 0
  %rx_work_limit.addr.1.i = select i1 %tobool.not.i38, i32 %dec.i, i32 %rx_work_limit.addr.1206.i
  %not.tobool.not.i = xor i1 %tobool.not.i38, true
  %127 = select i1 %not.tobool.not.i, i1 true, i1 %cmp.i39
  br i1 %127, label %if.end115.i.while.end.i41_crit_edge, label %if.end115.i.while.body.i22_crit_edge

if.end115.i.while.body.i22_crit_edge:             ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i22

if.end115.i.while.end.i41_crit_edge:              ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i41

while.end.i41:                                    ; preds = %if.end115.i.while.end.i41_crit_edge, %hdlc_tx_done.exit.while.end.i41_crit_edge
  %bd.0.lcssa.i40 = phi ptr [ %56, %hdlc_tx_done.exit.while.end.i41_crit_edge ], [ %bd.1.i34, %if.end115.i.while.end.i41_crit_edge ]
  %howmany.0.lcssa.i = phi i16 [ 0, %hdlc_tx_done.exit.while.end.i41_crit_edge ], [ %howmany.1.i, %if.end115.i.while.end.i41_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !204
  %128 = ptrtoint ptr %currx_bd.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %bd.0.lcssa.i40, ptr %currx_bd.i, align 4
  %conv118.i = zext i16 %howmany.0.lcssa.i to i32
  br label %hdlc_rx_done.exit

hdlc_rx_done.exit:                                ; preds = %while.end.i41, %if.then71.i, %if.then56.i
  %retval.0.i = phi i32 [ -12, %if.then71.i ], [ -12, %if.then56.i ], [ %conv118.i, %while.end.i41 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %budget)
  %cmp = icmp slt i32 %retval.0.i, %budget
  br i1 %cmp, label %if.then, label %hdlc_rx_done.exit.if.end_crit_edge

hdlc_rx_done.exit.if.end_crit_edge:               ; preds = %hdlc_rx_done.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %hdlc_rx_done.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %retval.0.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  tail call void @arm_heavy_mb() #8
  %uccf = getelementptr i8, ptr %napi, i32 -16
  %129 = ptrtoint ptr %uccf to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %uccf, align 8
  %p_uccm = getelementptr inbounds %struct.ucc_fast_private, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %p_uccm to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %p_uccm, align 4
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #8, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  %or = or i32 %133, 2031616
  %134 = ptrtoint ptr %uccf to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %uccf, align 8
  %p_uccm7 = getelementptr inbounds %struct.ucc_fast_private, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %p_uccm7 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %p_uccm7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %or) #8, !srcloc !167
  br label %if.end

if.end:                                           ; preds = %if.then, %hdlc_rx_done.exit.if.end_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ucc_fast_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ucc_fast_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qe_setbrg(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ucc_tdm_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ucc_fast_get_qe_cr_subblock(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qe_issue_cmd(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpm_muram_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpm_muram_addr(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpm_muram_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ucc_fast_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uhdlc_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hdlc_busy = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %hdlc_busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdlc_busy, align 2, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not = icmp eq i8 %5, 1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %ut_info = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ut_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ut_info, align 4
  %irq = getelementptr inbounds %struct.ucc_fast_info, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @ucc_hdlc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.72, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = ptrtoint ptr %ut_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ut_info, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %call9 = tail call i32 @ucc_fast_get_qe_cr_subblock(i32 noundef %13) #8
  %call10 = tail call i32 @qe_issue_cmd(i32 noundef 0, i32 noundef %call9, i8 noundef zeroext 0, i32 noundef 0) #8
  %uccf = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %uccf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %uccf, align 8
  tail call void @ucc_fast_enable(ptr noundef %15, i32 noundef 3) #8
  %tsa = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %tsa to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tsa, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool11.not = icmp eq i16 %17, 0
  br i1 %tobool11.not, label %if.end.if.end19_crit_edge, label %if.then12

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %si_regs = getelementptr inbounds %struct.ucc_tdm, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %si_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %si_regs, align 4
  %siglmr1_h = getelementptr inbounds %struct.si1, ptr %19, i32 0, i32 1
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %siglmr1_h) #8, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %3, align 4
  %conv15 = zext i16 %22 to i32
  %shl = shl nuw i32 1, %conv15
  %23 = trunc i32 %shl to i8
  %conv16 = or i8 %20, %23
  %24 = ptrtoint ptr %si_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %si_regs, align 4
  %siglmr1_h18 = getelementptr inbounds %struct.si1, ptr %25, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %siglmr1_h18, i8 %conv16) #8, !srcloc !210
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.end.if.end19_crit_edge
  %26 = ptrtoint ptr %hdlc_busy to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %hdlc_busy, align 2
  %ndev = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndev, align 8
  tail call void @netif_device_attach(ptr noundef %28) #8
  %napi = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 5
  tail call void @napi_enable(ptr noundef %napi) #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %30, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #8
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %30, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #8
  %31 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i41 = getelementptr inbounds %struct.netdev_queue, ptr %32, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i41) #8
  %call21 = tail call i32 @hdlc_open(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then.cleanup_crit_edge ], [ 0, %if.end19 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uhdlc_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %napi = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 5
  tail call void @napi_disable(ptr noundef %napi) #8
  %ut_info = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ut_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ut_info, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call3 = tail call i32 @ucc_fast_get_qe_cr_subblock(i32 noundef %7) #8
  %call4 = tail call i32 @qe_issue_cmd(i32 noundef 5, i32 noundef %call3, i8 noundef zeroext 0, i32 noundef 0) #8
  %call5 = tail call i32 @qe_issue_cmd(i32 noundef 7, i32 noundef %call3, i8 noundef zeroext 0, i32 noundef 0) #8
  %tsa = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %tsa to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tsa, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %si_regs = getelementptr inbounds %struct.ucc_tdm, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %si_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %si_regs, align 4
  %siglmr1_h = getelementptr inbounds %struct.si1, ptr %11, i32 0, i32 1
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %siglmr1_h) #8, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %3, align 4
  %conv7 = zext i16 %14 to i32
  %shl = shl nuw i32 1, %conv7
  %15 = trunc i32 %shl to i8
  %16 = xor i8 %15, -1
  %conv8 = and i8 %12, %16
  %17 = ptrtoint ptr %si_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %si_regs, align 4
  %siglmr1_h10 = getelementptr inbounds %struct.si1, ptr %18, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %siglmr1_h10, i8 %conv8) #8, !srcloc !210
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %uccf = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %uccf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %uccf, align 8
  tail call void @ucc_fast_disable(ptr noundef %20, i32 noundef 3) #8
  %21 = ptrtoint ptr %ut_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ut_info, align 4
  %irq = getelementptr inbounds %struct.ucc_fast_info, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %call13 = tail call ptr @free_irq(i32 noundef %24, ptr noundef %1) #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %25 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %26, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %27 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i27 = getelementptr inbounds %struct.netdev_queue, ptr %28, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i27) #8
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %28, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #8
  %hdlc_busy = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %hdlc_busy to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %hdlc_busy, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdlc_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uhdlc_ioctl(ptr noundef %dev, ptr noundef %ifs) #2 align 64 {
entry:
  %line = alloca %struct.te1_settings, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line) #8
  %0 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ifs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %ifs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4100, ptr %ifs, align 4
  %size2 = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 1
  %3 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp = icmp ult i32 %4, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %size2, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %6 = call ptr @memset(ptr %line, i32 0, i32 16)
  %clocking = getelementptr i8, ptr %dev, i32 2648
  %7 = ptrtoint ptr %clocking to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clocking, align 8
  %clock_type = getelementptr inbounds %struct.te1_settings, ptr %line, i32 0, i32 1
  %9 = ptrtoint ptr %clock_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %clock_type, align 4
  %ifs_ifsu = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 2
  %10 = ptrtoint ptr %ifs_ifsu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ifs_ifsu, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.75, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 16, i32 -1226833920) #14, !srcloc !211
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %line, i32 noundef 16) #8
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef nonnull %line, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @hdlc_ioctl(ptr noundef %dev, ptr noundef %ifs) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -105, %if.then ], [ %call7, %sw.default ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uhdlc_tx_timeout(ptr noundef %ndev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.uhdlc_tx_timeout) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucc_hdlc_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.ucc_hdlc_private, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %uccf1 = getelementptr inbounds %struct.ucc_hdlc_private, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %uccf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uccf1, align 8
  %p_ucce = getelementptr inbounds %struct.ucc_fast_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %p_ucce to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_ucce, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  %p_uccm = getelementptr inbounds %struct.ucc_fast_private, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %p_uccm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p_uccm, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  %and = and i32 %9, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %p_ucce to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_ucce, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %and) #8, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = and i32 %and, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %if.end.if.end18_crit_edge, label %if.then8

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then8:                                         ; preds = %if.end
  %napi = getelementptr inbounds %struct.ucc_hdlc_private, ptr %dev_id, i32 0, i32 5
  %call9 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #8
  br i1 %call9, label %if.then10, label %if.then8.if.end18_crit_edge

if.then8.if.end18_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %and11 = and i32 %9, -2031617
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %p_uccm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_uccm, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %and11) #8, !srcloc !167
  tail call void @__napi_schedule(ptr noundef %napi) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %if.then8.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %15 = and i32 %and, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %if.end18.if.end23_crit_edge, label %if.then22

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 15
  %16 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_missed_errors, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %rx_missed_errors, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18.if.end23_crit_edge
  %18 = and i32 %and, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool26.not = icmp eq i32 %18, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.then27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %19 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_errors, align 4
  %inc29 = add i32 %20, 1
  store i32 %inc29, ptr %tx_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then27 ], [ 1, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ucc_fast_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdlc_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdlc_ioctl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uhdlc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ndev = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @netif_device_detach(ptr noundef %3) #8
  %napi = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 5
  tail call void @napi_disable(ptr noundef %napi) #8
  %uf_regs5 = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %uf_regs5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uf_regs5, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  %gumr7 = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 38
  %9 = ptrtoint ptr %gumr7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %gumr7, align 4
  %guemr = getelementptr inbounds %struct.ucc_fast, ptr %7, i32 0, i32 26
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %guemr) #8, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  %guemr9 = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 39
  %11 = ptrtoint ptr %guemr9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %guemr9, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 108) #12
  %ucc_pram_bak = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 37
  %13 = ptrtoint ptr %ucc_pram_bak to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i, ptr %ucc_pram_bak, align 8
  %tobool12.not = icmp eq ptr %call7.i, null
  br i1 %tobool12.not, label %if.end3.cleanup_crit_edge, label %if.end14

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %ucc_pram = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %ucc_pram to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ucc_pram, align 4
  tail call void @mmiocpy(ptr noundef nonnull %call7.i, ptr noundef %15, i32 noundef 108) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %16 = load ptr, ptr @qe_immr, align 4
  %cmxsi1cr_h.i = getelementptr inbounds %struct.qe_immap, ptr %16, i32 0, i32 3, i32 2
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmxsi1cr_h.i) #8, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  %cmxsi1cr_h1.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 41
  %18 = ptrtoint ptr %cmxsi1cr_h1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %cmxsi1cr_h1.i, align 8
  %cmxsi1cr_l.i = getelementptr inbounds %struct.qe_immap, ptr %16, i32 0, i32 3, i32 1
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmxsi1cr_l.i) #8, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  %cmxsi1cr_l5.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 40
  %20 = ptrtoint ptr %cmxsi1cr_l5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cmxsi1cr_l5.i, align 4
  %cmxsi1syr.i = getelementptr inbounds %struct.qe_immap, ptr %16, i32 0, i32 3, i32 3
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmxsi1syr.i) #8, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  %cmxsi1syr9.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 42
  %22 = ptrtoint ptr %cmxsi1syr9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %cmxsi1syr9.i, align 4
  %cmxucr.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 43
  %cmxucr10.i = getelementptr inbounds %struct.qe_immap, ptr %16, i32 0, i32 3, i32 4
  tail call void @mmiocpy(ptr noundef %cmxucr.i, ptr noundef %cmxucr10.i, i32 noundef 16) #8
  %uccf = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %uccf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %uccf, align 8
  tail call void @ucc_fast_disable(ptr noundef %24, i32 noundef 3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uhdlc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ndev = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %ut_info5 = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ut_info5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ut_info5, align 4
  %uf_regs7 = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %uf_regs7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %uf_regs7, align 8
  %uccf8 = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %uccf8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %uccf8, align 8
  %guemr = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 39
  %14 = ptrtoint ptr %guemr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %guemr, align 8
  %guemr9 = getelementptr inbounds %struct.ucc_fast, ptr %11, i32 0, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %guemr9, i8 %15) #8, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  tail call void @arm_heavy_mb() #8
  %gumr = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 38
  %16 = ptrtoint ptr %gumr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gumr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %17) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @arm_heavy_mb() #8
  %urfs = getelementptr inbounds %struct.ucc_fast_info, ptr %9, i32 0, i32 22
  %18 = ptrtoint ptr %urfs to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %urfs, align 2
  %urfs14 = getelementptr inbounds %struct.ucc_fast, ptr %11, i32 0, i32 11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %urfs14, i16 %19) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %urfet = getelementptr inbounds %struct.ucc_fast_info, ptr %9, i32 0, i32 23
  %20 = ptrtoint ptr %urfet to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %urfet, align 4
  %urfet18 = getelementptr inbounds %struct.ucc_fast, ptr %11, i32 0, i32 13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %urfet18, i16 %21) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %urfset = getelementptr inbounds %struct.ucc_fast_info, ptr %9, i32 0, i32 24
  %22 = ptrtoint ptr %urfset to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %urfset, align 2
  %urfset22 = getelementptr inbounds %struct.ucc_fast, ptr %11, i32 0, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %urfset22, i16 %23) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %utfs = getelementptr inbounds %struct.ucc_fast_info, ptr %9, i32 0, i32 25
  %24 = ptrtoint ptr %utfs to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %utfs, align 4
  %utfs26 = getelementptr inbounds %struct.ucc_fast, ptr %11, i32 0, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %utfs26, i16 %25) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  tail call void @arm_heavy_mb() #8
  %utfet = getelementptr inbounds %struct.ucc_fast_info, ptr %9, i32 0, i32 26
  %26 = ptrtoint ptr %utfet to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %utfet, align 2
  %utfet30 = getelementptr inbounds %struct.ucc_fast, ptr %11, i32 0, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %utfet30, i16 %27) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !226
  tail call void @arm_heavy_mb() #8
  %utftt = getelementptr inbounds %struct.ucc_fast_info, ptr %9, i32 0, i32 27
  %28 = ptrtoint ptr %utftt to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %utftt, align 4
  %utftt34 = getelementptr inbounds %struct.ucc_fast, ptr %11, i32 0, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %utftt34, i16 %29) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @arm_heavy_mb() #8
  %ucc_fast_tx_virtual_fifo_base_offset = getelementptr inbounds %struct.ucc_fast_private, ptr %13, i32 0, i32 8
  %30 = ptrtoint ptr %ucc_fast_tx_virtual_fifo_base_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ucc_fast_tx_virtual_fifo_base_offset, align 4
  %utfb = getelementptr inbounds %struct.ucc_fast, ptr %11, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %utfb, i32 %31) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %ucc_fast_rx_virtual_fifo_base_offset = getelementptr inbounds %struct.ucc_fast_private, ptr %13, i32 0, i32 9
  %32 = ptrtoint ptr %ucc_fast_rx_virtual_fifo_base_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ucc_fast_rx_virtual_fifo_base_offset, align 4
  %urfb = getelementptr inbounds %struct.ucc_fast, ptr %11, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %urfb, i32 %33) #8, !srcloc !167
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %34 = load ptr, ptr @qe_immr, align 4
  %cmxucr.i = getelementptr inbounds %struct.qe_immap, ptr %34, i32 0, i32 3, i32 4
  %cmxucr1.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 43
  tail call void @mmiocpy(ptr noundef %cmxucr.i, ptr noundef %cmxucr1.i, i32 noundef 16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %cmxsi1cr_h.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 41
  %35 = ptrtoint ptr %cmxsi1cr_h.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cmxsi1cr_h.i, align 8
  %cmxsi1cr_h3.i = getelementptr inbounds %struct.qe_immap, ptr %34, i32 0, i32 3, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmxsi1cr_h3.i, i32 %36) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  tail call void @arm_heavy_mb() #8
  %cmxsi1cr_l.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 40
  %37 = ptrtoint ptr %cmxsi1cr_l.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cmxsi1cr_l.i, align 4
  %cmxsi1cr_l7.i = getelementptr inbounds %struct.qe_immap, ptr %34, i32 0, i32 3, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmxsi1cr_l7.i, i32 %38) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  tail call void @arm_heavy_mb() #8
  %cmxsi1syr.i = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 42
  %39 = ptrtoint ptr %cmxsi1syr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cmxsi1syr.i, align 4
  %cmxsi1syr11.i = getelementptr inbounds %struct.qe_immap, ptr %34, i32 0, i32 3, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmxsi1syr11.i, i32 %40) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  tail call void @arm_heavy_mb() #8
  %uccm_mask = getelementptr inbounds %struct.ucc_fast_info, ptr %9, i32 0, i32 8
  %41 = ptrtoint ptr %uccm_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %uccm_mask, align 4
  %uccm = getelementptr inbounds %struct.ucc_fast, ptr %11, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %uccm, i32 %42) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  tail call void @arm_heavy_mb() #8
  %ucce = getelementptr inbounds %struct.ucc_fast, ptr %11, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ucce, i32 -1) #8, !srcloc !167
  %43 = ptrtoint ptr %uccf8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %uccf8, align 8
  tail call void @ucc_fast_disable(ptr noundef %44, i32 noundef 3) #8
  %tsa = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 8
  %45 = ptrtoint ptr %tsa to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %tsa, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool48.not = icmp eq i16 %46, 0
  br i1 %tobool48.not, label %if.end3.if.end52_crit_edge, label %if.then49

if.end3.if.end52_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then49:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %49 = ptrtoint ptr %ut_info5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ut_info5, align 4
  tail call void @ucc_tdm_init(ptr noundef %48, ptr noundef %50) #8
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end3.if.end52_crit_edge
  %51 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %9, align 4
  %call53 = tail call i32 @ucc_fast_get_qe_cr_subblock(i32 noundef %52) #8
  %call54 = tail call i32 @qe_issue_cmd(i32 noundef 4, i32 noundef %call53, i8 noundef zeroext 0, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  tail call void @arm_heavy_mb() #8
  %upsmr = getelementptr inbounds %struct.ucc_fast, ptr %11, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %upsmr, i32 0) #8, !srcloc !167
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %9, align 4
  %call59 = tail call i32 @ucc_fast_get_qe_cr_subblock(i32 noundef %54) #8
  %ucc_pram_offset = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 31
  %55 = ptrtoint ptr %ucc_pram_offset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ucc_pram_offset, align 4
  %call60 = tail call i32 @qe_issue_cmd(i32 noundef 22, i32 noundef %call59, i8 noundef zeroext 0, i32 noundef %56) #8
  %57 = ptrtoint ptr %ucc_pram_offset to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ucc_pram_offset, align 4
  %call62 = tail call ptr @cpm_muram_addr(i32 noundef %58) #8
  %ucc_pram = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 7
  %59 = ptrtoint ptr %ucc_pram to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call62, ptr %ucc_pram, align 4
  %ucc_pram_bak = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 37
  %60 = ptrtoint ptr %ucc_pram_bak to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ucc_pram_bak, align 8
  tail call void @mmiocpy(ptr noundef %call62, ptr noundef %61, i32 noundef 108) #8
  %62 = ptrtoint ptr %ucc_pram_bak to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ucc_pram_bak, align 8
  tail call void @kfree(ptr noundef %63) #8
  %rx_bd_base = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 17
  %dma_rx_addr = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 15
  br label %for.body

for.cond70.preheader:                             ; preds = %for.body
  %tx_bd_base = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 16
  %dma_tx_addr = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 14
  br label %for.body72

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end52
  %i.0185 = phi i32 [ 0, %if.end52 ], [ %inc, %for.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.0185)
  %cmp65.not = icmp eq i32 %i.0185, 31
  %. = select i1 %cmp65.not, i16 -20480, i16 -28672
  %64 = ptrtoint ptr %rx_bd_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_bd_base, align 4
  %arrayidx = getelementptr %struct.qe_bd, ptr %65, i32 %i.0185
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %., ptr %arrayidx, align 1
  %67 = ptrtoint ptr %dma_rx_addr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma_rx_addr, align 4
  %mul = mul nuw nsw i32 %i.0185, 1536
  %add = add i32 %68, %mul
  %69 = load ptr, ptr %rx_bd_base, align 4
  %buf = getelementptr %struct.qe_bd, ptr %69, i32 %i.0185, i32 2
  %70 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %add, ptr %buf, align 1
  %inc = add nuw nsw i32 %i.0185, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond70.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body72:                                       ; preds = %for.body72.for.body72_crit_edge, %for.cond70.preheader
  %i.1186 = phi i32 [ 0, %for.cond70.preheader ], [ %inc85, %for.body72.for.body72_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.1186)
  %cmp73.not = icmp eq i32 %i.1186, 15
  %.184 = select i1 %cmp73.not, i16 13312, i16 5120
  %71 = ptrtoint ptr %tx_bd_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx_bd_base, align 8
  %arrayidx77 = getelementptr %struct.qe_bd, ptr %72, i32 %i.1186
  %73 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %.184, ptr %arrayidx77, align 1
  %74 = ptrtoint ptr %dma_tx_addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma_tx_addr, align 8
  %mul79 = mul nuw nsw i32 %i.1186, 1536
  %add80 = add i32 %75, %mul79
  %76 = load ptr, ptr %tx_bd_base, align 8
  %buf83 = getelementptr %struct.qe_bd, ptr %76, i32 %i.1186, i32 2
  %77 = ptrtoint ptr %buf83 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %add80, ptr %buf83, align 1
  %inc85 = add nuw nsw i32 %i.1186, 1
  %exitcond187.not = icmp eq i32 %inc85, 16
  br i1 %exitcond187.not, label %for.end86, label %for.body72.for.body72_crit_edge

for.body72.for.body72_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body72

for.end86:                                        ; preds = %for.body72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !235
  %hdlc_busy = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 9
  %78 = ptrtoint ptr %hdlc_busy to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %hdlc_busy, align 2, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool87.not = icmp eq i8 %79, 0
  br i1 %tobool87.not, label %for.end86.if.end107_crit_edge, label %if.then90

for.end86.if.end107_crit_edge:                    ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then90:                                        ; preds = %for.end86
  %80 = ptrtoint ptr %ut_info5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ut_info5, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %call94 = tail call i32 @ucc_fast_get_qe_cr_subblock(i32 noundef %83) #8
  %call95 = tail call i32 @qe_issue_cmd(i32 noundef 0, i32 noundef %call94, i8 noundef zeroext 0, i32 noundef 0) #8
  %84 = ptrtoint ptr %uccf8 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %uccf8, align 8
  tail call void @ucc_fast_enable(ptr noundef %85, i32 noundef 3) #8
  %86 = ptrtoint ptr %tsa to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %tsa, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool98.not = icmp eq i16 %87, 0
  br i1 %tobool98.not, label %if.then90.if.end107_crit_edge, label %if.then99

if.then90.if.end107_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then99:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %si_regs = getelementptr inbounds %struct.ucc_tdm, ptr %7, i32 0, i32 3
  %88 = ptrtoint ptr %si_regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %si_regs, align 4
  %siglmr1_h = getelementptr inbounds %struct.si1, ptr %89, i32 0, i32 1
  %90 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %siglmr1_h) #8, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  %91 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %7, align 4
  %conv102 = zext i16 %92 to i32
  %shl = shl nuw i32 1, %conv102
  %93 = trunc i32 %shl to i8
  %conv103 = or i8 %90, %93
  %94 = ptrtoint ptr %si_regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %si_regs, align 4
  %siglmr1_h105 = getelementptr inbounds %struct.si1, ptr %95, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %siglmr1_h105, i8 %conv103) #8, !srcloc !210
  br label %if.end107

if.end107:                                        ; preds = %if.then99, %if.then90.if.end107_crit_edge, %for.end86.if.end107_crit_edge
  %napi = getelementptr inbounds %struct.ucc_hdlc_private, ptr %1, i32 0, i32 5
  tail call void @napi_enable(ptr noundef %napi) #8
  %96 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ndev, align 8
  tail call void @netif_device_attach(ptr noundef %97) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end107 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !37, !39, !40, !41, !43, !44, !46, !48, !50, !52, !53, !54, !56, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !131, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__initcall__kmod_fsl_ucc_hdlc__337_1298_ucc_hdlc_driver_init6, !1, !"__initcall__kmod_fsl_ucc_hdlc__337_1298_ucc_hdlc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1298, i32 1}
!2 = !{ptr @__exitcall_ucc_hdlc_driver_exit, !1, !"__exitcall_ucc_hdlc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file338, !4, !"__UNIQUE_ID_file338", i1 false, i1 false}
!4 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1299, i32 1}
!5 = !{ptr @__UNIQUE_ID_license339, !4, !"__UNIQUE_ID_license339", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description340, !7, !"__UNIQUE_ID_description340", i1 false, i1 false}
!7 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1300, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1292, i32 12}
!10 = !{ptr @ucc_hdlc_driver, !11, !"ucc_hdlc_driver", i1 false, i1 false}
!11 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1288, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1121, i32 39}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1123, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ucc_hdlc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ucc_hdlc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1129, i32 3}
!24 = !{ptr @ucc_hdlc_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ucc_hdlc_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1139, i32 30}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1144, i32 4}
!30 = !{ptr @ucc_hdlc_probe._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ucc_hdlc_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @ucc_hdlc_probe._entry.14, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1148, i32 3}
!34 = !{ptr @ucc_hdlc_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1152, i32 30}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1157, i32 4}
!39 = !{ptr @ucc_hdlc_probe._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ucc_hdlc_probe._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @ucc_hdlc_probe._entry.20, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1161, i32 3}
!43 = !{ptr @ucc_hdlc_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1180, i32 26}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1183, i32 26}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1186, i32 26}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1193, i32 4}
!52 = !{ptr @ucc_hdlc_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ucc_hdlc_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1201, i32 24}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1205, i32 24}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1211, i32 31}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1216, i32 3}
!62 = !{ptr @ucc_hdlc_probe._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ucc_hdlc_probe._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1223, i32 3}
!66 = !{ptr @ucc_hdlc_probe._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ucc_hdlc_probe._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1237, i32 3}
!70 = !{ptr @ucc_hdlc_probe._entry.37, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ucc_hdlc_probe._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @utdm_info, !73, !"utdm_info", i1 false, i1 false}
!73 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 76, i32 28}
!74 = !{ptr @utdm_primary_info, !75, !"utdm_primary_info", i1 false, i1 false}
!75 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 37, i32 28}
!76 = distinct !{null, !77, !"siram_init_flag", i1 false, i1 false}
!77 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1064, i32 13}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1073, i32 3}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @hdlc_map_iomem._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @hdlc_map_iomem._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 116, i32 3}
!85 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @uhdlc_init._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @uhdlc_init._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 125, i32 3}
!90 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @uhdlc_init._entry.44, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @uhdlc_init._entry_ptr.47, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 152, i32 3}
!95 = !{ptr @uhdlc_init._entry.48, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @uhdlc_init._entry_ptr.50, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 178, i32 3}
!99 = !{ptr @uhdlc_init._entry.51, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @uhdlc_init._entry_ptr.53, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 189, i32 3}
!103 = !{ptr @uhdlc_init._entry.54, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @uhdlc_init._entry_ptr.56, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 199, i32 3}
!107 = !{ptr @uhdlc_init._entry.57, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @uhdlc_init._entry_ptr.59, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.61, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 241, i32 3}
!111 = !{ptr @uhdlc_init._entry.60, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @uhdlc_init._entry_ptr.62, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 248, i32 3}
!115 = !{ptr @uhdlc_init._entry.63, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @uhdlc_init._entry_ptr.65, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 253, i32 3}
!119 = !{ptr @uhdlc_init._entry.66, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @uhdlc_init._entry_ptr.68, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.70, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 292, i32 3}
!123 = !{ptr @uhdlc_init._entry.69, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @uhdlc_init._entry_ptr.71, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @uhdlc_ops, !126, !"uhdlc_ops", i1 false, i1 false}
!126 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1051, i32 36}
!127 = !{ptr @.str.72, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 714, i32 30}
!129 = distinct !{null, !130, !"__already_done", i1 false, i1 false}
!130 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!131 = distinct !{null, !130, !"<string literal>", i1 false, i1 false}
!132 = distinct !{null, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!134 = !{ptr @.str.75, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!136 = !{ptr @.str.76, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1048, i32 19}
!138 = !{ptr @__func__.uhdlc_tx_timeout, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1048, i32 27}
!140 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 364, i32 20}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 381, i32 20}
!144 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1274, i32 2}
!146 = !{ptr @.str.80, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @ucc_hdlc_remove._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @ucc_hdlc_remove._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @fsl_ucc_hdlc_of_match, !150, !"fsl_ucc_hdlc_of_match", i1 false, i1 false}
!150 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1279, i32 34}
!151 = !{ptr @uhdlc_pm_ops, !152, !"uhdlc_pm_ops", i1 false, i1 false}
!152 = !{!"../drivers/net/wan/fsl_ucc_hdlc.c", i32 1032, i32 32}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{!"auto-init"}
!163 = !{i8 0, i8 2}
!164 = !{i64 6254598}
!165 = !{i64 2156234752}
!166 = !{i64 2156235052}
!167 = !{i64 6254180}
!168 = !{i64 2156235372}
!169 = !{i64 2156237256}
!170 = !{i64 2156237536}
!171 = !{i64 2156237904}
!172 = !{i64 2156238182}
!173 = !{i64 2156250391}
!174 = !{i64 6253560}
!175 = !{i64 2156250701}
!176 = !{i64 2156251029}
!177 = !{i64 2156251355}
!178 = !{i64 2156251685}
!179 = !{i64 2156252046}
!180 = !{i64 2156252415}
!181 = !{i64 2156252760}
!182 = !{i64 2156253092}
!183 = !{i64 2156253455}
!184 = !{i64 2156253776}
!185 = !{i64 2156254080}
!186 = !{i64 2156254392}
!187 = !{i64 2156254717}
!188 = !{i64 2156255037}
!189 = !{i64 2156255357}
!190 = !{i64 2156255677}
!191 = !{i64 2156258185}
!192 = !{i64 6253760}
!193 = !{i64 2156264792}
!194 = !{i64 2156265117}
!195 = !{!"branch_weights", i32 1, i32 2000}
!196 = !{i64 2154838564, i64 2154839064, i64 2154838601, i64 2154838657, i64 2154838691, i64 2154838715, i64 2154838756, i64 2154838777, i64 2154838805, i64 2154838839}
!197 = !{i64 2154839908}
!198 = !{!"branch_weights", i32 2000, i32 1}
!199 = !{i64 2155789175}
!200 = !{i64 2156258940}
!201 = !{i64 2156259323}
!202 = !{i64 2155790246}
!203 = !{i64 2156259649}
!204 = !{i64 2156260207}
!205 = !{i64 2156262511}
!206 = !{i64 2156262750}
!207 = !{i64 6254378}
!208 = !{i64 2153793723}
!209 = !{i64 2153795328}
!210 = !{i64 6253983}
!211 = !{i64 2153250737, i64 2153250762}
!212 = !{i64 2156263120}
!213 = !{i64 2156263410}
!214 = !{i64 2156263647}
!215 = !{i64 2156264219}
!216 = !{i64 2156267854}
!217 = !{i64 2156265787}
!218 = !{i64 2156266099}
!219 = !{i64 2156266409}
!220 = !{i64 2156268396}
!221 = !{i64 2156268711}
!222 = !{i64 2156269031}
!223 = !{i64 2156269354}
!224 = !{i64 2156269674}
!225 = !{i64 2156269994}
!226 = !{i64 2156270315}
!227 = !{i64 2156270663}
!228 = !{i64 2156271039}
!229 = !{i64 2156266821}
!230 = !{i64 2156267154}
!231 = !{i64 2156267485}
!232 = !{i64 2156271391}
!233 = !{i64 2156271711}
!234 = !{i64 2156272031}
!235 = !{i64 2156272685}
