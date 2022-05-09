; ModuleID = '/llk/IR_all_yes/drivers/reset/reset-socfpga.c_pt.bc'
source_filename = "../drivers/reset/reset-socfpga.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reset_simple_data = type { %struct.spinlock, ptr, %struct.reset_controller_dev, i8, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }

@socfpga_early_reset_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,rst-mgr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@__initcall__kmod_reset_socfpga__183_120_reset_socfpga_driver_init6 = internal global ptr @reset_socfpga_driver_init, section ".initcall6.init", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"altr,modrst-offset\00", [45 x i8] zeroinitializer }, align 32
@a10_reset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014missing altr,modrst-offset property, assuming 0x10\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"a10_reset_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/reset/reset-socfpga.c\00", [34 x i8] zeroinitializer }, align 32
@a10_reset_init._entry_ptr = internal global ptr @a10_reset_init._entry, section ".printk_index", align 4
@a10_reset_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@reset_simple_ops = external dso_local constant %struct.reset_control_ops, align 4
@a10_reset_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013unable to register device\0A\00", [35 x i8] zeroinitializer }, align 32
@a10_reset_init._entry_ptr.7 = internal global ptr @a10_reset_init._entry.5, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@reset_socfpga_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @reset_simple_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @socfpga_reset_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"socfpga-reset\00", [18 x i8] zeroinitializer }, align 32
@socfpga_reset_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,rst-mgr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 50, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 51, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 54, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 64, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"reset_socfpga_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 113, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 116, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"socfpga_reset_dt_ids\00", align 1
@___asan_gen_.43 = private constant [33 x i8] c"../drivers/reset/reset-socfpga.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 103, i32 34 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__initcall__kmod_reset_socfpga__183_120_reset_socfpga_driver_init6, ptr @a10_reset_init._entry, ptr @a10_reset_init._entry.5, ptr @a10_reset_init._entry_ptr, ptr @a10_reset_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @a10_reset_init.__key, ptr @.str.4, ptr @.str.6, ptr @reset_socfpga_driver, ptr @.str.8, ptr @socfpga_reset_dt_ids], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_reset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_reset_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_reset_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_socfpga_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_reset_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @socfpga_reset_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  %reg_offset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @socfpga_early_reset_dt_ids, ptr noundef null) #6
  %tobool.not6 = icmp eq ptr %call.i, null
  br i1 %tobool.not6, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %a10_reset_init.exit.for.body_crit_edge, %for.body.lr.ph
  %np.07 = phi ptr [ %call.i, %for.body.lr.ph ], [ %call.i5, %a10_reset_init.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #6
  %1 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_offset.i) #6
  %2 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %reg_offset.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 100) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.a10_reset_init.exit_crit_edge, label %if.end.i

for.body.a10_reset_init.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %a10_reset_init.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = call i32 @of_address_to_resource(ptr noundef nonnull %np.07, i32 noundef 0, ptr noundef nonnull %res.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.err_alloc.i_crit_edge

if.end.i.err_alloc.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_alloc.i

if.end4.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %0, align 4
  %6 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res.i, align 4
  %sub.i.i = add i32 %5, 1
  %add.i.i = sub i32 %sub.i.i, %7
  %8 = ptrtoint ptr %np.07 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %np.07, align 4
  %call6.i = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %add.i.i, ptr noundef %9, i32 noundef 0) #6
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end4.i.err_alloc.i_crit_edge, label %if.end9.i

if.end4.i.err_alloc.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_alloc.i

if.end9.i:                                        ; preds = %if.end4.i
  %10 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %res.i, align 4
  %call11.i = call ptr @ioremap(i32 noundef %11, i32 noundef %add.i.i) #6
  %membase.i = getelementptr inbounds %struct.reset_simple_data, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call11.i, ptr %membase.i, align 4
  %tobool13.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end15.i

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %res.i, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %14, i32 noundef %add.i.i) #6
  br label %err_alloc.i

if.end15.i:                                       ; preds = %if.end9.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.07, ptr noundef nonnull @.str, ptr noundef nonnull %reg_offset.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool17.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool17.not.i, label %if.end15.i.if.end20.i_crit_edge, label %do.end.i

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

do.end.i:                                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i, %if.end15.i.if.end20.i_crit_edge
  %15 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_offset.i, align 4
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %16
  store ptr %add.ptr.i, ptr %membase.i, align 4
  call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @a10_reset_init.__key, i16 noundef signext 3) #6
  %rcdev.i = getelementptr inbounds %struct.reset_simple_data, ptr %call7.i.i.i, i32 0, i32 2
  %owner.i = getelementptr inbounds %struct.reset_simple_data, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %owner.i, align 4
  %nr_resets.i = getelementptr inbounds %struct.reset_simple_data, ptr %call7.i.i.i, i32 0, i32 2, i32 8
  %20 = ptrtoint ptr %nr_resets.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 256, ptr %nr_resets.i, align 8
  %21 = ptrtoint ptr %rcdev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @reset_simple_ops, ptr %rcdev.i, align 8
  %of_node.i = getelementptr inbounds %struct.reset_simple_data, ptr %call7.i.i.i, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %np.07, ptr %of_node.i, align 4
  %status_active_low.i = getelementptr inbounds %struct.reset_simple_data, ptr %call7.i.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %status_active_low.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %status_active_low.i, align 1
  %call30.i = call i32 @reset_controller_register(ptr noundef %rcdev.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end20.i.a10_reset_init.exit_crit_edge, label %do.end35.i

if.end20.i.a10_reset_init.exit_crit_edge:         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a10_reset_init.exit

do.end35.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %a10_reset_init.exit

err_alloc.i:                                      ; preds = %if.then14.i, %if.end4.i.err_alloc.i_crit_edge, %if.end.i.err_alloc.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %a10_reset_init.exit

a10_reset_init.exit:                              ; preds = %err_alloc.i, %do.end35.i, %if.end20.i.a10_reset_init.exit_crit_edge, %for.body.a10_reset_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_offset.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #6
  %call.i5 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.07, ptr noundef nonnull @socfpga_early_reset_dt_ids, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call.i5, null
  br i1 %tobool.not, label %a10_reset_init.exit.for.end_crit_edge, label %a10_reset_init.exit.for.body_crit_edge

a10_reset_init.exit.for.body_crit_edge:           ; preds = %a10_reset_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

a10_reset_init.exit.for.end_crit_edge:            ; preds = %a10_reset_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %a10_reset_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_socfpga_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @reset_socfpga_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @reset_simple_probe(ptr nocapture noundef readnone %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_reset_socfpga__183_120_reset_socfpga_driver_init6, !1, !"__initcall__kmod_reset_socfpga__183_120_reset_socfpga_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/reset/reset-socfpga.c", i32 120, i32 1}
!2 = !{ptr @socfpga_early_reset_dt_ids, !3, !"socfpga_early_reset_dt_ids", i1 false, i1 false}
!3 = !{!"../drivers/reset/reset-socfpga.c", i32 83, i32 34}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/reset/reset-socfpga.c", i32 50, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/reset/reset-socfpga.c", i32 51, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @a10_reset_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @a10_reset_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @a10_reset_init.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/reset/reset-socfpga.c", i32 54, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/reset/reset-socfpga.c", i32 64, i32 3}
!17 = !{ptr @a10_reset_init._entry.5, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @a10_reset_init._entry_ptr.7, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/reset/reset-socfpga.c", i32 116, i32 12}
!21 = !{ptr @reset_socfpga_driver, !22, !"reset_socfpga_driver", i1 false, i1 false}
!22 = !{!"../drivers/reset/reset-socfpga.c", i32 113, i32 31}
!23 = !{ptr @socfpga_reset_dt_ids, !24, !"socfpga_reset_dt_ids", i1 false, i1 false}
!24 = !{!"../drivers/reset/reset-socfpga.c", i32 103, i32 34}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
