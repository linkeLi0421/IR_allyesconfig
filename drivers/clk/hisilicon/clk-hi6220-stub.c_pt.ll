; ModuleID = '/llk/IR_all_yes/drivers/clk/hisilicon/clk-hi6220-stub.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hi6220-stub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hi6220_stub_clk = type { i32, ptr, %struct.clk_hw, ptr, %struct.mbox_client, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%union.hi6220_mbox_data = type { [8 x i32] }
%struct.hi6220_mbox_msg = type { i8, i8, i8, i8, [4 x i8] }

@__initcall__kmod_clk_hi6220_stub__174_272_hi6220_stub_clk_init4 = internal global ptr @hi6220_stub_clk_init, section ".initcall4.init", align 4
@hi6220_stub_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi6220_stub_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi6220_stub_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hi6220-stub-clk\00", [16 x i8] zeroinitializer }, align 32
@hi6220_stub_clk_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-stub-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hisilicon,hi6220-clk-sram\00", [38 x i8] zeroinitializer }, align 32
@hi6220_stub_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 209, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get sram regmap\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hi6220_stub_clk_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/clk/hisilicon/clk-hi6220-stub.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hi6220_stub_clk_probe._entry_ptr = internal global ptr @hi6220_stub_clk_probe._entry, section ".printk_index", align 4
@hi6220_stub_clk_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 227, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed get mailbox channel\0A\00", [36 x i8] zeroinitializer }, align 32
@hi6220_stub_clk_probe._entry_ptr.9 = internal global ptr @hi6220_stub_clk_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"acpu0\00", [26 x i8] zeroinitializer }, align 32
@hi6220_stub_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hi6220_stub_clk_recalc_rate, ptr @hi6220_stub_clk_round_rate, ptr null, ptr null, ptr null, ptr @hi6220_stub_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@hi6220_stub_clk_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 242, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register OF clock provider\0A\00", [58 x i8] zeroinitializer }, align 32
@hi6220_stub_clk_probe._entry_ptr.13 = internal global ptr @hi6220_stub_clk_probe._entry.11, section ".printk_index", align 4
@hi6220_stub_clk_probe.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.3, ptr @.str.4, ptr @.str.15, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_hi6220_stub\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Registered clock '%s'\0A\00", [41 x i8] zeroinitializer }, align 32
@hi6220_stub_clk_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 132, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: un-supported clock id %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hi6220_stub_clk_recalc_rate\00", [36 x i8] zeroinitializer }, align 32
@hi6220_stub_clk_recalc_rate._entry_ptr = internal global ptr @hi6220_stub_clk_recalc_rate._entry, section ".printk_index", align 4
@hi6220_stub_clk_round_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.18, ptr @.str.4, i32 180, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hi6220_stub_clk_round_rate\00", [37 x i8] zeroinitializer }, align 32
@hi6220_stub_clk_round_rate._entry_ptr = internal global ptr @hi6220_stub_clk_round_rate._entry, section ".printk_index", align 4
@hi6220_stub_clk_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.19, ptr @.str.4, i32 156, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hi6220_stub_clk_set_rate\00", [39 x i8] zeroinitializer }, align 32
@hi6220_stub_clk_set_rate._entry_ptr = internal global ptr @hi6220_stub_clk_set_rate._entry, section ".printk_index", align 4
@hi6220_stub_clk_set_rate.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: set rate=%ldkHz\0A\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"hi6220_stub_clk_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 260, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 262, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [25 x i8] c"hi6220_stub_clk_of_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 255, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 207, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 209, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 227, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 231, i32 14 }
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"hi6220_stub_clk_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 187, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 242, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 251, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 131, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 179, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 155, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [43 x i8] c"../drivers/clk/hisilicon/clk-hi6220-stub.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 160, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__initcall__kmod_clk_hi6220_stub__174_272_hi6220_stub_clk_init4, ptr @hi6220_stub_clk_probe._entry, ptr @hi6220_stub_clk_probe._entry.11, ptr @hi6220_stub_clk_probe._entry.7, ptr @hi6220_stub_clk_probe._entry_ptr, ptr @hi6220_stub_clk_probe._entry_ptr.13, ptr @hi6220_stub_clk_probe._entry_ptr.9, ptr @hi6220_stub_clk_recalc_rate._entry, ptr @hi6220_stub_clk_recalc_rate._entry_ptr, ptr @hi6220_stub_clk_round_rate._entry, ptr @hi6220_stub_clk_round_rate._entry_ptr, ptr @hi6220_stub_clk_set_rate._entry, ptr @hi6220_stub_clk_set_rate._entry_ptr, ptr @hi6220_stub_clk_driver, ptr @.str, ptr @hi6220_stub_clk_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @hi6220_stub_clk_ops, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_stub_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_stub_clk_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_stub_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_stub_clk_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_stub_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_stub_clk_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_stub_clk_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_stub_clk_round_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_stub_clk_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_stub_clk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi6220_stub_clk_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_stub_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %0 = call ptr @memset(ptr %init, i32 255, i32 28)
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %dfs_map = getelementptr inbounds %struct.hi6220_stub_clk, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %dfs_map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %dfs_map, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %4 = ptrtoint ptr %dfs_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dfs_map, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %init10 = getelementptr inbounds %struct.hi6220_stub_clk, ptr %call.i, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %init10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %init, ptr %init10, align 4
  %dev11 = getelementptr inbounds %struct.hi6220_stub_clk, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %dev11, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %call.i, align 4
  %cl = getelementptr inbounds %struct.hi6220_stub_clk, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %cl, align 4
  %tx_done = getelementptr inbounds %struct.hi6220_stub_clk, ptr %call.i, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %tx_done to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tx_done, align 4
  %tx_block = getelementptr inbounds %struct.hi6220_stub_clk, ptr %call.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %tx_block to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %tx_block, align 4
  %tx_tout = getelementptr inbounds %struct.hi6220_stub_clk, ptr %call.i, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %tx_tout to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 500, ptr %tx_tout, align 4
  %knows_txdone = getelementptr inbounds %struct.hi6220_stub_clk, ptr %call.i, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %knows_txdone to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %knows_txdone, align 4
  %call18 = call ptr @mbox_request_channel(ptr noundef %cl, i32 noundef 0) #6
  %mbox = getelementptr inbounds %struct.hi6220_stub_clk, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %mbox to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call18, ptr %mbox, align 4
  %cmp.i93 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  %16 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mbox, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end9
  %hw = getelementptr inbounds %struct.hi6220_stub_clk, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.10, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @hi6220_stub_clk_ops, ptr %ops, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %21 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %flags, align 4
  %call29 = call ptr @devm_clk_register(ptr noundef %dev1, ptr noundef %hw) #6
  %cmp.i94 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %call34 = call i32 @of_clk_add_provider(ptr noundef %2, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end40, label %do.end39

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %dfs_map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dfs_map, align 4
  %call42 = call i32 @regmap_write(ptr noundef %25, i32 noundef 6960, i32 noundef 0) #6
  %26 = ptrtoint ptr %dfs_map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dfs_map, align 4
  %call44 = call i32 @regmap_write(ptr noundef %27, i32 noundef 6964, i32 noundef 0) #6
  %28 = ptrtoint ptr %dfs_map to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dfs_map, align 4
  %call46 = call i32 @regmap_write(ptr noundef %29, i32 noundef 6968, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi6220_stub_clk_probe.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hi6220_stub_clk_probe, %if.then52)) #6
          to label %cleanup [label %if.then52], !srcloc !59

if.then52:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hi6220_stub_clk_probe.__UNIQUE_ID_ddebug173, ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef %31) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end40, %do.end39, %if.then31, %do.end24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ %18, %do.end24 ], [ %23, %if.then31 ], [ %call34, %do.end39 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then52 ], [ 0, %if.end40 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_stub_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %freq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.i) #6
  %2 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %freq.i, align 4, !annotation !60
  %dfs_map.i = getelementptr i8, ptr %hw, i32 12
  %3 = ptrtoint ptr %dfs_map.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dfs_map.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 6092, ptr noundef nonnull %freq.i) #6
  %5 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %freq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #6
  %mul = mul i32 %6, 1000
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %hw, i32 -4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  %rate.0 = phi i32 [ %mul, %sw.bb ], [ 0, %do.end ]
  ret i32 %rate.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_stub_clk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #2 align 64 {
entry:
  %limit_flag.i = alloca i32, align 4
  %limit_freq.i = alloca i32, align 4
  %max_freq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %div = udiv i32 %rate, 1000
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit_flag.i) #6
  %2 = ptrtoint ptr %limit_flag.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %limit_flag.i, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit_freq.i) #6
  %3 = ptrtoint ptr %limit_freq.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %limit_freq.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq.i) #6
  %4 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %max_freq.i, align 4, !annotation !60
  %dfs_map.i = getelementptr i8, ptr %hw, i32 12
  %5 = ptrtoint ptr %dfs_map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dfs_map.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 6960, ptr noundef nonnull %limit_flag.i) #6
  %7 = ptrtoint ptr %limit_flag.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %limit_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1364283730, i32 %8)
  %cmp.i = icmp eq i32 %8, -1364283730
  br i1 %cmp.i, label %if.then.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dfs_map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dfs_map.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 6968, ptr noundef nonnull %limit_freq.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %11 = ptrtoint ptr %dfs_map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dfs_map.i, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 5924, ptr noundef nonnull %max_freq.i) #6
  %13 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_freq.i, align 4
  %15 = ptrtoint ptr %limit_freq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %limit_freq.i, align 4
  %17 = call i32 @llvm.umin.i32(i32 %14, i32 %16) #6
  %18 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %max_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div)
  %cmp6.i = icmp ult i32 %17, %div
  br i1 %cmp6.i, label %do.end.i, label %if.end.i.hi6220_acpu_round_freq.exit_crit_edge, !prof !61

if.end.i.hi6220_acpu_round_freq.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi6220_acpu_round_freq.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 110, i32 noundef 9, ptr noundef null) #6
  %19 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_freq.i, align 4
  br label %hi6220_acpu_round_freq.exit

hi6220_acpu_round_freq.exit:                      ; preds = %do.end.i, %if.end.i.hi6220_acpu_round_freq.exit_crit_edge
  %freq.addr.0.i = phi i32 [ %20, %do.end.i ], [ %div, %if.end.i.hi6220_acpu_round_freq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit_freq.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit_flag.i) #6
  %mul = mul i32 %freq.addr.0.i, 1000
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %hw, i32 -4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i32 noundef %1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %hi6220_acpu_round_freq.exit
  %new_rate.0 = phi i32 [ %mul, %hi6220_acpu_round_freq.exit ], [ %div, %do.end ]
  ret i32 %new_rate.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_stub_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %data.i = alloca %union.hi6220_mbox_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %div = udiv i32 %rate, 1000
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data.i) #6
  %dfs_map.i = getelementptr i8, ptr %hw, i32 12
  %2 = getelementptr inbounds i8, ptr %data.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 28)
  %4 = ptrtoint ptr %dfs_map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dfs_map.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 6964, i32 noundef %div) #6
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %data.i, align 4
  %cmd.i = getelementptr inbounds %struct.hi6220_mbox_msg, ptr %data.i, i32 0, i32 1
  %7 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %cmd.i, align 1
  %obj.i = getelementptr inbounds %struct.hi6220_mbox_msg, ptr %data.i, i32 0, i32 2
  %8 = ptrtoint ptr %obj.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %obj.i, align 2
  %src.i = getelementptr inbounds %struct.hi6220_mbox_msg, ptr %data.i, i32 0, i32 3
  %9 = ptrtoint ptr %src.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %src.i, align 1
  %mbox.i = getelementptr i8, ptr %hw, i32 44
  %10 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mbox.i, align 4
  %call1.i = call i32 @mbox_send_message(ptr noundef %11, ptr noundef nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data.i) #6
  br label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %hw, i32 -4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.19, i32 noundef %1) #9
  br label %do.body2

do.body2:                                         ; preds = %do.end, %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi6220_stub_clk_set_rate.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hi6220_stub_clk_set_rate, %if.then7)) #6
          to label %cleanup [label %if.then7], !srcloc !59

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hi6220_stub_clk_set_rate.__UNIQUE_ID_ddebug172, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %div) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_clk_hi6220_stub__174_272_hi6220_stub_clk_init4, !1, !"__initcall__kmod_clk_hi6220_stub__174_272_hi6220_stub_clk_init4", i1 false, i1 false}
!1 = !{!"../drivers/clk/hisilicon/clk-hi6220-stub.c", i32 272, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/hisilicon/clk-hi6220-stub.c", i32 262, i32 11}
!4 = !{ptr @hi6220_stub_clk_driver, !5, !"hi6220_stub_clk_driver", i1 false, i1 false}
!5 = !{!"../drivers/clk/hisilicon/clk-hi6220-stub.c", i32 260, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/hisilicon/clk-hi6220-stub.c", i32 207, i32 5}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/hisilicon/clk-hi6220-stub.c", i32 209, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hi6220_stub_clk_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @hi6220_stub_clk_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/hisilicon/clk-hi6220-stub.c", i32 227, i32 3}
!18 = !{ptr @hi6220_stub_clk_probe._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @hi6220_stub_clk_probe._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/hisilicon/clk-hi6220-stub.c", i32 231, i32 14}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/hisilicon/clk-hi6220-stub.c", i32 242, i32 3}
!24 = !{ptr @hi6220_stub_clk_probe._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @hi6220_stub_clk_probe._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/hisilicon/clk-hi6220-stub.c", i32 251, i32 2}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hi6220_stub_clk_probe.__UNIQUE_ID_ddebug173, !27, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!30 = !{ptr @hi6220_stub_clk_ops, !31, !"hi6220_stub_clk_ops", i1 false, i1 false}
!31 = !{!"../drivers/clk/hisilicon/clk-hi6220-stub.c", i32 187, i32 29}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/hisilicon/clk-hi6220-stub.c", i32 131, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hi6220_stub_clk_recalc_rate._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @hi6220_stub_clk_recalc_rate._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/hisilicon/clk-hi6220-stub.c", i32 179, i32 3}
!39 = !{ptr @hi6220_stub_clk_round_rate._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @hi6220_stub_clk_round_rate._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/hisilicon/clk-hi6220-stub.c", i32 155, i32 3}
!43 = !{ptr @hi6220_stub_clk_set_rate._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @hi6220_stub_clk_set_rate._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/hisilicon/clk-hi6220-stub.c", i32 160, i32 2}
!47 = !{ptr @hi6220_stub_clk_set_rate.__UNIQUE_ID_ddebug172, !46, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!48 = !{ptr @hi6220_stub_clk_of_match, !49, !"hi6220_stub_clk_of_match", i1 false, i1 false}
!49 = !{!"../drivers/clk/hisilicon/clk-hi6220-stub.c", i32 255, i32 34}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148921337, i64 2148921342, i64 2148921355, i64 2148921399, i64 2148921433, i64 2148921454}
!60 = !{!"auto-init"}
!61 = !{!"branch_weights", i32 1, i32 2000}
