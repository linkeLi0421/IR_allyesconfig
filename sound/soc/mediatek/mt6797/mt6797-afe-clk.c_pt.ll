; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt6797/mt6797-afe-clk.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt6797/mt6797-afe-clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_base_afe = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, ptr, i32, i32, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }

@mt6797_init_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 49, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(), devm_clk_get %s fail, ret %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt6797_init_clock\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sound/soc/mediatek/mt6797/mt6797-afe-clk.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt6797_init_clock._entry_ptr = internal global ptr @mt6797_init_clock._entry, section ".printk_index", align 4
@mt6797_afe_enable_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 65, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(), clk_prepare_enable %s fail %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt6797_afe_enable_clock\00", [40 x i8] zeroinitializer }, align 32
@mt6797_afe_enable_clock._entry_ptr = internal global ptr @mt6797_afe_enable_clock._entry, section ".printk_index", align 4
@mt6797_afe_enable_clock._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 72, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt6797_afe_enable_clock._entry_ptr.8 = internal global ptr @mt6797_afe_enable_clock._entry.7, section ".printk_index", align 4
@mt6797_afe_enable_clock._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 79, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt6797_afe_enable_clock._entry_ptr.10 = internal global ptr @mt6797_afe_enable_clock._entry.9, section ".printk_index", align 4
@mt6797_afe_enable_clock._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.2, i32 88, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(), clk_set_parent %s-%s fail %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mt6797_afe_enable_clock._entry_ptr.13 = internal global ptr @mt6797_afe_enable_clock._entry.11, section ".printk_index", align 4
@mt6797_afe_enable_clock._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 95, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt6797_afe_enable_clock._entry_ptr.15 = internal global ptr @mt6797_afe_enable_clock._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"infra_sys_audio_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"infra_sys_audio_26m\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"top_mux_audio\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"top_mux_aud_intbus\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_sys_pll3_d4\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_sys_pll1_d4\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_clk26m_clk\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 47, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 64, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 71, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 78, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 86, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 94, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 25, i32 24 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 26, i32 28 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 27, i32 22 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 28, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 29, i32 25 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 30, i32 25 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [46 x i8] c"../sound/soc/mediatek/mt6797/mt6797-afe-clk.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 31, i32 17 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @mt6797_afe_enable_clock._entry, ptr @mt6797_afe_enable_clock._entry.11, ptr @mt6797_afe_enable_clock._entry.14, ptr @mt6797_afe_enable_clock._entry.7, ptr @mt6797_afe_enable_clock._entry.9, ptr @mt6797_afe_enable_clock._entry_ptr, ptr @mt6797_afe_enable_clock._entry_ptr.10, ptr @mt6797_afe_enable_clock._entry_ptr.13, ptr @mt6797_afe_enable_clock._entry_ptr.15, ptr @mt6797_afe_enable_clock._entry_ptr.8, ptr @mt6797_init_clock._entry, ptr @mt6797_init_clock._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_init_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_enable_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_enable_clock._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_enable_clock._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_enable_clock._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_enable_clock._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt6797_init_clock(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5.i.i, ptr %1, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call3 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.16) #3
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3, ptr %8, align 4
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %cmp.i = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.preheader.do.end_crit_edge, label %for.inc

for.body.preheader.do.end_crit_edge:              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

do.end:                                           ; preds = %for.inc.5.do.end_crit_edge, %for.inc.4.do.end_crit_edge, %for.inc.3.do.end_crit_edge, %for.inc.2.do.end_crit_edge, %for.inc.1.do.end_crit_edge, %for.inc.do.end_crit_edge, %for.body.preheader.do.end_crit_edge
  %i.037.lcssa = phi i32 [ 0, %for.body.preheader.do.end_crit_edge ], [ 1, %for.inc.do.end_crit_edge ], [ 2, %for.inc.1.do.end_crit_edge ], [ 3, %for.inc.2.do.end_crit_edge ], [ 4, %for.inc.3.do.end_crit_edge ], [ 5, %for.inc.4.do.end_crit_edge ], [ 6, %for.inc.5.do.end_crit_edge ]
  %.lcssa39 = phi ptr [ @.str.16, %for.body.preheader.do.end_crit_edge ], [ @.str.17, %for.inc.do.end_crit_edge ], [ @.str.18, %for.inc.1.do.end_crit_edge ], [ @.str.19, %for.inc.2.do.end_crit_edge ], [ @.str.20, %for.inc.3.do.end_crit_edge ], [ @.str.21, %for.inc.4.do.end_crit_edge ], [ @.str.22, %for.inc.5.do.end_crit_edge ]
  %.lcssa = phi ptr [ %12, %for.body.preheader.do.end_crit_edge ], [ %28, %for.inc.do.end_crit_edge ], [ %36, %for.inc.1.do.end_crit_edge ], [ %44, %for.inc.2.do.end_crit_edge ], [ %52, %for.inc.3.do.end_crit_edge ], [ %60, %for.inc.4.do.end_crit_edge ], [ %68, %for.inc.5.do.end_crit_edge ]
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %.lcssa to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %.lcssa39, i32 noundef %15) #6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %arrayidx16 = getelementptr ptr, ptr %17, i32 %i.037.lcssa
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx16, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call3.1 = tail call ptr @devm_clk_get(ptr noundef %22, ptr noundef nonnull @.str.17) #3
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %arrayidx5.1 = getelementptr ptr, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call3.1, ptr %arrayidx5.1, align 4
  %26 = load ptr, ptr %1, align 4
  %arrayidx7.1 = getelementptr ptr, ptr %26, i32 1
  %27 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx7.1, align 4
  %cmp.i.1 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.do.end_crit_edge, label %for.inc.1

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

for.inc.1:                                        ; preds = %for.inc
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %call3.2 = tail call ptr @devm_clk_get(ptr noundef %30, ptr noundef nonnull @.str.18) #3
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %arrayidx5.2 = getelementptr ptr, ptr %32, i32 2
  %33 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call3.2, ptr %arrayidx5.2, align 4
  %34 = load ptr, ptr %1, align 4
  %arrayidx7.2 = getelementptr ptr, ptr %34, i32 2
  %35 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx7.2, align 4
  %cmp.i.2 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.inc.1.do.end_crit_edge, label %for.inc.2

for.inc.1.do.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

for.inc.2:                                        ; preds = %for.inc.1
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %call3.3 = tail call ptr @devm_clk_get(ptr noundef %38, ptr noundef nonnull @.str.19) #3
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %arrayidx5.3 = getelementptr ptr, ptr %40, i32 3
  %41 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call3.3, ptr %arrayidx5.3, align 4
  %42 = load ptr, ptr %1, align 4
  %arrayidx7.3 = getelementptr ptr, ptr %42, i32 3
  %43 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx7.3, align 4
  %cmp.i.3 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %for.inc.2.do.end_crit_edge, label %for.inc.3

for.inc.2.do.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

for.inc.3:                                        ; preds = %for.inc.2
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %call3.4 = tail call ptr @devm_clk_get(ptr noundef %46, ptr noundef nonnull @.str.20) #3
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %arrayidx5.4 = getelementptr ptr, ptr %48, i32 4
  %49 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call3.4, ptr %arrayidx5.4, align 4
  %50 = load ptr, ptr %1, align 4
  %arrayidx7.4 = getelementptr ptr, ptr %50, i32 4
  %51 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx7.4, align 4
  %cmp.i.4 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %for.inc.3.do.end_crit_edge, label %for.inc.4

for.inc.3.do.end_crit_edge:                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

for.inc.4:                                        ; preds = %for.inc.3
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  %call3.5 = tail call ptr @devm_clk_get(ptr noundef %54, ptr noundef nonnull @.str.21) #3
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %arrayidx5.5 = getelementptr ptr, ptr %56, i32 5
  %57 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call3.5, ptr %arrayidx5.5, align 4
  %58 = load ptr, ptr %1, align 4
  %arrayidx7.5 = getelementptr ptr, ptr %58, i32 5
  %59 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx7.5, align 4
  %cmp.i.5 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5, label %for.inc.4.do.end_crit_edge, label %for.inc.5

for.inc.4.do.end_crit_edge:                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

for.inc.5:                                        ; preds = %for.inc.4
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %call3.6 = tail call ptr @devm_clk_get(ptr noundef %62, ptr noundef nonnull @.str.22) #3
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %arrayidx5.6 = getelementptr ptr, ptr %64, i32 6
  %65 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call3.6, ptr %arrayidx5.6, align 4
  %66 = load ptr, ptr %1, align 4
  %arrayidx7.6 = getelementptr ptr, ptr %66, i32 6
  %67 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx7.6, align 4
  %cmp.i.6 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.6, label %for.inc.5.do.end_crit_edge, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc.5.do.end_crit_edge:                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

cleanup:                                          ; preds = %for.inc.5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt6797_afe_enable_clock(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %5) #3
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i.ph) #6
  br label %CLK_INFRA_SYS_AUDIO_ERR

if.end:                                           ; preds = %if.end.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx2 = getelementptr ptr, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %call.i76 = tail call i32 @clk_prepare(ptr noundef %11) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not.i77 = icmp eq i32 %call.i76, 0
  br i1 %tobool.not.i77, label %if.end.i80, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end8

if.end.i80:                                       ; preds = %if.end
  %call1.i78 = tail call i32 @clk_enable(ptr noundef %11) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78)
  %tobool2.not.i79 = icmp eq i32 %call1.i78, 0
  br i1 %tobool2.not.i79, label %if.end10, label %if.then3.i81

if.then3.i81:                                     ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %11) #3
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i81, %if.end.do.end8_crit_edge
  %retval.0.i82.ph = phi i32 [ %call1.i78, %if.then3.i81 ], [ %call.i76, %if.end.do.end8_crit_edge ]
  %dev9 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i82.ph) #6
  br label %CLK_INFRA_SYS_AUD_26M_ERR

if.end10:                                         ; preds = %if.end.i80
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %arrayidx12 = getelementptr ptr, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx12, align 4
  %call.i84 = tail call i32 @clk_prepare(ptr noundef %17) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i85 = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i85, label %if.end.i88, label %if.end10.do.end18_crit_edge

if.end10.do.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end18

if.end.i88:                                       ; preds = %if.end10
  %call1.i86 = tail call i32 @clk_enable(ptr noundef %17) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86)
  %tobool2.not.i87 = icmp eq i32 %call1.i86, 0
  br i1 %tobool2.not.i87, label %if.end20, label %if.then3.i89

if.then3.i89:                                     ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %17) #3
  br label %do.end18

do.end18:                                         ; preds = %if.then3.i89, %if.end10.do.end18_crit_edge
  %retval.0.i90.ph = phi i32 [ %call1.i86, %if.then3.i89 ], [ %call.i84, %if.end10.do.end18_crit_edge ]
  %dev19 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %18 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i90.ph) #6
  br label %CLK_MUX_AUDIO_ERR

if.end20:                                         ; preds = %if.end.i88
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %arrayidx22 = getelementptr ptr, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx22, align 4
  %arrayidx24 = getelementptr ptr, ptr %21, i32 6
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx24, align 4
  %call25 = tail call i32 @clk_set_parent(ptr noundef %23, ptr noundef %25) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  %dev31 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %26 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i32 noundef %call25) #6
  br label %CLK_MUX_AUDIO_ERR

if.end32:                                         ; preds = %if.end20
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %arrayidx34 = getelementptr ptr, ptr %29, i32 3
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx34, align 4
  %call.i92 = tail call i32 @clk_prepare(ptr noundef %31) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i93 = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i93, label %if.end.i96, label %if.end32.do.end40_crit_edge

if.end32.do.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end40

if.end.i96:                                       ; preds = %if.end32
  %call1.i94 = tail call i32 @clk_enable(ptr noundef %31) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94)
  %tobool2.not.i95 = icmp eq i32 %call1.i94, 0
  br i1 %tobool2.not.i95, label %if.end.i96.cleanup_crit_edge, label %if.then3.i97

if.end.i96.cleanup_crit_edge:                     ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then3.i97:                                     ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %31) #3
  br label %do.end40

do.end40:                                         ; preds = %if.then3.i97, %if.end32.do.end40_crit_edge
  %retval.0.i98.ph = phi i32 [ %call1.i94, %if.then3.i97 ], [ %call.i92, %if.end32.do.end40_crit_edge ]
  %dev41 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %32 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i98.ph) #6
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %arrayidx44 = getelementptr ptr, ptr %35, i32 3
  %36 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx44, align 4
  tail call void @clk_disable(ptr noundef %37) #3
  tail call void @clk_unprepare(ptr noundef %37) #3
  br label %CLK_MUX_AUDIO_ERR

CLK_MUX_AUDIO_ERR:                                ; preds = %do.end40, %do.end30, %do.end18
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %arrayidx46 = getelementptr ptr, ptr %39, i32 2
  %40 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx46, align 4
  tail call void @clk_disable(ptr noundef %41) #3
  tail call void @clk_unprepare(ptr noundef %41) #3
  br label %CLK_INFRA_SYS_AUD_26M_ERR

CLK_INFRA_SYS_AUD_26M_ERR:                        ; preds = %CLK_MUX_AUDIO_ERR, %do.end8
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %arrayidx48 = getelementptr ptr, ptr %43, i32 1
  %44 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx48, align 4
  tail call void @clk_disable(ptr noundef %45) #3
  tail call void @clk_unprepare(ptr noundef %45) #3
  br label %CLK_INFRA_SYS_AUDIO_ERR

CLK_INFRA_SYS_AUDIO_ERR:                          ; preds = %CLK_INFRA_SYS_AUD_26M_ERR, %do.end
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  tail call void @clk_disable(ptr noundef %49) #3
  tail call void @clk_unprepare(ptr noundef %49) #3
  br label %cleanup

cleanup:                                          ; preds = %CLK_INFRA_SYS_AUDIO_ERR, %if.end.i96.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt6797_afe_disable_clock(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %5) #3
  tail call void @clk_unprepare(ptr noundef %5) #3
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %arrayidx2 = getelementptr ptr, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  tail call void @clk_disable(ptr noundef %9) #3
  tail call void @clk_unprepare(ptr noundef %9) #3
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arrayidx4 = getelementptr ptr, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_disable(ptr noundef %13) #3
  tail call void @clk_unprepare(ptr noundef %13) #3
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %17) #3
  tail call void @clk_unprepare(ptr noundef %17) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-clk.c", i32 47, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt6797_init_clock._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt6797_init_clock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-clk.c", i32 64, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mt6797_afe_enable_clock._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mt6797_afe_enable_clock._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @mt6797_afe_enable_clock._entry.7, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-clk.c", i32 71, i32 3}
!15 = !{ptr @mt6797_afe_enable_clock._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @mt6797_afe_enable_clock._entry.9, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-clk.c", i32 78, i32 3}
!18 = !{ptr @mt6797_afe_enable_clock._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-clk.c", i32 86, i32 3}
!21 = !{ptr @mt6797_afe_enable_clock._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @mt6797_afe_enable_clock._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @mt6797_afe_enable_clock._entry.14, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-clk.c", i32 94, i32 3}
!25 = !{ptr @mt6797_afe_enable_clock._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-clk.c", i32 25, i32 24}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-clk.c", i32 26, i32 28}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-clk.c", i32 27, i32 22}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-clk.c", i32 28, i32 26}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-clk.c", i32 29, i32 25}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-clk.c", i32 30, i32 25}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-clk.c", i32 31, i32 17}
!40 = distinct !{null, !41, !"aud_clks", i1 false, i1 false}
!41 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-clk.c", i32 24, i32 20}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
