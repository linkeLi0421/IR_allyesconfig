; ModuleID = '/llk/IR_all_yes/drivers/scsi/snic/vnic_wq.c_pt.bc'
source_filename = "../drivers/scsi/snic/vnic_wq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.vnic_wq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, i32 }
%struct.vnic_dev_ring = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.vnic_wq_ctrl = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vnic_wq_buf = type { ptr, i32, ptr, i32, i32, i32, ptr }

@vnic_wq_devcmd2_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Failed to get devcmd2 resource\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vnic_wq_devcmd2_alloc\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/scsi/snic/vnic_wq.c\00", [36 x i8] zeroinitializer }, align 32
@vnic_wq_devcmd2_alloc._entry_ptr = internal global ptr @vnic_wq_devcmd2_alloc._entry, section ".printk_index", align 4
@svnic_wq_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Failed to hook WQ[%d] resource\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"svnic_wq_alloc\00", [17 x i8] zeroinitializer }, align 32
@svnic_wq_alloc._entry_ptr = internal global ptr @svnic_wq_alloc._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@svnic_wq_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Failed to disable WQ[%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"svnic_wq_disable\00", [47 x i8] zeroinitializer }, align 32
@svnic_wq_disable._entry_ptr = internal global ptr @svnic_wq_disable._entry, section ".printk_index", align 4
@vnic_wq_alloc_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Failed to alloc wq_bufs\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vnic_wq_alloc_bufs\00", [45 x i8] zeroinitializer }, align 32
@vnic_wq_alloc_bufs._entry_ptr = internal global ptr @vnic_wq_alloc_bufs._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 109, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 133, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 208, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [31 x i8] c"../drivers/scsi/snic/vnic_wq.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 52, i32 4 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @svnic_wq_alloc._entry, ptr @svnic_wq_alloc._entry_ptr, ptr @svnic_wq_disable._entry, ptr @svnic_wq_disable._entry_ptr, ptr @vnic_wq_alloc_bufs._entry, ptr @vnic_wq_alloc_bufs._entry_ptr, ptr @vnic_wq_devcmd2_alloc._entry, ptr @vnic_wq_devcmd2_alloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_wq_devcmd2_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svnic_wq_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svnic_wq_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_wq_alloc_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svnic_wq_free(ptr noundef %wq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev1 = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 1
  %0 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev1, align 4
  %ring = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 3
  tail call void @svnic_dev_free_desc_ring(ptr noundef %1, ptr noundef %ring) #5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vnic_wq, ptr %wq, i32 0, i32 4, i32 %i.011
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %3) #5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %ctrl = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 2
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ctrl, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_dev_free_desc_ring(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_wq_devcmd2_alloc(ptr noundef %vdev, ptr noundef %wq, i32 noundef %desc_count, i32 noundef %desc_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %wq, align 4
  %vdev1 = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 1
  %1 = ptrtoint ptr %vdev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vdev, ptr %vdev1, align 4
  %call.i = tail call ptr @svnic_dev_get_res(ptr noundef %vdev, i32 noundef 24, i32 noundef 0) #5
  %ctrl.i = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %ctrl.i, align 4
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable.i = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %call.i, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %enable.i, i32 0) #5, !srcloc !31
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %wait.06.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrl.i, align 4
  %running.i = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %4, i32 0, i32 9
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %running.i) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i18 = icmp eq i32 %5, 0
  br i1 %tobool.not.i18, label %for.body.i.svnic_wq_disable.exit_crit_edge, label %if.end.i

for.body.i.svnic_wq_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %svnic_wq_disable.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #5
  %inc.i = add nuw nsw i32 %wait.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wq, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %8) #8
  br label %svnic_wq_disable.exit

svnic_wq_disable.exit:                            ; preds = %do.end.i, %for.body.i.svnic_wq_disable.exit_crit_edge
  %ring.i = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 3
  %call.i19 = tail call i32 @svnic_dev_alloc_desc_ring(ptr noundef %vdev, ptr noundef %ring.i, i32 noundef %desc_count, i32 noundef %desc_size) #5
  br label %cleanup

cleanup:                                          ; preds = %svnic_wq_disable.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i19, %svnic_wq_disable.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_wq_disable(ptr nocapture noundef readonly %wq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %enable = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %1, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %enable, i32 0) #5, !srcloc !31
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %wait.06 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %running = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %3, i32 0, i32 9
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %running) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #5
  %inc = add nuw nsw i32 %wait.06, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wq, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_wq_alloc(ptr noundef %vdev, ptr noundef %wq, i32 noundef %index, i32 noundef %desc_count, i32 noundef %desc_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %index, ptr %wq, align 4
  %vdev2 = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 1
  %1 = ptrtoint ptr %vdev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vdev, ptr %vdev2, align 4
  %call.i = tail call ptr @svnic_dev_get_res(ptr noundef %vdev, i32 noundef 1, i32 noundef %index) #5
  %ctrl.i = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %ctrl.i, align 4
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %index) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable.i = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %call.i, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %enable.i, i32 0) #5, !srcloc !31
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %wait.06.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrl.i, align 4
  %running.i = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %4, i32 0, i32 9
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %running.i) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i30 = icmp eq i32 %5, 0
  br i1 %tobool.not.i30, label %for.body.i.svnic_wq_disable.exit_crit_edge, label %if.end.i

for.body.i.svnic_wq_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %svnic_wq_disable.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #5
  %inc.i = add nuw nsw i32 %wait.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wq, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %8) #8
  br label %svnic_wq_disable.exit

svnic_wq_disable.exit:                            ; preds = %do.end.i, %for.body.i.svnic_wq_disable.exit_crit_edge
  %ring.i = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 3
  %call.i31 = tail call i32 @svnic_dev_alloc_desc_ring(ptr noundef %vdev, ptr noundef %ring.i, i32 noundef %desc_count, i32 noundef %desc_size) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool6.not = icmp eq i32 %call.i31, 0
  br i1 %tobool6.not, label %if.end8, label %svnic_wq_disable.exit.cleanup_crit_edge

svnic_wq_disable.exit.cleanup_crit_edge:          ; preds = %svnic_wq_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %svnic_wq_disable.exit
  %desc_count.i = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desc_count.i, align 4
  %sub.i = add i32 %10, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i)
  %cmp80.not.i = icmp ult i32 %sub.i, 64
  br i1 %cmp80.not.i, label %if.end8.vnic_wq_alloc_bufs.exit.thread_crit_edge, label %for.body.preheader.i

if.end8.vnic_wq_alloc_bufs.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %vnic_wq_alloc_bufs.exit.thread

for.body.preheader.i:                             ; preds = %if.end8
  %div78.i = lshr i32 %sub.i, 6
  br label %for.body.i36

for.cond.i:                                       ; preds = %for.body.i36
  %inc.i33 = add nuw nsw i32 %i.081.i, 1
  %exitcond.not.i34 = icmp eq i32 %inc.i33, %div78.i
  br i1 %exitcond.not.i34, label %for.body6.lr.ph.i, label %for.cond.i.for.body.i36_crit_edge

for.cond.i.for.body.i36_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i36

for.body6.lr.ph.i:                                ; preds = %for.cond.i
  %bufs7.i = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 4
  %desc_size.i = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 3, i32 7
  %11 = add i32 %10, -1
  br label %for.body6.i

for.body.i36:                                     ; preds = %for.cond.i.for.body.i36_crit_edge, %for.body.preheader.i
  %i.081.i = phi i32 [ %inc.i33, %for.cond.i.for.body.i36_crit_edge ], [ 0, %for.body.preheader.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2848, i32 noundef 1792) #9
  %arrayidx.i = getelementptr %struct.vnic_wq, ptr %wq, i32 0, i32 4, i32 %i.081.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i35 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i35, label %if.then11, label %for.cond.i

for.body6.i:                                      ; preds = %for.inc38.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %indvars.iv.i = phi i32 [ %11, %for.body6.lr.ph.i ], [ %indvars.iv.next.i, %for.inc38.i.for.body6.i_crit_edge ]
  %i.186.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %add27.i, %for.inc38.i.for.body6.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.vnic_wq, ptr %wq, i32 0, i32 4, i32 %i.186.i
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8.i, align 4
  %mul.i = shl i32 %i.186.i, 6
  %add27.i = add nuw nsw i32 %i.186.i, 1
  %arrayidx28.i = getelementptr %struct.vnic_wq, ptr %wq, i32 0, i32 4, i32 %add27.i
  %index.i48 = getelementptr inbounds %struct.vnic_wq_buf, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %index.i48 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul.i, ptr %index.i48, align 4
  %17 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring.i, align 4
  %19 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %desc_size.i, align 4
  %mul16.i49 = mul i32 %20, %mul.i
  %add.ptr.i50 = getelementptr i8, ptr %18, i32 %mul16.i49
  %desc.i51 = getelementptr inbounds %struct.vnic_wq_buf, ptr %15, i32 0, i32 6
  %21 = ptrtoint ptr %desc.i51 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i50, ptr %desc.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv.i)
  %exitcond88.i52 = icmp eq i32 %indvars.iv.i, 0
  br i1 %exitcond88.i52, label %for.body6.i.for.inc38.i_crit_edge, label %for.body6.i.if.else.i_crit_edge

for.body6.i.if.else.i_crit_edge:                  ; preds = %for.body6.i
  br label %if.else.i

for.body6.i.for.inc38.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38.i

if.else.i:                                        ; preds = %for.inc35.i.if.else.i_crit_edge, %for.body6.i.if.else.i_crit_edge
  %buf.082.i54 = phi ptr [ %add.ptr31.i, %for.inc35.i.if.else.i_crit_edge ], [ %15, %for.body6.i.if.else.i_crit_edge ]
  %j.084.i53 = phi i32 [ %add23.i, %for.inc35.i.if.else.i_crit_edge ], [ 0, %for.body6.i.if.else.i_crit_edge ]
  %add23.i = add nuw nsw i32 %j.084.i53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add23.i)
  %cmp24.i = icmp eq i32 %add23.i, 64
  br i1 %cmp24.i, label %if.else.i.for.inc38.i_crit_edge, label %for.inc35.i

if.else.i.for.inc38.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38.i

for.inc35.i:                                      ; preds = %if.else.i
  %add.ptr31.i = getelementptr %struct.vnic_wq_buf, ptr %buf.082.i54, i32 1
  %22 = ptrtoint ptr %buf.082.i54 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr31.i, ptr %buf.082.i54, align 4
  %add12.i = add nuw nsw i32 %add23.i, %mul.i
  %index.i = getelementptr %struct.vnic_wq_buf, ptr %buf.082.i54, i32 1, i32 4
  %23 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add12.i, ptr %index.i, align 4
  %24 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ring.i, align 4
  %26 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %desc_size.i, align 4
  %mul16.i = mul i32 %27, %add12.i
  %add.ptr.i = getelementptr i8, ptr %25, i32 %mul16.i
  %desc.i = getelementptr %struct.vnic_wq_buf, ptr %buf.082.i54, i32 1, i32 6
  %28 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i, ptr %desc.i, align 4
  %exitcond88.i = icmp eq i32 %add23.i, %indvars.iv.i
  br i1 %exitcond88.i, label %for.inc35.i.for.inc38.i_crit_edge, label %for.inc35.i.if.else.i_crit_edge

for.inc35.i.if.else.i_crit_edge:                  ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

for.inc35.i.for.inc38.i_crit_edge:                ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %for.inc35.i.for.inc38.i_crit_edge, %if.else.i.for.inc38.i_crit_edge, %for.body6.i.for.inc38.i_crit_edge
  %buf.082.i.lcssa = phi ptr [ %15, %for.body6.i.for.inc38.i_crit_edge ], [ %buf.082.i54, %if.else.i.for.inc38.i_crit_edge ], [ %add.ptr31.i, %for.inc35.i.for.inc38.i_crit_edge ]
  %arrayidx28.sink.i = phi ptr [ %bufs7.i, %for.body6.i.for.inc38.i_crit_edge ], [ %arrayidx28.i, %if.else.i.for.inc38.i_crit_edge ], [ %bufs7.i, %for.inc35.i.for.inc38.i_crit_edge ]
  %29 = ptrtoint ptr %arrayidx28.sink.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx28.sink.i, align 4
  %31 = ptrtoint ptr %buf.082.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %buf.082.i.lcssa, align 4
  %indvars.iv.next.i = add i32 %indvars.iv.i, -64
  %exitcond91.not.i = icmp eq i32 %add27.i, %div78.i
  br i1 %exitcond91.not.i, label %for.inc38.i.vnic_wq_alloc_bufs.exit.thread_crit_edge, label %for.inc38.i.for.body6.i_crit_edge

for.inc38.i.for.body6.i_crit_edge:                ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6.i

for.inc38.i.vnic_wq_alloc_bufs.exit.thread_crit_edge: ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vnic_wq_alloc_bufs.exit.thread

vnic_wq_alloc_bufs.exit.thread:                   ; preds = %for.inc38.i.vnic_wq_alloc_bufs.exit.thread_crit_edge, %if.end8.vnic_wq_alloc_bufs.exit.thread_crit_edge
  %bufs41.i = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 4
  %32 = ptrtoint ptr %bufs41.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bufs41.i, align 4
  %to_clean.i = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 6
  %34 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %to_clean.i, align 4
  %to_use.i = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 5
  %35 = ptrtoint ptr %to_use.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %to_use.i, align 4
  br label %cleanup

if.then11:                                        ; preds = %for.body.i36
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  %36 = ptrtoint ptr %vdev2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vdev2, align 4
  tail call void @svnic_dev_free_desc_ring(ptr noundef %37, ptr noundef %ring.i) #5
  br label %for.body.i43

for.body.i43:                                     ; preds = %for.body.i43.for.body.i43_crit_edge, %if.then11
  %i.011.i = phi i32 [ 0, %if.then11 ], [ %inc.i41, %for.body.i43.for.body.i43_crit_edge ]
  %arrayidx.i40 = getelementptr %struct.vnic_wq, ptr %wq, i32 0, i32 4, i32 %i.011.i
  %38 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i40, align 4
  tail call void @kfree(ptr noundef %39) #5
  %40 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx.i40, align 4
  %inc.i41 = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i42 = icmp eq i32 %inc.i41, 64
  br i1 %exitcond.not.i42, label %svnic_wq_free.exit, label %for.body.i43.for.body.i43_crit_edge

for.body.i43.for.body.i43_crit_edge:              ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i43

svnic_wq_free.exit:                               ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %ctrl.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %svnic_wq_free.exit, %vnic_wq_alloc_bufs.exit.thread, %svnic_wq_disable.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %svnic_wq_free.exit ], [ %call.i31, %svnic_wq_disable.exit.cleanup_crit_edge ], [ 0, %vnic_wq_alloc_bufs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vnic_wq_init_start(ptr nocapture noundef %wq, i32 noundef %cq_index, i32 noundef %fetch_index, i32 noundef %posted_index, i32 noundef %error_interrupt_enable, i32 noundef %error_interrupt_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_count = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc_count, align 4
  %base_addr = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 4
  %ctrl = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 2
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %6) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !31
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl, align 4
  %ring_size = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ring_size, i32 %9) #5, !srcloc !31
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl, align 4
  %fetch_index4 = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %11, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %fetch_index) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fetch_index4, i32 %12) #5, !srcloc !31
  %13 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl, align 4
  %posted_index6 = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %14, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %posted_index) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %posted_index6, i32 %15) #5, !srcloc !31
  %16 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl, align 4
  %cq_index8 = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %17, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %cq_index) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cq_index8, i32 %18) #5, !srcloc !31
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl, align 4
  %error_interrupt_enable10 = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %20, i32 0, i32 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %error_interrupt_enable) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %error_interrupt_enable10, i32 %21) #5, !srcloc !31
  %22 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl, align 4
  %error_interrupt_offset12 = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %23, i32 0, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %24 = tail call i32 @llvm.bswap.i32(i32 %error_interrupt_offset) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %error_interrupt_offset12, i32 %24) #5, !srcloc !31
  %25 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl, align 4
  %error_status = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %26, i32 0, i32 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %error_status, i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp = icmp ult i32 %1, 64
  %27 = select i1 %cmp, i32 5, i32 6
  %div35 = lshr i32 %fetch_index, %27
  %arrayidx = getelementptr %struct.vnic_wq, ptr %wq, i32 0, i32 4, i32 %div35
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %30 = select i1 %cmp, i32 31, i32 63
  %rem = and i32 %30, %fetch_index
  %arrayidx18 = getelementptr %struct.vnic_wq_buf, ptr %29, i32 %rem
  %to_clean = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 6
  %31 = ptrtoint ptr %to_clean to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx18, ptr %to_clean, align 4
  %to_use = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 5
  %32 = ptrtoint ptr %to_use to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx18, ptr %to_use, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svnic_wq_init(ptr nocapture noundef %wq, i32 noundef %cq_index, i32 noundef %error_interrupt_enable, i32 noundef %error_interrupt_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vnic_wq_init_start(ptr noundef %wq, i32 noundef %cq_index, i32 noundef 0, i32 noundef 0, i32 noundef %error_interrupt_enable, i32 noundef %error_interrupt_offset)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_wq_error_status(ptr nocapture noundef readonly %wq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %error_status = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %1, i32 0, i32 19
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %error_status) #5, !srcloc !32
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svnic_wq_enable(ptr nocapture noundef readonly %wq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %enable = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %1, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %enable, i32 16777216) #5, !srcloc !31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svnic_wq_clean(ptr noundef %wq, ptr nocapture noundef readonly %buf_clean) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %enable = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %1, i32 0, i32 7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %enable) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !36

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/snic/vnic_wq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !37
  unreachable

do.end8:                                          ; preds = %entry
  %to_clean = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 6
  %desc_count.i = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 3, i32 8
  %desc_avail.i = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 3, i32 9
  %3 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %desc_count.i, align 4
  %5 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %desc_avail.i, align 4
  %.neg29 = add i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %.neg29)
  %cmp.not30 = icmp eq i32 %4, %.neg29
  br i1 %cmp.not30, label %do.end8.while.end_crit_edge, label %while.body.preheader

do.end8.while.end_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.preheader:                             ; preds = %do.end8
  %7 = ptrtoint ptr %to_clean to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %to_clean, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %buf.031 = phi ptr [ %10, %while.body.while.body_crit_edge ], [ %8, %while.body.preheader ]
  tail call void %buf_clean(ptr noundef %wq, ptr noundef %buf.031) #5
  %9 = ptrtoint ptr %buf.031 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf.031, align 4
  %11 = ptrtoint ptr %to_clean to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %to_clean, align 4
  %12 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %desc_avail.i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %desc_avail.i, align 4
  %14 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc_count.i, align 4
  %.neg = add i32 %13, 2
  %cmp.not = icmp eq i32 %15, %.neg
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end8.while.end_crit_edge
  %bufs = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 4
  %16 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bufs, align 4
  %18 = ptrtoint ptr %to_clean to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %to_clean, align 4
  %to_use = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 5
  %19 = ptrtoint ptr %to_use to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %to_use, align 4
  %20 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl, align 4
  %fetch_index = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %21, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fetch_index, i32 0) #5, !srcloc !31
  %22 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl, align 4
  %posted_index = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %23, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %posted_index, i32 0) #5, !srcloc !31
  %24 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl, align 4
  %error_status = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %25, i32 0, i32 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %error_status, i32 0) #5, !srcloc !31
  %ring15 = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 3
  tail call void @svnic_dev_clear_desc_ring(ptr noundef %ring15) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_dev_clear_desc_ring(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svnic_dev_get_res(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_alloc_desc_ring(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/snic/vnic_wq.c", i32 109, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vnic_wq_devcmd2_alloc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vnic_wq_devcmd2_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/snic/vnic_wq.c", i32 133, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @svnic_wq_alloc._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @svnic_wq_alloc._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/snic/vnic_wq.c", i32 208, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @svnic_wq_disable._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @svnic_wq_disable._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/snic/vnic_wq.c", i32 52, i32 4}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vnic_wq_alloc_bufs._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @vnic_wq_alloc_bufs._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2152525597}
!31 = !{i64 4983475}
!32 = !{i64 4983893}
!33 = !{i64 2152524242}
!34 = !{i64 2154450712}
!35 = !{i64 2154451217}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2154472396, i64 2154472888, i64 2154472433, i64 2154472489, i64 2154472523, i64 2154472547, i64 2154472588, i64 2154472609, i64 2154472637, i64 2154472671}
