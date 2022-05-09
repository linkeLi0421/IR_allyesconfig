; ModuleID = '/llk/IR_all_yes/drivers/media/pci/pt3/pt3_i2c.c_pt.bc'
source_filename = "../drivers/media/pci/pt3/pt3_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pt3_board = type { ptr, [2 x ptr], %struct.mutex, i32, i32, i32, %struct.i2c_adapter, ptr, [4 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.pt3_i2cbuf = type { [4091 x i8], i8, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@pt3_i2c_master_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(%s) I2C_M_RECV_LEN not supported.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pt3_i2c_master_xfer\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/pci/pt3/pt3_i2c.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pt3_i2c_master_xfer._entry_ptr = internal global ptr @pt3_i2c_master_xfer._entry, section ".printk_index", align 4
@send_i2c_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(%s) prev. transaction stalled\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"send_i2c_cmd\00", [19 x i8] zeroinitializer }, align 32
@send_i2c_cmd._entry_ptr = internal global ptr @send_i2c_cmd._entry, section ".printk_index", align 4
@send_i2c_cmd._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 160, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(%s) failed.\0A\00", [18 x i8] zeroinitializer }, align 32
@send_i2c_cmd._entry_ptr.9 = internal global ptr @send_i2c_cmd._entry.7, section ".printk_index", align 4
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 204, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 151, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [35 x i8] c"../drivers/media/pci/pt3/pt3_i2c.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 160, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @pt3_i2c_master_xfer._entry, ptr @pt3_i2c_master_xfer._entry_ptr, ptr @send_i2c_cmd._entry, ptr @send_i2c_cmd._entry.7, ptr @send_i2c_cmd._entry_ptr, ptr @send_i2c_cmd._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_i2c_master_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_i2c_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_i2c_cmd._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pt3_init_all_demods(ptr nocapture noundef readonly %pt3) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.pt3_board, ptr %pt3, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %call1 = tail call fastcc i32 @send_i2c_cmd(ptr noundef %pt3, i32 noundef 4096)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_i2c_cmd(ptr nocapture noundef readonly %pt3, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.pt3_board, ptr %pt3, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.016.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 750, i32 noundef 2) #6
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %for.body.i
  %or = or i32 %addr, 65536
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !29
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #6
  br label %for.body.i20

for.body.i20:                                     ; preds = %if.end.i23.for.body.i20_crit_edge, %if.end
  %i.016.i16 = phi i32 [ 0, %if.end ], [ %inc.i21, %if.end.i23.for.body.i20_crit_edge ]
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #6, !srcloc !26
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %and.i18 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool.not.i19 = icmp eq i32 %and.i18, 0
  br i1 %tobool.not.i19, label %lor.lhs.false, label %if.end.i23

if.end.i23:                                       ; preds = %for.body.i20
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 750, i32 noundef 2) #6
  %inc.i21 = add nuw nsw i32 %i.016.i16, 1
  %exitcond.not.i22 = icmp eq i32 %inc.i21, 500
  br i1 %exitcond.not.i22, label %if.end.i23.cleanup.sink.split_crit_edge, label %if.end.i23.for.body.i20_crit_edge

if.end.i23.for.body.i20_crit_edge:                ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i20

if.end.i23.cleanup.sink.split_crit_edge:          ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %for.body.i20
  %and = and i32 %10, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end.i23.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.8, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ @.str.8, %if.end.i23.cleanup.sink.split_crit_edge ], [ @.str.5, %if.end.i.cleanup.sink.split_crit_edge ]
  %11 = ptrtoint ptr %pt3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pt3, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9, ptr noundef nonnull %.str.8.sink, ptr noundef nonnull @.str.6) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -5, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pt3_init_all_mxl301rf(ptr nocapture noundef readonly %pt3) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %call = tail call fastcc i32 @send_i2c_cmd(ptr noundef %pt3, i32 noundef 6138)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pt3_i2c_reset(ptr nocapture noundef readonly %pt3) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.pt3_board, ptr %pt3, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 512) #6, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pt3_i2c_master_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_buf = getelementptr inbounds %struct.pt3_board, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %i2c_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_buf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp66 = icmp sgt i32 %num, 0
  br i1 %cmp66, label %entry.for.body_crit_edge, label %for.end.thread

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %num_cmds.i74 = getelementptr inbounds %struct.pt3_i2cbuf, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %num_cmds.i74 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_cmds.i74, align 4
  br label %translate.exit

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.067 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.067, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 2
  %7 = and i16 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %for.cond, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %num_cmds.i = getelementptr inbounds %struct.pt3_i2cbuf, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %num_cmds.i, align 4
  br i1 %cmp66, label %for.body.lr.ph.i, label %for.end.translate.exit_crit_edge

for.end.translate.exit_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %translate.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %tmp.i.i.i = getelementptr inbounds %struct.pt3_i2cbuf, ptr %3, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc19.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %11 = phi i32 [ 0, %for.body.lr.ph.i ], [ %108, %for.inc19.i.for.body.i_crit_edge ]
  %i.089.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc20.i, %for.inc19.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.089.i
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.089.i, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags.i, align 2
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i = icmp eq i16 %14, 0
  %rem.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %cmp.i.i.i = icmp eq i32 %rem.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %tmp.i.i.i, align 1
  br label %cmdbuf_add.exit.i.i

if.else.i.i.i:                                    ; preds = %for.body.i
  %16 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tmp.i.i.i, align 1
  %conv3.i.i.i = or i8 %17, 80
  store i8 %conv3.i.i.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %11)
  %cmp5.i.i.i = icmp ult i32 %11, 8182
  br i1 %cmp5.i.i.i, label %if.then7.i.i.i, label %if.else.i.i.i.cmdbuf_add.exit.i.i_crit_edge

if.else.i.i.i.cmdbuf_add.exit.i.i_crit_edge:      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.i.i

if.then7.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.i.i = lshr i32 %11, 1
  %arrayidx.i.i.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i.i.i
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3.i.i.i, ptr %arrayidx.i.i.i, align 1
  br label %cmdbuf_add.exit.i.i

cmdbuf_add.exit.i.i:                              ; preds = %if.then7.i.i.i, %if.else.i.i.i.cmdbuf_add.exit.i.i_crit_edge, %if.then.i.i.i
  %19 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_cmds.i, align 4
  %inc.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i, ptr %num_cmds.i, align 4
  %rem.i5.i.i = and i32 %inc.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i5.i.i)
  %cmp.i6.i.i = icmp eq i32 %rem.i5.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i8.i.i, label %if.else.i12.i.i

if.then.i8.i.i:                                   ; preds = %cmdbuf_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %tmp.i.i.i, align 1
  br label %cmdbuf_add.exit17.i.i

if.else.i12.i.i:                                  ; preds = %cmdbuf_add.exit.i.i
  %22 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tmp.i.i.i, align 1
  %conv3.i10.i.i = or i8 %23, 48
  store i8 %conv3.i10.i.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.i.i)
  %cmp5.i11.i.i = icmp ult i32 %inc.i.i.i, 8182
  br i1 %cmp5.i11.i.i, label %if.then7.i15.i.i, label %if.else.i12.i.i.cmdbuf_add.exit17.i.i_crit_edge

if.else.i12.i.i.cmdbuf_add.exit17.i.i_crit_edge:  ; preds = %if.else.i12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit17.i.i

if.then7.i15.i.i:                                 ; preds = %if.else.i12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i13.i.i = lshr i32 %inc.i.i.i, 1
  %arrayidx.i14.i.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i13.i.i
  %24 = ptrtoint ptr %arrayidx.i14.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv3.i10.i.i, ptr %arrayidx.i14.i.i, align 1
  br label %cmdbuf_add.exit17.i.i

cmdbuf_add.exit17.i.i:                            ; preds = %if.then7.i15.i.i, %if.else.i12.i.i.cmdbuf_add.exit17.i.i_crit_edge, %if.then.i8.i.i
  %25 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_cmds.i, align 4
  %inc.i16.i.i = add i32 %26, 1
  store i32 %inc.i16.i.i, ptr %num_cmds.i, align 4
  %rem.i19.i.i = and i32 %inc.i16.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i19.i.i)
  %cmp.i20.i.i = icmp eq i32 %rem.i19.i.i, 0
  br i1 %cmp.i20.i.i, label %if.then.i22.i.i, label %if.else.i26.i.i

if.then.i22.i.i:                                  ; preds = %cmdbuf_add.exit17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %tmp.i.i.i, align 1
  br label %cmdbuf_add.exit31.i.i

if.else.i26.i.i:                                  ; preds = %cmdbuf_add.exit17.i.i
  %28 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tmp.i.i.i, align 1
  %conv3.i24.i.i = or i8 %29, 64
  store i8 %conv3.i24.i.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i16.i.i)
  %cmp5.i25.i.i = icmp ult i32 %inc.i16.i.i, 8182
  br i1 %cmp5.i25.i.i, label %if.then7.i29.i.i, label %if.else.i26.i.i.cmdbuf_add.exit31.i.i_crit_edge

if.else.i26.i.i.cmdbuf_add.exit31.i.i_crit_edge:  ; preds = %if.else.i26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit31.i.i

if.then7.i29.i.i:                                 ; preds = %if.else.i26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i27.i.i = lshr i32 %inc.i16.i.i, 1
  %arrayidx.i28.i.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i27.i.i
  %30 = ptrtoint ptr %arrayidx.i28.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv3.i24.i.i, ptr %arrayidx.i28.i.i, align 1
  br label %cmdbuf_add.exit31.i.i

cmdbuf_add.exit31.i.i:                            ; preds = %if.then7.i29.i.i, %if.else.i26.i.i.cmdbuf_add.exit31.i.i_crit_edge, %if.then.i22.i.i
  %31 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_cmds.i, align 4
  %inc.i30.i.i = add i32 %32, 1
  store i32 %inc.i30.i.i, ptr %num_cmds.i, align 4
  %rem.i33.i.i = and i32 %inc.i30.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i33.i.i)
  %cmp.i34.i.i = icmp eq i32 %rem.i33.i.i, 0
  br i1 %cmp.i34.i.i, label %if.then.i36.i.i, label %if.else.i40.i.i

if.then.i36.i.i:                                  ; preds = %cmdbuf_add.exit31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %tmp.i.i.i, align 1
  br label %put_start.exit.i

if.else.i40.i.i:                                  ; preds = %cmdbuf_add.exit31.i.i
  %34 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tmp.i.i.i, align 1
  %conv3.i38.i.i = or i8 %35, 32
  store i8 %conv3.i38.i.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i30.i.i)
  %cmp5.i39.i.i = icmp ult i32 %inc.i30.i.i, 8182
  br i1 %cmp5.i39.i.i, label %if.then7.i43.i.i, label %if.else.i40.i.i.put_start.exit.i_crit_edge

if.else.i40.i.i.put_start.exit.i_crit_edge:       ; preds = %if.else.i40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_start.exit.i

if.then7.i43.i.i:                                 ; preds = %if.else.i40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i41.i.i = lshr i32 %inc.i30.i.i, 1
  %arrayidx.i42.i.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i41.i.i
  %36 = ptrtoint ptr %arrayidx.i42.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv3.i38.i.i, ptr %arrayidx.i42.i.i, align 1
  br label %put_start.exit.i

put_start.exit.i:                                 ; preds = %if.then7.i43.i.i, %if.else.i40.i.i.put_start.exit.i_crit_edge, %if.then.i36.i.i
  %37 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_cmds.i, align 4
  %inc.i44.i.i = add i32 %38, 1
  store i32 %inc.i44.i.i, ptr %num_cmds.i, align 4
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i, align 4
  %conv3.i = trunc i16 %40 to i8
  %shl.i = shl i8 %conv3.i, 1
  %41 = trunc i16 %14 to i8
  %or.i = or i8 %shl.i, %41
  tail call fastcc void @put_byte_write(ptr noundef %3, i8 noundef zeroext %or.i) #6
  %len12.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.089.i, i32 2
  %42 = ptrtoint ptr %len12.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %len12.i, align 4
  br i1 %tobool.not.i, label %for.cond10.preheader.i, label %if.then.i

for.cond10.preheader.i:                           ; preds = %put_start.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp1486.not.i = icmp eq i16 %43, 0
  br i1 %cmp1486.not.i, label %for.cond10.preheader.i.for.inc19.i_crit_edge, label %for.body16.lr.ph.i

for.cond10.preheader.i.for.inc19.i_crit_edge:     ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc19.i

for.body16.lr.ph.i:                               ; preds = %for.cond10.preheader.i
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.089.i, i32 3
  br label %for.body16.i

if.then.i:                                        ; preds = %put_start.exit.i
  %conv9.i = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp28.not.i.i = icmp eq i16 %43, 0
  br i1 %cmp28.not.i.i, label %if.then.i.for.inc19.i_crit_edge, label %for.cond1.preheader.lr.ph.i.i

if.then.i.for.inc19.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc19.i

for.cond1.preheader.lr.ph.i.i:                    ; preds = %if.then.i
  %sub.i.i = add nsw i32 %conv9.i, -1
  %44 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr.i.i = load i32, ptr %num_cmds.i, align 4
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %cmdbuf_add.exit26.i.i.for.cond1.preheader.i.i_crit_edge, %for.cond1.preheader.lr.ph.i.i
  %45 = phi i32 [ %.pr.i.i, %for.cond1.preheader.lr.ph.i.i ], [ %inc.i25.i.i, %cmdbuf_add.exit26.i.i.for.cond1.preheader.i.i_crit_edge ]
  %i.029.i.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i.i ], [ %inc6.i.i, %cmdbuf_add.exit26.i.i.for.cond1.preheader.i.i_crit_edge ]
  %rem.i.i47.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i47.i)
  %cmp.i.i48.i = icmp eq i32 %rem.i.i47.i, 0
  br i1 %cmp.i.i48.i, label %if.then.i.i49.i, label %if.else.i.i52.i

if.then.i.i49.i:                                  ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 13, ptr %tmp.i.i.i, align 1
  br label %cmdbuf_add.exit.i57.i

if.else.i.i52.i:                                  ; preds = %for.cond1.preheader.i.i
  %47 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tmp.i.i.i, align 1
  %conv3.i.i50.i = or i8 %48, -48
  store i8 %conv3.i.i50.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %45)
  %cmp5.i.i51.i = icmp ult i32 %45, 8182
  br i1 %cmp5.i.i51.i, label %if.then7.i.i55.i, label %if.else.i.i52.i.cmdbuf_add.exit.i57.i_crit_edge

if.else.i.i52.i.cmdbuf_add.exit.i57.i_crit_edge:  ; preds = %if.else.i.i52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.i57.i

if.then7.i.i55.i:                                 ; preds = %if.else.i.i52.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.i53.i = lshr i32 %45, 1
  %arrayidx.i.i54.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i.i53.i
  %49 = ptrtoint ptr %arrayidx.i.i54.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv3.i.i50.i, ptr %arrayidx.i.i54.i, align 1
  br label %cmdbuf_add.exit.i57.i

cmdbuf_add.exit.i57.i:                            ; preds = %if.then7.i.i55.i, %if.else.i.i52.i.cmdbuf_add.exit.i57.i_crit_edge, %if.then.i.i49.i
  %50 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_cmds.i, align 4
  %inc.i.i56.i = add i32 %51, 1
  store i32 %inc.i.i56.i, ptr %num_cmds.i, align 4
  %rem.i.1.i.i = and i32 %inc.i.i56.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.1.i.i)
  %cmp.i.1.i.i = icmp eq i32 %rem.i.1.i.i, 0
  br i1 %cmp.i.1.i.i, label %if.then.i.1.i.i, label %if.else.i.1.i.i

if.else.i.1.i.i:                                  ; preds = %cmdbuf_add.exit.i57.i
  %52 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tmp.i.i.i, align 1
  %conv3.i.1.i.i = or i8 %53, -48
  store i8 %conv3.i.1.i.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.i56.i)
  %cmp5.i.1.i.i = icmp ult i32 %inc.i.i56.i, 8182
  br i1 %cmp5.i.1.i.i, label %if.then7.i.1.i.i, label %if.else.i.1.i.i.cmdbuf_add.exit.1.i.i_crit_edge

if.else.i.1.i.i.cmdbuf_add.exit.1.i.i_crit_edge:  ; preds = %if.else.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.1.i.i

if.then7.i.1.i.i:                                 ; preds = %if.else.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.1.i.i = lshr i32 %inc.i.i56.i, 1
  %arrayidx.i.1.i.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i.1.i.i
  %54 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv3.i.1.i.i, ptr %arrayidx.i.1.i.i, align 1
  br label %cmdbuf_add.exit.1.i.i

if.then.i.1.i.i:                                  ; preds = %cmdbuf_add.exit.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 13, ptr %tmp.i.i.i, align 1
  br label %cmdbuf_add.exit.1.i.i

cmdbuf_add.exit.1.i.i:                            ; preds = %if.then.i.1.i.i, %if.then7.i.1.i.i, %if.else.i.1.i.i.cmdbuf_add.exit.1.i.i_crit_edge
  %56 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_cmds.i, align 4
  %inc.i.1.i.i = add i32 %57, 1
  store i32 %inc.i.1.i.i, ptr %num_cmds.i, align 4
  %rem.i.2.i.i = and i32 %inc.i.1.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.2.i.i)
  %cmp.i.2.i.i = icmp eq i32 %rem.i.2.i.i, 0
  br i1 %cmp.i.2.i.i, label %if.then.i.2.i.i, label %if.else.i.2.i.i

if.else.i.2.i.i:                                  ; preds = %cmdbuf_add.exit.1.i.i
  %58 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %tmp.i.i.i, align 1
  %conv3.i.2.i.i = or i8 %59, -48
  store i8 %conv3.i.2.i.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.1.i.i)
  %cmp5.i.2.i.i = icmp ult i32 %inc.i.1.i.i, 8182
  br i1 %cmp5.i.2.i.i, label %if.then7.i.2.i.i, label %if.else.i.2.i.i.cmdbuf_add.exit.2.i.i_crit_edge

if.else.i.2.i.i.cmdbuf_add.exit.2.i.i_crit_edge:  ; preds = %if.else.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.2.i.i

if.then7.i.2.i.i:                                 ; preds = %if.else.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.2.i.i = lshr i32 %inc.i.1.i.i, 1
  %arrayidx.i.2.i.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i.2.i.i
  %60 = ptrtoint ptr %arrayidx.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv3.i.2.i.i, ptr %arrayidx.i.2.i.i, align 1
  br label %cmdbuf_add.exit.2.i.i

if.then.i.2.i.i:                                  ; preds = %cmdbuf_add.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 13, ptr %tmp.i.i.i, align 1
  br label %cmdbuf_add.exit.2.i.i

cmdbuf_add.exit.2.i.i:                            ; preds = %if.then.i.2.i.i, %if.then7.i.2.i.i, %if.else.i.2.i.i.cmdbuf_add.exit.2.i.i_crit_edge
  %62 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_cmds.i, align 4
  %inc.i.2.i.i = add i32 %63, 1
  store i32 %inc.i.2.i.i, ptr %num_cmds.i, align 4
  %rem.i.3.i.i = and i32 %inc.i.2.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.3.i.i)
  %cmp.i.3.i.i = icmp eq i32 %rem.i.3.i.i, 0
  br i1 %cmp.i.3.i.i, label %if.then.i.3.i.i, label %if.else.i.3.i.i

if.else.i.3.i.i:                                  ; preds = %cmdbuf_add.exit.2.i.i
  %64 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %tmp.i.i.i, align 1
  %conv3.i.3.i.i = or i8 %65, -48
  store i8 %conv3.i.3.i.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.2.i.i)
  %cmp5.i.3.i.i = icmp ult i32 %inc.i.2.i.i, 8182
  br i1 %cmp5.i.3.i.i, label %if.then7.i.3.i.i, label %if.else.i.3.i.i.cmdbuf_add.exit.3.i.i_crit_edge

if.else.i.3.i.i.cmdbuf_add.exit.3.i.i_crit_edge:  ; preds = %if.else.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.3.i.i

if.then7.i.3.i.i:                                 ; preds = %if.else.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.3.i.i = lshr i32 %inc.i.2.i.i, 1
  %arrayidx.i.3.i.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i.3.i.i
  %66 = ptrtoint ptr %arrayidx.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv3.i.3.i.i, ptr %arrayidx.i.3.i.i, align 1
  br label %cmdbuf_add.exit.3.i.i

if.then.i.3.i.i:                                  ; preds = %cmdbuf_add.exit.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 13, ptr %tmp.i.i.i, align 1
  br label %cmdbuf_add.exit.3.i.i

cmdbuf_add.exit.3.i.i:                            ; preds = %if.then.i.3.i.i, %if.then7.i.3.i.i, %if.else.i.3.i.i.cmdbuf_add.exit.3.i.i_crit_edge
  %68 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_cmds.i, align 4
  %inc.i.3.i.i = add i32 %69, 1
  store i32 %inc.i.3.i.i, ptr %num_cmds.i, align 4
  %rem.i.4.i.i = and i32 %inc.i.3.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.4.i.i)
  %cmp.i.4.i.i = icmp eq i32 %rem.i.4.i.i, 0
  br i1 %cmp.i.4.i.i, label %if.then.i.4.i.i, label %if.else.i.4.i.i

if.else.i.4.i.i:                                  ; preds = %cmdbuf_add.exit.3.i.i
  %70 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %tmp.i.i.i, align 1
  %conv3.i.4.i.i = or i8 %71, -48
  store i8 %conv3.i.4.i.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.3.i.i)
  %cmp5.i.4.i.i = icmp ult i32 %inc.i.3.i.i, 8182
  br i1 %cmp5.i.4.i.i, label %if.then7.i.4.i.i, label %if.else.i.4.i.i.cmdbuf_add.exit.4.i.i_crit_edge

if.else.i.4.i.i.cmdbuf_add.exit.4.i.i_crit_edge:  ; preds = %if.else.i.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.4.i.i

if.then7.i.4.i.i:                                 ; preds = %if.else.i.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.4.i.i = lshr i32 %inc.i.3.i.i, 1
  %arrayidx.i.4.i.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i.4.i.i
  %72 = ptrtoint ptr %arrayidx.i.4.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv3.i.4.i.i, ptr %arrayidx.i.4.i.i, align 1
  br label %cmdbuf_add.exit.4.i.i

if.then.i.4.i.i:                                  ; preds = %cmdbuf_add.exit.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 13, ptr %tmp.i.i.i, align 1
  br label %cmdbuf_add.exit.4.i.i

cmdbuf_add.exit.4.i.i:                            ; preds = %if.then.i.4.i.i, %if.then7.i.4.i.i, %if.else.i.4.i.i.cmdbuf_add.exit.4.i.i_crit_edge
  %74 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_cmds.i, align 4
  %inc.i.4.i.i = add i32 %75, 1
  store i32 %inc.i.4.i.i, ptr %num_cmds.i, align 4
  %rem.i.5.i.i = and i32 %inc.i.4.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.5.i.i)
  %cmp.i.5.i.i = icmp eq i32 %rem.i.5.i.i, 0
  br i1 %cmp.i.5.i.i, label %if.then.i.5.i.i, label %if.else.i.5.i.i

if.else.i.5.i.i:                                  ; preds = %cmdbuf_add.exit.4.i.i
  %76 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tmp.i.i.i, align 1
  %conv3.i.5.i.i = or i8 %77, -48
  store i8 %conv3.i.5.i.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.4.i.i)
  %cmp5.i.5.i.i = icmp ult i32 %inc.i.4.i.i, 8182
  br i1 %cmp5.i.5.i.i, label %if.then7.i.5.i.i, label %if.else.i.5.i.i.cmdbuf_add.exit.5.i.i_crit_edge

if.else.i.5.i.i.cmdbuf_add.exit.5.i.i_crit_edge:  ; preds = %if.else.i.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.5.i.i

if.then7.i.5.i.i:                                 ; preds = %if.else.i.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.5.i.i = lshr i32 %inc.i.4.i.i, 1
  %arrayidx.i.5.i.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i.5.i.i
  %78 = ptrtoint ptr %arrayidx.i.5.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv3.i.5.i.i, ptr %arrayidx.i.5.i.i, align 1
  br label %cmdbuf_add.exit.5.i.i

if.then.i.5.i.i:                                  ; preds = %cmdbuf_add.exit.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 13, ptr %tmp.i.i.i, align 1
  br label %cmdbuf_add.exit.5.i.i

cmdbuf_add.exit.5.i.i:                            ; preds = %if.then.i.5.i.i, %if.then7.i.5.i.i, %if.else.i.5.i.i.cmdbuf_add.exit.5.i.i_crit_edge
  %80 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_cmds.i, align 4
  %inc.i.5.i.i = add i32 %81, 1
  store i32 %inc.i.5.i.i, ptr %num_cmds.i, align 4
  %rem.i.6.i.i = and i32 %inc.i.5.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.6.i.i)
  %cmp.i.6.i.i = icmp eq i32 %rem.i.6.i.i, 0
  br i1 %cmp.i.6.i.i, label %if.then.i.6.i.i, label %if.else.i.6.i.i

if.else.i.6.i.i:                                  ; preds = %cmdbuf_add.exit.5.i.i
  %82 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %tmp.i.i.i, align 1
  %conv3.i.6.i.i = or i8 %83, -48
  store i8 %conv3.i.6.i.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.5.i.i)
  %cmp5.i.6.i.i = icmp ult i32 %inc.i.5.i.i, 8182
  br i1 %cmp5.i.6.i.i, label %if.then7.i.6.i.i, label %if.else.i.6.i.i.cmdbuf_add.exit.6.i.i_crit_edge

if.else.i.6.i.i.cmdbuf_add.exit.6.i.i_crit_edge:  ; preds = %if.else.i.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.6.i.i

if.then7.i.6.i.i:                                 ; preds = %if.else.i.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.6.i.i = lshr i32 %inc.i.5.i.i, 1
  %arrayidx.i.6.i.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i.6.i.i
  %84 = ptrtoint ptr %arrayidx.i.6.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv3.i.6.i.i, ptr %arrayidx.i.6.i.i, align 1
  br label %cmdbuf_add.exit.6.i.i

if.then.i.6.i.i:                                  ; preds = %cmdbuf_add.exit.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 13, ptr %tmp.i.i.i, align 1
  br label %cmdbuf_add.exit.6.i.i

cmdbuf_add.exit.6.i.i:                            ; preds = %if.then.i.6.i.i, %if.then7.i.6.i.i, %if.else.i.6.i.i.cmdbuf_add.exit.6.i.i_crit_edge
  %86 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_cmds.i, align 4
  %inc.i.6.i.i = add i32 %87, 1
  store i32 %inc.i.6.i.i, ptr %num_cmds.i, align 4
  %rem.i.7.i.i = and i32 %inc.i.6.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.7.i.i)
  %cmp.i.7.i.i = icmp eq i32 %rem.i.7.i.i, 0
  br i1 %cmp.i.7.i.i, label %if.then.i.7.i.i, label %if.else.i.7.i.i

if.else.i.7.i.i:                                  ; preds = %cmdbuf_add.exit.6.i.i
  %88 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %tmp.i.i.i, align 1
  %conv3.i.7.i.i = or i8 %89, -48
  store i8 %conv3.i.7.i.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.6.i.i)
  %cmp5.i.7.i.i = icmp ult i32 %inc.i.6.i.i, 8182
  br i1 %cmp5.i.7.i.i, label %if.then7.i.7.i.i, label %if.else.i.7.i.i.cmdbuf_add.exit.7.i.i_crit_edge

if.else.i.7.i.i.cmdbuf_add.exit.7.i.i_crit_edge:  ; preds = %if.else.i.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.7.i.i

if.then7.i.7.i.i:                                 ; preds = %if.else.i.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.7.i.i = lshr i32 %inc.i.6.i.i, 1
  %arrayidx.i.7.i.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i.7.i.i
  %90 = ptrtoint ptr %arrayidx.i.7.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv3.i.7.i.i, ptr %arrayidx.i.7.i.i, align 1
  br label %cmdbuf_add.exit.7.i.i

if.then.i.7.i.i:                                  ; preds = %cmdbuf_add.exit.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 13, ptr %tmp.i.i.i, align 1
  br label %cmdbuf_add.exit.7.i.i

cmdbuf_add.exit.7.i.i:                            ; preds = %if.then.i.7.i.i, %if.then7.i.7.i.i, %if.else.i.7.i.i.cmdbuf_add.exit.7.i.i_crit_edge
  %92 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_cmds.i, align 4
  %inc.i.7.i.i = add i32 %93, 1
  store i32 %inc.i.7.i.i, ptr %num_cmds.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.029.i.i, i32 %sub.i.i)
  %cmp4.i.i = icmp eq i32 %i.029.i.i, %sub.i.i
  %cond.i.i = select i1 %cmp4.i.i, i32 12, i32 8
  %rem.i14.i.i = and i32 %inc.i.7.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i14.i.i)
  %cmp.i15.i.i = icmp eq i32 %rem.i14.i.i, 0
  br i1 %cmp.i15.i.i, label %if.then.i17.i.i, label %if.else.i21.i.i

if.then.i17.i.i:                                  ; preds = %cmdbuf_add.exit.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i = trunc i32 %cond.i.i to i8
  %94 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv.i.i.i, ptr %tmp.i.i.i, align 1
  br label %cmdbuf_add.exit26.i.i

if.else.i21.i.i:                                  ; preds = %cmdbuf_add.exit.7.i.i
  %95 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %tmp.i.i.i, align 1
  %cmd.tr.i.i.i = trunc i32 %cond.i.i to i8
  %97 = shl nuw i8 %cmd.tr.i.i.i, 4
  %conv3.i19.i.i = or i8 %96, %97
  store i8 %conv3.i19.i.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.7.i.i)
  %cmp5.i20.i.i = icmp ult i32 %inc.i.7.i.i, 8182
  br i1 %cmp5.i20.i.i, label %if.then7.i24.i.i, label %if.else.i21.i.i.cmdbuf_add.exit26.i.i_crit_edge

if.else.i21.i.i.cmdbuf_add.exit26.i.i_crit_edge:  ; preds = %if.else.i21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit26.i.i

if.then7.i24.i.i:                                 ; preds = %if.else.i21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i22.i.i = lshr i32 %inc.i.7.i.i, 1
  %arrayidx.i23.i.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i22.i.i
  %98 = ptrtoint ptr %arrayidx.i23.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv3.i19.i.i, ptr %arrayidx.i23.i.i, align 1
  br label %cmdbuf_add.exit26.i.i

cmdbuf_add.exit26.i.i:                            ; preds = %if.then7.i24.i.i, %if.else.i21.i.i.cmdbuf_add.exit26.i.i_crit_edge, %if.then.i17.i.i
  %99 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_cmds.i, align 4
  %inc.i25.i.i = add i32 %100, 1
  store i32 %inc.i25.i.i, ptr %num_cmds.i, align 4
  %inc6.i.i = add nuw nsw i32 %i.029.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc6.i.i, %conv9.i
  br i1 %exitcond.not.i.i, label %cmdbuf_add.exit26.i.i.for.inc19.i_crit_edge, label %cmdbuf_add.exit26.i.i.for.cond1.preheader.i.i_crit_edge

cmdbuf_add.exit26.i.i.for.cond1.preheader.i.i_crit_edge: ; preds = %cmdbuf_add.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i.i

cmdbuf_add.exit26.i.i.for.inc19.i_crit_edge:      ; preds = %cmdbuf_add.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc19.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.body16.lr.ph.i
  %j.087.i = phi i32 [ 0, %for.body16.lr.ph.i ], [ %inc.i, %for.body16.i.for.body16.i_crit_edge ]
  %101 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %buf.i, align 4
  %arrayidx18.i = getelementptr i8, ptr %102, i32 %j.087.i
  %103 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx18.i, align 1
  tail call fastcc void @put_byte_write(ptr noundef %3, i8 noundef zeroext %104) #6
  %inc.i = add nuw nsw i32 %j.087.i, 1
  %105 = ptrtoint ptr %len12.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %len12.i, align 4
  %conv13.i = zext i16 %106 to i32
  %cmp14.i = icmp ult i32 %inc.i, %conv13.i
  br i1 %cmp14.i, label %for.body16.i.for.body16.i_crit_edge, label %for.body16.i.for.inc19.i_crit_edge

for.body16.i.for.inc19.i_crit_edge:               ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc19.i

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body16.i

for.inc19.i:                                      ; preds = %for.body16.i.for.inc19.i_crit_edge, %cmdbuf_add.exit26.i.i.for.inc19.i_crit_edge, %if.then.i.for.inc19.i_crit_edge, %for.cond10.preheader.i.for.inc19.i_crit_edge
  %inc20.i = add nuw nsw i32 %i.089.i, 1
  %exitcond.not.i = icmp eq i32 %inc20.i, %num
  %107 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_cmds.i, align 4
  br i1 %exitcond.not.i, label %if.then24.i, label %for.inc19.i.for.body.i_crit_edge

for.inc19.i.for.body.i_crit_edge:                 ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.then24.i:                                      ; preds = %for.inc19.i
  %rem.i.i59.i = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i59.i)
  %cmp.i.i60.i = icmp eq i32 %rem.i.i59.i, 0
  br i1 %cmp.i.i60.i, label %if.then.i.i62.i, label %if.else.i.i65.i

if.then.i.i62.i:                                  ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 4, ptr %tmp.i.i.i, align 1
  br label %cmdbuf_add.exit.i70.i

if.else.i.i65.i:                                  ; preds = %if.then24.i
  %110 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %tmp.i.i.i, align 1
  %conv3.i.i63.i = or i8 %111, 64
  store i8 %conv3.i.i63.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %108)
  %cmp5.i.i64.i = icmp ult i32 %108, 8182
  br i1 %cmp5.i.i64.i, label %if.then7.i.i68.i, label %if.else.i.i65.i.cmdbuf_add.exit.i70.i_crit_edge

if.else.i.i65.i.cmdbuf_add.exit.i70.i_crit_edge:  ; preds = %if.else.i.i65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.i70.i

if.then7.i.i68.i:                                 ; preds = %if.else.i.i65.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.i66.i = lshr i32 %108, 1
  %arrayidx.i.i67.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i.i66.i
  %112 = ptrtoint ptr %arrayidx.i.i67.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv3.i.i63.i, ptr %arrayidx.i.i67.i, align 1
  br label %cmdbuf_add.exit.i70.i

cmdbuf_add.exit.i70.i:                            ; preds = %if.then7.i.i68.i, %if.else.i.i65.i.cmdbuf_add.exit.i70.i_crit_edge, %if.then.i.i62.i
  %113 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %num_cmds.i, align 4
  %inc.i.i69.i = add i32 %114, 1
  store i32 %inc.i.i69.i, ptr %num_cmds.i, align 4
  %rem.i4.i.i = and i32 %inc.i.i69.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i4.i.i)
  %cmp.i5.i.i = icmp eq i32 %rem.i4.i.i, 0
  br i1 %cmp.i5.i.i, label %if.then.i7.i.i, label %if.else.i11.i.i

if.then.i7.i.i:                                   ; preds = %cmdbuf_add.exit.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 3, ptr %tmp.i.i.i, align 1
  br label %cmdbuf_add.exit16.i.i

if.else.i11.i.i:                                  ; preds = %cmdbuf_add.exit.i70.i
  %116 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %tmp.i.i.i, align 1
  %conv3.i9.i.i = or i8 %117, 48
  store i8 %conv3.i9.i.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.i69.i)
  %cmp5.i10.i.i = icmp ult i32 %inc.i.i69.i, 8182
  br i1 %cmp5.i10.i.i, label %if.then7.i14.i.i, label %if.else.i11.i.i.cmdbuf_add.exit16.i.i_crit_edge

if.else.i11.i.i.cmdbuf_add.exit16.i.i_crit_edge:  ; preds = %if.else.i11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit16.i.i

if.then7.i14.i.i:                                 ; preds = %if.else.i11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i12.i.i = lshr i32 %inc.i.i69.i, 1
  %arrayidx.i13.i.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i12.i.i
  %118 = ptrtoint ptr %arrayidx.i13.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv3.i9.i.i, ptr %arrayidx.i13.i.i, align 1
  br label %cmdbuf_add.exit16.i.i

cmdbuf_add.exit16.i.i:                            ; preds = %if.then7.i14.i.i, %if.else.i11.i.i.cmdbuf_add.exit16.i.i_crit_edge, %if.then.i7.i.i
  %119 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %num_cmds.i, align 4
  %inc.i15.i.i = add i32 %120, 1
  store i32 %inc.i15.i.i, ptr %num_cmds.i, align 4
  %rem.i18.i.i = and i32 %inc.i15.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i18.i.i)
  %cmp.i19.i.i = icmp eq i32 %rem.i18.i.i, 0
  br i1 %cmp.i19.i.i, label %if.then.i21.i.i, label %if.else.i25.i.i

if.then.i21.i.i:                                  ; preds = %cmdbuf_add.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %121 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 5, ptr %tmp.i.i.i, align 1
  br label %put_stop.exit.i

if.else.i25.i.i:                                  ; preds = %cmdbuf_add.exit16.i.i
  %122 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %tmp.i.i.i, align 1
  %conv3.i23.i.i = or i8 %123, 80
  store i8 %conv3.i23.i.i, ptr %tmp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i15.i.i)
  %cmp5.i24.i.i = icmp ult i32 %inc.i15.i.i, 8182
  br i1 %cmp5.i24.i.i, label %if.then7.i28.i.i, label %if.else.i25.i.i.put_stop.exit.i_crit_edge

if.else.i25.i.i.put_stop.exit.i_crit_edge:        ; preds = %if.else.i25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_stop.exit.i

if.then7.i28.i.i:                                 ; preds = %if.else.i25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i26.i.i = lshr i32 %inc.i15.i.i, 1
  %arrayidx.i27.i.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i26.i.i
  %124 = ptrtoint ptr %arrayidx.i27.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv3.i23.i.i, ptr %arrayidx.i27.i.i, align 1
  br label %put_stop.exit.i

put_stop.exit.i:                                  ; preds = %if.then7.i28.i.i, %if.else.i25.i.i.put_stop.exit.i_crit_edge, %if.then.i21.i.i
  %125 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %num_cmds.i, align 4
  %inc.i29.i.i = add i32 %126, 1
  store i32 %inc.i29.i.i, ptr %num_cmds.i, align 4
  %rem.i.i72.i = and i32 %inc.i29.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i72.i)
  %cmp.i.i73.i = icmp eq i32 %rem.i.i72.i, 0
  br i1 %cmp.i.i73.i, label %if.then.i.i75.i, label %if.else.i.i77.i

if.then.i.i75.i:                                  ; preds = %put_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %tmp.i.i.i, align 1
  br label %cmdbuf_add.exit.i83.i

if.else.i.i77.i:                                  ; preds = %put_stop.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i29.i.i)
  %cmp5.i.i76.i = icmp ult i32 %inc.i29.i.i, 8182
  br i1 %cmp5.i.i76.i, label %if.then7.i.i81.i, label %if.else.i.i77.i.cmdbuf_add.exit.i83.i_crit_edge

if.else.i.i77.i.cmdbuf_add.exit.i83.i_crit_edge:  ; preds = %if.else.i.i77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.i83.i

if.then7.i.i81.i:                                 ; preds = %if.else.i.i77.i
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %tmp.i.i.i, align 1
  %div19.i.i79.i = lshr i32 %inc.i29.i.i, 1
  %arrayidx.i.i80.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i.i79.i
  %130 = ptrtoint ptr %arrayidx.i.i80.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %arrayidx.i.i80.i, align 1
  br label %cmdbuf_add.exit.i83.i

cmdbuf_add.exit.i83.i:                            ; preds = %if.then7.i.i81.i, %if.else.i.i77.i.cmdbuf_add.exit.i83.i_crit_edge, %if.then.i.i75.i
  %131 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_cmds.i, align 4
  %inc.i.i82.i = add i32 %132, 1
  store i32 %inc.i.i82.i, ptr %num_cmds.i, align 4
  %rem.i.i = and i32 %inc.i.i82.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %cmdbuf_add.exit.i83.i.translate.exit_crit_edge, label %if.else.i10.i.i

cmdbuf_add.exit.i83.i.translate.exit_crit_edge:   ; preds = %cmdbuf_add.exit.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %translate.exit

if.else.i10.i.i:                                  ; preds = %cmdbuf_add.exit.i83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.i82.i)
  %cmp5.i9.i.i = icmp ult i32 %inc.i.i82.i, 8182
  br i1 %cmp5.i9.i.i, label %if.then7.i13.i.i, label %if.else.i10.i.i.cmdbuf_add.exit15.i.i_crit_edge

if.else.i10.i.i.cmdbuf_add.exit15.i.i_crit_edge:  ; preds = %if.else.i10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit15.i.i

if.then7.i13.i.i:                                 ; preds = %if.else.i10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %tmp.i.i.i, align 1
  %div19.i11.i.i = lshr i32 %inc.i.i82.i, 1
  %arrayidx.i12.i.i = getelementptr [4091 x i8], ptr %3, i32 0, i32 %div19.i11.i.i
  %135 = ptrtoint ptr %arrayidx.i12.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %arrayidx.i12.i.i, align 1
  br label %cmdbuf_add.exit15.i.i

cmdbuf_add.exit15.i.i:                            ; preds = %if.then7.i13.i.i, %if.else.i10.i.i.cmdbuf_add.exit15.i.i_crit_edge
  %136 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %num_cmds.i, align 4
  %inc.i14.i.i = add i32 %137, 1
  store i32 %inc.i14.i.i, ptr %num_cmds.i, align 4
  br label %translate.exit

translate.exit:                                   ; preds = %cmdbuf_add.exit15.i.i, %cmdbuf_add.exit.i83.i.translate.exit_crit_edge, %for.end.translate.exit_crit_edge, %for.end.thread
  %num_cmds.i75 = phi ptr [ %num_cmds.i74, %for.end.thread ], [ %num_cmds.i, %for.end.translate.exit_crit_edge ], [ %num_cmds.i, %cmdbuf_add.exit.i83.i.translate.exit_crit_edge ], [ %num_cmds.i, %cmdbuf_add.exit15.i.i ]
  %arrayidx1 = getelementptr %struct.pt3_board, ptr %1, i32 0, i32 1, i32 1
  %138 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx1, align 4
  %add.ptr = getelementptr i8, ptr %139, i32 2048
  %140 = ptrtoint ptr %num_cmds.i75 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %num_cmds.i75, align 4
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %3, i32 noundef %141) #6
  %call3 = tail call fastcc i32 @send_i2c_cmd(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  %cmp66.not = xor i1 %cmp66, true
  %brmerge = or i1 %cmp4, %cmp66.not
  %.mux = select i1 %cmp4, i32 -5, i32 %num
  br i1 %brmerge, label %translate.exit.cleanup_crit_edge, label %for.body14.preheader

translate.exit.cleanup_crit_edge:                 ; preds = %translate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body14.preheader:                             ; preds = %translate.exit
  %142 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx1, align 4
  %add.ptr10 = getelementptr i8, ptr %143, i32 2048
  br label %for.body14

for.body14:                                       ; preds = %for.inc34.for.body14_crit_edge, %for.body14.preheader
  %p.071 = phi ptr [ %p.1, %for.inc34.for.body14_crit_edge ], [ %add.ptr10, %for.body14.preheader ]
  %i.169 = phi i32 [ %inc35, %for.inc34.for.body14_crit_edge ], [ 0, %for.body14.preheader ]
  %flags16 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.169, i32 1
  %144 = ptrtoint ptr %flags16 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %flags16, align 2
  %146 = and i16 %145, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %tobool19.not = icmp eq i16 %146, 0
  br i1 %tobool19.not, label %for.body14.for.inc34_crit_edge, label %land.lhs.true

for.body14.for.inc34_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc34

land.lhs.true:                                    ; preds = %for.body14
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.169, i32 2
  %147 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %148)
  %cmp22.not = icmp eq i16 %148, 0
  br i1 %cmp22.not, label %land.lhs.true.for.inc34_crit_edge, label %if.then24

land.lhs.true.for.inc34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc34

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv21 = zext i16 %148 to i32
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.169, i32 3
  %149 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %buf, align 4
  tail call void @mmiocpy(ptr noundef %150, ptr noundef %p.071, i32 noundef %conv21) #6
  %151 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %len, align 4
  %conv31 = zext i16 %152 to i32
  %add.ptr32 = getelementptr i8, ptr %p.071, i32 %conv31
  br label %for.inc34

for.inc34:                                        ; preds = %if.then24, %land.lhs.true.for.inc34_crit_edge, %for.body14.for.inc34_crit_edge
  %p.1 = phi ptr [ %add.ptr32, %if.then24 ], [ %p.071, %land.lhs.true.for.inc34_crit_edge ], [ %p.071, %for.body14.for.inc34_crit_edge ]
  %inc35 = add nuw nsw i32 %i.169, 1
  %exitcond73.not = icmp eq i32 %inc35, %num
  br i1 %exitcond73.not, label %for.inc34.cleanup_crit_edge, label %for.inc34.for.body14_crit_edge

for.inc34.for.body14_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

for.inc34.cleanup_crit_edge:                      ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc34.cleanup_crit_edge, %translate.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %.mux, %translate.exit.cleanup_crit_edge ], [ %num, %for.inc34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pt3_i2c_functionality(ptr nocapture noundef readnone %adap) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_byte_write(ptr nocapture noundef %cbuf, i8 noundef zeroext %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv2 = zext i8 %val to i32
  %num_cmds.i = getelementptr inbounds %struct.pt3_i2cbuf, ptr %cbuf, i32 0, i32 2
  %tmp1.i = getelementptr inbounds %struct.pt3_i2cbuf, ptr %cbuf, i32 0, i32 1
  %and = and i32 %conv2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 8, i32 12
  %0 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cmds.i, align 4
  %rem.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %cond to i8
  %2 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv.i, ptr %tmp1.i, align 1
  br label %cmdbuf_add.exit

if.else.i:                                        ; preds = %entry
  %3 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tmp1.i, align 1
  %cmd.tr.i = trunc i32 %cond to i8
  %5 = shl nuw i8 %cmd.tr.i, 4
  %conv3.i = or i8 %4, %5
  store i8 %conv3.i, ptr %tmp1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %1)
  %cmp5.i = icmp ult i32 %1, 8182
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i.cmdbuf_add.exit_crit_edge

if.else.i.cmdbuf_add.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i = lshr i32 %1, 1
  %arrayidx.i = getelementptr [4091 x i8], ptr %cbuf, i32 0, i32 %div19.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3.i, ptr %arrayidx.i, align 1
  br label %cmdbuf_add.exit

cmdbuf_add.exit:                                  ; preds = %if.then7.i, %if.else.i.cmdbuf_add.exit_crit_edge, %if.then.i
  %7 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_cmds.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %num_cmds.i, align 4
  %and.1 = and i32 %conv2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %cond.1 = select i1 %tobool.not.1, i32 8, i32 12
  %rem.i.1 = and i32 %inc.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.1)
  %cmp.i.1 = icmp eq i32 %rem.i.1, 0
  br i1 %cmp.i.1, label %if.then.i.1, label %if.else.i.1

if.else.i.1:                                      ; preds = %cmdbuf_add.exit
  %9 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmp1.i, align 1
  %cmd.tr.i.1 = trunc i32 %cond.1 to i8
  %11 = shl nuw i8 %cmd.tr.i.1, 4
  %conv3.i.1 = or i8 %10, %11
  store i8 %conv3.i.1, ptr %tmp1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i)
  %cmp5.i.1 = icmp ult i32 %inc.i, 8182
  br i1 %cmp5.i.1, label %if.then7.i.1, label %if.else.i.1.cmdbuf_add.exit.1_crit_edge

if.else.i.1.cmdbuf_add.exit.1_crit_edge:          ; preds = %if.else.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.1

if.then7.i.1:                                     ; preds = %if.else.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.1 = lshr i32 %inc.i, 1
  %arrayidx.i.1 = getelementptr [4091 x i8], ptr %cbuf, i32 0, i32 %div19.i.1
  %12 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3.i.1, ptr %arrayidx.i.1, align 1
  br label %cmdbuf_add.exit.1

if.then.i.1:                                      ; preds = %cmdbuf_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.1 = trunc i32 %cond.1 to i8
  %13 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i.1, ptr %tmp1.i, align 1
  br label %cmdbuf_add.exit.1

cmdbuf_add.exit.1:                                ; preds = %if.then.i.1, %if.then7.i.1, %if.else.i.1.cmdbuf_add.exit.1_crit_edge
  %14 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_cmds.i, align 4
  %inc.i.1 = add i32 %15, 1
  store i32 %inc.i.1, ptr %num_cmds.i, align 4
  %and.2 = and i32 %conv2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %cond.2 = select i1 %tobool.not.2, i32 8, i32 12
  %rem.i.2 = and i32 %inc.i.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.2)
  %cmp.i.2 = icmp eq i32 %rem.i.2, 0
  br i1 %cmp.i.2, label %if.then.i.2, label %if.else.i.2

if.else.i.2:                                      ; preds = %cmdbuf_add.exit.1
  %16 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tmp1.i, align 1
  %cmd.tr.i.2 = trunc i32 %cond.2 to i8
  %18 = shl nuw i8 %cmd.tr.i.2, 4
  %conv3.i.2 = or i8 %17, %18
  store i8 %conv3.i.2, ptr %tmp1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.1)
  %cmp5.i.2 = icmp ult i32 %inc.i.1, 8182
  br i1 %cmp5.i.2, label %if.then7.i.2, label %if.else.i.2.cmdbuf_add.exit.2_crit_edge

if.else.i.2.cmdbuf_add.exit.2_crit_edge:          ; preds = %if.else.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.2

if.then7.i.2:                                     ; preds = %if.else.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.2 = lshr i32 %inc.i.1, 1
  %arrayidx.i.2 = getelementptr [4091 x i8], ptr %cbuf, i32 0, i32 %div19.i.2
  %19 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv3.i.2, ptr %arrayidx.i.2, align 1
  br label %cmdbuf_add.exit.2

if.then.i.2:                                      ; preds = %cmdbuf_add.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.2 = trunc i32 %cond.2 to i8
  %20 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i.2, ptr %tmp1.i, align 1
  br label %cmdbuf_add.exit.2

cmdbuf_add.exit.2:                                ; preds = %if.then.i.2, %if.then7.i.2, %if.else.i.2.cmdbuf_add.exit.2_crit_edge
  %21 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_cmds.i, align 4
  %inc.i.2 = add i32 %22, 1
  store i32 %inc.i.2, ptr %num_cmds.i, align 4
  %and.3 = and i32 %conv2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  %cond.3 = select i1 %tobool.not.3, i32 8, i32 12
  %rem.i.3 = and i32 %inc.i.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.3)
  %cmp.i.3 = icmp eq i32 %rem.i.3, 0
  br i1 %cmp.i.3, label %if.then.i.3, label %if.else.i.3

if.else.i.3:                                      ; preds = %cmdbuf_add.exit.2
  %23 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tmp1.i, align 1
  %cmd.tr.i.3 = trunc i32 %cond.3 to i8
  %25 = shl nuw i8 %cmd.tr.i.3, 4
  %conv3.i.3 = or i8 %24, %25
  store i8 %conv3.i.3, ptr %tmp1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.2)
  %cmp5.i.3 = icmp ult i32 %inc.i.2, 8182
  br i1 %cmp5.i.3, label %if.then7.i.3, label %if.else.i.3.cmdbuf_add.exit.3_crit_edge

if.else.i.3.cmdbuf_add.exit.3_crit_edge:          ; preds = %if.else.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.3

if.then7.i.3:                                     ; preds = %if.else.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.3 = lshr i32 %inc.i.2, 1
  %arrayidx.i.3 = getelementptr [4091 x i8], ptr %cbuf, i32 0, i32 %div19.i.3
  %26 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv3.i.3, ptr %arrayidx.i.3, align 1
  br label %cmdbuf_add.exit.3

if.then.i.3:                                      ; preds = %cmdbuf_add.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.3 = trunc i32 %cond.3 to i8
  %27 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i.3, ptr %tmp1.i, align 1
  br label %cmdbuf_add.exit.3

cmdbuf_add.exit.3:                                ; preds = %if.then.i.3, %if.then7.i.3, %if.else.i.3.cmdbuf_add.exit.3_crit_edge
  %28 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_cmds.i, align 4
  %inc.i.3 = add i32 %29, 1
  store i32 %inc.i.3, ptr %num_cmds.i, align 4
  %and.4 = and i32 %conv2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  %cond.4 = select i1 %tobool.not.4, i32 8, i32 12
  %rem.i.4 = and i32 %inc.i.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.4)
  %cmp.i.4 = icmp eq i32 %rem.i.4, 0
  br i1 %cmp.i.4, label %if.then.i.4, label %if.else.i.4

if.else.i.4:                                      ; preds = %cmdbuf_add.exit.3
  %30 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tmp1.i, align 1
  %cmd.tr.i.4 = trunc i32 %cond.4 to i8
  %32 = shl nuw i8 %cmd.tr.i.4, 4
  %conv3.i.4 = or i8 %31, %32
  store i8 %conv3.i.4, ptr %tmp1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.3)
  %cmp5.i.4 = icmp ult i32 %inc.i.3, 8182
  br i1 %cmp5.i.4, label %if.then7.i.4, label %if.else.i.4.cmdbuf_add.exit.4_crit_edge

if.else.i.4.cmdbuf_add.exit.4_crit_edge:          ; preds = %if.else.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.4

if.then7.i.4:                                     ; preds = %if.else.i.4
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.4 = lshr i32 %inc.i.3, 1
  %arrayidx.i.4 = getelementptr [4091 x i8], ptr %cbuf, i32 0, i32 %div19.i.4
  %33 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv3.i.4, ptr %arrayidx.i.4, align 1
  br label %cmdbuf_add.exit.4

if.then.i.4:                                      ; preds = %cmdbuf_add.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.4 = trunc i32 %cond.4 to i8
  %34 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i.4, ptr %tmp1.i, align 1
  br label %cmdbuf_add.exit.4

cmdbuf_add.exit.4:                                ; preds = %if.then.i.4, %if.then7.i.4, %if.else.i.4.cmdbuf_add.exit.4_crit_edge
  %35 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_cmds.i, align 4
  %inc.i.4 = add i32 %36, 1
  store i32 %inc.i.4, ptr %num_cmds.i, align 4
  %and.5 = and i32 %conv2, 4
  %37 = or i32 %and.5, 8
  %rem.i.5 = and i32 %inc.i.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.5)
  %cmp.i.5 = icmp eq i32 %rem.i.5, 0
  br i1 %cmp.i.5, label %if.then.i.5, label %if.else.i.5

if.else.i.5:                                      ; preds = %cmdbuf_add.exit.4
  %38 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tmp1.i, align 1
  %cmd.tr.i.5 = trunc i32 %37 to i8
  %40 = shl nuw i8 %cmd.tr.i.5, 4
  %conv3.i.5 = or i8 %39, %40
  store i8 %conv3.i.5, ptr %tmp1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.4)
  %cmp5.i.5 = icmp ult i32 %inc.i.4, 8182
  br i1 %cmp5.i.5, label %if.then7.i.5, label %if.else.i.5.cmdbuf_add.exit.5_crit_edge

if.else.i.5.cmdbuf_add.exit.5_crit_edge:          ; preds = %if.else.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.5

if.then7.i.5:                                     ; preds = %if.else.i.5
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.5 = lshr i32 %inc.i.4, 1
  %arrayidx.i.5 = getelementptr [4091 x i8], ptr %cbuf, i32 0, i32 %div19.i.5
  %41 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv3.i.5, ptr %arrayidx.i.5, align 1
  br label %cmdbuf_add.exit.5

if.then.i.5:                                      ; preds = %cmdbuf_add.exit.4
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.5 = trunc i32 %37 to i8
  %42 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i.5, ptr %tmp1.i, align 1
  br label %cmdbuf_add.exit.5

cmdbuf_add.exit.5:                                ; preds = %if.then.i.5, %if.then7.i.5, %if.else.i.5.cmdbuf_add.exit.5_crit_edge
  %43 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_cmds.i, align 4
  %inc.i.5 = add i32 %44, 1
  store i32 %inc.i.5, ptr %num_cmds.i, align 4
  %and.6 = and i32 %conv2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  %cond.6 = select i1 %tobool.not.6, i32 8, i32 12
  %rem.i.6 = and i32 %inc.i.5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.6)
  %cmp.i.6 = icmp eq i32 %rem.i.6, 0
  br i1 %cmp.i.6, label %if.then.i.6, label %if.else.i.6

if.else.i.6:                                      ; preds = %cmdbuf_add.exit.5
  %45 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tmp1.i, align 1
  %cmd.tr.i.6 = trunc i32 %cond.6 to i8
  %47 = shl nuw i8 %cmd.tr.i.6, 4
  %conv3.i.6 = or i8 %46, %47
  store i8 %conv3.i.6, ptr %tmp1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.5)
  %cmp5.i.6 = icmp ult i32 %inc.i.5, 8182
  br i1 %cmp5.i.6, label %if.then7.i.6, label %if.else.i.6.cmdbuf_add.exit.6_crit_edge

if.else.i.6.cmdbuf_add.exit.6_crit_edge:          ; preds = %if.else.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.6

if.then7.i.6:                                     ; preds = %if.else.i.6
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.6 = lshr i32 %inc.i.5, 1
  %arrayidx.i.6 = getelementptr [4091 x i8], ptr %cbuf, i32 0, i32 %div19.i.6
  %48 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv3.i.6, ptr %arrayidx.i.6, align 1
  br label %cmdbuf_add.exit.6

if.then.i.6:                                      ; preds = %cmdbuf_add.exit.5
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.6 = trunc i32 %cond.6 to i8
  %49 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.i.6, ptr %tmp1.i, align 1
  br label %cmdbuf_add.exit.6

cmdbuf_add.exit.6:                                ; preds = %if.then.i.6, %if.then7.i.6, %if.else.i.6.cmdbuf_add.exit.6_crit_edge
  %50 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_cmds.i, align 4
  %inc.i.6 = add i32 %51, 1
  store i32 %inc.i.6, ptr %num_cmds.i, align 4
  %and.7 = and i32 %conv2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  %cond.7 = select i1 %tobool.not.7, i32 8, i32 12
  %rem.i.7 = and i32 %inc.i.6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.7)
  %cmp.i.7 = icmp eq i32 %rem.i.7, 0
  br i1 %cmp.i.7, label %if.then.i.7, label %if.else.i.7

if.else.i.7:                                      ; preds = %cmdbuf_add.exit.6
  %52 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tmp1.i, align 1
  %cmd.tr.i.7 = trunc i32 %cond.7 to i8
  %54 = shl nuw i8 %cmd.tr.i.7, 4
  %conv3.i.7 = or i8 %53, %54
  store i8 %conv3.i.7, ptr %tmp1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.6)
  %cmp5.i.7 = icmp ult i32 %inc.i.6, 8182
  br i1 %cmp5.i.7, label %if.then7.i.7, label %if.else.i.7.cmdbuf_add.exit.7_crit_edge

if.else.i.7.cmdbuf_add.exit.7_crit_edge:          ; preds = %if.else.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit.7

if.then7.i.7:                                     ; preds = %if.else.i.7
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i.7 = lshr i32 %inc.i.6, 1
  %arrayidx.i.7 = getelementptr [4091 x i8], ptr %cbuf, i32 0, i32 %div19.i.7
  %55 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv3.i.7, ptr %arrayidx.i.7, align 1
  br label %cmdbuf_add.exit.7

if.then.i.7:                                      ; preds = %cmdbuf_add.exit.6
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.7 = trunc i32 %cond.7 to i8
  %56 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i.7, ptr %tmp1.i, align 1
  br label %cmdbuf_add.exit.7

cmdbuf_add.exit.7:                                ; preds = %if.then.i.7, %if.then7.i.7, %if.else.i.7.cmdbuf_add.exit.7_crit_edge
  %57 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_cmds.i, align 4
  %inc.i.7 = add i32 %58, 1
  store i32 %inc.i.7, ptr %num_cmds.i, align 4
  %rem.i10 = and i32 %inc.i.7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i10)
  %cmp.i11 = icmp eq i32 %rem.i10, 0
  br i1 %cmp.i11, label %if.then.i13, label %if.else.i17

if.then.i13:                                      ; preds = %cmdbuf_add.exit.7
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 14, ptr %tmp1.i, align 1
  br label %cmdbuf_add.exit22

if.else.i17:                                      ; preds = %cmdbuf_add.exit.7
  %60 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tmp1.i, align 1
  %conv3.i15 = or i8 %61, -32
  store i8 %conv3.i15, ptr %tmp1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %inc.i.7)
  %cmp5.i16 = icmp ult i32 %inc.i.7, 8182
  br i1 %cmp5.i16, label %if.then7.i20, label %if.else.i17.cmdbuf_add.exit22_crit_edge

if.else.i17.cmdbuf_add.exit22_crit_edge:          ; preds = %if.else.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cmdbuf_add.exit22

if.then7.i20:                                     ; preds = %if.else.i17
  call void @__sanitizer_cov_trace_pc() #8
  %div19.i18 = lshr i32 %inc.i.7, 1
  %arrayidx.i19 = getelementptr [4091 x i8], ptr %cbuf, i32 0, i32 %div19.i18
  %62 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv3.i15, ptr %arrayidx.i19, align 1
  br label %cmdbuf_add.exit22

cmdbuf_add.exit22:                                ; preds = %if.then7.i20, %if.else.i17.cmdbuf_add.exit22_crit_edge, %if.then.i13
  %63 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_cmds.i, align 4
  %inc.i21 = add i32 %64, 1
  store i32 %inc.i21, ptr %num_cmds.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/pt3/pt3_i2c.c", i32 204, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pt3_i2c_master_xfer._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pt3_i2c_master_xfer._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/pt3/pt3_i2c.c", i32 151, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @send_i2c_cmd._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @send_i2c_cmd._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/pt3/pt3_i2c.c", i32 160, i32 3}
!15 = !{ptr @send_i2c_cmd._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @send_i2c_cmd._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 6834290}
!27 = !{i64 2154367149}
!28 = !{i64 2154368504}
!29 = !{i64 6833872}
