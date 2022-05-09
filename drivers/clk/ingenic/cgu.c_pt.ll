; ModuleID = '/llk/IR_all_yes/drivers/clk/ingenic/cgu.c_pt.bc'
source_filename = "../drivers/clk/ingenic/cgu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ingenic_cgu = type { ptr, ptr, ptr, %struct.clk_onecell_data, %struct.spinlock }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ingenic_cgu_clk_info = type { ptr, i32, [4 x i32], %union.anon.41 }
%union.anon.41 = type { %struct.ingenic_cgu_pll_info }
%struct.ingenic_cgu_pll_info = type { i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ingenic_clk = type { %struct.clk_hw, ptr, i32 }
%struct.ingenic_cgu_gate_info = type { i32, i8, i8, i16 }
%struct.ingenic_cgu_div_info = type { i32, i8, i8, i8, i8, i8, i8, i8, ptr }

@ingenic_cgu_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: failed to map CGU registers\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ingenic_cgu_new\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/ingenic/cgu.c\00", [38 x i8] zeroinitializer }, align 32
@ingenic_cgu_new._entry_ptr = internal global ptr @ingenic_cgu_new._entry, section ".printk_index", align 4
@ingenic_cgu_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cgu->lock\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ingenic_register_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: no external clock '%s' provided\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ingenic_register_clock\00", [41 x i8] zeroinitializer }, align 32
@ingenic_register_clock._entry_ptr = internal global ptr @ingenic_register_clock._entry, section ".printk_index", align 4
@ingenic_register_clock._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: no clock type specified for '%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@ingenic_register_clock._entry_ptr.8 = internal global ptr @ingenic_register_clock._entry.6, section ".printk_index", align 4
@ingenic_register_clock._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: custom clock may not be combined with type 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@ingenic_register_clock._entry_ptr.11 = internal global ptr @ingenic_register_clock._entry.9, section ".printk_index", align 4
@ingenic_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ingenic_pll_enable, ptr @ingenic_pll_disable, ptr @ingenic_pll_is_enabled, ptr null, ptr null, ptr null, ptr @ingenic_pll_recalc_rate, ptr @ingenic_pll_round_rate, ptr null, ptr null, ptr null, ptr @ingenic_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ingenic_register_clock._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: PLL may not be combined with type 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@ingenic_register_clock._entry_ptr.14 = internal global ptr @ingenic_register_clock._entry.12, section ".printk_index", align 4
@ingenic_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ingenic_clk_enable, ptr @ingenic_clk_disable, ptr @ingenic_clk_is_enabled, ptr null, ptr null, ptr null, ptr @ingenic_clk_recalc_rate, ptr @ingenic_clk_round_rate, ptr null, ptr @ingenic_clk_set_parent, ptr @ingenic_clk_get_parent, ptr @ingenic_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ingenic_register_clock._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: unknown clock type 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@ingenic_register_clock._entry_ptr.17 = internal global ptr @ingenic_register_clock._entry.15, section ".printk_index", align 4
@ingenic_register_clock._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to register clock '%s'\0A\00", [59 x i8] zeroinitializer }, align 32
@ingenic_register_clock._entry_ptr.20 = internal global ptr @ingenic_register_clock._entry.18, section ".printk_index", align 4
@ingenic_pll_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016ingenic-cgu: request '%s' rate %luHz, actual %luHz\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ingenic_pll_set_rate\00", [43 x i8] zeroinitializer }, align 32
@ingenic_pll_set_rate._entry_ptr = internal global ptr @ingenic_pll_set_rate._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 772, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 780, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 632, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 647, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 708, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"ingenic_pll_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 294, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 718, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"ingenic_clk_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 600, i32 29 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 737, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 743, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [29 x i8] c"../drivers/clk/ingenic/cgu.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 206, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @ingenic_cgu_new._entry, ptr @ingenic_cgu_new._entry_ptr, ptr @ingenic_pll_set_rate._entry, ptr @ingenic_pll_set_rate._entry_ptr, ptr @ingenic_register_clock._entry, ptr @ingenic_register_clock._entry.12, ptr @ingenic_register_clock._entry.15, ptr @ingenic_register_clock._entry.18, ptr @ingenic_register_clock._entry.6, ptr @ingenic_register_clock._entry.9, ptr @ingenic_register_clock._entry_ptr, ptr @ingenic_register_clock._entry_ptr.11, ptr @ingenic_register_clock._entry_ptr.14, ptr @ingenic_register_clock._entry_ptr.17, ptr @ingenic_register_clock._entry_ptr.20, ptr @ingenic_register_clock._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ingenic_cgu_new.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @ingenic_pll_ops, ptr @.str.13, ptr @ingenic_clk_ops, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_cgu_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_cgu_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_register_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_register_clock._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_register_clock._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_register_clock._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_register_clock._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_register_clock._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_pll_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ingenic_cgu_new(ptr noundef %clock_info, i32 noundef %num_clocks, ptr noundef %np) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %base, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %np, ptr %call7.i.i, align 8
  %clock_info8 = getelementptr inbounds %struct.ingenic_cgu, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %clock_info8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %clock_info, ptr %clock_info8, align 8
  %clk_num = getelementptr inbounds %struct.ingenic_cgu, ptr %call7.i.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %num_clocks, ptr %clk_num, align 8
  %lock = getelementptr inbounds %struct.ingenic_cgu, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @ingenic_cgu_new.__key, i16 noundef signext 3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end6 ], [ null, %entry.cleanup_crit_edge ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ingenic_cgu_register_clocks(ptr noundef %cgu) local_unnamed_addr #0 align 64 {
entry:
  %clk_init.i = alloca %struct.clk_init_data, align 4
  %parent_names.i = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.ingenic_cgu, ptr %cgu, i32 0, i32 3
  %clk_num = getelementptr inbounds %struct.ingenic_cgu, ptr %cgu, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_num, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #7
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !52

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %clocks, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #12
  %6 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %clocks, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %7 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp93.not = icmp eq i32 %8, 0
  br i1 %cmp93.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %clock_info.i = getelementptr inbounds %struct.ingenic_cgu, ptr %cgu, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %clk_init.i, i32 0, i32 6
  %parent_names32.i = getelementptr inbounds %struct.clk_init_data, ptr %clk_init.i, i32 0, i32 2
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %clk_init.i, i32 0, i32 5
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %clk_init.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %ingenic_register_clock.exit.thread.for.body_crit_edge, %for.body.lr.ph
  %i.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ingenic_register_clock.exit.thread.for.body_crit_edge ]
  %9 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clock_info.i, align 4
  %arrayidx.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %10, i32 %i.094
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %clk_init.i) #7
  %11 = call ptr @memset(ptr %clk_init.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parent_names.i) #7
  %type.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %10, i32 %i.094, i32 1
  %12 = call ptr @memset(ptr %parent_names.i, i32 255, i32 16)
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.end23.i [
    i32 1, label %if.then.i
    i32 0, label %do.end19.i
  ]

if.then.i:                                        ; preds = %for.body
  %16 = ptrtoint ptr %cgu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cgu, align 4
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call ptr @of_clk_get_by_name(ptr noundef %17, ptr noundef %19) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  br i1 %cmp.i.i, label %do.end5.i, label %if.end.i

do.end5.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %21) #11
  br label %ingenic_register_clock.exit.thread69

if.end.i:                                         ; preds = %if.then.i
  %call9.i = call i32 @clk_register_clkdev(ptr noundef %call.i, ptr noundef %21, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.end.i.ingenic_register_clock.exit.thread_crit_edge, label %if.then10.i

if.end.i.ingenic_register_clock.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_register_clock.exit.thread

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_put(ptr noundef %call.i) #7
  br label %ingenic_register_clock.exit.thread69

do.end19.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef %23) #11
  br label %ingenic_register_clock.exit.thread69

if.end23.i:                                       ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i63 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 20) #10
  %tobool25.not.i = icmp eq ptr %call7.i.i.i63, null
  br i1 %tobool25.not.i, label %if.end23.i.ingenic_register_clock.exit.thread69_crit_edge, label %if.end27.i

if.end23.i.ingenic_register_clock.exit.thread69_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_register_clock.exit.thread69

if.end27.i:                                       ; preds = %if.end23.i
  %init.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i63, i32 0, i32 2
  %25 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %clk_init.i, ptr %init.i, align 8
  %cgu28.i = getelementptr inbounds %struct.ingenic_clk, ptr %call7.i.i.i63, i32 0, i32 1
  %26 = ptrtoint ptr %cgu28.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cgu, ptr %cgu28.i, align 4
  %idx29.i = getelementptr inbounds %struct.ingenic_clk, ptr %call7.i.i.i63, i32 0, i32 2
  %27 = ptrtoint ptr %idx29.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.094, ptr %idx29.i, align 8
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %clk_init.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %clk_init.i, align 4
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %flags.i, align 4
  %32 = ptrtoint ptr %parent_names32.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %parent_names.i, ptr %parent_names32.i, align 4
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i, align 4
  %and.i = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool34.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool34.not.i, label %if.else.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %and36.i = and i32 %34, -33
  br label %if.end42.i

if.else.i:                                        ; preds = %if.end27.i
  %and37.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %if.else.i.if.end42.i_crit_edge

if.else.i.if.end42.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then39.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %flags.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then39.i, %if.else.i.if.end42.i_crit_edge, %if.then35.i
  %caps.0.i = phi i32 [ %and36.i, %if.then35.i ], [ %34, %if.else.i.if.end42.i_crit_edge ], [ %34, %if.then39.i ]
  %and43.i = and i32 %caps.0.i, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %do.body106.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end42.i
  %36 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %num_parents.i, align 4
  %and46.i = and i32 %caps.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.then45.i.if.end50.i_crit_edge, label %if.then48.i

if.then45.i.if.end50.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

if.then48.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  %bits.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %10, i32 %i.094, i32 3, i32 0, i32 4
  %37 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bits.i, align 1
  %conv.i = zext i8 %38 to i32
  %shl.i = shl nuw i32 1, %conv.i
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then48.i, %if.then45.i.if.end50.i_crit_edge
  %num_possible.0.i = phi i32 [ %shl.i, %if.then48.i ], [ 4, %if.then45.i.if.end50.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end50.i
  %i.0296.i = phi i32 [ 0, %if.end50.i ], [ %inc67.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx53.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %10, i32 %i.094, i32 2, i32 %i.0296.i
  %39 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp54.i = icmp eq i32 %40, -1
  br i1 %cmp54.i, label %for.body.i.for.inc.i_crit_edge, label %if.end57.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end57.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clocks, align 4
  %arrayidx62.i = getelementptr ptr, ptr %42, i32 %40
  %43 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx62.i, align 4
  %call63.i = call ptr @__clk_get_name(ptr noundef %44) #7
  %45 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_parents.i, align 4
  %idxprom.i = zext i8 %46 to i32
  %arrayidx65.i = getelementptr [4 x ptr], ptr %parent_names.i, i32 0, i32 %idxprom.i
  %47 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call63.i, ptr %arrayidx65.i, align 4
  %inc.i = add i8 %46, 1
  store i8 %inc.i, ptr %num_parents.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end57.i, %for.body.i.for.inc.i_crit_edge
  %inc67.i = add nuw i32 %i.0296.i, 1
  %exitcond.not.i = icmp eq i32 %inc67.i, %num_possible.0.i
  br i1 %exitcond.not.i, label %do.body68.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.body68.i:                                      ; preds = %for.inc.i
  %48 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num_parents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool70.not.i = icmp eq i8 %49, 0
  br i1 %tobool70.not.i, label %do.body75.i, label %do.body84.i, !prof !52

do.body75.i:                                      ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/ingenic/cgu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 693, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

do.body84.i:                                      ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %49)
  %cmp87.i = icmp ugt i8 %49, 4
  br i1 %cmp87.i, label %do.body96.i, label %do.body84.i.if.end135.i_crit_edge, !prof !52

do.body84.i.if.end135.i_crit_edge:                ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135.i

do.body96.i:                                      ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/ingenic/cgu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 694, 0\0A.popsection", ""() #7, !srcloc !54
  unreachable

do.body106.i:                                     ; preds = %if.end42.i
  %parents107.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %10, i32 %i.094, i32 2
  %50 = ptrtoint ptr %parents107.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %parents107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp109.i = icmp eq i32 %51, -1
  br i1 %cmp109.i, label %do.body118.i, label %do.end126.i, !prof !52

do.body118.i:                                     ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/ingenic/cgu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 696, 0\0A.popsection", ""() #7, !srcloc !55
  unreachable

do.end126.i:                                      ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %num_parents.i, align 4
  %53 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clocks, align 4
  %55 = ptrtoint ptr %parents107.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %parents107.i, align 4
  %arrayidx132.i = getelementptr ptr, ptr %54, i32 %56
  %57 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx132.i, align 4
  %call133.i = call ptr @__clk_get_name(ptr noundef %58) #7
  %59 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call133.i, ptr %parent_names.i, align 4
  br label %if.end135.i

if.end135.i:                                      ; preds = %do.end126.i, %do.body84.i.if.end135.i_crit_edge
  %and136.i = and i32 %caps.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i)
  %tobool137.not.i = icmp eq i32 %and136.i, 0
  br i1 %tobool137.not.i, label %if.else148.i, label %if.then138.i

if.then138.i:                                     ; preds = %if.end135.i
  %60 = getelementptr %struct.ingenic_cgu_clk_info, ptr %10, i32 %i.094, i32 3
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %ops.i, align 4
  %and139.i = and i32 %caps.0.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i)
  %tobool140.not.i = icmp eq i32 %and139.i, 0
  br i1 %tobool140.not.i, label %if.then138.i.if.end185.i_crit_edge, label %do.end144.i

if.then138.i.if.end185.i_crit_edge:               ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185.i

do.end144.i:                                      ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #9
  %call146.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef %and139.i) #11
  br label %ingenic_register_clock.exit.thread69

if.else148.i:                                     ; preds = %if.end135.i
  %and149.i = and i32 %caps.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  br i1 %tobool150.not.i, label %if.end165.i, label %if.then151.i

if.then151.i:                                     ; preds = %if.else148.i
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @ingenic_pll_ops, ptr %ops.i, align 4
  %and153.i = and i32 %caps.0.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153.i)
  %tobool154.not.i = icmp eq i32 %and153.i, 0
  br i1 %tobool154.not.i, label %if.then151.i.if.end185.i_crit_edge, label %do.end158.i

if.then151.i.if.end185.i_crit_edge:               ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185.i

do.end158.i:                                      ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #9
  %call160.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, i32 noundef %and153.i) #11
  br label %ingenic_register_clock.exit.thread69

if.end165.i:                                      ; preds = %if.else148.i
  %65 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @ingenic_clk_ops, ptr %ops.i, align 4
  %and166.i = and i32 %caps.0.i, -69
  %and167.i = and i32 %caps.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167.i)
  %tobool168.not.i = icmp eq i32 %and167.i, 0
  br i1 %tobool168.not.i, label %if.end165.i.if.end177.i_crit_edge, label %if.then169.i

if.end165.i.if.end177.i_crit_edge:                ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end177.i

if.then169.i:                                     ; preds = %if.end165.i
  %and170.i = and i32 %caps.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.i)
  %tobool171.not.i = icmp eq i32 %and170.i, 0
  br i1 %tobool171.not.i, label %if.then172.i, label %if.then169.i.if.end175.i_crit_edge

if.then169.i.if.end175.i_crit_edge:               ; preds = %if.then169.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175.i

if.then172.i:                                     ; preds = %if.then169.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i, align 4
  %or174.i = or i32 %67, 2
  store i32 %or174.i, ptr %flags.i, align 4
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.then172.i, %if.then169.i.if.end175.i_crit_edge
  %and176.i = and i32 %caps.0.i, -93
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.end175.i, %if.end165.i.if.end177.i_crit_edge
  %caps.2.i = phi i32 [ %and176.i, %if.end175.i ], [ %and166.i, %if.end165.i.if.end177.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %caps.2.i)
  %tobool178.not.i = icmp eq i32 %caps.2.i, 0
  br i1 %tobool178.not.i, label %if.end177.i.if.end185.i_crit_edge, label %do.end182.i

if.end177.i.if.end185.i_crit_edge:                ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185.i

do.end182.i:                                      ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #9
  %call184.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef %caps.2.i) #11
  br label %ingenic_register_clock.exit.thread69

if.end185.i:                                      ; preds = %if.end177.i.if.end185.i_crit_edge, %if.then151.i.if.end185.i_crit_edge, %if.then138.i.if.end185.i_crit_edge
  %call187.i = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i63) #7
  %cmp.i280.i = icmp ugt ptr %call187.i, inttoptr (i32 -4096 to ptr)
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i, align 4
  br i1 %cmp.i280.i, label %ingenic_register_clock.exit, label %if.end197.i

if.end197.i:                                      ; preds = %if.end185.i
  %call199.i = call i32 @clk_register_clkdev(ptr noundef %call187.i, ptr noundef %69, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199.i)
  %tobool200.not.i = icmp eq i32 %call199.i, 0
  br i1 %tobool200.not.i, label %if.end197.i.ingenic_register_clock.exit.thread_crit_edge, label %if.end197.i.ingenic_register_clock.exit.thread69_crit_edge

if.end197.i.ingenic_register_clock.exit.thread69_crit_edge: ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_register_clock.exit.thread69

if.end197.i.ingenic_register_clock.exit.thread_crit_edge: ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_register_clock.exit.thread

ingenic_register_clock.exit.thread:               ; preds = %if.end197.i.ingenic_register_clock.exit.thread_crit_edge, %if.end.i.ingenic_register_clock.exit.thread_crit_edge
  %call.i.sink = phi ptr [ %call.i, %if.end.i.ingenic_register_clock.exit.thread_crit_edge ], [ %call187.i, %if.end197.i.ingenic_register_clock.exit.thread_crit_edge ]
  %70 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clocks, align 4
  %arrayidx12.i = getelementptr ptr, ptr %71, i32 %i.094
  %72 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i.sink, ptr %arrayidx12.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parent_names.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %clk_init.i) #7
  %inc = add nuw i32 %i.094, 1
  %73 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %clk_num, align 4
  %cmp = icmp ult i32 %inc, %74
  br i1 %cmp, label %ingenic_register_clock.exit.thread.for.body_crit_edge, label %ingenic_register_clock.exit.thread.for.end_crit_edge

ingenic_register_clock.exit.thread.for.end_crit_edge: ; preds = %ingenic_register_clock.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

ingenic_register_clock.exit.thread.for.body_crit_edge: ; preds = %ingenic_register_clock.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

ingenic_register_clock.exit.thread69:             ; preds = %if.end197.i.ingenic_register_clock.exit.thread69_crit_edge, %do.end182.i, %do.end158.i, %do.end144.i, %if.end23.i.ingenic_register_clock.exit.thread69_crit_edge, %do.end19.i, %if.then10.i, %do.end5.i
  %ingenic_clk.0291.i.ph = phi ptr [ null, %do.end5.i ], [ null, %if.then10.i ], [ %call7.i.i.i63, %do.end144.i ], [ %call7.i.i.i63, %do.end182.i ], [ %call7.i.i.i63, %do.end158.i ], [ null, %do.end19.i ], [ null, %if.end23.i.ingenic_register_clock.exit.thread69_crit_edge ], [ %call7.i.i.i63, %if.end197.i.ingenic_register_clock.exit.thread69_crit_edge ]
  %err.0290.i.ph = phi i32 [ -19, %do.end5.i ], [ %call9.i, %if.then10.i ], [ -22, %do.end144.i ], [ -22, %do.end182.i ], [ -22, %do.end158.i ], [ -22, %do.end19.i ], [ -12, %if.end23.i.ingenic_register_clock.exit.thread69_crit_edge ], [ %call199.i, %if.end197.i.ingenic_register_clock.exit.thread69_crit_edge ]
  call void @kfree(ptr noundef %ingenic_clk.0291.i.ph) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parent_names.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %clk_init.i) #7
  br label %err_out_unregister

ingenic_register_clock.exit:                      ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #9
  %call195.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.5, ptr noundef %69) #11
  %75 = ptrtoint ptr %call187.i to i32
  call void @kfree(ptr noundef nonnull %call7.i.i.i63) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parent_names.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %clk_init.i) #7
  br label %err_out_unregister

for.end:                                          ; preds = %ingenic_register_clock.exit.thread.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %76 = ptrtoint ptr %cgu to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cgu, align 4
  %call11 = call i32 @of_clk_add_provider(ptr noundef %77, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %clocks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.end.cleanup_crit_edge, label %for.end.err_out_unregister_crit_edge

for.end.err_out_unregister_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_unregister

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_out_unregister:                               ; preds = %for.end.err_out_unregister_crit_edge, %ingenic_register_clock.exit, %ingenic_register_clock.exit.thread69
  %err.0 = phi i32 [ %75, %ingenic_register_clock.exit ], [ %call11, %for.end.err_out_unregister_crit_edge ], [ %err.0290.i.ph, %ingenic_register_clock.exit.thread69 ]
  %78 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %clk_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp1897.not = icmp eq i32 %79, 0
  br i1 %cmp1897.not, label %err_out_unregister.for.end37_crit_edge, label %for.body19.lr.ph

err_out_unregister.for.end37_crit_edge:           ; preds = %err_out_unregister
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37

for.body19.lr.ph:                                 ; preds = %err_out_unregister
  %clock_info = getelementptr inbounds %struct.ingenic_cgu, ptr %cgu, i32 0, i32 2
  br label %for.body19

for.body19:                                       ; preds = %for.inc35.for.body19_crit_edge, %for.body19.lr.ph
  %i.198 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc36, %for.inc35.for.body19_crit_edge ]
  %80 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clocks, align 4
  %arrayidx = getelementptr ptr, ptr %81, i32 %i.198
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx, align 4
  %tobool22.not = icmp eq ptr %83, null
  br i1 %tobool22.not, label %for.body19.for.inc35_crit_edge, label %if.end24

for.body19.for.inc35_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc35

if.end24:                                         ; preds = %for.body19
  %84 = ptrtoint ptr %clock_info to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %clock_info, align 4
  %type = getelementptr %struct.ingenic_cgu_clk_info, ptr %85, i32 %i.198, i32 1
  %86 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %type, align 4
  %and = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_put(ptr noundef nonnull %83) #7
  br label %for.inc35

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unregister(ptr noundef nonnull %83) #7
  br label %for.inc35

for.inc35:                                        ; preds = %if.else, %if.then27, %for.body19.for.inc35_crit_edge
  %inc36 = add nuw i32 %i.198, 1
  %88 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %clk_num, align 4
  %cmp18 = icmp ult i32 %inc36, %89
  br i1 %cmp18, label %for.inc35.for.body19_crit_edge, label %for.inc35.for.end37_crit_edge

for.inc35.for.end37_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37

for.inc35.for.body19_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19

for.end37:                                        ; preds = %for.inc35.for.end37_crit_edge, %err_out_unregister.for.end37_crit_edge
  %90 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %clocks, align 4
  call void @kfree(ptr noundef %91) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end37, %for.end.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ %err.0, %for.end37 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_pll_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu1 = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu1, align 4
  %clock_info.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_info.i, align 4
  %idx.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %lock = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %bypass_bit = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 13
  %6 = ptrtoint ptr %bypass_bit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bypass_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp9 = icmp sgt i8 %7, -1
  br i1 %cmp9, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %bypass_reg = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 12
  %10 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bypass_reg, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !56
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %14 = ptrtoint ptr %bypass_bit to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bypass_bit, align 4
  %conv1657 = zext i8 %15 to i32
  %shl = shl nuw i32 1, %conv1657
  %neg = xor i32 %shl, -1
  %and = and i32 %13, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %and)
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %19 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bypass_reg, align 4
  %add.ptr22 = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %16) #7, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %21 = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3
  %base25 = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %base25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base25, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  %add.ptr26 = getelementptr i8, ptr %23, i32 %25
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #7, !srcloc !56
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %enable_bit = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 14
  %28 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %enable_bit, align 1
  %conv30 = zext i8 %29 to i32
  %shl31 = shl nuw i32 1, %conv30
  %or = or i32 %shl31, %27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %or)
  %31 = ptrtoint ptr %base25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base25, align 4
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %21, align 4
  %add.ptr37 = getelementptr i8, ptr %32, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %30) #7, !srcloc !59
  %call.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 100000000
  %stable_bit.i = getelementptr inbounds %struct.ingenic_cgu_pll_info, ptr %21, i32 0, i32 15
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.end
  %35 = ptrtoint ptr %base25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base25, align 4
  %37 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %21, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 %38
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !56
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  %41 = ptrtoint ptr %stable_bit.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %stable_bit.i, align 2
  %conv.i = zext i8 %42 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.ingenic_pll_check_stable.exit_crit_edge

for.cond.i.ingenic_pll_check_stable.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_pll_check_stable.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call13.i = tail call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then17.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %base25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base25, align 4
  %45 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %21, align 4
  %add.ptr22.i = getelementptr i8, ptr %44, i32 %46
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #7, !srcloc !56
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  br label %ingenic_pll_check_stable.exit

ingenic_pll_check_stable.exit:                    ; preds = %if.then17.i, %for.cond.i.ingenic_pll_check_stable.exit_crit_edge
  %ctl.0.i = phi i32 [ %48, %if.then17.i ], [ %40, %for.cond.i.ingenic_pll_check_stable.exit_crit_edge ]
  %49 = ptrtoint ptr %stable_bit.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %stable_bit.i, align 2
  %conv32.i = zext i8 %50 to i32
  %shl33.i = shl nuw i32 1, %conv32.i
  %and34.i = and i32 %shl33.i, %ctl.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  %cond.i = select i1 %tobool35.not.i, i32 -110, i32 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_pll_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu1 = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu1, align 4
  %clock_info.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_info.i, align 4
  %idx.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %6 = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3
  %lock = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !56
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %enable_bit = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 14
  %13 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enable_bit, align 1
  %conv12 = zext i8 %14 to i32
  %shl = shl nuw i32 1, %conv12
  %neg = xor i32 %shl, -1
  %and = and i32 %12, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %and)
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %6, align 4
  %add.ptr18 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %15) #7, !srcloc !59
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_pll_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu1 = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu1, align 4
  %clock_info.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_info.i, align 4
  %idx.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %6 = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %add.ptr2 = getelementptr i8, ptr %8, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !56
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %enable_bit = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 14
  %13 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enable_bit, align 1
  %conv = zext i8 %14 to i32
  %15 = lshr i32 %12, %conv
  %16 = and i32 %15, 1
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu.i, align 4
  %clock_info.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_info.i, align 4
  %idx.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %type = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !67

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/ingenic/cgu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #7, !srcloc !68
  unreachable

do.end8:                                          ; preds = %entry
  %8 = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 %12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !56
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %m_shift = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 3
  %15 = ptrtoint ptr %m_shift to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %m_shift, align 4
  %conv = zext i8 %16 to i32
  %shr = lshr i32 %14, %conv
  %m_bits = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 4
  %17 = ptrtoint ptr %m_bits to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %m_bits, align 1
  %conv13 = zext i8 %18 to i32
  %sub14 = sub nsw i32 32, %conv13
  %shr15 = lshr i32 -1, %sub14
  %and16 = and i32 %shr15, %shr
  %m_offset = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 5
  %19 = ptrtoint ptr %m_offset to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %m_offset, align 2
  %conv17 = zext i8 %20 to i32
  %add18 = add i32 %and16, %conv17
  %n_shift = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 6
  %21 = ptrtoint ptr %n_shift to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %n_shift, align 1
  %conv19 = zext i8 %22 to i32
  %shr20 = lshr i32 %14, %conv19
  %n_bits = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 7
  %23 = ptrtoint ptr %n_bits to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %n_bits, align 4
  %conv21 = zext i8 %24 to i32
  %sub23 = sub nsw i32 32, %conv21
  %shr24 = lshr i32 -1, %sub23
  %and27 = and i32 %shr24, %shr20
  %n_offset = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 8
  %25 = ptrtoint ptr %n_offset to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %n_offset, align 1
  %conv28 = zext i8 %26 to i32
  %add29 = add i32 %and27, %conv28
  %od_shift = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 9
  %27 = ptrtoint ptr %od_shift to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %od_shift, align 2
  %conv30 = zext i8 %28 to i32
  %shr31 = lshr i32 %14, %conv30
  %od_bits = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 10
  %29 = ptrtoint ptr %od_bits to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %od_bits, align 1
  %conv32 = zext i8 %30 to i32
  %sub34 = sub nsw i32 32, %conv32
  %shr35 = lshr i32 -1, %sub34
  %and38 = and i32 %shr35, %shr31
  %bypass_bit = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 13
  %31 = ptrtoint ptr %bypass_bit to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bypass_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %cmp40 = icmp sgt i8 %32, -1
  br i1 %cmp40, label %if.then42, label %do.end8.if.end61_crit_edge

do.end8.if.end61_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then42:                                        ; preds = %do.end8
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %bypass_reg = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 12
  %35 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bypass_reg, align 4
  %add.ptr46 = getelementptr i8, ptr %34, i32 %36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #7, !srcloc !56
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %39 = ptrtoint ptr %bypass_bit to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bypass_bit, align 4
  %conv51138 = zext i8 %40 to i32
  %shl = shl nuw i32 1, %conv51138
  %and52 = and i32 %shl, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then42.if.end61_crit_edge, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42.if.end61_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.end61:                                         ; preds = %if.then42.if.end61_crit_edge, %do.end8.if.end61_crit_edge
  %od_max = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 11
  %41 = ptrtoint ptr %od_max to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %od_max, align 4
  %conv62 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp63142.not = icmp eq i8 %42, 0
  br i1 %cmp63142.not, label %if.end61.do.body70_crit_edge, label %for.body.lr.ph

if.end61.do.body70_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body70

for.body.lr.ph:                                   ; preds = %if.end61
  %od_encoding = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 2
  %43 = ptrtoint ptr %od_encoding to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %od_encoding, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %od.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %44, i32 %od.0143
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx, align 1
  %conv65 = sext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and38, i32 %conv65)
  %cmp66 = icmp eq i32 %and38, %conv65
  br i1 %cmp66, label %for.body.do.body70_crit_edge, label %for.inc

for.body.do.body70_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body70

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %od.0143, 1
  %exitcond.not = icmp eq i32 %inc, %conv62
  br i1 %exitcond.not, label %for.inc.do.body82_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.body82_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body82

do.body70:                                        ; preds = %for.body.do.body70_crit_edge, %if.end61.do.body70_crit_edge
  %od.0.lcssa = phi i32 [ 0, %if.end61.do.body70_crit_edge ], [ %od.0143, %for.body.do.body70_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %od.0.lcssa, i32 %conv62)
  %cmp73 = icmp eq i32 %od.0.lcssa, %conv62
  br i1 %cmp73, label %do.body70.do.body82_crit_edge, label %do.end90, !prof !52

do.body70.do.body82_crit_edge:                    ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body82

do.body82:                                        ; preds = %do.body70.do.body82_crit_edge, %for.inc.do.body82_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/ingenic/cgu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 115, 0\0A.popsection", ""() #7, !srcloc !71
  unreachable

do.end90:                                         ; preds = %do.body70
  %inc91 = add nuw i32 %od.0.lcssa, 1
  %conv92 = zext i32 %parent_rate to i64
  %conv93 = zext i32 %add18 to i64
  %mul = mul nuw i64 %conv93, %conv92
  %rate_multiplier = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 1
  %47 = ptrtoint ptr %rate_multiplier to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rate_multiplier, align 4
  %conv94 = zext i32 %48 to i64
  %mul95 = mul i64 %mul, %conv94
  %mul96 = mul i32 %inc91, %add29
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul95)
  %cmp164.i.i = icmp ult i64 %mul95, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !67

if.then168.i.i:                                   ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %mul95 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul96
  br label %cleanup

if.else174.i.i:                                   ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #9
  %49 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul96, i64 %mul95) #13, !srcloc !72
  %asmresult1.i.i.i = extractvalue { i64, i64 } %49, 1
  %extract.t140 = trunc i64 %asmresult1.i.i.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else174.i.i, %if.then168.i.i, %if.then42.cleanup_crit_edge
  %retval.0 = phi i32 [ %parent_rate, %if.then42.cleanup_crit_edge ], [ %div172.i.i, %if.then168.i.i ], [ %extract.t140, %if.else174.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_pll_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %req_rate, ptr nocapture noundef readonly %prate) #0 align 64 {
entry:
  %m.i = alloca i32, align 4
  %n.i = alloca i32, align 4
  %od.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu.i, align 4
  %clock_info.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_info.i, align 4
  %idx.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %6 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prate, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m.i) #7
  %8 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %m.i, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i) #7
  %9 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %n.i, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %od.i) #7
  %10 = ptrtoint ptr %od.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %od.i, align 4, !annotation !73
  %calc_m_n_od.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 16
  %11 = ptrtoint ptr %calc_m_n_od.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %calc_m_n_od.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3
  call void %12(ptr noundef %13, i32 noundef %req_rate, i32 noundef %7, ptr noundef nonnull %m.i, ptr noundef nonnull %n.i, ptr noundef nonnull %od.i) #7
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div.i.i = udiv i32 %7, 10000000
  %n_bits.i.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 7
  %14 = ptrtoint ptr %n_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %n_bits.i.i, align 4
  %conv.i.i = zext i8 %15 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %16 = tail call i32 @llvm.umin.i32(i32 %div.i.i, i32 %shl.i.i) #7
  %n_offset.i.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 8
  %17 = ptrtoint ptr %n_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %n_offset.i.i, align 1
  %conv2.i.i = zext i8 %18 to i32
  %19 = tail call i32 @llvm.umax.i32(i32 %16, i32 %conv2.i.i) #7
  %div10.i.i = udiv i32 %req_rate, 1000000
  %mul11.i.i = mul nuw nsw i32 %19, %div10.i.i
  %div12.i.i = udiv i32 %7, 1000000
  %div13.i.i = udiv i32 %mul11.i.i, %div12.i.i
  %m_bits.i.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 4
  %20 = ptrtoint ptr %m_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %m_bits.i.i, align 1
  %conv14.i.i = zext i8 %21 to i32
  %shl15.i.i = shl nuw i32 1, %conv14.i.i
  %22 = tail call i32 @llvm.umin.i32(i32 %div13.i.i, i32 %shl15.i.i) #7
  %m_offset.i.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 5
  %23 = ptrtoint ptr %m_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %m_offset.i.i, align 2
  %conv23.i.i = zext i8 %24 to i32
  %25 = tail call i32 @llvm.umax.i32(i32 %22, i32 %conv23.i.i) #7
  %26 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %m.i, align 4
  %27 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %19, ptr %n.i, align 4
  %28 = ptrtoint ptr %od.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %od.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %conv.i = zext i32 %7 to i64
  %29 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %m.i, align 4
  %conv11.i = zext i32 %30 to i64
  %mul.i = mul nuw i64 %conv11.i, %conv.i
  %rate_multiplier.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 1
  %31 = ptrtoint ptr %rate_multiplier.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rate_multiplier.i, align 4
  %conv12.i = zext i32 %32 to i64
  %mul13.i = mul i64 %mul.i, %conv12.i
  %33 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n.i, align 4
  %35 = ptrtoint ptr %od.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %od.i, align 4
  %mul14.i = mul i32 %36, %34
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul13.i)
  %cmp164.i.i.i = icmp ult i64 %mul13.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !67

if.then168.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %mul13.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %mul14.i
  br label %ingenic_pll_calc.exit

if.else174.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul14.i, i64 %mul13.i) #13, !srcloc !72
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %37, 1
  %extract.t27.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %ingenic_pll_calc.exit

ingenic_pll_calc.exit:                            ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t27.i, %if.else174.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %od.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m.i) #7
  ret i32 %dividend.addr.0.i.i.off0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_pll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %req_rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %m.i = alloca i32, align 4
  %n.i = alloca i32, align 4
  %od.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu1 = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu1, align 4
  %clock_info.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_info.i, align 4
  %idx.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %arrayidx.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5
  %6 = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m.i) #7
  %7 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %m.i, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i) #7
  %8 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %n.i, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %od.i) #7
  %9 = ptrtoint ptr %od.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %od.i, align 4, !annotation !73
  %calc_m_n_od.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 16
  %10 = ptrtoint ptr %calc_m_n_od.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %calc_m_n_od.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void %11(ptr noundef %6, i32 noundef %req_rate, i32 noundef %parent_rate, ptr noundef nonnull %m.i, ptr noundef nonnull %n.i, ptr noundef nonnull %od.i) #7
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div.i.i = udiv i32 %parent_rate, 10000000
  %n_bits.i.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 7
  %12 = ptrtoint ptr %n_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %n_bits.i.i, align 4
  %conv.i.i = zext i8 %13 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %14 = tail call i32 @llvm.umin.i32(i32 %div.i.i, i32 %shl.i.i) #7
  %n_offset.i.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 8
  %15 = ptrtoint ptr %n_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %n_offset.i.i, align 1
  %conv2.i.i = zext i8 %16 to i32
  %17 = tail call i32 @llvm.umax.i32(i32 %14, i32 %conv2.i.i) #7
  %div10.i.i = udiv i32 %req_rate, 1000000
  %mul11.i.i = mul nuw nsw i32 %17, %div10.i.i
  %div12.i.i = udiv i32 %parent_rate, 1000000
  %div13.i.i = udiv i32 %mul11.i.i, %div12.i.i
  %m_bits.i.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 4
  %18 = ptrtoint ptr %m_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %m_bits.i.i, align 1
  %conv14.i.i = zext i8 %19 to i32
  %shl15.i.i = shl nuw i32 1, %conv14.i.i
  %20 = tail call i32 @llvm.umin.i32(i32 %div13.i.i, i32 %shl15.i.i) #7
  %m_offset.i.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 5
  %21 = ptrtoint ptr %m_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %m_offset.i.i, align 2
  %conv23.i.i = zext i8 %22 to i32
  %23 = tail call i32 @llvm.umax.i32(i32 %20, i32 %conv23.i.i) #7
  %24 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %m.i, align 4
  %25 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %17, ptr %n.i, align 4
  %26 = ptrtoint ptr %od.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %od.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %27 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %m.i, align 4
  %29 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n.i, align 4
  %31 = ptrtoint ptr %od.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %od.i, align 4
  %conv.i = zext i32 %parent_rate to i64
  %conv11.i = zext i32 %28 to i64
  %mul.i = mul nuw i64 %conv11.i, %conv.i
  %rate_multiplier.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 1
  %33 = ptrtoint ptr %rate_multiplier.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rate_multiplier.i, align 4
  %conv12.i = zext i32 %34 to i64
  %mul13.i = mul i64 %mul.i, %conv12.i
  %mul14.i = mul i32 %32, %30
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul13.i)
  %cmp164.i.i.i = icmp ult i64 %mul13.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !67

if.then168.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %mul13.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %mul14.i
  br label %ingenic_pll_calc.exit

if.else174.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul14.i, i64 %mul13.i) #13, !srcloc !72
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %35, 1
  %extract.t27.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %ingenic_pll_calc.exit

ingenic_pll_calc.exit:                            ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t27.i, %if.else174.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %od.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %dividend.addr.0.i.i.off0.i, i32 %req_rate)
  %cmp.not = icmp eq i32 %dividend.addr.0.i.i.off0.i, %req_rate
  br i1 %cmp.not, label %ingenic_pll_calc.exit.do.body6_crit_edge, label %do.end

ingenic_pll_calc.exit.do.body6_crit_edge:         ; preds = %ingenic_pll_calc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

do.end:                                           ; preds = %ingenic_pll_calc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %37, i32 noundef %req_rate, i32 noundef %dividend.addr.0.i.i.off0.i) #11
  br label %do.body6

do.body6:                                         ; preds = %do.end, %ingenic_pll_calc.exit.do.body6_crit_edge
  %lock = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 4
  %call10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %6, align 4
  %add.ptr15 = getelementptr i8, ptr %39, i32 %41
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #7, !srcloc !56
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %m_bits = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 4
  %44 = ptrtoint ptr %m_bits to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %m_bits, align 1
  %conv19 = zext i8 %45 to i32
  %sub20 = sub nsw i32 32, %conv19
  %shr = lshr i32 -1, %sub20
  %m_shift = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 3
  %46 = ptrtoint ptr %m_shift to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %m_shift, align 4
  %conv21 = zext i8 %47 to i32
  %shl = shl i32 %shr, %conv21
  %neg = xor i32 %shl, -1
  %and22 = and i32 %43, %neg
  %m_offset = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 5
  %48 = ptrtoint ptr %m_offset to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %m_offset, align 2
  %conv23 = zext i8 %49 to i32
  %sub24 = sub i32 %28, %conv23
  %shl27 = shl i32 %sub24, %conv21
  %or = or i32 %and22, %shl27
  %n_bits = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 7
  %50 = ptrtoint ptr %n_bits to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %n_bits, align 4
  %conv28 = zext i8 %51 to i32
  %sub30 = sub nsw i32 32, %conv28
  %shr31 = lshr i32 -1, %sub30
  %n_shift = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 6
  %52 = ptrtoint ptr %n_shift to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %n_shift, align 1
  %conv34 = zext i8 %53 to i32
  %shl35 = shl i32 %shr31, %conv34
  %neg36 = xor i32 %shl35, -1
  %and37 = and i32 %or, %neg36
  %n_offset = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 8
  %54 = ptrtoint ptr %n_offset to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %n_offset, align 1
  %conv38 = zext i8 %55 to i32
  %sub39 = sub i32 %30, %conv38
  %shl42 = shl i32 %sub39, %conv34
  %or43 = or i32 %and37, %shl42
  %od_bits = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 10
  %56 = ptrtoint ptr %od_bits to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %od_bits, align 1
  %conv44 = zext i8 %57 to i32
  %sub46 = sub nsw i32 32, %conv44
  %shr47 = lshr i32 -1, %sub46
  %od_shift = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 9
  %58 = ptrtoint ptr %od_shift to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %od_shift, align 2
  %conv50 = zext i8 %59 to i32
  %shl51 = shl i32 %shr47, %conv50
  %neg52 = xor i32 %shl51, -1
  %and53 = and i32 %or43, %neg52
  %od_encoding = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 2
  %60 = ptrtoint ptr %od_encoding to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %od_encoding, align 4
  %sub54 = add i32 %32, -1
  %arrayidx = getelementptr i8, ptr %61, i32 %sub54
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx, align 1
  %conv55 = sext i8 %63 to i32
  %shl58 = shl i32 %conv55, %conv50
  %or59 = or i32 %and53, %shl58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @arm_heavy_mb() #7
  %64 = call i32 @llvm.bswap.i32(i32 %or59)
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %67 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %6, align 4
  %add.ptr65 = getelementptr i8, ptr %66, i32 %68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %64) #7, !srcloc !59
  %enable_bit = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 14
  %69 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %enable_bit, align 1
  %conv66 = zext i8 %70 to i32
  %shl67 = shl nuw i32 1, %conv66
  %and68 = and i32 %shl67, %or59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool.not = icmp eq i32 %and68, 0
  br i1 %tobool.not, label %do.body6.if.end71_crit_edge, label %if.then69

do.body6.if.end71_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then69:                                        ; preds = %do.body6
  %call.i = call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 100000000
  %stable_bit.i = getelementptr inbounds %struct.ingenic_cgu_pll_info, ptr %6, i32 0, i32 15
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.then69
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %73 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %6, align 4
  %add.ptr.i = getelementptr i8, ptr %72, i32 %74
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !56
  %76 = call i32 @llvm.bswap.i32(i32 %75) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  %77 = ptrtoint ptr %stable_bit.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %stable_bit.i, align 2
  %conv.i105 = zext i8 %78 to i32
  %shl.i = shl nuw i32 1, %conv.i105
  %and.i = and i32 %shl.i, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i106 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i106, label %land.lhs.true.i, label %for.cond.i.ingenic_pll_check_stable.exit_crit_edge

for.cond.i.ingenic_pll_check_stable.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_pll_check_stable.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call13.i = call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then17.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  %81 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %6, align 4
  %add.ptr22.i = getelementptr i8, ptr %80, i32 %82
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #7, !srcloc !56
  %84 = call i32 @llvm.bswap.i32(i32 %83) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  br label %ingenic_pll_check_stable.exit

ingenic_pll_check_stable.exit:                    ; preds = %if.then17.i, %for.cond.i.ingenic_pll_check_stable.exit_crit_edge
  %ctl.0.i = phi i32 [ %84, %if.then17.i ], [ %76, %for.cond.i.ingenic_pll_check_stable.exit_crit_edge ]
  %85 = ptrtoint ptr %stable_bit.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %stable_bit.i, align 2
  %conv32.i = zext i8 %86 to i32
  %shl33.i = shl nuw i32 1, %conv32.i
  %and34.i = and i32 %shl33.i, %ctl.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  %cond.i = select i1 %tobool35.not.i, i32 -110, i32 0
  br label %if.end71

if.end71:                                         ; preds = %ingenic_pll_check_stable.exit, %do.body6.if.end71_crit_edge
  %ret.0 = phi i32 [ %cond.i, %ingenic_pll_check_stable.exit ], [ 0, %do.body6.if.end71_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_clk_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu.i, align 4
  %clock_info.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_info.i, align 4
  %idx.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %type = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %do.body2

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %8 = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3
  %base.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !56
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %clear_to_gate.i = getelementptr inbounds %struct.ingenic_cgu_gate_info, ptr %8, i32 0, i32 2
  %15 = ptrtoint ptr %clear_to_gate.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %clear_to_gate.i, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not.i = icmp eq i8 %16, 0
  %bit6.i = getelementptr inbounds %struct.ingenic_cgu_gate_info, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %bit6.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bit6.i, align 4
  %conv7.i = zext i8 %18 to i32
  %shl8.i = shl nuw i32 1, %conv7.i
  %or.i = or i32 %shl8.i, %14
  %neg.i = xor i32 %shl8.i, -1
  %and.i = and i32 %14, %neg.i
  %clkgr.0.i = select i1 %tobool4.not.i, i32 %and.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %clkgr.0.i) #7
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %8, align 4
  %add.ptr11.i = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %19) #7, !srcloc !59
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  %delay_us = getelementptr inbounds %struct.ingenic_cgu_gate_info, ptr %8, i32 0, i32 3
  %24 = ptrtoint ptr %delay_us to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %delay_us, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool10.not = icmp eq i16 %25, 0
  br i1 %tobool10.not, label %do.body2.if.end28_crit_edge, label %cond.false23

do.body2.if.end28_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

cond.false23:                                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv26 = zext i16 %25 to i32
  tail call void %26(i32 noundef %conv26) #7
  br label %if.end28

if.end28:                                         ; preds = %cond.false23, %do.body2.if.end28_crit_edge, %entry.if.end28_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_clk_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu.i, align 4
  %clock_info.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_info.i, align 4
  %idx.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %type = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %8 = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3
  %base.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !56
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %clear_to_gate.i = getelementptr inbounds %struct.ingenic_cgu_gate_info, ptr %8, i32 0, i32 2
  %15 = ptrtoint ptr %clear_to_gate.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %clear_to_gate.i, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %tobool4.not.i = icmp eq i8 %16, 1
  %bit6.i = getelementptr inbounds %struct.ingenic_cgu_gate_info, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %bit6.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bit6.i, align 4
  %conv7.i = zext i8 %18 to i32
  %shl8.i = shl nuw i32 1, %conv7.i
  %or.i = or i32 %shl8.i, %14
  %neg.i = xor i32 %shl8.i, -1
  %and.i = and i32 %14, %neg.i
  %clkgr.0.i = select i1 %tobool4.not.i, i32 %and.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %clkgr.0.i) #7
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %8, align 4
  %add.ptr11.i = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %19) #7, !srcloc !59
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_clk_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu.i, align 4
  %clock_info.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_info.i, align 4
  %idx.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %type = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3
  %base.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !56
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %bit.i = getelementptr inbounds %struct.ingenic_cgu_gate_info, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bit.i, align 4
  %conv.i = zext i8 %16 to i32
  %17 = lshr i32 %14, %conv.i
  %18 = and i32 %17, 1
  %clear_to_gate.i = getelementptr inbounds %struct.ingenic_cgu_gate_info, ptr %8, i32 0, i32 2
  %19 = ptrtoint ptr %clear_to_gate.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %clear_to_gate.i, align 1, !range !77
  %21 = xor i8 %20, 1
  %22 = zext i8 %21 to i32
  %tobool5.i.not = xor i32 %18, %22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %enabled.0 = phi i32 [ %tobool5.i.not, %if.then ], [ 1, %entry.if.end_crit_edge ]
  ret i32 %enabled.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu.i, align 4
  %clock_info.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_info.i, align 4
  %idx.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %type = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else33, label %if.then

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %and.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.ingenic_clk_get_parent.exit_crit_edge, label %if.then.i

if.then.ingenic_clk_get_parent.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_clk_get_parent.exit

if.then.i:                                        ; preds = %if.then
  %base.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %mux.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 2
  %12 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mux.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %11, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #7, !srcloc !56
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %shift.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 3
  %16 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift.i, align 4
  %conv.i = zext i8 %17 to i32
  %shr.i = lshr i32 %15, %conv.i
  %bits.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 4
  %18 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bits.i, align 1
  %conv9.i = zext i8 %19 to i32
  %sub10.i = sub nsw i32 32, %conv9.i
  %shr11.i = lshr i32 -1, %sub10.i
  %and13.i = and i32 %shr.i, 255
  %conv16.i = and i32 %and13.i, %shr11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv16.i)
  %cmp31.not.i = icmp eq i32 %conv16.i, 0
  br i1 %cmp31.not.i, label %if.then.i.ingenic_clk_get_parent.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.ingenic_clk_get_parent.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_clk_get_parent.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %idx.032.i = phi i8 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %arrayidx.i57 = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 2, i32 %indvars.iv.i
  %20 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp18.not.i = icmp ne i32 %21, -1
  %inc.i = zext i1 %cmp18.not.i to i8
  %spec.select.i = add i8 %idx.032.i, %inc.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %conv16.i
  br i1 %exitcond.not.i, label %ingenic_clk_get_parent.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ingenic_clk_get_parent.exit.loopexit:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast = zext i8 %spec.select.i to i32
  br label %ingenic_clk_get_parent.exit

ingenic_clk_get_parent.exit:                      ; preds = %ingenic_clk_get_parent.exit.loopexit, %if.then.i.ingenic_clk_get_parent.exit_crit_edge, %if.then.ingenic_clk_get_parent.exit_crit_edge
  %idx.2.i = phi i32 [ 0, %if.then.ingenic_clk_get_parent.exit_crit_edge ], [ 0, %if.then.i.ingenic_clk_get_parent.exit_crit_edge ], [ %phi.cast, %ingenic_clk_get_parent.exit.loopexit ]
  %div3 = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 7
  %bypass_mask = getelementptr inbounds %struct.ingenic_cgu_div_info, ptr %div3, i32 0, i32 7
  %22 = ptrtoint ptr %bypass_mask to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bypass_mask, align 2
  %conv = zext i8 %23 to i32
  %shl = shl nuw i32 1, %idx.2.i
  %and5 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then7, label %ingenic_clk_get_parent.exit.if.end41_crit_edge

ingenic_clk_get_parent.exit.if.end41_crit_edge:   ; preds = %ingenic_clk_get_parent.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then7:                                         ; preds = %ingenic_clk_get_parent.exit
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %26 = ptrtoint ptr %div3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %div3, align 4
  %add.ptr9 = getelementptr i8, ptr %25, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !56
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %shift = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 11
  %30 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %shift, align 4
  %conv14 = zext i8 %31 to i32
  %shr = lshr i32 %29, %conv14
  %bits = getelementptr inbounds %struct.ingenic_cgu_div_info, ptr %div3, i32 0, i32 3
  %32 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bits, align 2
  %conv16 = zext i8 %33 to i32
  %sub17 = sub nsw i32 32, %conv16
  %shr18 = lshr i32 -1, %sub17
  %and20 = and i32 %shr18, %shr
  %div_table = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 13
  %34 = ptrtoint ptr %div_table to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %div_table, align 4
  %tobool22.not = icmp eq ptr %35, null
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %35, i32 %and20
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 1
  %conv26 = zext i8 %37 to i32
  br label %if.end41.sink.split

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %add27 = add i32 %and20, 1
  %div29 = getelementptr inbounds %struct.ingenic_cgu_div_info, ptr %div3, i32 0, i32 2
  %38 = ptrtoint ptr %div29 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %div29, align 1
  %conv30 = zext i8 %39 to i32
  %mul = mul i32 %add27, %conv30
  br label %if.end41.sink.split

if.else33:                                        ; preds = %entry
  %and35 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else33.if.end41_crit_edge, label %if.then37

if.else33.if.end41_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then37:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  %fixdiv = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 16
  %40 = ptrtoint ptr %fixdiv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fixdiv, align 4
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.then37, %if.else, %if.then23
  %.sink = phi i32 [ %41, %if.then37 ], [ %conv26, %if.then23 ], [ %mul, %if.else ]
  %div39 = udiv i32 %parent_rate, %.sink
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.else33.if.end41_crit_edge, %ingenic_clk_get_parent.exit.if.end41_crit_edge
  %rate.0 = phi i32 [ %parent_rate, %ingenic_clk_get_parent.exit.if.end41_crit_edge ], [ %parent_rate, %if.else33.if.end41_crit_edge ], [ %div39, %if.end41.sink.split ]
  ret i32 %rate.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_clk_round_rate(ptr noundef %hw, i32 noundef %req_rate, ptr nocapture noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu.i, align 4
  %clock_info.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_info.i, align 4
  %idx.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %type = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5
  %8 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent_rate, align 4
  %call1 = tail call fastcc i32 @ingenic_clk_calc_div(ptr noundef %hw, ptr noundef %arrayidx.i, i32 noundef %9, i32 noundef %req_rate)
  br label %if.end13

if.else:                                          ; preds = %entry
  %and3 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else7, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %fixdiv = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 16
  %10 = ptrtoint ptr %fixdiv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fixdiv, align 4
  br label %if.end13

if.else7:                                         ; preds = %if.else
  %call8 = tail call i32 @clk_hw_get_flags(ptr noundef %hw) #7
  %and9 = and i32 %call8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else7.if.end13_crit_edge, label %if.then11

if.else7.if.end13_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %req_rate, ptr %parent_rate, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else7.if.end13_crit_edge, %if.then5, %if.then
  %div.0 = phi i32 [ %call1, %if.then ], [ %11, %if.then5 ], [ 1, %if.then11 ], [ 1, %if.else7.if.end13_crit_edge ]
  %13 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %parent_rate, align 4
  %add = add i32 %div.0, -1
  %sub = add i32 %add, %14
  %div14 = udiv i32 %sub, %div.0
  ret i32 %div14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_clk_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu.i, align 4
  %clock_info.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_info.i, align 4
  %idx.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %type = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end69, label %if.then

if.then:                                          ; preds = %entry
  %mux = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 2
  %bits = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 4
  %8 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bits, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp101.not = icmp ugt i8 %9, 7
  br i1 %cmp101.not, label %if.then.do.body_crit_edge, label %for.body.preheader

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.preheader:                               ; preds = %if.then
  %shl = shl nuw i32 1, %conv
  %conv4 = and i32 %shl, 255
  %umax = call i32 @llvm.umax.i32(i32 %conv4, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %curr_idx.0103 = phi i8 [ 0, %for.body.preheader ], [ %curr_idx.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 2, i32 %indvars.iv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp6 = icmp eq i32 %11, -1
  br i1 %cmp6, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp1(i8 %curr_idx.0103, i8 %idx)
  %cmp11 = icmp eq i8 %curr_idx.0103, %idx
  br i1 %cmp11, label %if.end.do.end29_crit_edge, label %if.end14

if.end.do.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i8 %curr_idx.0103, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %for.body.for.inc_crit_edge
  %curr_idx.1 = phi i8 [ %curr_idx.0103, %for.body.for.inc_crit_edge ], [ %inc, %if.end14 ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %umax
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.then.do.body_crit_edge
  %curr_idx.0.lcssa = phi i8 [ 0, %if.then.do.body_crit_edge ], [ %curr_idx.1, %for.inc.do.body_crit_edge ]
  %conv3.lcssa = phi i32 [ 0, %if.then.do.body_crit_edge ], [ %umax, %for.inc.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %curr_idx.0.lcssa, i8 %idx)
  %cmp18.not = icmp eq i8 %curr_idx.0.lcssa, %idx
  br i1 %cmp18.not, label %do.body.do.end29_crit_edge, label %do.body23, !prof !67

do.body.do.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

do.body23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/ingenic/cgu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 361, 0\0A.popsection", ""() #7, !srcloc !82
  unreachable

do.end29:                                         ; preds = %do.body.do.end29_crit_edge, %if.end.do.end29_crit_edge
  %conv3.lcssa111 = phi i32 [ %conv3.lcssa, %do.body.do.end29_crit_edge ], [ %indvars.iv, %if.end.do.end29_crit_edge ]
  %sub33 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub33
  %shift = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 3
  %12 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift, align 4
  %conv36 = zext i8 %13 to i32
  %shl37 = shl i32 %shr, %conv36
  %lock = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 4
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %16 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mux, align 4
  %add.ptr51 = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #7, !srcloc !56
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %neg = xor i32 %shl37, -1
  %and55 = and i32 %19, %neg
  %20 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %shift, align 4
  %conv59 = zext i8 %21 to i32
  %shl60 = shl i32 %conv3.lcssa111, %conv59
  %or = or i32 %shl60, %and55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %or)
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %25 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mux, align 4
  %add.ptr67 = getelementptr i8, ptr %24, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %22) #7, !srcloc !59
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call44) #7
  br label %cleanup

if.end69:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %idx)
  %tobool71.not = icmp eq i8 %idx, 0
  %cond = select i1 %tobool71.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %do.end29
  %retval.0 = phi i32 [ 0, %do.end29 ], [ %cond, %if.end69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ingenic_clk_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu.i, align 4
  %clock_info.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_info.i, align 4
  %idx.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %type = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then:                                          ; preds = %entry
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %mux = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 2
  %10 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mux, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !56
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %shift = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 3
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift, align 4
  %conv = zext i8 %15 to i32
  %shr = lshr i32 %13, %conv
  %bits = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 4
  %16 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bits, align 1
  %conv9 = zext i8 %17 to i32
  %sub10 = sub nsw i32 32, %conv9
  %shr11 = lshr i32 -1, %sub10
  %and13 = and i32 %shr, 255
  %conv16 = and i32 %and13, %shr11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv16)
  %cmp31.not = icmp eq i32 %conv16, 0
  br i1 %cmp31.not, label %if.then.if.end22_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %idx.032 = phi i8 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 2, i32 %indvars.iv
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp18.not = icmp ne i32 %19, -1
  %inc = zext i1 %cmp18.not to i8
  %spec.select = add i8 %idx.032, %inc
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv16
  br i1 %exitcond.not, label %for.body.if.end22_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end22:                                         ; preds = %for.body.if.end22_crit_edge, %if.then.if.end22_crit_edge, %entry.if.end22_crit_edge
  %idx.2 = phi i8 [ 0, %entry.if.end22_crit_edge ], [ 0, %if.then.if.end22_crit_edge ], [ %spec.select, %for.body.if.end22_crit_edge ]
  ret i8 %idx.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %req_rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu.i, align 4
  %clock_info.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_info.i, align 4
  %idx.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %type = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5
  %call2 = tail call fastcc i32 @ingenic_clk_calc_div(ptr noundef %hw, ptr noundef %arrayidx.i, i32 noundef %parent_rate, i32 noundef %req_rate)
  %add = add i32 %parent_rate, -1
  %sub = add i32 %add, %call2
  %div3 = udiv i32 %sub, %call2
  call void @__sanitizer_cov_trace_cmp4(i32 %div3, i32 %req_rate)
  %cmp.not = icmp eq i32 %div3, %req_rate
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %div5 = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 7
  %div_table = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 13
  %8 = ptrtoint ptr %div_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %div_table, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %bits.i = getelementptr inbounds %struct.ingenic_cgu_div_info, ptr %div5, i32 0, i32 3
  %10 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bits.i, align 2
  %conv.i = zext i8 %11 to i32
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.then7
  %best.040.i = phi i32 [ -1, %if.then7 ], [ %best.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  %best_i.039.i = phi i32 [ 0, %if.then7 ], [ %best_i.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  %i.037.i = phi i32 [ 0, %if.then7 ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %arrayidx.i121 = getelementptr i8, ptr %9, i32 %i.037.i
  %12 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i121, align 1
  %conv4.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %land.rhs.i.do.body14_crit_edge, label %for.body.i

land.rhs.i.do.body14_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

for.body.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %conv4.i)
  %cmp9.not.i = icmp ule i32 %call2, %conv4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %best.040.i, i32 %conv4.i)
  %cmp15.i = icmp ugt i32 %best.040.i, %conv4.i
  %or.cond.i = select i1 %cmp9.not.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %conv4.i)
  %cmp21.i = icmp eq i32 %call2, %conv4.i
  br i1 %cmp21.i, label %if.then.i.do.body14_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i.do.body14_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %best_i.1.i = phi i32 [ %i.037.i, %if.then.i.for.inc.i_crit_edge ], [ %best_i.039.i, %for.body.i.for.inc.i_crit_edge ]
  %best.1.i = phi i32 [ %conv4.i, %if.then.i.for.inc.i_crit_edge ], [ %best.040.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add i32 %i.037.i, 1
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.do.body14_crit_edge

for.inc.i.do.body14_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div10 = getelementptr inbounds %struct.ingenic_cgu_div_info, ptr %div5, i32 0, i32 2
  %14 = ptrtoint ptr %div10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %div10, align 1
  %conv = zext i8 %15 to i32
  %div11 = udiv i32 %call2, %conv
  %sub12 = add i32 %div11, -1
  br label %do.body14

do.body14:                                        ; preds = %if.else, %for.inc.i.do.body14_crit_edge, %if.then.i.do.body14_crit_edge, %land.rhs.i.do.body14_crit_edge
  %hw_div.0 = phi i32 [ %sub12, %if.else ], [ %best_i.1.i, %for.inc.i.do.body14_crit_edge ], [ %best_i.039.i, %land.rhs.i.do.body14_crit_edge ], [ %i.037.i, %if.then.i.do.body14_crit_edge ]
  %lock = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 4
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %18 = ptrtoint ptr %div5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %div5, align 4
  %add.ptr24 = getelementptr i8, ptr %17, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #7, !srcloc !56
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %bits = getelementptr inbounds %struct.ingenic_cgu_div_info, ptr %div5, i32 0, i32 3
  %22 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bits, align 2
  %conv29 = zext i8 %23 to i32
  %sub31 = sub nsw i32 32, %conv29
  %shr = lshr i32 -1, %sub31
  %shift = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 11
  %24 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %shift, align 4
  %conv35 = zext i8 %25 to i32
  %shl = shl i32 %shr, %conv35
  %neg = xor i32 %shl, -1
  %and36 = and i32 %21, %neg
  %shl40 = shl i32 %hw_div.0, %conv35
  %or = or i32 %and36, %shl40
  %stop_bit = getelementptr inbounds %struct.ingenic_cgu_div_info, ptr %div5, i32 0, i32 6
  %26 = ptrtoint ptr %stop_bit to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %stop_bit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp43.not = icmp eq i8 %27, -1
  %conv42120 = zext i8 %27 to i32
  %shl49 = shl nuw i32 1, %conv42120
  %neg50 = xor i32 %shl49, -1
  %and51 = select i1 %cmp43.not, i32 -1, i32 %neg50
  %reg.0 = and i32 %or, %and51
  %ce_bit = getelementptr inbounds %struct.ingenic_cgu_div_info, ptr %div5, i32 0, i32 4
  %28 = ptrtoint ptr %ce_bit to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ce_bit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %cmp55.not = icmp eq i8 %29, -1
  %conv54119 = zext i8 %29 to i32
  %shl61 = shl nuw i32 1, %conv54119
  %or62 = select i1 %cmp55.not, i32 0, i32 %shl61
  %reg.1 = or i32 %reg.0, %or62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %reg.1)
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %33 = ptrtoint ptr %div5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %div5, align 4
  %add.ptr70 = getelementptr i8, ptr %32, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %30) #7, !srcloc !59
  %busy_bit = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 12
  %35 = ptrtoint ptr %busy_bit to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %busy_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp73.not = icmp eq i8 %36, -1
  br i1 %cmp73.not, label %do.body14.if.end77_crit_edge, label %if.then75

do.body14.if.end77_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then75:                                        ; preds = %do.body14
  %call.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 100000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.then75
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %39 = ptrtoint ptr %div5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %div5, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 %40
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !56
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %43 = ptrtoint ptr %busy_bit to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %busy_bit, align 4
  %conv49.i = zext i8 %44 to i32
  %shl.i = shl nuw i32 1, %conv49.i
  %and.i = and i32 %shl.i, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i122 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i122, label %for.cond.i.ingenic_clk_check_stable.exit_crit_edge, label %land.lhs.true.i

for.cond.i.ingenic_clk_check_stable.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_clk_check_stable.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call15.i = tail call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call15.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then19.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %47 = ptrtoint ptr %div5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %div5, align 4
  %add.ptr25.i = getelementptr i8, ptr %46, i32 %48
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #7, !srcloc !56
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  br label %ingenic_clk_check_stable.exit

ingenic_clk_check_stable.exit:                    ; preds = %if.then19.i, %for.cond.i.ingenic_clk_check_stable.exit_crit_edge
  %reg.0.i = phi i32 [ %50, %if.then19.i ], [ %42, %for.cond.i.ingenic_clk_check_stable.exit_crit_edge ]
  %51 = ptrtoint ptr %busy_bit to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %busy_bit, align 4
  %conv3650.i = zext i8 %52 to i32
  %shl37.i = shl nuw i32 1, %conv3650.i
  %and38.i = and i32 %shl37.i, %reg.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  %cond.i = select i1 %tobool39.not.i, i32 0, i32 -110
  br label %if.end77

if.end77:                                         ; preds = %ingenic_clk_check_stable.exit, %do.body14.if.end77_crit_edge
  %ret.0 = phi i32 [ %cond.i, %ingenic_clk_check_stable.exit ], [ 0, %do.body14.if.end77_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end77 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ingenic_clk_calc_div(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %clk_info, i32 noundef %parent_rate, i32 noundef %req_rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu.i.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu.i.i, align 4
  %clock_info.i.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_info.i.i, align 4
  %idx.i.i = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i.i, align 4
  %type.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  %and.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ingenic_clk_get_parent.exit_crit_edge, label %if.then.i

entry.ingenic_clk_get_parent.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_clk_get_parent.exit

if.then.i:                                        ; preds = %entry
  %base.i = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %mux.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 2
  %10 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mux.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #7, !srcloc !56
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %shift.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 3
  %14 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift.i, align 4
  %conv.i = zext i8 %15 to i32
  %shr.i = lshr i32 %13, %conv.i
  %bits.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 3, i32 0, i32 4
  %16 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bits.i, align 1
  %conv9.i = zext i8 %17 to i32
  %sub10.i = sub nsw i32 32, %conv9.i
  %shr11.i = lshr i32 -1, %sub10.i
  %and13.i = and i32 %shr.i, 255
  %conv16.i = and i32 %and13.i, %shr11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv16.i)
  %cmp31.not.i = icmp eq i32 %conv16.i, 0
  br i1 %cmp31.not.i, label %if.then.i.ingenic_clk_get_parent.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.ingenic_clk_get_parent.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_clk_get_parent.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %idx.032.i = phi i8 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ingenic_cgu_clk_info, ptr %3, i32 %5, i32 2, i32 %indvars.iv.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp18.not.i = icmp ne i32 %19, -1
  %inc.i = zext i1 %cmp18.not.i to i8
  %spec.select.i = add i8 %idx.032.i, %inc.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %conv16.i
  br i1 %exitcond.not.i, label %ingenic_clk_get_parent.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ingenic_clk_get_parent.exit.loopexit:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast = zext i8 %spec.select.i to i32
  br label %ingenic_clk_get_parent.exit

ingenic_clk_get_parent.exit:                      ; preds = %ingenic_clk_get_parent.exit.loopexit, %if.then.i.ingenic_clk_get_parent.exit_crit_edge, %entry.ingenic_clk_get_parent.exit_crit_edge
  %idx.2.i = phi i32 [ 0, %entry.ingenic_clk_get_parent.exit_crit_edge ], [ 0, %if.then.i.ingenic_clk_get_parent.exit_crit_edge ], [ %phi.cast, %ingenic_clk_get_parent.exit.loopexit ]
  %div1 = getelementptr inbounds %struct.ingenic_cgu_clk_info, ptr %clk_info, i32 0, i32 3, i32 0, i32 7
  %bypass_mask = getelementptr inbounds %struct.ingenic_cgu_div_info, ptr %div1, i32 0, i32 7
  %20 = ptrtoint ptr %bypass_mask to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bypass_mask, align 2
  %conv = zext i8 %21 to i32
  %shl = shl nuw i32 1, %idx.2.i
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %ingenic_clk_get_parent.exit.cleanup_crit_edge

ingenic_clk_get_parent.exit.cleanup_crit_edge:    ; preds = %ingenic_clk_get_parent.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ingenic_clk_get_parent.exit
  %add = add i32 %parent_rate, -1
  %sub = add i32 %add, %req_rate
  %div3 = udiv i32 %sub, %req_rate
  %div_table = getelementptr inbounds %struct.ingenic_cgu_clk_info, ptr %clk_info, i32 0, i32 3, i32 0, i32 13
  %22 = ptrtoint ptr %div_table to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %div_table, align 4
  %tobool5.not = icmp eq ptr %23, null
  br i1 %tobool5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end
  %bits.i61 = getelementptr inbounds %struct.ingenic_cgu_div_info, ptr %div1, i32 0, i32 3
  %24 = ptrtoint ptr %bits.i61 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bits.i61, align 2
  %conv.i62 = zext i8 %25 to i32
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.then6
  %best.040.i = phi i32 [ -1, %if.then6 ], [ %best.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  %best_i.039.i = phi i32 [ 0, %if.then6 ], [ %best_i.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  %i.037.i = phi i32 [ 0, %if.then6 ], [ %inc.i67, %for.inc.i.land.rhs.i_crit_edge ]
  %arrayidx.i63 = getelementptr i8, ptr %23, i32 %i.037.i
  %26 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i63, align 1
  %conv4.i = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i64 = icmp eq i8 %27, 0
  br i1 %tobool.not.i64, label %land.rhs.i.ingenic_clk_calc_hw_div.exit_crit_edge, label %for.body.i65

land.rhs.i.ingenic_clk_calc_hw_div.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_clk_calc_hw_div.exit

for.body.i65:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div3, i32 %conv4.i)
  %cmp9.not.i = icmp ule i32 %div3, %conv4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %best.040.i, i32 %conv4.i)
  %cmp15.i = icmp ugt i32 %best.040.i, %conv4.i
  %or.cond.i = select i1 %cmp9.not.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %if.then.i66, label %for.body.i65.for.inc.i_crit_edge

for.body.i65.for.inc.i_crit_edge:                 ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i66:                                      ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_cmp4(i32 %div3, i32 %conv4.i)
  %cmp21.i = icmp eq i32 %div3, %conv4.i
  br i1 %cmp21.i, label %if.then.i66.ingenic_clk_calc_hw_div.exit_crit_edge, label %if.then.i66.for.inc.i_crit_edge

if.then.i66.for.inc.i_crit_edge:                  ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i66.ingenic_clk_calc_hw_div.exit_crit_edge: ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_clk_calc_hw_div.exit

for.inc.i:                                        ; preds = %if.then.i66.for.inc.i_crit_edge, %for.body.i65.for.inc.i_crit_edge
  %best_i.1.i = phi i32 [ %i.037.i, %if.then.i66.for.inc.i_crit_edge ], [ %best_i.039.i, %for.body.i65.for.inc.i_crit_edge ]
  %best.1.i = phi i32 [ %conv4.i, %if.then.i66.for.inc.i_crit_edge ], [ %best.040.i, %for.body.i65.for.inc.i_crit_edge ]
  %inc.i67 = add i32 %i.037.i, 1
  %i.0.highbits.i = lshr i32 %inc.i67, %conv.i62
  %cmp.i = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.ingenic_clk_calc_hw_div.exit_crit_edge

for.inc.i.ingenic_clk_calc_hw_div.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_clk_calc_hw_div.exit

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

ingenic_clk_calc_hw_div.exit:                     ; preds = %for.inc.i.ingenic_clk_calc_hw_div.exit_crit_edge, %if.then.i66.ingenic_clk_calc_hw_div.exit_crit_edge, %land.rhs.i.ingenic_clk_calc_hw_div.exit_crit_edge
  %best_i.2.i = phi i32 [ %i.037.i, %if.then.i66.ingenic_clk_calc_hw_div.exit_crit_edge ], [ %best_i.039.i, %land.rhs.i.ingenic_clk_calc_hw_div.exit_crit_edge ], [ %best_i.1.i, %for.inc.i.ingenic_clk_calc_hw_div.exit_crit_edge ]
  %arrayidx = getelementptr i8, ptr %23, i32 %best_i.2.i
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  %conv10 = zext i8 %29 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div13 = getelementptr inbounds %struct.ingenic_cgu_div_info, ptr %div1, i32 0, i32 2
  %30 = ptrtoint ptr %div13 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %div13, align 1
  %conv14 = zext i8 %31 to i32
  %32 = tail call i32 @llvm.umax.i32(i32 %div3, i32 %conv14)
  %bits = getelementptr inbounds %struct.ingenic_cgu_div_info, ptr %div1, i32 0, i32 3
  %33 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bits, align 2
  %conv20 = zext i8 %34 to i32
  %shl21 = shl i32 %conv14, %conv20
  %35 = tail call i32 @llvm.umin.i32(i32 %32, i32 %shl21)
  %add32 = add nsw i32 %conv14, -1
  %sub33 = add i32 %add32, %35
  %36 = urem i32 %sub33, %conv14
  %mul = sub i32 %sub33, %36
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %ingenic_clk_calc_hw_div.exit, %ingenic_clk_get_parent.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv10, %ingenic_clk_calc_hw_div.exit ], [ %mul, %if.end11 ], [ 1, %ingenic_clk_get_parent.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/ingenic/cgu.c", i32 772, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ingenic_cgu_new._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ingenic_cgu_new._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @ingenic_cgu_new.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/clk/ingenic/cgu.c", i32 780, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/ingenic/cgu.c", i32 632, i32 4}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ingenic_register_clock._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @ingenic_register_clock._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/ingenic/cgu.c", i32 647, i32 3}
!16 = !{ptr @ingenic_register_clock._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ingenic_register_clock._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/ingenic/cgu.c", i32 708, i32 4}
!20 = !{ptr @ingenic_register_clock._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ingenic_register_clock._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/ingenic/cgu.c", i32 718, i32 4}
!24 = !{ptr @ingenic_register_clock._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ingenic_register_clock._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/ingenic/cgu.c", i32 737, i32 3}
!28 = !{ptr @ingenic_register_clock._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ingenic_register_clock._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/ingenic/cgu.c", i32 743, i32 3}
!32 = !{ptr @ingenic_register_clock._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ingenic_register_clock._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @ingenic_pll_ops, !35, !"ingenic_pll_ops", i1 false, i1 false}
!35 = !{!"../drivers/clk/ingenic/cgu.c", i32 294, i32 29}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/ingenic/cgu.c", i32 206, i32 3}
!38 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ingenic_pll_set_rate._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ingenic_pll_set_rate._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @ingenic_clk_ops, !42, !"ingenic_clk_ops", i1 false, i1 false}
!42 = !{!"../drivers/clk/ingenic/cgu.c", i32 600, i32 29}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2152684397, i64 2152684887, i64 2152684434, i64 2152684490, i64 2152684524, i64 2152684548, i64 2152684589, i64 2152684610, i64 2152684638, i64 2152684672}
!54 = !{i64 2152686779, i64 2152687269, i64 2152686816, i64 2152686872, i64 2152686906, i64 2152686930, i64 2152686971, i64 2152686992, i64 2152687020, i64 2152687054}
!55 = !{i64 2152688405, i64 2152688895, i64 2152688442, i64 2152688498, i64 2152688532, i64 2152688556, i64 2152688597, i64 2152688618, i64 2152688646, i64 2152688680}
!56 = !{i64 5007046}
!57 = !{i64 2152628231}
!58 = !{i64 2152628554}
!59 = !{i64 5006628}
!60 = !{i64 2152629262}
!61 = !{i64 2152629578}
!62 = !{i64 2152618822}
!63 = !{i64 2152619340}
!64 = !{i64 2152631804}
!65 = !{i64 2152632120}
!66 = !{i64 2152633994}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2152601178, i64 2152601667, i64 2152601215, i64 2152601271, i64 2152601305, i64 2152601329, i64 2152601370, i64 2152601391, i64 2152601419, i64 2152601453}
!69 = !{i64 2152602945}
!70 = !{i64 2152605935}
!71 = !{i64 2152606397, i64 2152606887, i64 2152606434, i64 2152606490, i64 2152606524, i64 2152606548, i64 2152606589, i64 2152606610, i64 2152606638, i64 2152606672}
!72 = !{i64 2148649587, i64 2148649867, i64 2148650201, i64 2148650535}
!73 = !{!"auto-init"}
!74 = !{i64 2152623217}
!75 = !{i64 2152625883}
!76 = !{i64 2152599054}
!77 = !{i8 0, i8 2}
!78 = !{i64 2152599440}
!79 = !{i64 2152598300}
!80 = !{i64 2152635795}
!81 = !{i64 2152643317}
!82 = !{i64 2152638150, i64 2152638640, i64 2152638187, i64 2152638243, i64 2152638277, i64 2152638301, i64 2152638342, i64 2152638363, i64 2152638391, i64 2152638425}
!83 = !{i64 2152641114}
!84 = !{i64 2152641340}
!85 = !{i64 2152665420}
!86 = !{i64 2152666664}
!87 = !{i64 2152662754}
!88 = !{i64 2152663288}
