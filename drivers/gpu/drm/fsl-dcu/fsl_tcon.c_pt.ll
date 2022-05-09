; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/fsl-dcu/fsl_tcon.c_pt.bc'
source_filename = "../drivers/gpu/drm/fsl-dcu/fsl_tcon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.fsl_tcon = type { ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsl,tcon\00", [23 x i8] zeroinitializer }, align 32
@fsl_tcon_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 76, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't create the TCON regmap\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl_tcon_init\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/fsl-dcu/fsl_tcon.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_tcon_init._entry_ptr = internal global ptr @fsl_tcon_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@fsl_tcon_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 82, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't get the TCON bus clock\0A\00", [63 x i8] zeroinitializer }, align 32
@fsl_tcon_init._entry_ptr.9 = internal global ptr @fsl_tcon_init._entry.7, section ".printk_index", align 4
@fsl_tcon_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't enable the TCON clock\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_tcon_init._entry_ptr.12 = internal global ptr @fsl_tcon_init._entry.10, section ".printk_index", align 4
@fsl_tcon_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 93, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Using TCON in bypass mode\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fsl_tcon_init._entry_ptr.16 = internal global ptr @fsl_tcon_init._entry.13, section ".printk_index", align 4
@fsl_tcon_init_regmap._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@fsl_tcon_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.18, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"fsl_tcon:55:(&fsl_tcon_regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tcon\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 66, i32 38 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 76, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 80, i32 41 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 82, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 88, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 93, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [23 x i8] c"fsl_tcon_regmap_config\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 32, i32 29 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 54, i32 15 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [38 x i8] c"../drivers/gpu/drm/fsl-dcu/fsl_tcon.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 37, i32 10 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @fsl_tcon_init._entry, ptr @fsl_tcon_init._entry.10, ptr @fsl_tcon_init._entry.13, ptr @fsl_tcon_init._entry.7, ptr @fsl_tcon_init._entry_ptr, ptr @fsl_tcon_init._entry_ptr.12, ptr @fsl_tcon_init._entry_ptr.16, ptr @fsl_tcon_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @fsl_tcon_init_regmap._key, ptr @fsl_tcon_regmap_config, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_tcon_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_tcon_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_tcon_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_tcon_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_tcon_init_regmap._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_tcon_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsl_tcon_bypass_disable(ptr nocapture noundef readonly %tcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcon, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 536870912, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsl_tcon_bypass_enable(ptr nocapture noundef readonly %tcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcon, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 536870912, i32 noundef 536870912, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @fsl_tcon_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call.i46 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #5
  %tobool2.not = icmp eq ptr %call.i46, null
  br i1 %tobool2.not, label %if.end.err_node_put_crit_edge, label %if.end4

if.end.err_node_put_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_node_put

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #5
  %5 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %call.i47 = call i32 @of_address_to_resource(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %res.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool.not.i48 = icmp eq i32 %call.i47, 0
  br i1 %tobool.not.i48, label %if.end.i49, label %fsl_tcon_init_regmap.exit.thread55

fsl_tcon_init_regmap.exit.thread55:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #5
  br label %err_node_put.sink.split

if.end.i49:                                       ; preds = %if.end4
  %call1.i = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %res.i) #5
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i49.fsl_tcon_init_regmap.exit_crit_edge, label %if.end5.i

if.end.i49.fsl_tcon_init_regmap.exit_crit_edge:   ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_tcon_init_regmap.exit

if.end5.i:                                        ; preds = %if.end.i49
  %call6.i = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call1.i, ptr noundef nonnull @fsl_tcon_regmap_config, ptr noundef nonnull @fsl_tcon_init_regmap._key, ptr noundef nonnull @.str.17) #5
  %6 = ptrtoint ptr %call.i46 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6.i, ptr %call.i46, align 4
  %cmp.i.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end5.i.fsl_tcon_init_regmap.exit_crit_edge, label %fsl_tcon_init_regmap.exit.thread

if.end5.i.fsl_tcon_init_regmap.exit_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsl_tcon_init_regmap.exit

fsl_tcon_init_regmap.exit.thread:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #5
  br label %if.end8

fsl_tcon_init_regmap.exit:                        ; preds = %if.end5.i.fsl_tcon_init_regmap.exit_crit_edge, %if.end.i49.fsl_tcon_init_regmap.exit_crit_edge
  %retval.0.i50.in = phi ptr [ %call6.i, %if.end5.i.fsl_tcon_init_regmap.exit_crit_edge ], [ %call1.i, %if.end.i49.fsl_tcon_init_regmap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #5
  %tobool6.not = icmp eq ptr %retval.0.i50.in, null
  br i1 %tobool6.not, label %fsl_tcon_init_regmap.exit.if.end8_crit_edge, label %fsl_tcon_init_regmap.exit.err_node_put.sink.split_crit_edge

fsl_tcon_init_regmap.exit.err_node_put.sink.split_crit_edge: ; preds = %fsl_tcon_init_regmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_node_put.sink.split

fsl_tcon_init_regmap.exit.if.end8_crit_edge:      ; preds = %fsl_tcon_init_regmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8:                                          ; preds = %fsl_tcon_init_regmap.exit.if.end8_crit_edge, %fsl_tcon_init_regmap.exit.thread
  %call9 = call ptr @of_clk_get_by_name(ptr noundef nonnull %4, ptr noundef nonnull @.str.6) #5
  %ipg_clk = getelementptr inbounds %struct.fsl_tcon, ptr %call.i46, i32 0, i32 1
  %7 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %ipg_clk, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end8.err_node_put.sink.split_crit_edge, label %if.end16

if.end8.err_node_put.sink.split_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_node_put.sink.split

if.end16:                                         ; preds = %if.end8
  %call18 = call fastcc i32 @clk_prepare_enable(ptr noundef %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end24, label %if.end16.err_node_put.sink.split_crit_edge

if.end16.err_node_put.sink.split_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_node_put.sink.split

if.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %4) #5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %cleanup

err_node_put.sink.split:                          ; preds = %if.end16.err_node_put.sink.split_crit_edge, %if.end8.err_node_put.sink.split_crit_edge, %fsl_tcon_init_regmap.exit.err_node_put.sink.split_crit_edge, %fsl_tcon_init_regmap.exit.thread55
  %.str.11.sink = phi ptr [ @.str.1, %fsl_tcon_init_regmap.exit.thread55 ], [ @.str.1, %fsl_tcon_init_regmap.exit.err_node_put.sink.split_crit_edge ], [ @.str.8, %if.end8.err_node_put.sink.split_crit_edge ], [ @.str.11, %if.end16.err_node_put.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.11.sink) #8
  br label %err_node_put

err_node_put:                                     ; preds = %err_node_put.sink.split, %if.end.err_node_put_crit_edge
  call void @of_node_put(ptr noundef nonnull %4) #5
  br label %cleanup

cleanup:                                          ; preds = %err_node_put, %if.end24, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread
  %retval.0 = phi ptr [ null, %err_node_put ], [ %call.i46, %if.end24 ], [ null, %of_parse_phandle.exit.cleanup_crit_edge ], [ null, %of_parse_phandle.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %clk) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsl_tcon_free(ptr nocapture noundef readonly %tcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ipg_clk = getelementptr inbounds %struct.fsl_tcon, ptr %tcon, i32 0, i32 1
  %0 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipg_clk, align 4
  tail call void @clk_disable(ptr noundef %1) #5
  tail call void @clk_unprepare(ptr noundef %1) #5
  %2 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipg_clk, align 4
  tail call void @clk_put(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_tcon.c", i32 66, i32 38}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_tcon.c", i32 76, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @fsl_tcon_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @fsl_tcon_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_tcon.c", i32 80, i32 41}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_tcon.c", i32 82, i32 3}
!14 = !{ptr @fsl_tcon_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @fsl_tcon_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_tcon.c", i32 88, i32 3}
!18 = !{ptr @fsl_tcon_init._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @fsl_tcon_init._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_tcon.c", i32 93, i32 2}
!22 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @fsl_tcon_init._entry.13, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @fsl_tcon_init._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @fsl_tcon_init_regmap._key, !26, !"_key", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_tcon.c", i32 54, i32 15}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_tcon.c", i32 37, i32 10}
!30 = !{ptr @fsl_tcon_regmap_config, !31, !"fsl_tcon_regmap_config", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_tcon.c", i32 32, i32 29}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
