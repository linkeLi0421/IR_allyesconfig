; ModuleID = '/llk/IR_all_yes/drivers/net/can/cc770/cc770_isa.c_pt.bc'
source_filename = "../drivers/net/can/cc770/cc770_isa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.cc770_priv = type { %struct.can_priv, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [5 x i8], i8, i8, i8, i8, ptr }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }

@__UNIQUE_ID_author459 = internal constant [57 x i8] c"cc770_isa.author=Wolfgang Grandegger <wg@grandegger.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description460 = internal constant [65 x i8] c"cc770_isa.description=Socket-CAN driver for CC770 on the ISA bus\00", section ".modinfo", align 1
@__UNIQUE_ID_file461 = internal constant [47 x i8] c"cc770_isa.file=drivers/net/can/cc770/cc770_isa\00", section ".modinfo", align 1
@__UNIQUE_ID_license462 = internal constant [25 x i8] c"cc770_isa.license=GPL v2\00", section ".modinfo", align 1
@__param_str_port = internal constant [15 x i8] c"cc770_isa.port\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_port = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_ulong, ptr @port }, align 4
@__param_port = internal constant %struct.kernel_param { ptr @__param_str_port, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.124 { ptr @__param_arr_port } }, section "__param", align 4
@__UNIQUE_ID_porttype463 = internal constant [39 x i8] c"cc770_isa.parmtype=port:array of ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_port464 = internal constant [36 x i8] c"cc770_isa.parm=port:I/O port number\00", section ".modinfo", align 1
@__param_str_mem = internal constant [14 x i8] c"cc770_isa.mem\00", align 1
@__param_arr_mem = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_ulong, ptr @mem }, align 4
@__param_mem = internal constant %struct.kernel_param { ptr @__param_str_mem, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.124 { ptr @__param_arr_mem } }, section "__param", align 4
@__UNIQUE_ID_memtype465 = internal constant [38 x i8] c"cc770_isa.parmtype=mem:array of ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_mem466 = internal constant [38 x i8] c"cc770_isa.parm=mem:I/O memory address\00", section ".modinfo", align 1
@__param_str_indirect = internal constant [19 x i8] c"cc770_isa.indirect\00", align 1
@__param_arr_indirect = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @indirect }, align 4
@__param_indirect = internal constant %struct.kernel_param { ptr @__param_str_indirect, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.124 { ptr @__param_arr_indirect } }, section "__param", align 4
@__UNIQUE_ID_indirecttype467 = internal constant [41 x i8] c"cc770_isa.parmtype=indirect:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_indirect468 = internal constant [66 x i8] c"cc770_isa.parm=indirect:Indirect access via address and data port\00", section ".modinfo", align 1
@__param_str_irq = internal constant [14 x i8] c"cc770_isa.irq\00", align 1
@__param_arr_irq = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @irq }, align 4
@__param_irq = internal constant %struct.kernel_param { ptr @__param_str_irq, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.124 { ptr @__param_arr_irq } }, section "__param", align 4
@__UNIQUE_ID_irqtype469 = internal constant [36 x i8] c"cc770_isa.parmtype=irq:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq470 = internal constant [30 x i8] c"cc770_isa.parm=irq:IRQ number\00", section ".modinfo", align 1
@__param_str_clk = internal constant [14 x i8] c"cc770_isa.clk\00", align 1
@__param_arr_clk = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @clk }, align 4
@__param_clk = internal constant %struct.kernel_param { ptr @__param_str_clk, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_clk } }, section "__param", align 4
@__UNIQUE_ID_clktype471 = internal constant [36 x i8] c"cc770_isa.parmtype=clk:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_clk472 = internal constant [83 x i8] c"cc770_isa.parm=clk:External oscillator clock frequency (default=16000000 [16 MHz])\00", section ".modinfo", align 1
@__param_str_cir = internal constant [14 x i8] c"cc770_isa.cir\00", align 1
@__param_arr_cir = internal constant %struct.kparam_array { i32 8, i32 1, ptr null, ptr @param_ops_byte, ptr @cir }, align 4
@__param_cir = internal constant %struct.kernel_param { ptr @__param_str_cir, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_cir } }, section "__param", align 4
@__UNIQUE_ID_cirtype473 = internal constant [37 x i8] c"cc770_isa.parmtype=cir:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_cir474 = internal constant [63 x i8] c"cc770_isa.parm=cir:CPU interface register (default=0x40 [DSC])\00", section ".modinfo", align 1
@__param_str_cor = internal constant [14 x i8] c"cc770_isa.cor\00", align 1
@__param_arr_cor = internal constant %struct.kparam_array { i32 8, i32 1, ptr null, ptr @param_ops_byte, ptr @cor }, align 4
@__param_cor = internal constant %struct.kernel_param { ptr @__param_str_cor, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_cor } }, section "__param", align 4
@__UNIQUE_ID_cortype475 = internal constant [37 x i8] c"cc770_isa.parmtype=cor:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_cor476 = internal constant [52 x i8] c"cc770_isa.parm=cor:Clockout register (default=0x00)\00", section ".modinfo", align 1
@__param_str_bcr = internal constant [14 x i8] c"cc770_isa.bcr\00", align 1
@__param_arr_bcr = internal constant %struct.kparam_array { i32 8, i32 1, ptr null, ptr @param_ops_byte, ptr @bcr }, align 4
@__param_bcr = internal constant %struct.kernel_param { ptr @__param_str_bcr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_bcr } }, section "__param", align 4
@__UNIQUE_ID_bcrtype477 = internal constant [37 x i8] c"cc770_isa.parmtype=bcr:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_bcr478 = internal constant [67 x i8] c"cc770_isa.parm=bcr:Bus configuration register (default=0x40 [CBY])\00", section ".modinfo", align 1
@__initcall__kmod_cc770_isa__481_359_cc770_isa_init6 = internal global ptr @cc770_isa_init, section ".initcall6.init", align 4
@cc770_isa_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cc770_isa_probe, ptr @cc770_isa_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@cc770_isa_devs = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@__exitcall_cc770_isa_exit = internal global ptr @cc770_isa_exit, section ".exitcall.exit", align 4
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@port = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@mem = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@indirect = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@irq = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@clk = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@cir = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [24 x i8] zeroinitializer }, align 32
@cor = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [24 x i8] zeroinitializer }, align 32
@bcr = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cc770_isa\00", [22 x i8] zeroinitializer }, align 32
@cc770_isa_init.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 83, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cc770_isa_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/can/cc770/cc770_isa.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"platform device %d: port=%#lx, mem=%#lx, irq=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"cc770_isa: platform device %d: port=%#lx, mem=%#lx, irq=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@cc770_isa_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cc770_isa: insufficient parameters supplied\0A\00", [49 x i8] zeroinitializer }, align 32
@cc770_isa_init._entry_ptr = internal global ptr @cc770_isa_init._entry, section ".printk_index", align 4
@cc770_isa_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016cc770_isa: driver for max. %d devices registered\0A\00", [44 x i8] zeroinitializer }, align 32
@cc770_isa_init._entry_ptr.8 = internal global ptr @cc770_isa_init._entry.6, section ".printk_index", align 4
@cc770_isa_probe.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 43, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cc770_isa_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"probing idx=%d: port=%#lx, mem=%#lx, irq=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@cc770_isa_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 266, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"couldn't register device (err=%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cc770_isa_probe._entry_ptr = internal global ptr @cc770_isa_probe._entry, section ".printk_index", align 4
@cc770_isa_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.2, i32 271, ptr @.str.16, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"device registered (reg_base=0x%p, irq=%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cc770_isa_probe._entry_ptr.17 = internal global ptr @cc770_isa_probe._entry.14, section ".printk_index", align 4
@cc770_isa_port_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cc770_isa_port_lock\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"cc770_isa_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 308, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"cc770_isa_devs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 110, i32 32 }
@___asan_gen_.25 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 68, i32 22 }
@___asan_gen_.28 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 69, i32 22 }
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"indirect\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 75, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 70, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 71, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [4 x i8] c"cir\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 72, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [4 x i8] c"cor\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 73, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [4 x i8] c"bcr\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 74, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 323, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 333, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 337, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 347, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 171, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 265, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 270, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"cc770_isa_port_lock\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [37 x i8] c"../drivers/net/can/cc770/cc770_isa.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 108, i32 8 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_bcr478, ptr @__UNIQUE_ID_bcrtype477, ptr @__UNIQUE_ID_cir474, ptr @__UNIQUE_ID_cirtype473, ptr @__UNIQUE_ID_clk472, ptr @__UNIQUE_ID_clktype471, ptr @__UNIQUE_ID_cor476, ptr @__UNIQUE_ID_cortype475, ptr @__UNIQUE_ID_description460, ptr @__UNIQUE_ID_file461, ptr @__UNIQUE_ID_indirect468, ptr @__UNIQUE_ID_indirecttype467, ptr @__UNIQUE_ID_irq470, ptr @__UNIQUE_ID_irqtype469, ptr @__UNIQUE_ID_license462, ptr @__UNIQUE_ID_mem466, ptr @__UNIQUE_ID_memtype465, ptr @__UNIQUE_ID_port464, ptr @__UNIQUE_ID_porttype463, ptr @__exitcall_cc770_isa_exit, ptr @__initcall__kmod_cc770_isa__481_359_cc770_isa_init6, ptr @__param_bcr, ptr @__param_cir, ptr @__param_clk, ptr @__param_cor, ptr @__param_indirect, ptr @__param_irq, ptr @__param_mem, ptr @__param_port, ptr @cc770_isa_exit, ptr @cc770_isa_init._entry, ptr @cc770_isa_init._entry.6, ptr @cc770_isa_init._entry_ptr, ptr @cc770_isa_init._entry_ptr.8, ptr @cc770_isa_probe._entry, ptr @cc770_isa_probe._entry.14, ptr @cc770_isa_probe._entry_ptr, ptr @cc770_isa_probe._entry_ptr.17, ptr @cc770_isa_driver, ptr @cc770_isa_devs, ptr @port, ptr @mem, ptr @indirect, ptr @irq, ptr @clk, ptr @cir, ptr @cor, ptr @bcr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @cc770_isa_port_lock, ptr @.str.18], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc770_isa_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc770_isa_devs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @indirect to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cir to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cor to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc770_isa_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc770_isa_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc770_isa_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc770_isa_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc770_isa_port_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cc770_isa_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %idx.084 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i32], ptr @port, i32 0, i32 %idx.084
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.land.lhs.true_crit_edge

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx1 = getelementptr [8 x i32], ptr @mem, i32 0, i32 %idx.084
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.else.thread, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %arrayidx3 = getelementptr [8 x i32], ptr @irq, i32 0, i32 %idx.084
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %idx.084) #4
  %arrayidx5 = getelementptr [8 x ptr], ptr @cc770_isa_devs, i32 0, i32 %idx.084
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %arrayidx5, align 4
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.then.exit_free_devices_crit_edge, label %if.end

if.then.exit_free_devices_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_free_devices

if.end:                                           ; preds = %if.then
  %call10 = tail call i32 @platform_device_add(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5, align 4
  tail call void @platform_device_put(ptr noundef %8) #4
  br label %exit_free_devices

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc770_isa_init.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cc770_isa_init, %for.inc)) #4
          to label %if.then20 [label %for.inc], !srcloc !130

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %arrayidx22 = getelementptr [8 x i32], ptr @mem, i32 0, i32 %idx.084
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx22, align 4
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cc770_isa_init.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.4, i32 noundef %idx.084, i32 noundef %10, i32 noundef %12, i32 noundef %14) #4
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.084)
  %cmp25 = icmp eq i32 %idx.084, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %cmp25, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %if.else.do.end35_crit_edge, label %if.else.lor.lhs.false29_crit_edge

if.else.lor.lhs.false29_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false29

if.else.do.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

if.else.thread:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.084)
  %cmp2578 = icmp eq i32 %idx.084, 0
  br i1 %cmp2578, label %if.else.thread.do.end35_crit_edge, label %if.else.thread.lor.lhs.false29_crit_edge

if.else.thread.lor.lhs.false29_crit_edge:         ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false29

if.else.thread.do.end35_crit_edge:                ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

lor.lhs.false29:                                  ; preds = %if.else.thread.lor.lhs.false29_crit_edge, %if.else.lor.lhs.false29_crit_edge
  %arrayidx30 = getelementptr [8 x i32], ptr @mem, i32 0, i32 %idx.084
  %15 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool31.not = icmp eq i32 %16, 0
  br i1 %tobool31.not, label %lor.lhs.false29.for.inc_crit_edge, label %lor.lhs.false29.do.end35_crit_edge

lor.lhs.false29.do.end35_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

lor.lhs.false29.for.inc_crit_edge:                ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end35:                                         ; preds = %lor.lhs.false29.do.end35_crit_edge, %if.else.thread.do.end35_crit_edge, %if.else.do.end35_crit_edge
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  br label %exit_free_devices

for.inc:                                          ; preds = %lor.lhs.false29.for.inc_crit_edge, %if.then20, %do.body
  %inc = add nuw nsw i32 %idx.084, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call40 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cc770_isa_driver, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.end46, label %for.end.while.body.preheader_crit_edge

for.end.while.body.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.preheader

do.end46:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 8) #7
  br label %cleanup

exit_free_devices:                                ; preds = %do.end35, %if.then12, %if.then.exit_free_devices_crit_edge
  %err.0 = phi i32 [ %call10, %if.then12 ], [ -22, %do.end35 ], [ -12, %if.then.exit_free_devices_crit_edge ]
  %dec86 = add nsw i32 %idx.084, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.084)
  %cmp4987.not = icmp eq i32 %idx.084, 0
  br i1 %cmp4987.not, label %exit_free_devices.cleanup_crit_edge, label %exit_free_devices.while.body.preheader_crit_edge

exit_free_devices.while.body.preheader_crit_edge: ; preds = %exit_free_devices
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.preheader

exit_free_devices.cleanup_crit_edge:              ; preds = %exit_free_devices
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.preheader:                             ; preds = %exit_free_devices.while.body.preheader_crit_edge, %for.end.while.body.preheader_crit_edge
  %dec8698 = phi i32 [ %dec86, %exit_free_devices.while.body.preheader_crit_edge ], [ 7, %for.end.while.body.preheader_crit_edge ]
  %err.097 = phi i32 [ %err.0, %exit_free_devices.while.body.preheader_crit_edge ], [ %call40, %for.end.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.end54.while.body_crit_edge, %while.body.preheader
  %dec88 = phi i32 [ %dec, %if.end54.while.body_crit_edge ], [ %dec8698, %while.body.preheader ]
  %arrayidx50 = getelementptr [8 x ptr], ptr @cc770_isa_devs, i32 0, i32 %dec88
  %17 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx50, align 4
  %tobool51.not = icmp eq ptr %18, null
  br i1 %tobool51.not, label %while.body.if.end54_crit_edge, label %if.then52

while.body.if.end54_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then52:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_device_unregister(ptr noundef nonnull %18) #4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %while.body.if.end54_crit_edge
  %dec = add nsw i32 %dec88, -1
  %cmp49 = icmp sgt i32 %dec88, 0
  br i1 %cmp49, label %if.end54.while.body_crit_edge, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end54.while.body_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cleanup:                                          ; preds = %if.end54.cleanup_crit_edge, %exit_free_devices.cleanup_crit_edge, %do.end46
  %retval.0 = phi i32 [ 0, %do.end46 ], [ %err.0, %exit_free_devices.cleanup_crit_edge ], [ %err.097, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cc770_isa_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @cc770_isa_driver) #4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %idx.05 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr @cc770_isa_devs, i32 0, i32 %idx.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_device_unregister(ptr noundef nonnull %1) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.05, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc770_isa_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc770_isa_probe.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cc770_isa_probe, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !130

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %arrayidx = getelementptr [8 x i32], ptr @port, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr [8 x i32], ptr @mem, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr [8 x i32], ptr @irq, i32 0, i32 %1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc770_isa_probe.__UNIQUE_ID_ddebug479, ptr noundef %dev4, ptr noundef nonnull @.str.10, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx7 = getelementptr [8 x i32], ptr @mem, i32 0, i32 %1
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.end
  %call11 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %9, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef 0) #4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then9.cleanup_crit_edge, label %if.end14

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.then9
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7, align 4
  %call16 = tail call ptr @ioremap(i32 noundef %11, i32 noundef 32) #4
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end14.exit_release_crit_edge, label %if.end14.if.end31_crit_edge

if.end14.if.end31_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.end14.exit_release_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_release

if.else:                                          ; preds = %do.end
  %arrayidx20 = getelementptr [8 x i32], ptr @indirect, i32 0, i32 %1
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %if.else.if.then24_crit_edge, label %lor.lhs.false

if.else.if.then24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp22 = icmp eq i32 %13, -1
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false.if.end25_crit_edge

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

land.lhs.true:                                    ; preds = %lor.lhs.false
  %14 = load i32, ptr @indirect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp23 = icmp sgt i32 %14, 0
  br i1 %cmp23, label %land.lhs.true.if.then24_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

land.lhs.true.if.then24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24:                                        ; preds = %land.lhs.true.if.then24_crit_edge, %if.else.if.then24_crit_edge
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %land.lhs.true.if.end25_crit_edge, %lor.lhs.false.if.end25_crit_edge
  %iosize.0 = phi i32 [ 2, %if.then24 ], [ 32, %land.lhs.true.if.end25_crit_edge ], [ 32, %lor.lhs.false.if.end25_crit_edge ]
  %arrayidx26 = getelementptr [8 x i32], ptr @port, i32 0, i32 %1
  %15 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx26, align 4
  %call27 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %16, i32 noundef %iosize.0, ptr noundef nonnull @.str, i32 noundef 0) #4
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31:                                         ; preds = %if.end25.if.end31_crit_edge, %if.end14.if.end31_crit_edge
  %base.0 = phi ptr [ %call16, %if.end14.if.end31_crit_edge ], [ null, %if.end25.if.end31_crit_edge ]
  %iosize.1 = phi i32 [ 32, %if.end14.if.end31_crit_edge ], [ %iosize.0, %if.end25.if.end31_crit_edge ]
  %call32 = tail call ptr @alloc_cc770dev(i32 noundef 0) #4
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end31.exit_unmap_crit_edge, label %if.end35

if.end31.exit_unmap_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_unmap

if.end35:                                         ; preds = %if.end31
  %arrayidx37 = getelementptr [8 x i32], ptr @irq, i32 0, i32 %1
  %17 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx37, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 64
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %irq, align 4
  %irq_flags = getelementptr i8, ptr %call32, i32 2648
  %20 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 128, ptr %irq_flags, align 4
  %21 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool39.not = icmp eq i32 %22, 0
  br i1 %tobool39.not, label %if.else42, label %if.then40

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %reg_base = getelementptr i8, ptr %call32, i32 2644
  %23 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %base.0, ptr %reg_base, align 4
  %24 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx7, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 5
  %26 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %base_addr, align 32
  %read_reg = getelementptr i8, ptr %call32, i32 2620
  %27 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @cc770_isa_mem_read_reg, ptr %read_reg, align 4
  br label %if.end55

if.else42:                                        ; preds = %if.end35
  %arrayidx43 = getelementptr [8 x i32], ptr @port, i32 0, i32 %1
  %28 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx43, align 4
  %30 = inttoptr i32 %29 to ptr
  %reg_base44 = getelementptr i8, ptr %call32, i32 2644
  %31 = ptrtoint ptr %reg_base44 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %reg_base44, align 4
  %32 = load i32, ptr %arrayidx43, align 4
  %base_addr46 = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 5
  %33 = ptrtoint ptr %base_addr46 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %base_addr46, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %iosize.1)
  %cmp47 = icmp eq i32 %iosize.1, 2
  %read_reg49 = getelementptr i8, ptr %call32, i32 2620
  br i1 %cmp47, label %if.then48, label %if.else51

if.then48:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %read_reg49 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @cc770_isa_port_read_reg_indirect, ptr %read_reg49, align 4
  br label %if.end55

if.else51:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %read_reg49 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @cc770_isa_port_read_reg, ptr %read_reg49, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else51, %if.then48, %if.then40
  %cc770_isa_port_write_reg_indirect.sink = phi ptr [ @cc770_isa_port_write_reg_indirect, %if.then48 ], [ @cc770_isa_port_write_reg, %if.else51 ], [ @cc770_isa_mem_write_reg, %if.then40 ]
  %write_reg50 = getelementptr i8, ptr %call32, i32 2624
  %36 = ptrtoint ptr %write_reg50 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %cc770_isa_port_write_reg_indirect.sink, ptr %write_reg50, align 4
  %arrayidx56 = getelementptr [8 x i32], ptr @clk, i32 0, i32 %1
  %37 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool57.not = icmp eq i32 %38, 0
  br i1 %tobool57.not, label %if.else60, label %if.end55.if.end65_crit_edge

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.else60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  %39 = load i32, ptr @clk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool61.not = icmp eq i32 %39, 0
  %. = select i1 %tobool61.not, i32 16000000, i32 %39
  br label %if.end65

if.end65:                                         ; preds = %if.else60, %if.end55.if.end65_crit_edge
  %clktmp.0 = phi i32 [ %38, %if.end55.if.end65_crit_edge ], [ %., %if.else60 ]
  %clock = getelementptr i8, ptr %call32, i32 2440
  %40 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %clktmp.0, ptr %clock, align 4
  %arrayidx66 = getelementptr [8 x i8], ptr @cir, i32 0, i32 %1
  %41 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %cmp67.not = icmp eq i8 %42, -1
  br i1 %cmp67.not, label %if.else71, label %if.then69

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_interface = getelementptr i8, ptr %call32, i32 2658
  %43 = ptrtoint ptr %cpu_interface to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %cpu_interface, align 2
  br label %if.end94

if.else71:                                        ; preds = %if.end65
  %44 = load i8, ptr @cir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %cmp73.not = icmp eq i8 %44, -1
  br i1 %cmp73.not, label %if.else77, label %if.then75

if.then75:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_interface76 = getelementptr i8, ptr %call32, i32 2658
  %45 = ptrtoint ptr %cpu_interface76 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %cpu_interface76, align 2
  br label %if.end94

if.else77:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %clktmp.0)
  %cmp78 = icmp ugt i32 %clktmp.0, 10000000
  br i1 %cmp78, label %if.then80, label %if.else77.if.end84_crit_edge

if.else77.if.end84_crit_edge:                     ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84

if.then80:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_interface81 = getelementptr i8, ptr %call32, i32 2658
  %46 = ptrtoint ptr %cpu_interface81 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cpu_interface81, align 2
  %48 = or i8 %47, 64
  store i8 %48, ptr %cpu_interface81, align 2
  %div247 = lshr i32 %clktmp.0, 1
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.else77.if.end84_crit_edge
  %clktmp.1 = phi i32 [ %div247, %if.then80 ], [ %clktmp.0, %if.else77.if.end84_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %clktmp.1)
  %cmp85 = icmp ugt i32 %clktmp.1, 8000000
  br i1 %cmp85, label %if.then87, label %if.end84.if.end94_crit_edge

if.end84.if.end94_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_interface88 = getelementptr i8, ptr %call32, i32 2658
  %49 = ptrtoint ptr %cpu_interface88 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %cpu_interface88, align 2
  %51 = or i8 %50, 32
  store i8 %51, ptr %cpu_interface88, align 2
  br label %if.end94

if.end94:                                         ; preds = %if.then87, %if.end84.if.end94_crit_edge, %if.then75, %if.then69
  %cpu_interface95 = getelementptr i8, ptr %call32, i32 2658
  %52 = ptrtoint ptr %cpu_interface95 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cpu_interface95, align 2
  %54 = and i8 %53, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool97.not = icmp eq i8 %54, 0
  br i1 %tobool97.not, label %if.end94.if.end103_crit_edge, label %if.then98

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %clock, align 4
  %div102246 = lshr i32 %56, 1
  store i32 %div102246, ptr %clock, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %if.end94.if.end103_crit_edge
  %arrayidx104 = getelementptr [8 x i8], ptr @bcr, i32 0, i32 %1
  %57 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %58)
  %cmp106.not = icmp eq i8 %58, -1
  br i1 %cmp106.not, label %if.else110, label %if.then108

if.then108:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #6
  %bus_config = getelementptr i8, ptr %call32, i32 2660
  %59 = ptrtoint ptr %bus_config to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %bus_config, align 4
  br label %if.end119

if.else110:                                       ; preds = %if.end103
  %60 = load i8, ptr @bcr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %cmp112.not = icmp eq i8 %60, -1
  %bus_config117 = getelementptr i8, ptr %call32, i32 2660
  br i1 %cmp112.not, label %if.else116, label %if.then114

if.then114:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %bus_config117 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %bus_config117, align 4
  br label %if.end119

if.else116:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %bus_config117 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 64, ptr %bus_config117, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.else116, %if.then114, %if.then108
  %arrayidx120 = getelementptr [8 x i8], ptr @cor, i32 0, i32 %1
  %63 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx120, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %64)
  %cmp122.not = icmp eq i8 %64, -1
  br i1 %cmp122.not, label %if.else126, label %if.then124

if.then124:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  %clkout = getelementptr i8, ptr %call32, i32 2659
  %65 = ptrtoint ptr %clkout to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %clkout, align 1
  br label %if.end135

if.else126:                                       ; preds = %if.end119
  %66 = load i8, ptr @cor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %66)
  %cmp128.not = icmp eq i8 %66, -1
  %clkout133 = getelementptr i8, ptr %call32, i32 2659
  br i1 %cmp128.not, label %if.else132, label %if.then130

if.then130:                                       ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %clkout133 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %clkout133, align 1
  br label %if.end135

if.else132:                                       ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %clkout133 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %clkout133, align 1
  br label %if.end135

if.end135:                                        ; preds = %if.else132, %if.then130, %if.then124
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %69 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call32, ptr %driver_data.i.i, align 4
  %dev136 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 133, i32 1
  %70 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %dev136, ptr %parent, align 8
  %call138 = tail call i32 @register_cc770dev(ptr noundef nonnull %call32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %do.end148, label %do.end143

do.end143:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev136, ptr noundef nonnull @.str.11, i32 noundef %call138) #7
  br label %exit_unmap

do.end148:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #6
  %reg_base150 = getelementptr i8, ptr %call32, i32 2644
  %71 = ptrtoint ptr %reg_base150 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_base150, align 4
  %73 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev136, ptr noundef nonnull @.str.15, ptr noundef %72, i32 noundef %74) #7
  br label %cleanup

exit_unmap:                                       ; preds = %do.end143, %if.end31.exit_unmap_crit_edge
  %err.0 = phi i32 [ %call138, %do.end143 ], [ -12, %if.end31.exit_unmap_crit_edge ]
  %75 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool153.not = icmp eq i32 %76, 0
  br i1 %tobool153.not, label %exit_unmap.if.else160_crit_edge, label %if.then154

exit_unmap.if.else160_crit_edge:                  ; preds = %exit_unmap
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else160

if.then154:                                       ; preds = %exit_unmap
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef %base.0) #4
  br label %exit_release

exit_release:                                     ; preds = %if.then154, %if.end14.exit_release_crit_edge
  %iosize.2.ph = phi i32 [ 32, %if.end14.exit_release_crit_edge ], [ %iosize.1, %if.then154 ]
  %err.1.ph = phi i32 [ -12, %if.end14.exit_release_crit_edge ], [ %err.0, %if.then154 ]
  %77 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool157.not = icmp eq i32 %.pr, 0
  br i1 %tobool157.not, label %exit_release.if.else160_crit_edge, label %if.then158

exit_release.if.else160_crit_edge:                ; preds = %exit_release
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else160

if.then158:                                       ; preds = %exit_release
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %.pr, i32 noundef %iosize.2.ph) #4
  br label %cleanup

if.else160:                                       ; preds = %exit_release.if.else160_crit_edge, %exit_unmap.if.else160_crit_edge
  %err.1253 = phi i32 [ %err.1.ph, %exit_release.if.else160_crit_edge ], [ %err.0, %exit_unmap.if.else160_crit_edge ]
  %iosize.2252 = phi i32 [ %iosize.2.ph, %exit_release.if.else160_crit_edge ], [ %iosize.1, %exit_unmap.if.else160_crit_edge ]
  %arrayidx161 = getelementptr [8 x i32], ptr @port, i32 0, i32 %1
  %78 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx161, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %79, i32 noundef %iosize.2252) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else160, %if.then158, %do.end148, %if.end25.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end148 ], [ %err.1.ph, %if.then158 ], [ %err.1253, %if.else160 ], [ -16, %if.then9.cleanup_crit_edge ], [ -16, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc770_isa_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void @unregister_cc770dev(ptr noundef %1) #4
  %arrayidx = getelementptr [8 x i32], ptr @mem, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %reg_base = getelementptr i8, ptr %1, i32 2644
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 4
  tail call void @iounmap(ptr noundef %7) #4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %9, i32 noundef 32) #4
  br label %if.end7

if.else:                                          ; preds = %entry
  %read_reg = getelementptr i8, ptr %1, i32 2620
  %10 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_reg, align 4
  %cmp = icmp eq ptr %11, @cc770_isa_port_read_reg_indirect
  %arrayidx4 = getelementptr [8 x i32], ptr @port, i32 0, i32 %3
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  br i1 %cmp, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %13, i32 noundef 2) #4
  br label %if.end7

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %13, i32 noundef 32) #4
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.then3, %if.then
  tail call void @free_cc770dev(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_cc770dev(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @cc770_isa_mem_read_reg(ptr nocapture noundef readonly %priv, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc770_isa_mem_write_reg(ptr nocapture noundef readonly %priv, i32 noundef %reg, i8 noundef zeroext %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %reg_base = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #4, !srcloc !134
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @cc770_isa_port_read_reg_indirect(ptr nocapture noundef readonly %priv, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %2 = ptrtoint ptr %1 to i32
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cc770_isa_port_lock) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !135
  tail call void @arm_heavy_mb() #4
  %conv8 = trunc i32 %reg to i8
  %and = and i32 %2, 1048575
  %add = or i32 %and, -18874368
  %3 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %conv8) #4, !srcloc !134
  %add10 = add i32 %2, 1
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %4 = inttoptr i32 %add12 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #4, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !136
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cc770_isa_port_lock, i32 noundef %call2) #4
  ret i8 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc770_isa_port_write_reg_indirect(ptr nocapture noundef readonly %priv, i32 noundef %reg, i8 noundef zeroext %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %2 = ptrtoint ptr %1 to i32
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cc770_isa_port_lock) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !137
  tail call void @arm_heavy_mb() #4
  %conv8 = trunc i32 %reg to i8
  %and = and i32 %2, 1048575
  %add = or i32 %and, -18874368
  %3 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %conv8) #4, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !138
  tail call void @arm_heavy_mb() #4
  %add13 = add i32 %2, 1
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %4 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %val) #4, !srcloc !134
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cc770_isa_port_lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @cc770_isa_port_read_reg(ptr nocapture noundef readonly %priv, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %2 = ptrtoint ptr %1 to i32
  %add = add i32 %2, %reg
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #4, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !139
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc770_isa_port_write_reg(ptr nocapture noundef readonly %priv, i32 noundef %reg, i8 noundef zeroext %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  tail call void @arm_heavy_mb() #4
  %reg_base = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %2 = ptrtoint ptr %1 to i32
  %add = add i32 %2, %reg
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %val) #4, !srcloc !134
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_cc770dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_cc770dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cc770dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !49, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !89, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !106, !107, !109, !110, !111, !112, !113, !115, !116, !117, !118, !120}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__UNIQUE_ID_author459, !1, !"__UNIQUE_ID_author459", i1 false, i1 false}
!1 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 60, i32 1}
!2 = !{ptr @__UNIQUE_ID_description460, !3, !"__UNIQUE_ID_description460", i1 false, i1 false}
!3 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 61, i32 1}
!4 = !{ptr @__UNIQUE_ID_file461, !5, !"__UNIQUE_ID_file461", i1 false, i1 false}
!5 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 62, i32 1}
!6 = !{ptr @__UNIQUE_ID_license462, !5, !"__UNIQUE_ID_license462", i1 false, i1 false}
!7 = !{ptr @__param_port, !8, !"__param_port", i1 false, i1 false}
!8 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 77, i32 1}
!9 = !{ptr @__UNIQUE_ID_porttype463, !8, !"__UNIQUE_ID_porttype463", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_port464, !11, !"__UNIQUE_ID_port464", i1 false, i1 false}
!11 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 78, i32 1}
!12 = !{ptr @__param_mem, !13, !"__param_mem", i1 false, i1 false}
!13 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 80, i32 1}
!14 = !{ptr @__UNIQUE_ID_memtype465, !13, !"__UNIQUE_ID_memtype465", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_mem466, !16, !"__UNIQUE_ID_mem466", i1 false, i1 false}
!16 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 81, i32 1}
!17 = !{ptr @__param_indirect, !18, !"__param_indirect", i1 false, i1 false}
!18 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 83, i32 1}
!19 = !{ptr @__UNIQUE_ID_indirecttype467, !18, !"__UNIQUE_ID_indirecttype467", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_indirect468, !21, !"__UNIQUE_ID_indirect468", i1 false, i1 false}
!21 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 84, i32 1}
!22 = !{ptr @__param_irq, !23, !"__param_irq", i1 false, i1 false}
!23 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 86, i32 1}
!24 = !{ptr @__UNIQUE_ID_irqtype469, !23, !"__UNIQUE_ID_irqtype469", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_irq470, !26, !"__UNIQUE_ID_irq470", i1 false, i1 false}
!26 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 87, i32 1}
!27 = !{ptr @__param_clk, !28, !"__param_clk", i1 false, i1 false}
!28 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 89, i32 1}
!29 = !{ptr @__UNIQUE_ID_clktype471, !28, !"__UNIQUE_ID_clktype471", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_clk472, !31, !"__UNIQUE_ID_clk472", i1 false, i1 false}
!31 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 90, i32 1}
!32 = !{ptr @__param_cir, !33, !"__param_cir", i1 false, i1 false}
!33 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 93, i32 1}
!34 = !{ptr @__UNIQUE_ID_cirtype473, !33, !"__UNIQUE_ID_cirtype473", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_cir474, !36, !"__UNIQUE_ID_cir474", i1 false, i1 false}
!36 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 94, i32 1}
!37 = !{ptr @__param_cor, !38, !"__param_cor", i1 false, i1 false}
!38 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 96, i32 1}
!39 = !{ptr @__UNIQUE_ID_cortype475, !38, !"__UNIQUE_ID_cortype475", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_cor476, !41, !"__UNIQUE_ID_cor476", i1 false, i1 false}
!41 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 97, i32 1}
!42 = !{ptr @__param_bcr, !43, !"__param_bcr", i1 false, i1 false}
!43 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 99, i32 1}
!44 = !{ptr @__UNIQUE_ID_bcrtype477, !43, !"__UNIQUE_ID_bcrtype477", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_bcr478, !46, !"__UNIQUE_ID_bcr478", i1 false, i1 false}
!46 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 100, i32 1}
!47 = !{ptr @__initcall__kmod_cc770_isa__481_359_cc770_isa_init6, !48, !"__initcall__kmod_cc770_isa__481_359_cc770_isa_init6", i1 false, i1 false}
!48 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 359, i32 1}
!49 = !{ptr @__exitcall_cc770_isa_exit, !50, !"__exitcall_cc770_isa_exit", i1 false, i1 false}
!50 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 371, i32 1}
!51 = !{ptr @cc770_isa_devs, !52, !"cc770_isa_devs", i1 false, i1 false}
!52 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 110, i32 32}
!53 = !{ptr @__param_str_port, !8, !"__param_str_port", i1 false, i1 false}
!54 = !{ptr @__param_arr_port, !8, !"__param_arr_port", i1 false, i1 false}
!55 = !{ptr @port, !56, !"port", i1 false, i1 false}
!56 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 68, i32 22}
!57 = !{ptr @__param_str_mem, !13, !"__param_str_mem", i1 false, i1 false}
!58 = !{ptr @__param_arr_mem, !13, !"__param_arr_mem", i1 false, i1 false}
!59 = !{ptr @mem, !60, !"mem", i1 false, i1 false}
!60 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 69, i32 22}
!61 = !{ptr @__param_str_indirect, !18, !"__param_str_indirect", i1 false, i1 false}
!62 = !{ptr @__param_arr_indirect, !18, !"__param_arr_indirect", i1 false, i1 false}
!63 = !{ptr @indirect, !64, !"indirect", i1 false, i1 false}
!64 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 75, i32 12}
!65 = !{ptr @__param_str_irq, !23, !"__param_str_irq", i1 false, i1 false}
!66 = !{ptr @__param_arr_irq, !23, !"__param_arr_irq", i1 false, i1 false}
!67 = !{ptr @irq, !68, !"irq", i1 false, i1 false}
!68 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 70, i32 12}
!69 = !{ptr @__param_str_clk, !28, !"__param_str_clk", i1 false, i1 false}
!70 = !{ptr @__param_arr_clk, !28, !"__param_arr_clk", i1 false, i1 false}
!71 = !{ptr @clk, !72, !"clk", i1 false, i1 false}
!72 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 71, i32 12}
!73 = !{ptr @__param_str_cir, !33, !"__param_str_cir", i1 false, i1 false}
!74 = !{ptr @__param_arr_cir, !33, !"__param_arr_cir", i1 false, i1 false}
!75 = !{ptr @cir, !76, !"cir", i1 false, i1 false}
!76 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 72, i32 11}
!77 = !{ptr @__param_str_cor, !38, !"__param_str_cor", i1 false, i1 false}
!78 = !{ptr @__param_arr_cor, !38, !"__param_arr_cor", i1 false, i1 false}
!79 = !{ptr @cor, !80, !"cor", i1 false, i1 false}
!80 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 73, i32 11}
!81 = !{ptr @__param_str_bcr, !43, !"__param_str_bcr", i1 false, i1 false}
!82 = !{ptr @__param_arr_bcr, !43, !"__param_arr_bcr", i1 false, i1 false}
!83 = !{ptr @bcr, !84, !"bcr", i1 false, i1 false}
!84 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 74, i32 11}
!85 = !{ptr @.str, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 323, i32 27}
!87 = !{ptr @.str.1, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 333, i32 4}
!89 = !{ptr @.str.2, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.3, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @cc770_isa_init.__UNIQUE_ID_ddebug480, !88, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!92 = !{ptr @.str.4, !88, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.5, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 337, i32 4}
!95 = !{ptr @cc770_isa_init._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @cc770_isa_init._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.7, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 347, i32 2}
!99 = !{ptr @cc770_isa_init._entry.6, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @cc770_isa_init._entry_ptr.8, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @cc770_isa_driver, !102, !"cc770_isa_driver", i1 false, i1 false}
!102 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 308, i32 31}
!103 = !{ptr @.str.9, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 171, i32 2}
!105 = !{ptr @.str.10, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @cc770_isa_probe.__UNIQUE_ID_ddebug479, !104, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!107 = !{ptr @.str.11, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 265, i32 3}
!109 = !{ptr @.str.12, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.13, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @cc770_isa_probe._entry, !108, !"_entry", i1 false, i1 false}
!112 = !{ptr @cc770_isa_probe._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.15, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 270, i32 2}
!115 = !{ptr @.str.16, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @cc770_isa_probe._entry.14, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @cc770_isa_probe._entry_ptr.17, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.18, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/can/cc770/cc770_isa.c", i32 108, i32 8}
!120 = !{ptr @cc770_isa_port_lock, !119, !"cc770_isa_port_lock", i1 false, i1 false}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{i64 2148699000, i64 2148699005, i64 2148699018, i64 2148699062, i64 2148699096, i64 2148699117}
!131 = !{i64 4880002}
!132 = !{i64 2156950945}
!133 = !{i64 2156951162}
!134 = !{i64 4879607}
!135 = !{i64 2156952506}
!136 = !{i64 2156952896}
!137 = !{i64 2156953473}
!138 = !{i64 2156953795}
!139 = !{i64 2156951549}
!140 = !{i64 2156951785}
