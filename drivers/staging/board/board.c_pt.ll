; ModuleID = '/llk/IR_all_yes/drivers/staging/board/board.c_pt.bc'
source_filename = "../drivers/staging/board/board.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.board_staging_clk = type { ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.board_staging_dev = type { ptr, ptr, i32, ptr }

@irqc_node = internal unnamed_addr global ptr null, section ".init.data", align 4
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/staging/board/board.c\00", [34 x i8] zeroinitializer }, align 32
@irqc_base = internal unnamed_addr global i32 0, section ".init.data", align 4
@board_staging_register_clock.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"board\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"board_staging_register_clock\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Aliasing clock %s for con_id %s dev_id %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"board_staging: Aliasing clock %s for con_id %s dev_id %s\0A\00", [38 x i8] zeroinitializer }, align 32
@board_staging_register_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013board_staging: Failed to alias clock %s (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@board_staging_register_clock._entry_ptr = internal global ptr @board_staging_register_clock._entry, section ".printk_index", align 4
@board_staging_register_device.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str, ptr @.str.7, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"board_staging_register_device\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Trying to register device %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"board_staging: Trying to register device %s\0A\00", [51 x i8] zeroinitializer }, align 32
@board_staging_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014board_staging: Skipping %s, already in DT\0A\00", [51 x i8] zeroinitializer }, align 32
@board_staging_register_device._entry_ptr = internal global ptr @board_staging_register_device._entry, section ".printk_index", align 4
@board_staging_register_device._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013board_staging: Failed to register device %s (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@board_staging_register_device._entry_ptr.12 = internal global ptr @board_staging_register_device._entry.10, section ".printk_index", align 4
@gic_fixup_resource.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str, ptr @.str.14, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gic_fixup_resource\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hwirq %u -> virq %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"board_staging: hwirq %u -> virq %u\0A\00", [60 x i8] zeroinitializer }, align 32
@board_staging_add_dev_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013board_staging: Cannot find domain node %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"board_staging_add_dev_domain\00", [35 x i8] zeroinitializer }, align 32
@board_staging_add_dev_domain._entry_ptr = internal global ptr @board_staging_add_dev_domain._entry, section ".printk_index", align 4
@board_staging_add_dev_domain.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->power.lock\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 62, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 126, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 130, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 172, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 175, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 189, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 109, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 145, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [33 x i8] c"../drivers/staging/board/board.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 153, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @board_staging_add_dev_domain._entry, ptr @board_staging_add_dev_domain._entry_ptr, ptr @board_staging_register_clock._entry, ptr @board_staging_register_clock._entry_ptr, ptr @board_staging_register_device._entry, ptr @board_staging_register_device._entry.10, ptr @board_staging_register_device._entry_ptr, ptr @board_staging_register_device._entry_ptr.12, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @board_staging_add_dev_domain.__key, ptr @.str.18], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_staging_register_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_staging_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_staging_register_device._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_staging_add_dev_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_staging_add_dev_domain.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @board_staging_dt_node_available(ptr nocapture noundef readonly %resource, i32 noundef %num_resources) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_resources)
  %cmp13.not = icmp eq i32 %num_resources, 0
  br i1 %cmp13.not, label %entry.cleanup5_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup5

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %entry.for.body_crit_edge
  %cmp16 = phi i1 [ %cmp, %for.inc.critedge.for.body_crit_edge ], [ true, %entry.for.body_crit_edge ]
  %i.014 = phi i32 [ %inc, %for.inc.critedge.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %flags.i = getelementptr %struct.resource, ptr %resource, i32 %i.014, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i)
  %cmp1 = icmp eq i32 %and.i, 512
  br i1 %cmp1, label %if.then, label %for.body.for.inc.critedge_crit_edge

for.body.for.inc.critedge_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.critedge

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr %struct.resource, ptr %resource, i32 %i.014
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %call.i = call ptr @of_find_all_nodes(ptr noundef null) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #4
  %tobool.not14.i = icmp eq ptr %call.i, null
  %4 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  br i1 %tobool.not14.i, label %if.then.find_by_address.exit.thread_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.find_by_address.exit.thread_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_by_address.exit.thread

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %dn.015.i = phi ptr [ %call6.i, %if.end5.i.while.body.i_crit_edge ], [ %call.i, %if.then.while.body.i_crit_edge ]
  %call1.i = call i32 @of_address_to_resource(ptr noundef nonnull %dn.015.i, i32 noundef 0, ptr noundef nonnull %res.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i, label %while.body.i.if.end5.i_crit_edge

while.body.i.if.end5.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

if.then.i:                                        ; preds = %while.body.i
  %5 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp.i = icmp eq i32 %6, %3
  br i1 %cmp.i, label %find_by_address.exit, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %while.body.i.if.end5.i_crit_edge
  %call6.i = call ptr @of_find_all_nodes(ptr noundef nonnull %dn.015.i) #4
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %if.end5.i.find_by_address.exit.thread_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

if.end5.i.find_by_address.exit.thread_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_by_address.exit.thread

find_by_address.exit.thread:                      ; preds = %if.end5.i.find_by_address.exit.thread_crit_edge, %if.then.find_by_address.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #4
  br label %for.inc.critedge

find_by_address.exit:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @of_node_put(ptr noundef nonnull %dn.015.i) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #4
  br label %cleanup5

for.inc.critedge:                                 ; preds = %find_by_address.exit.thread, %for.body.for.inc.critedge_crit_edge
  %inc = add nuw i32 %i.014, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %num_resources)
  %cmp = icmp ult i32 %inc, %num_resources
  %exitcond.not = icmp eq i32 %inc, %num_resources
  br i1 %exitcond.not, label %for.inc.critedge.cleanup5_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.critedge.cleanup5_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup5

cleanup5:                                         ; preds = %for.inc.critedge.cleanup5_crit_edge, %find_by_address.exit, %entry.cleanup5_crit_edge
  %cmp12 = phi i1 [ %cmp16, %find_by_address.exit ], [ false, %entry.cleanup5_crit_edge ], [ %cmp, %for.inc.critedge.cleanup5_crit_edge ]
  ret i1 %cmp12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @board_staging_gic_setup_xlate(ptr noundef %gic_match, i32 noundef %base) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @irqc_node, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !51

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %gic_match) #4
  store ptr %call, ptr @irqc_node, align 4
  %tobool21.not = icmp eq ptr %call, null
  br i1 %tobool21.not, label %if.end45, label %if.end.if.end55_crit_edge, !prof !52

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

if.end45:                                         ; preds = %if.end
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 9, ptr noundef null) #4
  %.pr = load ptr, ptr @irqc_node, align 4
  %tobool53.not = icmp eq ptr %.pr, null
  br i1 %tobool53.not, label %if.end45.return_crit_edge, label %if.end45.if.end55_crit_edge

if.end45.if.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

if.end45.return_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end55:                                         ; preds = %if.end45.if.end55_crit_edge, %if.end.if.end55_crit_edge
  store i32 %base, ptr @irqc_base, align 4
  br label %return

return:                                           ; preds = %if.end55, %if.end45.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ -2, %if.end45.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @board_staging_gic_fixup_resources(ptr nocapture noundef %res, i32 noundef %nres) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nres)
  %cmp3.not = icmp eq i32 %nres, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.resource, ptr %res, i32 %i.04
  tail call fastcc void @gic_fixup_resource(ptr noundef %arrayidx) #7
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %nres
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gic_fixup_resource(ptr nocapture noundef %res) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %irq_data = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %irq_data) #4
  %0 = getelementptr inbounds i8, ptr %irq_data, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 56)
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 1024
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr @irqc_node, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %irq_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %irq_data, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %irq_data, i32 0, i32 1
  %8 = ptrtoint ptr %args_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %args_count, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %irq_data, i32 0, i32 2
  %9 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %args, align 4
  %10 = load i32, ptr @irqc_base, align 4
  %sub = sub i32 %3, %10
  %arrayidx2 = getelementptr inbounds %struct.of_phandle_args, ptr %irq_data, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %arrayidx2, align 4
  %and = and i32 %5, 15
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default [
    i32 2, label %if.end.sw.epilog_crit_edge
    i32 1, label %if.end.sw.epilog_crit_edge66
    i32 8, label %if.end.sw.epilog_crit_edge67
  ]

if.end.sw.epilog_crit_edge67:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge66:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge66, %if.end.sw.epilog_crit_edge67
  %.sink = phi i32 [ 4, %sw.default ], [ %and, %if.end.sw.epilog_crit_edge ], [ %and, %if.end.sw.epilog_crit_edge66 ], [ %and, %if.end.sw.epilog_crit_edge67 ]
  %arrayidx13 = getelementptr inbounds %struct.of_phandle_args, ptr %irq_data, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %arrayidx13, align 4
  %call14 = call i32 @irq_create_of_mapping(ptr noundef nonnull %irq_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end, label %do.body41, !prof !52

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

do.body41:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gic_fixup_resource.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gic_fixup_resource, %if.then51)) #4
          to label %do.end54 [label %if.then51], !srcloc !53

if.then51:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gic_fixup_resource.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.15, i32 noundef %3, i32 noundef %call14) #4
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %do.body41
  %14 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call14, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %irq_data) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @board_staging_register_clock(ptr nocapture noundef readonly %bsc) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @board_staging_register_clock.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@board_staging_register_clock, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !53

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %bsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsc, align 4
  %con_id = getelementptr inbounds %struct.board_staging_clk, ptr %bsc, i32 0, i32 1
  %2 = ptrtoint ptr %con_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_id, align 4
  %dev_id = getelementptr inbounds %struct.board_staging_clk, ptr %bsc, i32 0, i32 2
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @board_staging_register_clock.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %3, ptr noundef %5) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %con_id3 = getelementptr inbounds %struct.board_staging_clk, ptr %bsc, i32 0, i32 1
  %6 = ptrtoint ptr %con_id3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_id3, align 4
  %dev_id4 = getelementptr inbounds %struct.board_staging_clk, ptr %bsc, i32 0, i32 2
  %8 = ptrtoint ptr %dev_id4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id4, align 4
  %10 = ptrtoint ptr %bsc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bsc, align 4
  %call6 = tail call i32 @clk_add_alias(ptr noundef %7, ptr noundef %9, ptr noundef %11, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end.if.end15_crit_edge, label %do.end11

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %bsc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bsc, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %13, i32 noundef %call6) #8
  br label %if.end15

if.end15:                                         ; preds = %do.end11, %do.end.if.end15_crit_edge
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_add_alias(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @board_staging_register_device(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %pd_args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @board_staging_register_device.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@board_staging_register_device, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !53

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @board_staging_register_device.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.8, ptr noundef %3) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %resource = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 8
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_resources, align 4
  %call4 = tail call zeroext i1 @board_staging_dt_node_available(ptr noundef %5, i32 noundef %7) #7
  br i1 %call4, label %do.end8, label %if.end12

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %9) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resource, align 8
  %12 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3.not.i = icmp eq i32 %13, 0
  br i1 %cmp3.not.i, label %if.end12.board_staging_gic_fixup_resources.exit_crit_edge, label %if.end12.for.body.i_crit_edge

if.end12.for.body.i_crit_edge:                    ; preds = %if.end12
  br label %for.body.i

if.end12.board_staging_gic_fixup_resources.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %board_staging_gic_fixup_resources.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end12.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end12.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.resource, ptr %11, i32 %i.04.i
  tail call fastcc void @gic_fixup_resource(ptr noundef %arrayidx.i) #8
  %inc.i = add nuw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.body.i.board_staging_gic_fixup_resources.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.board_staging_gic_fixup_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %board_staging_gic_fixup_resources.exit

board_staging_gic_fixup_resources.exit:           ; preds = %for.body.i.board_staging_gic_fixup_resources.exit_crit_edge, %if.end12.board_staging_gic_fixup_resources.exit_crit_edge
  %nclocks = getelementptr inbounds %struct.board_staging_dev, ptr %dev, i32 0, i32 2
  %14 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nclocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp51.not = icmp eq i32 %15, 0
  br i1 %cmp51.not, label %board_staging_gic_fixup_resources.exit.for.end_crit_edge, label %for.body.lr.ph

board_staging_gic_fixup_resources.exit.for.end_crit_edge: ; preds = %board_staging_gic_fixup_resources.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %board_staging_gic_fixup_resources.exit
  %clocks = getelementptr inbounds %struct.board_staging_dev, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clocks, align 4
  %arrayidx = getelementptr %struct.board_staging_clk, ptr %17, i32 %i.052
  %call15 = tail call i32 @board_staging_register_clock(ptr noundef %arrayidx) #7
  %inc = add nuw i32 %i.052, 1
  %18 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nclocks, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %board_staging_gic_fixup_resources.exit.for.end_crit_edge
  %domain = getelementptr inbounds %struct.board_staging_dev, ptr %dev, i32 0, i32 3
  %20 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %domain, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %for.end.if.end20_crit_edge, label %if.then17

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then17:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pd_args.i) #4
  %22 = getelementptr inbounds i8, ptr %pd_args.i, i32 8
  %23 = call ptr @memset(ptr %22, i32 255, i32 64)
  %call.i.i = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull %21, ptr noundef null) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull %21) #8
  br label %board_staging_add_dev_domain.exit

if.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %pd_args.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i, ptr %pd_args.i, align 4
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %pd_args.i, i32 0, i32 1
  %25 = ptrtoint ptr %args_count.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %args_count.i, align 4
  %lock.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @board_staging_add_dev_domain.__key, i16 noundef signext 3) #4
  %early_init.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 1
  %26 = ptrtoint ptr %early_init.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i = load i16, ptr %early_init.i, align 4
  %bf.set.i = or i16 %bf.load.i, 128
  store i16 %bf.set.i, ptr %early_init.i, align 4
  %call9.i = call i32 @of_genpd_add_device(ptr noundef nonnull %pd_args.i, ptr noundef %dev1.i) #4
  br label %board_staging_add_dev_domain.exit

board_staging_add_dev_domain.exit:                ; preds = %if.end.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pd_args.i) #4
  br label %if.end20

if.end20:                                         ; preds = %board_staging_add_dev_domain.exit, %for.end.if.end20_crit_edge
  %call21 = call i32 @platform_device_register(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %do.end26

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %28, i32 noundef %call21) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end20.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ -17, %do.end8 ], [ %call21, %do.end26 ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @board_staging_register_devices(ptr nocapture noundef readonly %devs, i32 noundef %ndevs) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndevs)
  %cmp3.not = icmp eq i32 %ndevs, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.board_staging_dev, ptr %devs, i32 %i.04
  %call = tail call i32 @board_staging_register_device(ptr noundef %arrayidx) #7
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %ndevs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_all_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_of_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/board/board.c", i32 62, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/board/board.c", i32 126, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @board_staging_register_clock.__UNIQUE_ID_ddebug184, !3, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/board/board.c", i32 130, i32 3}
!10 = !{ptr @board_staging_register_clock._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @board_staging_register_clock._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/board/board.c", i32 172, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @board_staging_register_device.__UNIQUE_ID_ddebug185, !13, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/board/board.c", i32 175, i32 3}
!19 = !{ptr @board_staging_register_device._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @board_staging_register_device._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/board/board.c", i32 189, i32 3}
!23 = !{ptr @board_staging_register_device._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @board_staging_register_device._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @irqc_node, !26, !"irqc_node", i1 false, i1 false}
!26 = !{!"../drivers/staging/board/board.c", i32 22, i32 28}
!27 = !{ptr @irqc_base, !28, !"irqc_base", i1 false, i1 false}
!28 = !{!"../drivers/staging/board/board.c", i32 23, i32 21}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/board/board.c", i32 109, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @gic_fixup_resource.__UNIQUE_ID_ddebug183, !30, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!33 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/board/board.c", i32 145, i32 3}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @board_staging_add_dev_domain._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @board_staging_add_dev_domain._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @board_staging_add_dev_domain.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/staging/board/board.c", i32 153, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2148205266, i64 2148205271, i64 2148205284, i64 2148205328, i64 2148205362, i64 2148205383}
