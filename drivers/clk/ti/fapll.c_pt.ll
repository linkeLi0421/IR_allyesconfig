; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/fapll.c_pt.bc'
source_filename = "../drivers/clk/ti/fapll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fapll_data = type { %struct.clk_hw, ptr, ptr, ptr, ptr, %struct.clk_onecell_data, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.fapll_synth = type { %struct.clk_hw, ptr, i32, ptr, ptr, ptr, ptr }

@__of_table_ti_fapll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-fapll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_fapll_setup }, section "__clk_of_table", align 4
@ti_fapll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ti_fapll_enable, ptr @ti_fapll_disable, ptr @ti_fapll_is_enabled, ptr null, ptr null, ptr null, ptr @ti_fapll_recalc_rate, ptr @ti_fapll_round_rate, ptr null, ptr null, ptr @ti_fapll_get_parent, ptr @ti_fapll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ti_fapll_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%pOFn must have two parents\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti_fapll_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/clk/ti/fapll.c\00", [41 x i8] zeroinitializer }, align 32
@ti_fapll_setup._entry_ptr = internal global ptr @ti_fapll_setup._entry, section ".printk_index", align 4
@ti_fapll_setup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%pOFn could not get clk_ref\0A\00", [33 x i8] zeroinitializer }, align 32
@ti_fapll_setup._entry_ptr.5 = internal global ptr @ti_fapll_setup._entry.3, section ".printk_index", align 4
@ti_fapll_setup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%pOFn could not get clk_bypass\0A\00", [62 x i8] zeroinitializer }, align 32
@ti_fapll_setup._entry_ptr.8 = internal global ptr @ti_fapll_setup._entry.6, section ".printk_index", align 4
@ti_fapll_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%pOFn could not get IO base\0A\00", [33 x i8] zeroinitializer }, align 32
@ti_fapll_setup._entry_ptr.11 = internal global ptr @ti_fapll_setup._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clock-indices\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ti_fapll_wait_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s failed to lock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti_fapll_wait_lock\00", [45 x i8] zeroinitializer }, align 32
@ti_fapll_wait_lock._entry_ptr = internal global ptr @ti_fapll_wait_lock._entry, section ".printk_index", align 4
@ti_fapll_set_div_mult._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014FAPLL main divider rates unsupported\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti_fapll_set_div_mult\00", [42 x i8] zeroinitializer }, align 32
@ti_fapll_set_div_mult._entry_ptr = internal global ptr @ti_fapll_set_div_mult._entry, section ".printk_index", align 4
@ti_fapll_synt_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ti_fapll_synth_enable, ptr @ti_fapll_synth_disable, ptr @ti_fapll_synth_is_enabled, ptr null, ptr null, ptr null, ptr @ti_fapll_synth_recalc_rate, ptr @ti_fapll_synth_round_rate, ptr null, ptr null, ptr null, ptr @ti_fapll_synth_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ti_fapll_synth_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013failed to register clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti_fapll_synth_setup\00", [43 x i8] zeroinitializer }, align 32
@ti_fapll_synth_setup._entry_ptr = internal global ptr @ti_fapll_synth_setup._entry, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"ti_fapll_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 272, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 566, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 575, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 581, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 587, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 619, i32 43 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 623, i32 40 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 133, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 212, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"ti_fapll_synt_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 482, i32 29 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [26 x i8] c"../drivers/clk/ti/fapll.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 526, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__of_table_ti_fapll_clock, ptr @ti_fapll_set_div_mult._entry, ptr @ti_fapll_set_div_mult._entry_ptr, ptr @ti_fapll_setup._entry, ptr @ti_fapll_setup._entry.3, ptr @ti_fapll_setup._entry.6, ptr @ti_fapll_setup._entry.9, ptr @ti_fapll_setup._entry_ptr, ptr @ti_fapll_setup._entry_ptr.11, ptr @ti_fapll_setup._entry_ptr.5, ptr @ti_fapll_setup._entry_ptr.8, ptr @ti_fapll_synth_setup._entry, ptr @ti_fapll_synth_setup._entry_ptr, ptr @ti_fapll_wait_lock._entry, ptr @ti_fapll_wait_lock._entry_ptr, ptr @ti_fapll_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ti_fapll_synt_ops, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_fapll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_fapll_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_fapll_setup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_fapll_setup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_fapll_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_fapll_wait_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_fapll_set_div_mult._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_fapll_synt_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_fapll_synth_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_fapll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %parent_name = alloca [2 x ptr], align 4
  %output_name = alloca ptr, align 4
  %output_instance = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_name) #7
  %0 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name, align 4, !annotation !52
  %1 = getelementptr inbounds [2 x ptr], ptr %parent_name, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 40) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup122_crit_edge, label %if.end

entry.cleanup122_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i190 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 29) #10
  %outputs = getelementptr inbounds %struct.fapll_data, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %outputs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i190, ptr %outputs, align 4
  %tobool4.not = icmp eq ptr %call7.i.i190, null
  br i1 %tobool4.not, label %if.end.free_crit_edge, label %if.end6

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i191 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #10
  %tobool8.not = icmp eq ptr %call7.i.i191, null
  br i1 %tobool8.not, label %if.end6.free_crit_edge, label %if.end10

if.end6.free_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end10:                                         ; preds = %if.end6
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %call7.i.i191, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ti_fapll_ops, ptr %ops, align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %10 = ptrtoint ptr %call7.i.i191 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call7.i.i191, align 8
  %call12 = tail call i32 @of_clk_get_parent_count(ptr noundef %node) #7
  %conv = trunc i32 %call12 to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %call7.i.i191, i32 0, i32 5
  %11 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %num_parents, align 4
  %conv14 = and i32 %call12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv14)
  %cmp.not = icmp eq i32 %conv14, 2
  br i1 %cmp.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %node) #11
  br label %free

if.end18:                                         ; preds = %if.end10
  %call19 = call i32 @of_clk_parent_fill(ptr noundef %node, ptr noundef nonnull %parent_name, i32 noundef 2) #7
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %call7.i.i191, i32 0, i32 2
  %12 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %parent_name, ptr %parent_names, align 8
  %call21 = call ptr @of_clk_get(ptr noundef %node, i32 noundef 0) #7
  %clk_ref = getelementptr inbounds %struct.fapll_data, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %clk_ref to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call21, ptr %clk_ref, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %node) #11
  br label %free

if.end30:                                         ; preds = %if.end18
  %call31 = call ptr @of_clk_get(ptr noundef %node, i32 noundef 1) #7
  %clk_bypass = getelementptr inbounds %struct.fapll_data, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %clk_bypass to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call31, ptr %clk_bypass, align 8
  %cmp.i192 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %node) #11
  br label %free

if.end40:                                         ; preds = %if.end30
  %call41 = call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.fapll_data, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call41, ptr %base, align 4
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %node) #11
  br label %free

if.end50:                                         ; preds = %if.end40
  %16 = ptrtoint ptr %call41 to i32
  %and = and i32 %16, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1088, i32 %and)
  %cmp52 = icmp eq i32 %and, 1088
  br i1 %cmp52, label %if.then54, label %if.end50.if.end55_crit_edge

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %bypass_bit_inverted = getelementptr inbounds %struct.fapll_data, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %bypass_bit_inverted to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %bypass_bit_inverted, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end50.if.end55_crit_edge
  %18 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %node, align 4
  %name57 = getelementptr inbounds %struct.fapll_data, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %name57 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %name57, align 8
  %init58 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %init58 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i191, ptr %init58, align 8
  %call60 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %cmp.i193 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193, label %unmap, label %if.end63

if.end63:                                         ; preds = %if.end55
  %22 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %outputs, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call60, ptr %23, align 4
  %clk_num = getelementptr inbounds %struct.fapll_data, ptr %call7.i.i, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clk_num, align 8
  %inc = add i32 %26, 1
  store i32 %inc, ptr %clk_num, align 8
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end63
  %i.0195 = phi i32 [ 0, %if.end63 ], [ %inc106, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %output_name) #7
  %27 = ptrtoint ptr %output_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -1 to ptr), ptr %output_name, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %output_instance) #7
  %28 = ptrtoint ptr %output_instance to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %output_instance, align 4, !annotation !52
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.12, ptr noundef nonnull %output_name, i32 noundef 1, i32 noundef %i.0195) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool70.not = icmp sgt i32 %call.i, -1
  br i1 %tobool70.not, label %if.end72, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end72:                                         ; preds = %for.body
  %call73 = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.13, i32 noundef %i.0195, ptr noundef nonnull %output_instance) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end72.if.end76_crit_edge, label %if.then75

if.end72.if.end76_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %output_instance to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %i.0195, ptr %output_instance, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end72.if.end76_crit_edge
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %32 = ptrtoint ptr %output_instance to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %output_instance, align 4
  %mul = shl i32 %33, 3
  %add.ptr = getelementptr i8, ptr %31, i32 %mul
  %34 = ptrtoint ptr %add.ptr to i32
  %and79 = and i32 %34, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1192, i32 %and79)
  %cmp80 = icmp eq i32 %and79, 1192
  br i1 %cmp80, label %if.end76.if.end88_crit_edge, label %if.else

if.end76.if.end88_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.else:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr78 = getelementptr i8, ptr %add.ptr, i32 4
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool85.not = icmp eq i32 %35, 0
  %spec.select = select i1 %tobool85.not, ptr null, ptr %add.ptr
  br label %if.end88

if.end88:                                         ; preds = %if.else, %if.end76.if.end88_crit_edge
  %freq.0 = phi ptr [ null, %if.end76.if.end88_crit_edge ], [ %spec.select, %if.else ]
  %div.0 = phi ptr [ null, %if.end76.if.end88_crit_edge ], [ %add.ptr78, %if.else ]
  %36 = ptrtoint ptr %output_instance to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %output_instance, align 4
  %38 = ptrtoint ptr %output_name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %output_name, align 4
  %40 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %node, align 4
  %call90 = call fastcc ptr @ti_fapll_synth_setup(ptr noundef nonnull %call7.i.i, ptr noundef %freq.0, ptr noundef %div.0, i32 noundef %37, ptr noundef %39, ptr noundef %41, ptr noundef %call60) #12
  %cmp.i194 = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i194, label %if.end88.cleanup_crit_edge, label %if.end93

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %outputs, align 4
  %44 = ptrtoint ptr %output_instance to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %output_instance, align 4
  %arrayidx96 = getelementptr ptr, ptr %43, i32 %45
  %46 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call90, ptr %arrayidx96, align 4
  %47 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %clk_num, align 8
  %inc99 = add i32 %48, 1
  store i32 %inc99, ptr %clk_num, align 8
  %49 = ptrtoint ptr %output_name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %output_name, align 4
  %call100 = call i32 @clk_register_clkdev(ptr noundef %call90, ptr noundef %50, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.end88.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %output_instance) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %output_name) #7
  %inc106 = add nuw nsw i32 %i.0195, 1
  %exitcond.not = icmp eq i32 %inc106, 7
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  %call108 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %outputs) #7
  call void @kfree(ptr noundef nonnull %call7.i.i191) #7
  br label %cleanup122

unmap:                                            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  call void @iounmap(ptr noundef %52) #7
  br label %free

free:                                             ; preds = %unmap, %do.end47, %do.end37, %do.end27, %do.end, %if.end6.free_crit_edge, %if.end.free_crit_edge
  %init.0 = phi ptr [ %call7.i.i191, %do.end ], [ %call7.i.i191, %do.end27 ], [ %call7.i.i191, %do.end37 ], [ %call7.i.i191, %unmap ], [ %call7.i.i191, %do.end47 ], [ null, %if.end6.free_crit_edge ], [ null, %if.end.free_crit_edge ]
  %clk_bypass110 = getelementptr inbounds %struct.fapll_data, ptr %call7.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %clk_bypass110 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk_bypass110, align 8
  %tobool111.not = icmp eq ptr %54, null
  br i1 %tobool111.not, label %free.if.end114_crit_edge, label %if.then112

free.if.end114_crit_edge:                         ; preds = %free
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then112:                                       ; preds = %free
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_put(ptr noundef nonnull %54) #7
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %free.if.end114_crit_edge
  %clk_ref115 = getelementptr inbounds %struct.fapll_data, ptr %call7.i.i, i32 0, i32 3
  %55 = ptrtoint ptr %clk_ref115 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk_ref115, align 4
  %tobool116.not = icmp eq ptr %56, null
  br i1 %tobool116.not, label %if.end114.if.end119_crit_edge, label %if.then117

if.end114.if.end119_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.then117:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_put(ptr noundef nonnull %56) #7
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.end114.if.end119_crit_edge
  %57 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %outputs, align 4
  call void @kfree(ptr noundef %58) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @kfree(ptr noundef %init.0) #7
  br label %cleanup122

cleanup122:                                       ; preds = %if.end119, %for.end, %entry.cleanup122_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_name) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ti_fapll_synth_setup(ptr noundef %fd, ptr noundef %freq, ptr noundef %div, i32 noundef %index, ptr noundef %name, ptr noundef %parent, ptr noundef %pll_clk) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent, ptr %parent.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 28) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ti_fapll_synt_ops, ptr %ops, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %call7.i.i, align 8
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %parent.addr, ptr %parent_names, align 8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %num_parents, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i40 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 36) #10
  %tobool5.not = icmp eq ptr %call7.i.i40, null
  br i1 %tobool5.not, label %if.end.free_crit_edge, label %if.end7

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end7:                                          ; preds = %if.end
  %fd8 = getelementptr inbounds %struct.fapll_synth, ptr %call7.i.i40, i32 0, i32 1
  %7 = ptrtoint ptr %fd8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fd, ptr %fd8, align 4
  %index9 = getelementptr inbounds %struct.fapll_synth, ptr %call7.i.i40, i32 0, i32 2
  %8 = ptrtoint ptr %index9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %index, ptr %index9, align 8
  %freq10 = getelementptr inbounds %struct.fapll_synth, ptr %call7.i.i40, i32 0, i32 3
  %9 = ptrtoint ptr %freq10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %freq, ptr %freq10, align 4
  %div11 = getelementptr inbounds %struct.fapll_synth, ptr %call7.i.i40, i32 0, i32 4
  %10 = ptrtoint ptr %div11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %div, ptr %div11, align 8
  %name12 = getelementptr inbounds %struct.fapll_synth, ptr %call7.i.i40, i32 0, i32 5
  %11 = ptrtoint ptr %name12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %name, ptr %name12, align 4
  %init13 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i40, i32 0, i32 2
  %12 = ptrtoint ptr %init13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %init13, align 8
  %clk_pll = getelementptr inbounds %struct.fapll_synth, ptr %call7.i.i40, i32 0, i32 6
  %13 = ptrtoint ptr %clk_pll to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pll_clk, ptr %clk_pll, align 8
  %call15 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i40) #7
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %free

free:                                             ; preds = %do.end, %if.end.free_crit_edge
  %clk.0 = phi ptr [ %call15, %do.end ], [ inttoptr (i32 -12 to ptr), %if.end.free_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i40) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %clk.0, %free ], [ %call15, %if.end7.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_fapll_enable(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.fapll_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !53
  %3 = or i32 %2, 134217728
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #7, !srcloc !54
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not1.i = icmp eq i32 %8, 0
  br i1 %tobool.not1.i, label %entry.do.end.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

while.body.i:                                     ; preds = %if.end3.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %9 = phi i32 [ %13, %if.end3.i.while.body.i_crit_edge ], [ %8, %entry.while.body.i_crit_edge ]
  %retries.02.i = phi i32 [ %dec.i, %if.end3.i.while.body.i_crit_edge ], [ 1000, %entry.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool1.not.i = icmp sgt i32 %9, -1
  br i1 %tobool1.not.i, label %if.end.i, label %while.body.i.ti_fapll_wait_lock.exit_crit_edge

while.body.i.ti_fapll_wait_lock.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ti_fapll_wait_lock.exit

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.02.i)
  %cmp.i = icmp eq i32 %retries.02.i, 0
  br i1 %cmp.i, label %if.end.i.do.end.i_crit_edge, label %if.end3.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end3.i:                                        ; preds = %if.end.i
  %dec.i = add nsw i32 %retries.02.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #7
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !53
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end3.i.do.end.i_crit_edge, label %if.end3.i.while.body.i_crit_edge

if.end3.i.while.body.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end3.i.do.end.i_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.end3.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %name.i = getelementptr inbounds %struct.fapll_data, ptr %hw, i32 0, i32 2
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %15) #11
  br label %ti_fapll_wait_lock.exit

ti_fapll_wait_lock.exit:                          ; preds = %do.end.i, %while.body.i.ti_fapll_wait_lock.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_fapll_disable(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.fapll_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !53
  %3 = and i32 %2, -134217729
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #7, !srcloc !54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_fapll_is_enabled(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.fapll_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !53
  %3 = lshr i32 %2, 24
  %and = and i32 %3, 8
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_fapll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.fapll_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !53
  %3 = lshr i32 %2, 24
  %bypass_bit_inverted.i = getelementptr inbounds %struct.fapll_data, ptr %hw, i32 0, i32 6
  %4 = ptrtoint ptr %bypass_bit_inverted.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bypass_bit_inverted.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.i = icmp ne i32 %and.i, 0
  %retval.0.i = select i1 %tobool.not.i, i1 %tobool3.i, i1 %tobool1.not.i
  br i1 %retval.0.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !53
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %shr = lshr i32 %9, 8
  %and = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end192_crit_edge, label %if.then180

if.end.if.end192_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

if.then180:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div184 = udiv i32 %parent_rate, %and
  br label %if.end192

if.end192:                                        ; preds = %if.then180, %if.end.if.end192_crit_edge
  %rate.0.off0 = phi i32 [ %parent_rate, %if.end.if.end192_crit_edge ], [ %div184, %if.then180 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %9)
  %tobool194.not = icmp ult i32 %9, 65536
  %shr193 = lshr i32 %9, 16
  %narrow = select i1 %tobool194.not, i32 1, i32 %shr193
  %conv199 = mul i32 %rate.0.off0, %narrow
  br label %cleanup

cleanup:                                          ; preds = %if.end192, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv199, %if.end192 ], [ %parent_rate, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_fapll_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp.i = icmp ugt i32 %1, %rate
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %div.i = udiv i32 %rate, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div.i)
  %cmp1.i = icmp ugt i32 %div.i, 65535
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate, align 4
  %mul = mul i32 %3, %div.i
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.i.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ti_fapll_get_parent(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.fapll_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !53
  %3 = lshr i32 %2, 24
  %bypass_bit_inverted.i = getelementptr inbounds %struct.fapll_data, ptr %hw, i32 0, i32 6
  %4 = ptrtoint ptr %bypass_bit_inverted.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bypass_bit_inverted.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.i = icmp ne i32 %and.i, 0
  %retval.0.i = select i1 %tobool.not.i, i1 %tobool3.i, i1 %tobool1.not.i
  %. = zext i1 %retval.0.i to i8
  ret i8 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_fapll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %cmp.i = icmp ult i32 %rate, %parent_rate
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %div.i = udiv i32 %rate, %parent_rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div.i)
  %cmp1.i = icmp ugt i32 %div.i, 65535
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end.i
  %base.i = getelementptr inbounds %struct.fapll_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !53
  %bypass_bit_inverted.i = getelementptr inbounds %struct.fapll_data, ptr %hw, i32 0, i32 6
  %3 = ptrtoint ptr %bypass_bit_inverted.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bypass_bit_inverted.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = and i32 %2, -67108865
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %masksel.i = select i1 %tobool.not.i, i32 4, i32 0
  %v.0.i = or i32 %masksel.i, %6
  %7 = tail call i32 @llvm.bswap.i32(i32 %v.0.i) #7
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !54
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !53
  %13 = and i32 %12, -17432576
  %14 = or i32 %13, 65536
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %shl6 = shl nuw i32 %div.i, 16
  %or7 = or i32 %15, %shl6
  %16 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #7, !srcloc !54
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !53
  %22 = and i32 %21, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool10.not = icmp eq i32 %22, 0
  br i1 %tobool10.not, label %if.end3.if.end13_crit_edge, label %if.then11

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end3
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not1.i = icmp eq i32 %25, 0
  br i1 %tobool.not1.i, label %if.then11.do.end.i34_crit_edge, label %if.then11.while.body.i_crit_edge

if.then11.while.body.i_crit_edge:                 ; preds = %if.then11
  br label %while.body.i

if.then11.do.end.i34_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i34

while.body.i:                                     ; preds = %if.end3.i33.while.body.i_crit_edge, %if.then11.while.body.i_crit_edge
  %26 = phi i32 [ %30, %if.end3.i33.while.body.i_crit_edge ], [ %25, %if.then11.while.body.i_crit_edge ]
  %retries.02.i = phi i32 [ %dec.i, %if.end3.i33.while.body.i_crit_edge ], [ 1000, %if.then11.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %tobool1.not.i = icmp sgt i32 %26, -1
  br i1 %tobool1.not.i, label %if.end.i31, label %while.body.i.if.end13_crit_edge

while.body.i.if.end13_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.i31:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.02.i)
  %cmp.i30 = icmp eq i32 %retries.02.i, 0
  br i1 %cmp.i30, label %if.end.i31.do.end.i34_crit_edge, label %if.end3.i33

if.end.i31.do.end.i34_crit_edge:                  ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i34

if.end3.i33:                                      ; preds = %if.end.i31
  %dec.i = add nsw i32 %retries.02.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #7
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !53
  %tobool.not.i32 = icmp eq i32 %30, 0
  br i1 %tobool.not.i32, label %if.end3.i33.do.end.i34_crit_edge, label %if.end3.i33.while.body.i_crit_edge

if.end3.i33.while.body.i_crit_edge:               ; preds = %if.end3.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end3.i33.do.end.i34_crit_edge:                 ; preds = %if.end3.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i34

do.end.i34:                                       ; preds = %if.end3.i33.do.end.i34_crit_edge, %if.end.i31.do.end.i34_crit_edge, %if.then11.do.end.i34_crit_edge
  %name.i = getelementptr inbounds %struct.fapll_data, ptr %hw, i32 0, i32 2
  %31 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %32) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end.i34, %while.body.i.if.end13_crit_edge, %if.end3.if.end13_crit_edge
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !53
  %36 = ptrtoint ptr %bypass_bit_inverted.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bypass_bit_inverted.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i37 = icmp eq i8 %37, 0
  %38 = and i32 %35, -67108865
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  %masksel.i38 = select i1 %tobool.not.i37, i32 0, i32 4
  %v.0.i39 = or i32 %masksel.i38, %39
  %40 = tail call i32 @llvm.bswap.i32(i32 %v.0.i39) #7
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #7, !srcloc !54
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.i.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_fapll_synth_enable(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fd = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fd, align 4
  %base = getelementptr inbounds %struct.fapll_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !53
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %index = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %7
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  %9 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fd, align 4
  %base4 = getelementptr inbounds %struct.fapll_data, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %base4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base4, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %8) #7, !srcloc !54
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_fapll_synth_disable(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fd = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fd, align 4
  %base = getelementptr inbounds %struct.fapll_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !53
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %index = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %7
  %or = or i32 %shl, %5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fd, align 4
  %base4 = getelementptr inbounds %struct.fapll_data, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %base4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base4, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %8) #7, !srcloc !54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_fapll_synth_is_enabled(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fd = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fd, align 4
  %base = getelementptr inbounds %struct.fapll_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !53
  %index = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %7 = xor i32 %4, -1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = lshr i32 %8, %6
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_fapll_synth_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %div, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fd = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fd, align 4
  %base.i = getelementptr inbounds %struct.fapll_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !53
  %7 = lshr i32 %6, 24
  %bypass_bit_inverted.i = getelementptr inbounds %struct.fapll_data, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %bypass_bit_inverted.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bypass_bit_inverted.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.i = icmp ne i32 %and.i, 0
  %retval.0.i = select i1 %tobool.not.i, i1 %tobool3.i, i1 %tobool1.not.i
  br i1 %retval.0.i, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %conv = zext i32 %parent_rate to i64
  %freq = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %freq, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end2.if.end202_crit_edge, label %if.then4

if.end2.if.end202_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end202

if.then4:                                         ; preds = %if.end2
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #7, !srcloc !53
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %shr = lshr i32 %13, 24
  %and = and i32 %shr, 15
  %and8 = and i32 %13, 16777215
  %mul = mul nuw nsw i32 %and, 10000000
  %add = add nuw nsw i32 %mul, %and8
  %mul9 = mul nuw nsw i64 %conv, 10000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul9)
  %cmp185 = icmp ult i64 %mul9, 4294967296
  br i1 %cmp185, label %if.then189, label %if.else195, !prof !56

if.then189:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %conv190 = trunc i64 %mul9 to i32
  %div193 = udiv i32 %conv190, %add
  %conv194 = zext i32 %div193 to i64
  br label %if.end199

if.else195:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add, i64 %mul9) #13, !srcloc !57
  %asmresult1.i = extractvalue { i64, i64 } %14, 1
  br label %if.end199

if.end199:                                        ; preds = %if.else195, %if.then189
  %rate.0 = phi i64 [ %conv194, %if.then189 ], [ %asmresult1.i, %if.else195 ]
  %mul201 = shl i64 %rate.0, 3
  br label %if.end202

if.end202:                                        ; preds = %if.end199, %if.end2.if.end202_crit_edge
  %rate.1 = phi i64 [ %conv, %if.end2.if.end202_crit_edge ], [ %mul201, %if.end199 ]
  %15 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %div, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !53
  %18 = lshr i32 %17, 24
  %conv208 = zext i32 %18 to i64
  %add209 = add nsw i64 %conv208, -1
  %sub210 = add i64 %add209, %rate.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub210)
  %cmp412 = icmp ult i64 %sub210, 4294967296
  br i1 %cmp412, label %if.then420, label %if.else426, !prof !56

if.then420:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #9
  %conv421 = trunc i64 %sub210 to i32
  %div424 = udiv i32 %conv421, %18
  br label %cleanup

if.else426:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %sub210) #13, !srcloc !57
  %asmresult1.i630 = extractvalue { i64, i64 } %19, 1
  %extract.t679 = trunc i64 %asmresult1.i630 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else426, %if.then420, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 32768, %entry.cleanup_crit_edge ], [ %parent_rate, %if.end.cleanup_crit_edge ], [ %div424, %if.then420 ], [ %extract.t679, %if.else426 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_fapll_synth_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fd1 = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %fd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fd1, align 4
  %base.i = getelementptr inbounds %struct.fapll_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !53
  %5 = lshr i32 %4, 24
  %bypass_bit_inverted.i = getelementptr inbounds %struct.fapll_data, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %bypass_bit_inverted.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bypass_bit_inverted.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.i = icmp ne i32 %and.i, 0
  %retval.0.i = select i1 %tobool.not.i, i1 %tobool3.i, i1 %tobool1.not.i
  br i1 %retval.0.i, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %div = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %div, align 4
  %tobool.not = icmp eq ptr %9, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool3.not = icmp eq i32 %rate, 0
  %or.cond = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %freq = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %freq, align 4
  %tobool4.not = icmp eq ptr %11, null
  %12 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parent_rate, align 4
  br i1 %tobool4.not, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call fastcc i32 @ti_fapll_synth_get_frac_rate(ptr noundef %hw, i32 noundef %13)
  %add = add i32 %call6, -1
  %sub = add i32 %add, %rate
  %div7 = udiv i32 %sub, %rate
  %sub9 = add i32 %add, %div7
  %div10 = udiv i32 %sub9, %div7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %mul = shl i32 %13, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %rate)
  %cmp = icmp ult i32 %mul, %rate
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end205

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end205:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %mul to i64
  %sub15 = add nuw nsw i64 %conv, 3824
  %14 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -8569899142217483195, i64 %sub15) #13, !srcloc !58
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8569899142217483195, i64 %sub15, i64 %14, i32 0) #13, !srcloc !59
  %asmresult10.i = extractvalue { i64, i32 } %15, 0
  %extract310 = lshr i64 %asmresult10.i, 11
  %extract.t311 = trunc i64 %extract310 to i32
  %16 = tail call i32 @llvm.umax.i32(i32 %extract.t311, i32 %rate)
  br label %cleanup

cleanup:                                          ; preds = %if.end205, %if.end11.cleanup_crit_edge, %if.then5, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %mul, %if.end11.cleanup_crit_edge ], [ %div10, %if.then5 ], [ %16, %if.end205 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_fapll_synth_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fd1 = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %fd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fd1, align 4
  %base.i = getelementptr inbounds %struct.fapll_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !53
  %5 = lshr i32 %4, 24
  %bypass_bit_inverted.i = getelementptr inbounds %struct.fapll_data, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %bypass_bit_inverted.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bypass_bit_inverted.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.i = icmp ne i32 %and.i, 0
  %retval.0.i = select i1 %tobool.not.i, i1 %tobool3.i, i1 %tobool1.not.i
  br i1 %retval.0.i, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %div = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %div, align 4
  %tobool.not = icmp eq ptr %9, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool3.not = icmp eq i32 %rate, 0
  %or.cond = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call fastcc i32 @ti_fapll_synth_get_frac_rate(ptr noundef %hw, i32 noundef %parent_rate)
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %rate)
  %cmp = icmp ult i32 %call4, %rate
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %freq = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %freq, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.then5.cleanup_crit_edge, label %if.then5.if.end23_crit_edge

if.then5.if.end23_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %add = add i32 %call4, -1
  %sub = add i32 %add, %rate
  %div9 = udiv i32 %sub, %rate
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %rate)
  %tobool10.not = icmp uge i32 %sub, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div9)
  %cmp11 = icmp ult i32 %div9, 256
  %or.cond65 = and i1 %tobool10.not, %cmp11
  br i1 %or.cond65, label %if.then12, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub14 = add i32 %add, %div9
  %div15 = udiv i32 %sub14, %div9
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.else.if.end16_crit_edge
  %post_rate.0 = phi i32 [ %div15, %if.then12 ], [ 0, %if.else.if.end16_crit_edge ]
  %freq17 = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 3
  %12 = ptrtoint ptr %freq17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %freq17, align 4
  %tobool18.not = icmp eq ptr %13, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %post_rate.0)
  %tobool20.not = icmp eq i32 %post_rate.0, 0
  %or.cond66 = select i1 %tobool18.not, i1 %tobool20.not, i1 false
  br i1 %or.cond66, label %if.end16.cleanup_crit_edge, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end16.if.end23_crit_edge, %if.then5.if.end23_crit_edge
  %post_rate.1 = phi i32 [ 0, %if.then5.if.end23_crit_edge ], [ %post_rate.0, %if.end16.if.end23_crit_edge ]
  %post_div_m.0 = phi i32 [ 0, %if.then5.if.end23_crit_edge ], [ %div9, %if.end16.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %post_rate.1, i32 %rate)
  %cmp24.not = icmp eq i32 %post_rate.1, %rate
  br i1 %cmp24.not, label %if.end23.if.end30_crit_edge, label %land.lhs.true25

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true25:                                  ; preds = %if.end23
  %freq26 = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 3
  %14 = ptrtoint ptr %freq26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %freq26, align 4
  %tobool27.not = icmp eq ptr %15, null
  br i1 %tobool27.not, label %land.lhs.true25.if.end30_crit_edge, label %if.then28

land.lhs.true25.if.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %land.lhs.true25
  %conv.i = zext i32 %parent_rate to i64
  %mul.i = shl nuw nsw i64 %conv.i, 3
  %conv1.i = zext i32 %rate to i64
  %add.i = add nsw i64 %conv1.i, -1
  %sub.i = add nuw nsw i64 %mul.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp170.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp170.i, label %if.then174.i, label %if.else180.i, !prof !56

if.then174.i:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %conv175.i = trunc i64 %sub.i to i32
  %div178.i = udiv i32 %conv175.i, %rate
  br label %if.end184.i

if.else180.i:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate, i64 %sub.i) #13, !srcloc !57
  %asmresult1.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t707.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.else180.i, %if.then174.i
  %_tmp.0.off0.i = phi i32 [ %div178.i, %if.then174.i ], [ %extract.t707.i, %if.else180.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3839, i32 %_tmp.0.off0.i)
  %cmp189.i = icmp ugt i32 %_tmp.0.off0.i, 3839
  br i1 %cmp189.i, label %if.end184.i.if.end30_crit_edge, label %if.end192.i

if.end184.i.if.end30_crit_edge:                   ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end192.i:                                      ; preds = %if.end184.i
  %div188.lhs.trunc.i = trunc i32 %_tmp.0.off0.i to i16
  %div188703.i = udiv i16 %div188.lhs.trunc.i, 15
  %div188.zext.i = zext i16 %div188703.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %_tmp.0.off0.i)
  %17 = icmp ult i32 %_tmp.0.off0.i, 15
  %spec.select.i = select i1 %17, i32 1, i32 %div188.zext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %spec.select.i)
  %cmp196712.i = icmp ult i32 %spec.select.i, 255
  br i1 %cmp196712.i, label %for.body.lr.ph.i, label %if.end192.i.if.end439.i_crit_edge

if.end192.i.if.end439.i_crit_edge:                ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end439.i

for.body.lr.ph.i:                                 ; preds = %if.end192.i
  %mul201.i = mul nuw nsw i64 %conv.i, 80000000
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %post_div_m.0713.i = phi i32 [ %spec.select.i, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mul202.i = mul i32 %post_div_m.0713.i, %rate
  %conv203.i = zext i32 %mul202.i to i64
  %add204.i = add nsw i64 %conv203.i, -1
  %sub205.i = add nsw i64 %add204.i, %mul201.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub205.i)
  %cmp408.i = icmp ult i64 %sub205.i, 4294967296
  br i1 %cmp408.i, label %if.then416.i, label %if.else422.i, !prof !56

if.then416.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv417.i = trunc i64 %sub205.i to i32
  %div420.i = udiv i32 %conv417.i, %mul202.i
  br label %if.end426.i

if.else422.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul202.i, i64 %sub205.i) #13, !srcloc !57
  %asmresult1.i658.i = extractvalue { i64, i64 } %18, 1
  %extract.t710.i = trunc i64 %asmresult1.i658.i to i32
  br label %if.end426.i

if.end426.i:                                      ; preds = %if.else422.i, %if.then416.i
  %_tmp198.0.off0.i = phi i32 [ %div420.i, %if.then416.i ], [ %extract.t710.i, %if.else422.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000000, i32 %_tmp198.0.off0.i)
  %cmp432.i = icmp ult i32 %_tmp198.0.off0.i, 160000000
  br i1 %cmp432.i, label %if.end426.for.end_crit_edge.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end426.i
  %inc.i = add nuw nsw i32 %post_div_m.0713.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 255
  br i1 %exitcond.not.i, label %for.inc.i.if.end30_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end30_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end426.for.end_crit_edge.i:                    ; preds = %if.end426.i
  call void @__sanitizer_cov_trace_pc() #9
  %_tmp198.0.off0.i.frozen = freeze i32 %_tmp198.0.off0.i
  %div431.le719.i = udiv i32 %_tmp198.0.off0.i.frozen, 10000000
  %19 = mul i32 %div431.le719.i, 10000000
  %rem430.le722.i.decomposed = sub i32 %_tmp198.0.off0.i.frozen, %19
  %phi.bo.i = shl nuw nsw i32 %div431.le719.i, 24
  %phi.bo735.i = and i32 %phi.bo.i, 251658240
  %phi.bo = or i32 %phi.bo735.i, -2147483648
  br label %if.end439.i

if.end439.i:                                      ; preds = %if.end426.for.end_crit_edge.i, %if.end192.i.if.end439.i_crit_edge
  %synth_int_div.1732.i = phi i32 [ -2147483648, %if.end192.i.if.end439.i_crit_edge ], [ %phi.bo, %if.end426.for.end_crit_edge.i ]
  %synth_frac_div.1731.i = phi i32 [ 0, %if.end192.i.if.end439.i_crit_edge ], [ %rem430.le722.i.decomposed, %if.end426.for.end_crit_edge.i ]
  %post_div_m.0.lcssa730.i = phi i32 [ 255, %if.end192.i.if.end439.i_crit_edge ], [ %post_div_m.0713.i, %if.end426.for.end_crit_edge.i ]
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #7, !srcloc !53
  %21 = shl i32 %20, 24
  %and442.i = and i32 %21, 1610612736
  %or447.i = or i32 %synth_int_div.1732.i, %synth_frac_div.1731.i
  %or448.i = or i32 %or447.i, %and442.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %or448.i) #7
  %23 = ptrtoint ptr %freq26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %freq26, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #7, !srcloc !54
  br label %if.end30

if.end30:                                         ; preds = %if.end439.i, %for.inc.i.if.end30_crit_edge, %if.end184.i.if.end30_crit_edge, %land.lhs.true25.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  %post_div_m.1 = phi i32 [ %post_div_m.0, %land.lhs.true25.if.end30_crit_edge ], [ %post_div_m.0, %if.end23.if.end30_crit_edge ], [ %post_div_m.0.lcssa730.i, %if.end439.i ], [ -22, %if.end184.i.if.end30_crit_edge ], [ -22, %for.inc.i.if.end30_crit_edge ]
  %25 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %div, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !53
  %28 = and i32 %27, 16777215
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %or = or i32 %post_div_m.1, %29
  %or34 = or i32 %or, 256
  %30 = tail call i32 @llvm.bswap.i32(i32 %or34)
  %31 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %div, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #7, !srcloc !54
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end16.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_fapll_synth_get_frac_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div.i = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %div.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ti_fapll_synth_recalc_rate.exit_crit_edge, label %if.end.i

entry.ti_fapll_synth_recalc_rate.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ti_fapll_synth_recalc_rate.exit

if.end.i:                                         ; preds = %entry
  %fd.i = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %fd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fd.i, align 4
  %base.i.i = getelementptr inbounds %struct.fapll_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !53
  %7 = lshr i32 %6, 24
  %bypass_bit_inverted.i.i = getelementptr inbounds %struct.fapll_data, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %bypass_bit_inverted.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bypass_bit_inverted.i.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  %and.i.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.i.i = icmp ne i32 %and.i.i, 0
  %retval.0.i.i = select i1 %tobool.not.i.i, i1 %tobool3.i.i, i1 %tobool1.not.i.i
  br i1 %retval.0.i.i, label %if.end.i.ti_fapll_synth_recalc_rate.exit_crit_edge, label %if.end2.i

if.end.i.ti_fapll_synth_recalc_rate.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ti_fapll_synth_recalc_rate.exit

if.end2.i:                                        ; preds = %if.end.i
  %conv.i = zext i32 %parent_rate to i64
  %freq.i = getelementptr inbounds %struct.fapll_synth, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %freq.i, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %if.end2.i.if.end202.i_crit_edge, label %if.then4.i

if.end2.i.if.end202.i_crit_edge:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end202.i

if.then4.i:                                       ; preds = %if.end2.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #7, !srcloc !53
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %shr.i = lshr i32 %13, 24
  %and.i = and i32 %shr.i, 15
  %and8.i = and i32 %13, 16777215
  %mul.i = mul nuw nsw i32 %and.i, 10000000
  %add.i = add nuw nsw i32 %mul.i, %and8.i
  %mul9.i = mul nuw nsw i64 %conv.i, 10000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul9.i)
  %cmp185.i = icmp ult i64 %mul9.i, 4294967296
  br i1 %cmp185.i, label %if.then189.i, label %if.else195.i, !prof !56

if.then189.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv190.i = trunc i64 %mul9.i to i32
  %div193.i = udiv i32 %conv190.i, %add.i
  %conv194.i = zext i32 %div193.i to i64
  br label %if.end199.i

if.else195.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i, i64 %mul9.i) #13, !srcloc !57
  %asmresult1.i.i = extractvalue { i64, i64 } %14, 1
  br label %if.end199.i

if.end199.i:                                      ; preds = %if.else195.i, %if.then189.i
  %rate.0.i = phi i64 [ %conv194.i, %if.then189.i ], [ %asmresult1.i.i, %if.else195.i ]
  %mul201.i = shl i64 %rate.0.i, 3
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.end199.i, %if.end2.i.if.end202.i_crit_edge
  %rate.1.i = phi i64 [ %conv.i, %if.end2.i.if.end202.i_crit_edge ], [ %mul201.i, %if.end199.i ]
  %15 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %div.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !53
  %18 = lshr i32 %17, 24
  %conv208.i = zext i32 %18 to i64
  %add209.i = add nsw i64 %conv208.i, -1
  %sub210.i = add i64 %add209.i, %rate.1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub210.i)
  %cmp412.i = icmp ult i64 %sub210.i, 4294967296
  br i1 %cmp412.i, label %if.then420.i, label %if.else426.i, !prof !56

if.then420.i:                                     ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv421.i = trunc i64 %sub210.i to i32
  %div424.i = udiv i32 %conv421.i, %18
  br label %ti_fapll_synth_recalc_rate.exit

if.else426.i:                                     ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %sub210.i) #13, !srcloc !57
  %asmresult1.i630.i = extractvalue { i64, i64 } %19, 1
  %extract.t679.i = trunc i64 %asmresult1.i630.i to i32
  br label %ti_fapll_synth_recalc_rate.exit

ti_fapll_synth_recalc_rate.exit:                  ; preds = %if.else426.i, %if.then420.i, %if.end.i.ti_fapll_synth_recalc_rate.exit_crit_edge, %entry.ti_fapll_synth_recalc_rate.exit_crit_edge
  %retval.0.i = phi i32 [ 32768, %entry.ti_fapll_synth_recalc_rate.exit_crit_edge ], [ %parent_rate, %if.end.i.ti_fapll_synth_recalc_rate.exit_crit_edge ], [ %div424.i, %if.then420.i ], [ %extract.t679.i, %if.else426.i ]
  %20 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %div.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !53
  %23 = lshr i32 %22, 24
  %mul = mul i32 %23, %retval.0.i
  ret i32 %mul
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { cold }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__of_table_ti_fapll_clock, !1, !"__of_table_ti_fapll_clock", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/fapll.c", i32 672, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/fapll.c", i32 566, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ti_fapll_setup._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ti_fapll_setup._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/ti/fapll.c", i32 575, i32 3}
!10 = !{ptr @ti_fapll_setup._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ti_fapll_setup._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ti/fapll.c", i32 581, i32 3}
!14 = !{ptr @ti_fapll_setup._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ti_fapll_setup._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ti/fapll.c", i32 587, i32 3}
!18 = !{ptr @ti_fapll_setup._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ti_fapll_setup._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/ti/fapll.c", i32 619, i32 43}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/ti/fapll.c", i32 623, i32 40}
!24 = !{ptr @ti_fapll_ops, !25, !"ti_fapll_ops", i1 false, i1 false}
!25 = !{!"../drivers/clk/ti/fapll.c", i32 272, i32 29}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/ti/fapll.c", i32 133, i32 2}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ti_fapll_wait_lock._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ti_fapll_wait_lock._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/ti/fapll.c", i32 212, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ti_fapll_set_div_mult._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ti_fapll_set_div_mult._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/ti/fapll.c", i32 526, i32 3}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ti_fapll_synth_setup._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ti_fapll_synth_setup._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @ti_fapll_synt_ops, !42, !"ti_fapll_synt_ops", i1 false, i1 false}
!42 = !{!"../drivers/clk/ti/fapll.c", i32 482, i32 29}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"auto-init"}
!53 = !{i64 4595381}
!54 = !{i64 4594963}
!55 = !{i8 0, i8 2}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2148644277, i64 2148644557, i64 2148644891, i64 2148645225}
!58 = !{i64 1158446, i64 1158473}
!59 = !{i64 1159141, i64 1159168, i64 1159201, i64 1159222, i64 1159249, i64 1159275}
