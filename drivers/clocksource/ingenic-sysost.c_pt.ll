; ModuleID = '/llk/IR_all_yes/drivers/clocksource/ingenic-sysost.c_pt.bc'
source_filename = "../drivers/clocksource/ingenic-sysost.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ingenic_ost_clk_info = type { %struct.clk_init_data, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ingenic_soc_info = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ingenic_ost = type { ptr, ptr, ptr, ptr, ptr, [108 x i8], %struct.clock_event_device, %struct.clocksource, [20 x i8], ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ingenic_ost_clk = type { %struct.clk_hw, i32, ptr, ptr }

@__of_table_x1000_ost = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1000-ost\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_ost_init }, section "__timer_of_table", align 4
@ingenic_ost_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\012%s: Failed to initialize OST clocks: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ingenic_ost_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/clocksource/ingenic-sysost.c\00", [59 x i8] zeroinitializer }, align 32
@ingenic_ost_init._entry_ptr = internal global ptr @ingenic_ost_init._entry, section ".printk_index", align 4
@ingenic_ost = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ingenic_ost_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\012%s: Unable to init global timer: %x\0A\00", [57 x i8] zeroinitializer }, align 32
@ingenic_ost_init._entry_ptr.5 = internal global ptr @ingenic_ost_init._entry.3, section ".printk_index", align 4
@ingenic_ost_of_matches = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1000-ost\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @x1000_soc_info }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@ingenic_ost_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Failed to map OST registers\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ingenic_ost_probe\00", [46 x i8] zeroinitializer }, align 32
@ingenic_ost_probe._entry_ptr = internal global ptr @ingenic_ost_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ost\00", [28 x i8] zeroinitializer }, align 32
@ingenic_ost_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\012%s: Cannot get OST clock\0A\00", [36 x i8] zeroinitializer }, align 32
@ingenic_ost_probe._entry_ptr.11 = internal global ptr @ingenic_ost_probe._entry.9, section ".printk_index", align 4
@ingenic_ost_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\012%s: Unable to enable OST clock\0A\00", [62 x i8] zeroinitializer }, align 32
@ingenic_ost_probe._entry_ptr.14 = internal global ptr @ingenic_ost_probe._entry.12, section ".printk_index", align 4
@x1000_ost_clk_info = internal constant { [2 x %struct.ingenic_ost_clk_info], [32 x i8] } { [2 x %struct.ingenic_ost_clk_info] [%struct.ingenic_ost_clk_info { %struct.clk_init_data { ptr @.str.22, ptr @ingenic_ost_global_timer_ops, ptr @ingenic_ost_clk_parents, ptr null, ptr null, i8 1, i32 1024 }, i8 0 }, %struct.ingenic_ost_clk_info { %struct.clk_init_data { ptr @.str.23, ptr @ingenic_ost_percpu_timer_ops, ptr @ingenic_ost_clk_parents, ptr null, ptr null, i8 1, i32 1024 }, i8 0 }], [32 x i8] zeroinitializer }, align 32
@ingenic_ost_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\012%s: Cannot register clock %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ingenic_ost_probe._entry_ptr.17 = internal global ptr @ingenic_ost_probe._entry.15, section ".printk_index", align 4
@ingenic_ost_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\012%s: Cannot add OF clock provider\0A\00", [60 x i8] zeroinitializer }, align 32
@ingenic_ost_probe._entry_ptr.20 = internal global ptr @ingenic_ost_probe._entry.18, section ".printk_index", align 4
@x1000_soc_info = internal constant { %struct.ingenic_soc_info, [28 x i8] } { %struct.ingenic_soc_info { i32 2 }, [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"global timer\00", [19 x i8] zeroinitializer }, align 32
@ingenic_ost_global_timer_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ingenic_ost_global_timer_recalc_rate, ptr @ingenic_ost_round_rate, ptr null, ptr null, ptr null, ptr @ingenic_ost_global_timer_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ingenic_ost_clk_parents = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"percpu timer\00", [19 x i8] zeroinitializer }, align 32
@ingenic_ost_percpu_timer_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ingenic_ost_percpu_timer_recalc_rate, ptr @ingenic_ost_round_rate, ptr null, ptr null, ptr null, ptr @ingenic_ost_percpu_timer_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ext\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ingenic-ost\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OST percpu timer\00", [47 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 505, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"ingenic_ost\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 84, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 517, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 436, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 441, i32 36 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 444, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 450, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"x1000_ost_clk_info\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 190, i32 42 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 468, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 475, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"x1000_soc_info\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 414, i32 38 }
@___asan_gen_.91 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 261, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 204, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant [29 x i8] c"ingenic_ost_global_timer_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 182, i32 29 }
@___asan_gen_.99 = private unnamed_addr constant [24 x i8] c"ingenic_ost_clk_parents\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 188, i32 27 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 193, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant [29 x i8] c"ingenic_ost_percpu_timer_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 176, i32 29 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 188, i32 57 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 395, i32 13 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [40 x i8] c"../drivers/clocksource/ingenic-sysost.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 340, i32 41 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__of_table_x1000_ost, ptr @ingenic_ost_init._entry, ptr @ingenic_ost_init._entry.3, ptr @ingenic_ost_init._entry_ptr, ptr @ingenic_ost_init._entry_ptr.5, ptr @ingenic_ost_probe._entry, ptr @ingenic_ost_probe._entry.12, ptr @ingenic_ost_probe._entry.15, ptr @ingenic_ost_probe._entry.18, ptr @ingenic_ost_probe._entry.9, ptr @ingenic_ost_probe._entry_ptr, ptr @ingenic_ost_probe._entry_ptr.11, ptr @ingenic_ost_probe._entry_ptr.14, ptr @ingenic_ost_probe._entry_ptr.17, ptr @ingenic_ost_probe._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ingenic_ost, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @x1000_ost_clk_info, ptr @.str.16, ptr @.str.19, ptr @x1000_soc_info, ptr @.str.21, ptr @.str.22, ptr @ingenic_ost_global_timer_ops, ptr @ingenic_ost_clk_parents, ptr @.str.23, ptr @ingenic_ost_percpu_timer_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ost_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ost to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ost_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ost_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ost_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ost_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1000_ost_clk_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ost_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ost_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1000_soc_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ost_global_timer_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ost_clk_parents to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ost_percpu_timer_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_ost_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ingenic_ost_probe(ptr noundef %np) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #10
  %0 = load ptr, ptr @ingenic_ost, align 4
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @ingenic_ost_global_timer_init(ptr noundef %np, ptr noundef %0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call6) #14
  br label %err_free_ingenic_ost

if.end14:                                         ; preds = %if.end5
  %call15 = tail call fastcc i32 @ingenic_ost_percpu_timer_init(ptr noundef %np, ptr noundef %0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %err_ost_global_timer_cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %global_timer_clk = getelementptr inbounds %struct.ingenic_ost, ptr %0, i32 0, i32 4
  %2 = ptrtoint ptr %global_timer_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %global_timer_clk, align 16
  %call19 = tail call i32 @clk_get_rate(ptr noundef %3) #10
  tail call void @sched_clock_register(ptr noundef nonnull @ingenic_ost_global_timer_read_cntl, i32 noundef 32, i32 noundef %call19) #10
  br label %cleanup

err_ost_global_timer_cleanup:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %cs = getelementptr inbounds %struct.ingenic_ost, ptr %0, i32 0, i32 7
  %call20 = tail call i32 @clocksource_unregister(ptr noundef %cs) #10
  %global_timer_clk21 = getelementptr inbounds %struct.ingenic_ost, ptr %0, i32 0, i32 4
  %4 = ptrtoint ptr %global_timer_clk21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %global_timer_clk21, align 16
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %6 = ptrtoint ptr %global_timer_clk21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %global_timer_clk21, align 16
  tail call void @clk_put(ptr noundef %7) #10
  br label %err_free_ingenic_ost

err_free_ingenic_ost:                             ; preds = %err_ost_global_timer_cleanup, %do.end11
  %ret.0 = phi i32 [ %call6, %do.end11 ], [ %call15, %err_ost_global_timer_cleanup ]
  tail call void @kfree(ptr noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_ingenic_ost, %if.end18, %if.then3, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %1, %if.then3 ], [ %ret.0, %err_free_ingenic_ost ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ingenic_ost_probe(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_match_node(ptr noundef nonnull @ingenic_ost_of_matches, ptr noundef %np) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 512) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %np, null
  br i1 %tobool.not.i, label %if.end.of_node_full_name.exit_crit_edge, label %cond.true.i

if.end.of_node_full_name.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %1 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %if.end.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %2, %cond.true.i ], [ @.str.21, %if.end.of_node_full_name.exit_crit_edge ]
  %call3 = tail call ptr @of_io_request_and_map(ptr noundef %np, i32 noundef 0, ptr noundef %cond.i) #10
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %call7.i.i, align 128
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end10

do.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #14
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call7.i.i, align 128
  %6 = ptrtoint ptr %5 to i32
  br label %err_free_ost

if.end10:                                         ; preds = %of_node_full_name.exit
  %call11 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str.8) #10
  %clk = getelementptr inbounds %struct.ingenic_ost, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %clk, align 8
  %cmp.i127 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call11 to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #14
  br label %err_free_ost

if.end22:                                         ; preds = %if.end10
  %call.i = tail call i32 @clk_prepare(ptr noundef %call11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i128 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i128, label %if.end.i, label %if.end22.do.end29_crit_edge

if.end22.do.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

if.end.i:                                         ; preds = %if.end22
  %call1.i = tail call i32 @clk_enable(ptr noundef %call11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end32, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call11) #10
  br label %do.end29

do.end29:                                         ; preds = %if.then3.i, %if.end22.do.end29_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end22.do.end29_crit_edge ]
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.7) #14
  br label %err_put_clk

if.end32:                                         ; preds = %if.end.i
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %soc_info = getelementptr inbounds %struct.ingenic_ost, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %soc_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %soc_info, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %10, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4) #10
  %15 = extractvalue { i32, i1 } %14, 1
  %16 = extractvalue { i32, i1 } %14, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %16, i32 4) #10
  %retval.0.i129 = select i1 %15, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i129, i32 noundef 3520) #16
  %clocks = getelementptr inbounds %struct.ingenic_ost, ptr %call7.i.i, i32 0, i32 9
  %17 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i, ptr %clocks, align 4
  %tobool37.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool37.not, label %if.end32.err_clk_disable_crit_edge, label %if.end39

if.end32.err_clk_disable_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_disable

if.end39:                                         ; preds = %if.end32
  %18 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soc_info, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %call9.i.i, align 128
  %23 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clocks, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp137.not = icmp eq i32 %26, 0
  br i1 %cmp137.not, label %if.end39.for.end_crit_edge, label %if.end39.for.body_crit_edge

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  br label %for.body

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end39.for.body_crit_edge
  %27 = phi ptr [ %29, %for.inc.for.body_crit_edge ], [ %24, %if.end39.for.body_crit_edge ]
  %i.0138 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end39.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.ingenic_ost_clk_info], ptr @x1000_ost_clk_info, i32 0, i32 %i.0138
  %call46 = tail call fastcc i32 @ingenic_ost_register_clock(ptr noundef nonnull %call7.i.i, i32 noundef %i.0138, ptr noundef %arrayidx, ptr noundef %27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %for.inc, label %do.end51

do.end51:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef %i.0138) #14
  br label %err_unregister_ost_clocks

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0138, 1
  %28 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clocks, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end39.for.end_crit_edge
  %.lcssa134 = phi ptr [ %24, %if.end39.for.end_crit_edge ], [ %29, %for.inc.for.end_crit_edge ]
  %call56 = tail call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %.lcssa134) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end64, label %do.end61

do.end61:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.7) #14
  br label %err_unregister_ost_clocks

if.end64:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call7.i.i, ptr @ingenic_ost, align 4
  br label %cleanup

err_unregister_ost_clocks:                        ; preds = %do.end61, %do.end51
  %ret.0 = phi i32 [ %call46, %do.end51 ], [ %call56, %do.end61 ]
  %32 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clocks, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp68139.not = icmp eq i32 %35, 0
  br i1 %cmp68139.not, label %err_unregister_ost_clocks.for.end80_crit_edge, label %err_unregister_ost_clocks.for.body69_crit_edge

err_unregister_ost_clocks.for.body69_crit_edge:   ; preds = %err_unregister_ost_clocks
  br label %for.body69

err_unregister_ost_clocks.for.end80_crit_edge:    ; preds = %err_unregister_ost_clocks
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end80

for.body69:                                       ; preds = %for.inc78.for.body69_crit_edge, %err_unregister_ost_clocks.for.body69_crit_edge
  %36 = phi ptr [ %40, %for.inc78.for.body69_crit_edge ], [ %33, %err_unregister_ost_clocks.for.body69_crit_edge ]
  %i.1140 = phi i32 [ %inc79, %for.inc78.for.body69_crit_edge ], [ 0, %err_unregister_ost_clocks.for.body69_crit_edge ]
  %arrayidx71 = getelementptr %struct.clk_hw_onecell_data, ptr %36, i32 0, i32 1, i32 %i.1140
  %37 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx71, align 4
  %tobool72.not = icmp eq ptr %38, null
  br i1 %tobool72.not, label %for.body69.for.inc78_crit_edge, label %if.then73

for.body69.for.inc78_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc78

if.then73:                                        ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_hw_unregister(ptr noundef nonnull %38) #10
  br label %for.inc78

for.inc78:                                        ; preds = %if.then73, %for.body69.for.inc78_crit_edge
  %inc79 = add nuw i32 %i.1140, 1
  %39 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clocks, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %cmp68 = icmp ult i32 %inc79, %42
  br i1 %cmp68, label %for.inc78.for.body69_crit_edge, label %for.inc78.for.end80_crit_edge

for.inc78.for.end80_crit_edge:                    ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end80

for.inc78.for.body69_crit_edge:                   ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body69

for.end80:                                        ; preds = %for.inc78.for.end80_crit_edge, %err_unregister_ost_clocks.for.end80_crit_edge
  %.lcssa = phi ptr [ %33, %err_unregister_ost_clocks.for.end80_crit_edge ], [ %40, %for.inc78.for.end80_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa) #10
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %for.end80, %if.end32.err_clk_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %for.end80 ], [ -12, %if.end32.err_clk_disable_crit_edge ]
  %43 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %44) #10
  tail call void @clk_unprepare(ptr noundef %44) #10
  br label %err_put_clk

err_put_clk:                                      ; preds = %err_clk_disable, %do.end29
  %ret.2 = phi i32 [ %retval.0.i.ph, %do.end29 ], [ %ret.1, %err_clk_disable ]
  %45 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk, align 8
  tail call void @clk_put(ptr noundef %46) #10
  br label %err_free_ost

err_free_ost:                                     ; preds = %err_put_clk, %if.then14, %do.end
  %ret.3 = phi i32 [ %6, %do.end ], [ %8, %if.then14 ], [ %ret.2, %err_put_clk ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_ost, %if.end64, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_free_ost ], [ 0, %if.end64 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ingenic_ost_global_timer_init(ptr noundef %np, ptr noundef %ost) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cs1 = getelementptr inbounds %struct.ingenic_ost, ptr %ost, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %0 = getelementptr inbounds i8, ptr %args.i, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 60)
  %2 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %np, ptr %args.i, align 4
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 1
  %3 = ptrtoint ptr %args_count.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %args_count.i, align 4
  %args2.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %4 = ptrtoint ptr %args2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %args2.i, align 4
  %call.i = call ptr @of_clk_get_from_provider(ptr noundef nonnull %args.i) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  %global_timer_clk = getelementptr inbounds %struct.ingenic_ost, ptr %ost, i32 0, i32 4
  %5 = ptrtoint ptr %global_timer_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %global_timer_clk, align 16
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i46 = call i32 @clk_prepare(ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool.not.i = icmp eq i32 %call.i46, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.err_clk_put_crit_edge

if.end.err_clk_put_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_put

if.end.i:                                         ; preds = %if.end
  %call1.i = call i32 @clk_enable(ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end9, label %if.end.i.err_clk_put.sink.split_crit_edge

if.end.i.err_clk_put.sink.split_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_put.sink.split

if.end9:                                          ; preds = %if.end.i
  %7 = ptrtoint ptr %global_timer_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %global_timer_clk, align 16
  %call11 = call i32 @clk_get_rate(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.err_clk_disable_crit_edge, label %do.body

if.end9.err_clk_disable_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_disable

do.body:                                          ; preds = %if.end9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %ost to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ost, align 128
  %add.ptr = getelementptr i8, ptr %10, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #10, !srcloc !72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !73
  call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %ost to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ost, align 128
  %add.ptr19 = getelementptr i8, ptr %12, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 33554432) #10, !srcloc !72
  %name = getelementptr inbounds %struct.ingenic_ost, ptr %ost, i32 0, i32 7, i32 8
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.25, ptr %name, align 8
  %rating = getelementptr inbounds %struct.ingenic_ost, ptr %ost, i32 0, i32 7, i32 10
  %14 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 400, ptr %rating, align 4
  %flags = getelementptr inbounds %struct.ingenic_ost, ptr %ost, i32 0, i32 7, i32 13
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %flags, align 8
  %mask = getelementptr inbounds %struct.ingenic_ost, ptr %ost, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 4294967295, ptr %mask, align 8
  %17 = ptrtoint ptr %cs1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ingenic_ost_clocksource_read, ptr %cs1, align 8
  %call.i47 = call i32 @__clocksource_register_scale(ptr noundef %cs1, i32 noundef 1, i32 noundef %call11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool21.not = icmp eq i32 %call.i47, 0
  br i1 %tobool21.not, label %do.body.cleanup_crit_edge, label %do.body.err_clk_disable_crit_edge

do.body.err_clk_disable_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_disable

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_clk_disable:                                  ; preds = %do.body.err_clk_disable_crit_edge, %if.end9.err_clk_disable_crit_edge
  %err.0 = phi i32 [ %call.i47, %do.body.err_clk_disable_crit_edge ], [ -22, %if.end9.err_clk_disable_crit_edge ]
  %18 = ptrtoint ptr %global_timer_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %global_timer_clk, align 16
  call void @clk_disable(ptr noundef %19) #10
  br label %err_clk_put.sink.split

err_clk_put.sink.split:                           ; preds = %err_clk_disable, %if.end.i.err_clk_put.sink.split_crit_edge
  %call.i.sink = phi ptr [ %19, %err_clk_disable ], [ %call.i, %if.end.i.err_clk_put.sink.split_crit_edge ]
  %err.1.ph = phi i32 [ %err.0, %err_clk_disable ], [ %call1.i, %if.end.i.err_clk_put.sink.split_crit_edge ]
  call void @clk_unprepare(ptr noundef %call.i.sink) #10
  br label %err_clk_put

err_clk_put:                                      ; preds = %err_clk_put.sink.split, %if.end.err_clk_put_crit_edge
  %err.1 = phi i32 [ %call.i46, %if.end.err_clk_put_crit_edge ], [ %err.1.ph, %err_clk_put.sink.split ]
  %20 = ptrtoint ptr %global_timer_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %global_timer_clk, align 16
  call void @clk_put(ptr noundef %21) #10
  br label %cleanup

cleanup:                                          ; preds = %err_clk_put, %do.body.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %err.1, %err_clk_put ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ingenic_ost_percpu_timer_init(ptr noundef %np, ptr noundef %ost) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %0 = getelementptr inbounds i8, ptr %args.i, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 60)
  %2 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %np, ptr %args.i, align 4
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 1
  %3 = ptrtoint ptr %args_count.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %args_count.i, align 4
  %args2.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %4 = ptrtoint ptr %args2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %args2.i, align 4
  %call.i = call ptr @of_clk_get_from_provider(ptr noundef nonnull %args.i) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  %percpu_timer_clk = getelementptr inbounds %struct.ingenic_ost, ptr %ost, i32 0, i32 3
  %5 = ptrtoint ptr %percpu_timer_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %percpu_timer_clk, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i65 = call i32 @clk_prepare(ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool.not.i = icmp eq i32 %call.i65, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.err_clk_put_crit_edge

if.end.err_clk_put_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_put

if.end.i:                                         ; preds = %if.end
  %call1.i = call i32 @clk_enable(ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8, label %if.end.i.err_clk_put.sink.split_crit_edge

if.end.i.err_clk_put.sink.split_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_put.sink.split

if.end8:                                          ; preds = %if.end.i
  %7 = ptrtoint ptr %percpu_timer_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %percpu_timer_clk, align 4
  %call10 = call i32 @clk_get_rate(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end8.err_clk_disable_crit_edge, label %if.end13

if.end8.err_clk_disable_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_disable

if.end13:                                         ; preds = %if.end8
  %call14 = call i32 @of_irq_get(ptr noundef %np, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.err_clk_disable_crit_edge, label %if.end17

if.end13.err_clk_disable_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_disable

if.end17:                                         ; preds = %if.end13
  %name = getelementptr inbounds %struct.ingenic_ost, ptr %ost, i32 0, i32 8
  %9 = call ptr @memcpy(ptr %name, ptr @.str.26, i32 17)
  %cevt = getelementptr inbounds %struct.ingenic_ost, ptr %ost, i32 0, i32 6
  %call.i66 = call i32 @request_threaded_irq(i32 noundef %call14, ptr noundef nonnull @ingenic_ost_cevt_cb, ptr noundef null, i32 noundef 82432, ptr noundef %name, ptr noundef %cevt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool22.not = icmp eq i32 %call.i66, 0
  br i1 %tobool22.not, label %if.end24, label %err_irq_dispose_mapping

if.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %10 = call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %rem.i = and i32 %13, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %13, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %cpumask = getelementptr inbounds %struct.ingenic_ost, ptr %ost, i32 0, i32 6, i32 25
  %14 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %cpumask, align 4
  %features = getelementptr inbounds %struct.ingenic_ost, ptr %ost, i32 0, i32 6, i32 9
  %15 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %features, align 4
  %name32 = getelementptr inbounds %struct.ingenic_ost, ptr %ost, i32 0, i32 6, i32 21
  %16 = ptrtoint ptr %name32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %name, ptr %name32, align 4
  %rating = getelementptr inbounds %struct.ingenic_ost, ptr %ost, i32 0, i32 6, i32 22
  %17 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 400, ptr %rating, align 8
  %set_state_shutdown = getelementptr inbounds %struct.ingenic_ost, ptr %ost, i32 0, i32 6, i32 14
  %18 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ingenic_ost_cevt_set_state_shutdown, ptr %set_state_shutdown, align 8
  %set_next_event = getelementptr inbounds %struct.ingenic_ost, ptr %ost, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ingenic_ost_cevt_set_next, ptr %set_next_event, align 4
  call void @clockevents_config_and_register(ptr noundef %cevt, i32 noundef %call10, i32 noundef 4, i32 noundef -1) #10
  br label %cleanup

err_irq_dispose_mapping:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  call void @irq_dispose_mapping(i32 noundef %call14) #10
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %err_irq_dispose_mapping, %if.end13.err_clk_disable_crit_edge, %if.end8.err_clk_disable_crit_edge
  %err.0 = phi i32 [ %call.i66, %err_irq_dispose_mapping ], [ -22, %if.end8.err_clk_disable_crit_edge ], [ -22, %if.end13.err_clk_disable_crit_edge ]
  %20 = ptrtoint ptr %percpu_timer_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %percpu_timer_clk, align 4
  call void @clk_disable(ptr noundef %21) #10
  br label %err_clk_put.sink.split

err_clk_put.sink.split:                           ; preds = %err_clk_disable, %if.end.i.err_clk_put.sink.split_crit_edge
  %call.i.sink = phi ptr [ %21, %err_clk_disable ], [ %call.i, %if.end.i.err_clk_put.sink.split_crit_edge ]
  %err.1.ph = phi i32 [ %err.0, %err_clk_disable ], [ %call1.i, %if.end.i.err_clk_put.sink.split_crit_edge ]
  call void @clk_unprepare(ptr noundef %call.i.sink) #10
  br label %err_clk_put

err_clk_put:                                      ; preds = %err_clk_put.sink.split, %if.end.err_clk_put_crit_edge
  %err.1 = phi i32 [ %call.i65, %if.end.err_clk_put_crit_edge ], [ %err.1.ph, %err_clk_put.sink.split ]
  %22 = ptrtoint ptr %percpu_timer_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %percpu_timer_clk, align 4
  call void @clk_put(ptr noundef %23) #10
  br label %cleanup

cleanup:                                          ; preds = %err_clk_put, %if.end24, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %err.1, %err_clk_put ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ingenic_ost_global_timer_read_cntl() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @ingenic_ost, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 128
  %add.ptr = getelementptr i8, ptr %2, i32 32
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !74
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %conv = zext i32 %4 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ingenic_ost_register_clock(ptr noundef %ost, i32 noundef %idx, ptr noundef %info, ptr nocapture noundef writeonly %clocks) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %init = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %info, ptr %init, align 8
  %idx1 = getelementptr inbounds %struct.ingenic_ost_clk, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %idx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %idx, ptr %idx1, align 4
  %info2 = getelementptr inbounds %struct.ingenic_ost_clk, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %info2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %info, ptr %info2, align 4
  %ost3 = getelementptr inbounds %struct.ingenic_ost_clk, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %ost3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ost, ptr %ost3, align 8
  %5 = ptrtoint ptr %ost to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ost, align 128
  %ostccr_reg = getelementptr inbounds %struct.ingenic_ost_clk_info, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %ostccr_reg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ostccr_reg, align 4
  %conv = zext i8 %8 to i32
  %add.ptr = getelementptr i8, ptr %6, i32 %conv
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  %10 = and i32 %9, -251658241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !77
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %ost to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ost, align 128
  %13 = ptrtoint ptr %ostccr_reg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ostccr_reg, align 4
  %conv8 = zext i8 %14 to i32
  %add.ptr9 = getelementptr i8, ptr %12, i32 %conv8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #10, !srcloc !72
  %call11 = tail call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %clocks, i32 0, i32 1, i32 %idx
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then13 ], [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_ost_global_timer_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ingenic_ost_clk, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %ost = getelementptr inbounds %struct.ingenic_ost_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %ost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ost, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %ostccr_reg = getelementptr inbounds %struct.ingenic_ost_clk_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ostccr_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ostccr_reg, align 4
  %conv = zext i8 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !78
  %9 = lshr i32 %8, 25
  %mul = and i32 %9, 6
  %shr17 = lshr i32 %parent_rate, %mul
  ret i32 %shr17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ingenic_ost_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %req_rate, ptr nocapture noundef readonly %parent_rate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %req_rate)
  %cmp = icmp ult i32 %1, %req_rate
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %req_rate)
  %cmp3.not.i = icmp ugt i32 %1, %req_rate
  %shr.1.i = lshr i32 %1, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %req_rate)
  %cmp3.not.1.i = icmp ugt i32 %shr.1.i, %req_rate
  %2 = select i1 %cmp3.not.1.i, i32 4, i32 2
  %conv = select i1 %cmp3.not.i, i32 %2, i32 0
  %shr = lshr i32 %1, %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end ], [ %1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_ost_global_timer_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %req_rate, i32 noundef %parent_rate) #4 align 64 {
do.end18:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ingenic_ost_clk, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %parent_rate, i32 %req_rate)
  %cmp3.not.i = icmp ugt i32 %parent_rate, %req_rate
  %shr.1.i = lshr i32 %parent_rate, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %req_rate)
  %cmp3.not.1.i = icmp ugt i32 %shr.1.i, %req_rate
  %ost = getelementptr inbounds %struct.ingenic_ost_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %ost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ost, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %ostccr_reg = getelementptr inbounds %struct.ingenic_ost_clk_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ostccr_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ostccr_reg, align 4
  %conv = zext i8 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  %9 = and i32 %8, -201326593
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = select i1 %cmp3.not.1.i, i32 8, i32 4
  %conv20 = select i1 %cmp3.not.i, i32 %11, i32 0
  %or = or i32 %10, %conv20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %ost to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ost, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 128
  %17 = ptrtoint ptr %ostccr_reg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ostccr_reg, align 4
  %conv28 = zext i8 %18 to i32
  %add.ptr29 = getelementptr i8, ptr %16, i32 %conv28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %12) #10, !srcloc !72
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_ost_percpu_timer_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ingenic_ost_clk, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %ost = getelementptr inbounds %struct.ingenic_ost_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %ost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ost, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %ostccr_reg = getelementptr inbounds %struct.ingenic_ost_clk_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ostccr_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ostccr_reg, align 4
  %conv = zext i8 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !81
  %9 = lshr i32 %8, 23
  %mul = and i32 %9, 6
  %shr17 = lshr i32 %parent_rate, %mul
  ret i32 %shr17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_ost_percpu_timer_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %req_rate, i32 noundef %parent_rate) #4 align 64 {
do.end18:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ingenic_ost_clk, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %parent_rate, i32 %req_rate)
  %cmp3.not.i = icmp ugt i32 %parent_rate, %req_rate
  %shr.1.i = lshr i32 %parent_rate, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %req_rate)
  %cmp3.not.1.i = icmp ugt i32 %shr.1.i, %req_rate
  %ost = getelementptr inbounds %struct.ingenic_ost_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %ost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ost, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %ostccr_reg = getelementptr inbounds %struct.ingenic_ost_clk_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ostccr_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ostccr_reg, align 4
  %conv = zext i8 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  %9 = and i32 %8, -50331649
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = select i1 %cmp3.not.1.i, i32 2, i32 1
  %and21 = select i1 %cmp3.not.i, i32 %11, i32 0
  %or = or i32 %10, %and21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !83
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %ost to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ost, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 128
  %17 = ptrtoint ptr %ostccr_reg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ostccr_reg, align 4
  %conv28 = zext i8 %18 to i32
  %add.ptr29 = getelementptr i8, ptr %16, i32 %conv28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %12) #10, !srcloc !72
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ingenic_ost_clocksource_read(ptr nocapture noundef readnone %cs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @ingenic_ost, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 128
  %add.ptr.i = getelementptr i8, ptr %2, i32 32
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !74
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %conv.i = zext i32 %4 to i64
  ret i64 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_ost_cevt_cb(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !84
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #10, !srcloc !72
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 128
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3(ptr noundef %dev_id) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_ost_cevt_set_state_shutdown(ptr nocapture noundef readonly %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %evt, i32 -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #10, !srcloc !72
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_ost_cevt_set_next(i32 noundef %next, ptr nocapture noundef readonly %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %evt, i32 -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16777217) #10, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %next)
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr5 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %2) #10, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr10 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 16777216) #10, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr15 = getelementptr i8, ptr %8, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 16777216) #10, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr20 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 -16777217) #10, !srcloc !72
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__of_table_x1000_ost, !1, !"__of_table_x1000_ost", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 540, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 505, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ingenic_ost_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ingenic_ost_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 517, i32 3}
!10 = !{ptr @ingenic_ost_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ingenic_ost_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 436, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ingenic_ost_probe._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @ingenic_ost_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 441, i32 36}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 444, i32 3}
!21 = !{ptr @ingenic_ost_probe._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @ingenic_ost_probe._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 450, i32 3}
!25 = !{ptr @ingenic_ost_probe._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ingenic_ost_probe._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 468, i32 4}
!29 = !{ptr @ingenic_ost_probe._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ingenic_ost_probe._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 475, i32 3}
!33 = !{ptr @ingenic_ost_probe._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ingenic_ost_probe._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @ingenic_ost_of_matches, !36, !"ingenic_ost_of_matches", i1 false, i1 false}
!36 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 418, i32 49}
!37 = !{ptr @x1000_soc_info, !38, !"x1000_soc_info", i1 false, i1 false}
!38 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 414, i32 38}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/of.h", i32 261, i32 30}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 204, i32 12}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 193, i32 12}
!45 = !{ptr @x1000_ost_clk_info, !46, !"x1000_ost_clk_info", i1 false, i1 false}
!46 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 190, i32 42}
!47 = !{ptr @ingenic_ost_global_timer_ops, !48, !"ingenic_ost_global_timer_ops", i1 false, i1 false}
!48 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 182, i32 29}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 188, i32 57}
!51 = !{ptr @ingenic_ost_clk_parents, !52, !"ingenic_ost_clk_parents", i1 false, i1 false}
!52 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 188, i32 27}
!53 = !{ptr @ingenic_ost_percpu_timer_ops, !54, !"ingenic_ost_percpu_timer_ops", i1 false, i1 false}
!54 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 176, i32 29}
!55 = !{ptr @ingenic_ost, !56, !"ingenic_ost", i1 false, i1 false}
!56 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 84, i32 28}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 395, i32 13}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clocksource/ingenic-sysost.c", i32 340, i32 41}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2152961751}
!72 = !{i64 4108860}
!73 = !{i64 2152962321}
!74 = !{i64 4109278}
!75 = !{i64 2152954046}
!76 = !{i64 2152960192}
!77 = !{i64 2152960425}
!78 = !{i64 2152910148}
!79 = !{i64 2152938512}
!80 = !{i64 2152952168}
!81 = !{i64 2152896201}
!82 = !{i64 2152924095}
!83 = !{i64 2152937751}
!84 = !{i64 2152959040}
!85 = !{i64 2152955738}
!86 = !{i64 2152956315}
!87 = !{i64 2152956801}
!88 = !{i64 2152957302}
!89 = !{i64 2152957872}
!90 = !{i64 2152958449}
