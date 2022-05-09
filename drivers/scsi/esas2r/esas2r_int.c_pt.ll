; ModuleID = '/llk/IR_all_yes/drivers/scsi/esas2r/esas2r_int.c_pt.bc'
source_filename = "../drivers/scsi/esas2r/esas2r_int.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.esas2r_adapter = type { [256 x %struct.esas2r_target], ptr, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %union.anon.101, i32, i64, ptr, ptr, %struct.esas2r_request, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i16, i16, %struct.esas2r_mem_desc, %struct.esas2r_mem_desc, %struct.esas2r_disc_context, ptr, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], %struct.esas2r_flash_context, i32, i32, %struct.tasklet_struct, ptr, ptr, i32, [32 x i8], %struct.timer_list, %struct.esas2r_firmware, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, ptr, i64, %struct.wait_queue_head, i32, i64, ptr, i32, %struct.wait_queue_head, i32, i32, ptr, %struct.list_head, %struct.spinlock, i8, [20 x i8], i32, %struct.esas2r_sg_context, ptr, %struct.list_head, ptr, i32, %struct.mutex, %struct.mutex, %struct.semaphore, ptr, [524288 x i8], i8 }
%struct.esas2r_target = type { i8, i8, i8, i8, i32, i32, i32, i16, i16, i8, i64, [60 x i8], %struct.atto_vda_ae_lu }
%struct.atto_vda_ae_lu = type { %struct.atto_vda_ae_hdr, i32, i8, i8, i16, %union.anon }
%struct.atto_vda_ae_hdr = type { i8, i8, i8, i8 }
%union.anon = type { %struct.atto_vda_ae_lu_tgt_lun_raid }
%struct.atto_vda_ae_lu_tgt_lun_raid = type { i16, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%union.anon.101 = type { i32 }
%struct.esas2r_request = type { %struct.list_head, %struct.list_head, ptr, ptr, %union.anon.15, ptr, %struct.list_head, ptr, i32, i16, i8, i8, %union.atto_vda_func_rsp, ptr, ptr, ptr, i8, i8, i16, i64, ptr, ptr, i32, i32, %union.anon.23 }
%union.anon.15 = type { ptr }
%union.atto_vda_func_rsp = type { %struct.atto_vda_scsi_rsp }
%struct.atto_vda_scsi_rsp = type { i8, i8, [2 x i8], i32 }
%union.anon.23 = type { ptr }
%struct.esas2r_mem_desc = type { %struct.list_head, ptr, i64, ptr, ptr, i32, i32 }
%struct.esas2r_disc_context = type { i8, i8, i16, i32, i32, i16, i8, i8, [16 x i8], ptr, i16, i16, i8, i8, i64 }
%struct.esas2r_flash_context = type { ptr, ptr, ptr, ptr, i32, i8, i8, i16, i32, i32, i32, i8, %struct.esas2r_sg_context }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.105, i32 }
%union.anon.105 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.esas2r_firmware = type { i32, %struct.esas2r_flash_img, ptr, i64, i32, ptr, i64 }
%struct.esas2r_flash_img = type { i8, i8, i8, i8, i32, i16, i16, i16, i16, [16 x i8], [6 x %struct.esas2r_component_header], [2048 x i8] }
%struct.esas2r_component_header = type { i8, i8, [2 x i8], i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.esas2r_sg_context = type { ptr, ptr, i32, ptr, ptr, %union.anon.102, ptr, ptr, i32, i32 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.atto_vda_ob_rsp = type { i32, i8, [3 x i8], %union.atto_vda_func_rsp }
%struct.atto_vda_scsi_req = type { i32, i8, i8, i8, i8, i32, i32, [16 x i8], %union.anon.3, %union.anon.5 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type <{ i64, i16, i8, i8 }>
%union.anon.5 = type { [245 x i32] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.atto_vda_ae_raid = type { %struct.atto_vda_ae_hdr, i32, i8, i8, i8, i8, [15 x i8], i8, [100 x i8] }
%struct.atto_vda_flash_req = type { i32, i8, i8, i8, i8, i32, i32, i8, [3 x i8], %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { [16 x i8], [1 x %struct.atto_vda_sge] }
%struct.atto_vda_sge = type <{ i32, i64 }>

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"scsi_report_bus_reset() called\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bus reset complete\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"The AE request response length (%p) is too long: %d\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"the async event length is invalid (%p): %d\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"RAID event received - name:%s rebuild_state:%d group_state:%d\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"LUN event received: event:%d target_id:%d LUN:%d state:%d\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Disk event received\00", [44 x i8] zeroinitializer }, align 32
@num_requests = external dso_local local_unnamed_addr global i32, align 4
@num_ae_requests = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Adapter disabled because of hardware failure\00", [51 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"The firmware was reset during a normal power-up sequence\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Recovering from a chip reset while the chip was online\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"The firmware has panicked\00", [38 x i8] zeroinitializer }, align 32
@switch.table.esas2r_ae_complete = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\00\05\05\00\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 10]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 645, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 652, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 765, i32 7 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 786, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 808, i32 9 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 818, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 832, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 521, i32 7 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 585, i32 9 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 601, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [36 x i8] c"../drivers/scsi/esas2r/esas2r_int.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 683, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant [32 x i8] c"switch.table.esas2r_ae_complete\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @switch.table.esas2r_ae_complete], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.esas2r_ae_complete to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_polled_interrupt(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dis_ints_cnt.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i, ptr %dis_ints_cnt.i, i32 1, ptr elementtype(i32) %dis_ints_cnt.i) #7, !srcloc !32
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i, label %do.body.i, label %entry.esas2r_disable_chip_interrupts.exit_crit_edge

entry.esas2r_disable_chip_interrupts.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %esas2r_disable_chip_interrupts.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !35
  br label %esas2r_disable_chip_interrupts.exit

esas2r_disable_chip_interrupts.exit:              ; preds = %do.body.i, %entry.esas2r_disable_chip_interrupts.exit_crit_edge
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 66048
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !36
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %esas2r_disable_chip_interrupts.exit.if.end_crit_edge, label %do.body

esas2r_disable_chip_interrupts.exit.if.end_crit_edge: ; preds = %esas2r_disable_chip_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %esas2r_disable_chip_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 16520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #7, !srcloc !35
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 16520
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call fastcc void @esas2r_get_outbound_responses(ptr noundef %a)
  br label %if.end

if.end:                                           ; preds = %do.body, %esas2r_disable_chip_interrupts.exit.if.end_crit_edge
  %and14 = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end27_crit_edge, label %if.then16

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then16:                                        ; preds = %if.end
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 66688
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.then16.if.end27_crit_edge, label %if.then25

if.then16.if.end27_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then25:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call fastcc void @esas2r_doorbell_interrupt(ptr noundef %a, i32 noundef %15)
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then16.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %call.i.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i, i32 1, i32 3, i32 1) #7
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i, ptr %dis_ints_cnt.i, i32 1, ptr elementtype(i32) %dis_ints_cnt.i) #7, !srcloc !42
  %asmresult.i.i.i.i.i45 = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i45)
  %cmp.i46 = icmp eq i32 %asmresult.i.i.i.i.i45, 0
  br i1 %cmp.i46, label %do.body.i49, label %if.end27.esas2r_enable_chip_interrupts.exit_crit_edge

if.end27.esas2r_enable_chip_interrupts.exit_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %esas2r_enable_chip_interrupts.exit

do.body.i49:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr.i48 = getelementptr i8, ptr %18, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 269484032) #7, !srcloc !35
  br label %esas2r_enable_chip_interrupts.exit

esas2r_enable_chip_interrupts.exit:               ; preds = %do.body.i49, %if.end27.esas2r_enable_chip_interrupts.exit_crit_edge
  %disable_cnt = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %disable_cnt, i32 noundef 4) #7
  %19 = ptrtoint ptr %disable_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %disable_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp29 = icmp eq i32 %20, 0
  br i1 %cmp29, label %if.then30, label %esas2r_enable_chip_interrupts.exit.if.end31_crit_edge

esas2r_enable_chip_interrupts.exit.if.end31_crit_edge: ; preds = %esas2r_enable_chip_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then30:                                        ; preds = %esas2r_enable_chip_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @esas2r_do_deferred_processes(ptr noundef %a)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %esas2r_enable_chip_interrupts.exit.if.end31_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esas2r_get_outbound_responses(ptr noundef %a) unnamed_addr #0 align 64 {
entry:
  %comp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %comp_list) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %comp_list, i32 0, i32 1
  %1 = ptrtoint ptr %comp_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %comp_list, ptr %comp_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %comp_list, ptr %0, align 4
  %queue_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 14
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #7
  %outbound_copy = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 10
  %3 = ptrtoint ptr %outbound_copy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %outbound_copy, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %7 = and i32 %6, -12648448
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %last_read = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 38
  %9 = ptrtoint ptr %last_read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_read, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp5 = icmp eq i32 %10, %8
  br i1 %cmp5, label %if.then, label %if.end, !prof !45

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %list_size = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 36
  %11 = ptrtoint ptr %list_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %list_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12)
  %cmp9.not = icmp ult i32 %8, %12
  br i1 %cmp9.not, label %do.body20.preheader, label %if.then17, !prof !46

do.body20.preheader:                              ; preds = %if.end
  %virt_addr = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 42, i32 1
  %req_table = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 20
  br label %do.body20

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #7
  call fastcc void @esas2r_local_reset_adapter(ptr noundef %a)
  br label %cleanup

do.body20:                                        ; preds = %do.cond75.do.body20_crit_edge, %do.body20.preheader
  %rspget_ptr.0 = phi i32 [ %spec.store.select, %do.cond75.do.body20_crit_edge ], [ %10, %do.body20.preheader ]
  %inc = add i32 %rspget_ptr.0, 1
  %13 = ptrtoint ptr %list_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %list_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %14)
  %cmp22.not = icmp ult i32 %inc, %14
  %spec.store.select = select i1 %cmp22.not, i32 %inc, i32 0
  %15 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt_addr, align 8
  %add.ptr = getelementptr %struct.atto_vda_ob_rsp, ptr %16, i32 %spec.store.select
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr, align 1
  %conv28 = and i32 %18, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv28)
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %do.body20.do.cond75_crit_edge, label %lor.rhs, !prof !45

do.body20.do.cond75_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond75

lor.rhs:                                          ; preds = %do.body20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_requests to i32))
  %19 = load i32, ptr @num_requests, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_ae_requests to i32))
  %20 = load i32, ptr @num_ae_requests, align 4
  %add = add i32 %19, 1
  %add33 = add i32 %add, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %conv28, i32 %add33)
  %cmp34 = icmp sgt i32 %conv28, %add33
  br i1 %cmp34, label %lor.rhs.do.cond75_crit_edge, label %if.end43, !prof !45

lor.rhs.do.cond75_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond75

if.end43:                                         ; preds = %lor.rhs
  %21 = ptrtoint ptr %req_table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req_table, align 4
  %arrayidx = getelementptr ptr, ptr %22, i32 %conv28
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %cmp45 = icmp eq ptr %24, null
  br i1 %cmp45, label %if.end43.do.cond75_crit_edge, label %lor.rhs47, !prof !45

if.end43.do.cond75_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond75

lor.rhs47:                                        ; preds = %if.end43
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vrq, align 8
  %handle48 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %handle48 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %handle48, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %18)
  %cmp49.not = icmp eq i32 %28, %18
  br i1 %cmp49.not, label %if.end59, label %lor.rhs47.do.cond75_crit_edge, !prof !46

lor.rhs47.do.cond75_crit_edge:                    ; preds = %lor.rhs47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond75

if.end59:                                         ; preds = %lor.rhs47
  %req_list = getelementptr inbounds %struct.esas2r_request, ptr %24, i32 0, i32 1
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %req_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end59.list_del.exit_crit_edge

if.end59.list_del.exit_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.esas2r_request, ptr %24, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %req_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end59.list_del.exit_crit_edge
  %35 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %req_list, align 4
  %prev.i = getelementptr inbounds %struct.esas2r_request, ptr %24, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %req_stat = getelementptr %struct.atto_vda_ob_rsp, ptr %16, i32 %spec.store.select, i32 1
  %37 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %req_stat, align 1
  %req_stat60 = getelementptr inbounds %struct.esas2r_request, ptr %24, i32 0, i32 17
  %39 = ptrtoint ptr %req_stat60 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %req_stat60, align 1
  %40 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vrq, align 8
  %function = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %function, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp63 = icmp eq i8 %43, 0
  br i1 %cmp63, label %if.then71, label %if.else, !prof !46

if.then71:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp.not.i = icmp eq i8 %38, 0
  br i1 %cmp.not.i, label %if.then71.if.end73_crit_edge, label %if.then.i, !prof !46

if.then71.if.end73_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then.i:                                        ; preds = %if.then71
  %func_rsp.i = getelementptr inbounds %struct.esas2r_request, ptr %24, i32 0, i32 12
  %func_rsp3.i = getelementptr %struct.atto_vda_ob_rsp, ptr %16, i32 %spec.store.select, i32 3
  %44 = ptrtoint ptr %func_rsp3.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %func_rsp3.i, align 1
  %46 = ptrtoint ptr %func_rsp.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %45, ptr %func_rsp.i, align 4
  %47 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i8 %38, label %if.then.i.if.end73_crit_edge [
    i8 10, label %if.then8.i
    i8 8, label %if.then17.i
  ]

if.then.i.if.end73_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then8.i:                                       ; preds = %if.then.i
  %timeout.i = getelementptr inbounds %struct.esas2r_request, ptr %24, i32 0, i32 8
  %48 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %49)
  %cmp9.i = icmp ugt i32 %49, -3
  br i1 %cmp9.i, label %if.then11.i, label %if.then8.i.if.end73_crit_edge

if.then8.i.if.end73_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %req_stat60 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 5, ptr %req_stat60, align 1
  br label %if.end73

if.then17.i:                                      ; preds = %if.then.i
  %51 = ptrtoint ptr %func_rsp.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %func_rsp.i, align 4
  %53 = call i8 @llvm.fshl.i8(i8 %52, i8 %52, i8 6) #7
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %53, label %if.then17.i.if.end73_crit_edge [
    i8 0, label %if.then17.i.if.then33.i_crit_edge
    i8 1, label %if.then17.i.if.then33.i_crit_edge127
    i8 4, label %if.then17.i.if.then33.i_crit_edge128
    i8 5, label %if.then17.i.if.then33.i_crit_edge129
  ]

if.then17.i.if.then33.i_crit_edge129:             ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33.i

if.then17.i.if.then33.i_crit_edge128:             ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33.i

if.then17.i.if.then33.i_crit_edge127:             ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33.i

if.then17.i.if.then33.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33.i

if.then17.i.if.end73_crit_edge:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then33.i:                                      ; preds = %if.then17.i.if.then33.i_crit_edge, %if.then17.i.if.then33.i_crit_edge127, %if.then17.i.if.then33.i_crit_edge128, %if.then17.i.if.then33.i_crit_edge129
  %55 = ptrtoint ptr %req_stat60 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %req_stat60, align 1
  %56 = ptrtoint ptr %func_rsp.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %func_rsp.i, align 4
  br label %if.end73

if.else:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %func_rsp = getelementptr inbounds %struct.esas2r_request, ptr %24, i32 0, i32 12
  %func_rsp72 = getelementptr %struct.atto_vda_ob_rsp, ptr %16, i32 %spec.store.select, i32 3
  %57 = ptrtoint ptr %func_rsp72 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %func_rsp72, align 1
  %59 = ptrtoint ptr %func_rsp to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %func_rsp, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.else, %if.then33.i, %if.then17.i.if.end73_crit_edge, %if.then11.i, %if.then8.i.if.end73_crit_edge, %if.then.i.if.end73_crit_edge, %if.then71.if.end73_crit_edge
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %0, align 4
  %call.i.i125 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %24, ptr noundef %61, ptr noundef nonnull %comp_list) #7
  br i1 %call.i.i125, label %if.end.i.i126, label %if.end73.do.cond75_crit_edge

if.end73.do.cond75_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond75

if.end.i.i126:                                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %24, ptr %0, align 4
  %63 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %comp_list, ptr %24, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %64 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %24, ptr %61, align 4
  br label %do.cond75

do.cond75:                                        ; preds = %if.end.i.i126, %if.end73.do.cond75_crit_edge, %lor.rhs47.do.cond75_crit_edge, %if.end43.do.cond75_crit_edge, %lor.rhs.do.cond75_crit_edge, %do.body20.do.cond75_crit_edge
  %cmp76.not = icmp eq i32 %spec.store.select, %8
  br i1 %cmp76.not, label %do.end78, label %do.cond75.do.body20_crit_edge

do.cond75.do.body20_crit_edge:                    ; preds = %do.cond75
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

do.end78:                                         ; preds = %do.cond75
  %66 = ptrtoint ptr %last_read to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %8, ptr %last_read, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #7
  %67 = ptrtoint ptr %comp_list to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %comp_list, align 4
  %cmp.i.not10.i = icmp eq ptr %68, %comp_list
  br i1 %cmp.i.not10.i, label %do.end78.cleanup_crit_edge, label %do.end78.for.body.i_crit_edge

do.end78.for.body.i_crit_edge:                    ; preds = %do.end78
  br label %for.body.i

do.end78.cleanup_crit_edge:                       ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %do.end78.for.body.i_crit_edge
  %element.011.i = phi ptr [ %next.013.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %68, %do.end78.for.body.i_crit_edge ]
  %69 = ptrtoint ptr %element.011.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %next.013.i = load ptr, ptr %element.011.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %element.011.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %element.011.i, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i.i, align 4
  %72 = ptrtoint ptr %element.011.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %element.011.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %76 = ptrtoint ptr %element.011.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %element.011.i, ptr %element.011.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %element.011.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %element.011.i, ptr %prev.i3.i.i, align 4
  call void @esas2r_complete_request(ptr noundef %a, ptr noundef %element.011.i) #7
  %cmp.i.not.i = icmp eq ptr %next.013.i, %comp_list
  br i1 %cmp.i.not.i, label %list_del_init.exit.i.cleanup_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del_init.exit.i.cleanup_crit_edge:           ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit.i.cleanup_crit_edge, %do.end78.cleanup_crit_edge, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %comp_list) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esas2r_doorbell_interrupt(ptr noundef %a, i32 noundef %doorbell) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %doorbell, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %doorbell)
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 66688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !35
  %and2 = and i32 %doorbell, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %entry.if.end5_crit_edge, label %if.then4

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %entry.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %flags9 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags9) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %and11 = and i32 %doorbell, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.10) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %and15 = and i32 %doorbell, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %flags2 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags2) #7
  %flags.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags.i.i) #7
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags.i.i) #7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i.i) #7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i.i) #7
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags.i.i) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_do_deferred_processes(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  %comp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags1, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags1, align 4
  %5 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.else, label %lor.lhs.false.if.end9_crit_edge

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags1, align 4
  %8 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool7.not, i32 2, i32 1
  br label %if.end9

if.end9:                                          ; preds = %if.else, %lor.lhs.false.if.end9_crit_edge, %entry.if.end9_crit_edge
  %startreqs.0 = phi i32 [ 0, %lor.lhs.false.if.end9_crit_edge ], [ 0, %entry.if.end9_crit_edge ], [ %spec.select, %if.else ]
  %disable_cnt = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %disable_cnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %disable_cnt, i32 1, i32 3, i32 1) #7
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %disable_cnt, ptr %disable_cnt, i32 1, ptr elementtype(i32) %disable_cnt) #7, !srcloc !48
  %10 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags1, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end9.if.then11_crit_edge

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

lor.lhs.false.i:                                  ; preds = %if.end9
  %13 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags1, align 4
  %15 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.i = icmp eq i32 %15, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.if.then11_crit_edge

lor.lhs.false.i.if.then11_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags1, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not.i = icmp eq i32 %18, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false4.i.if.then11_crit_edge

lor.lhs.false4.i.if.then11_crit_edge:             ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false4.i
  %19 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags1, align 4
  %21 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool11.not.i = icmp eq i32 %21, 0
  br i1 %tobool11.not.i, label %esas2r_is_tasklet_pending.exit, label %lor.lhs.false8.i.if.then11_crit_edge

lor.lhs.false8.i.if.then11_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

esas2r_is_tasklet_pending.exit:                   ; preds = %lor.lhs.false8.i
  %22 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags1, align 4
  %and1.i25.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i25.i)
  %tobool14.i.not = icmp eq i32 %and1.i25.i, 0
  br i1 %tobool14.i.not, label %if.end12, label %esas2r_is_tasklet_pending.exit.if.then11_crit_edge

esas2r_is_tasklet_pending.exit.if.then11_crit_edge: ; preds = %esas2r_is_tasklet_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.then11:                                        ; preds = %esas2r_is_tasklet_pending.exit.if.then11_crit_edge, %lor.lhs.false8.i.if.then11_crit_edge, %lor.lhs.false4.i.if.then11_crit_edge, %lor.lhs.false.i.if.then11_crit_edge, %if.end9.if.then11_crit_edge
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %flags1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i90 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i90, label %if.then.i, label %if.then11.if.end54_crit_edge

if.then11.if.end54_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then.i:                                        ; preds = %if.then11
  %state.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 54, i32 1
  %call.i.i91 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i91)
  %tobool.not.i.i = icmp eq i32 %call.i.i91, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.if.end54_crit_edge

if.then.i.if.end54_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %tasklet.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 54
  tail call void @__tasklet_hi_schedule(ptr noundef %tasklet.i) #7
  br label %if.end54

if.end12:                                         ; preds = %esas2r_is_tasklet_pending.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %startreqs.0)
  %tobool13.not = icmp eq i32 %startreqs.0, 0
  br i1 %tobool13.not, label %if.end12.if.end54_crit_edge, label %land.lhs.true

if.end12.if.end54_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

land.lhs.true:                                    ; preds = %if.end12
  %defer_list = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 19
  %24 = ptrtoint ptr %defer_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %defer_list, align 4
  %cmp.i.not = icmp eq ptr %25, %defer_list
  br i1 %cmp.i.not, label %land.lhs.true.if.end54_crit_edge, label %if.then16

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then16:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %comp_list) #7
  %26 = getelementptr inbounds %struct.list_head, ptr %comp_list, i32 0, i32 1
  %27 = ptrtoint ptr %comp_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %comp_list, ptr %comp_list, align 4
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %comp_list, ptr %26, align 4
  %queue_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 14
  %call20 = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #7
  %29 = ptrtoint ptr %defer_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %defer_list, align 4
  %cmp.i92.not113 = icmp eq ptr %30, %defer_list
  br i1 %cmp.i92.not113, label %if.then16.for.end_crit_edge, label %for.body.lr.ph

if.then16.for.end_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %startreqs.0)
  %cmp41 = icmp eq i32 %startreqs.0, 2
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.lr.ph
  %element.0114 = phi ptr [ %30, %for.body.lr.ph ], [ %next17.0117, %for.body.backedge ]
  %31 = ptrtoint ptr %element.0114 to i32
  call void @__asan_load4_noabort(i32 %31)
  %next17.0117 = load ptr, ptr %element.0114, align 4
  %add.ptr = getelementptr i8, ptr %element.0114, i32 -8
  %req_stat = getelementptr i8, ptr %element.0114, i32 65
  %32 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %33)
  %cmp31.not = icmp eq i8 %33, -2
  br i1 %cmp31.not, label %if.else35, label %if.then33

if.then33:                                        ; preds = %for.body
  %call.i.i94 = call zeroext i1 @__list_del_entry_valid(ptr noundef %element.0114) #7
  br i1 %call.i.i94, label %if.end.i.i, label %if.then33.list_del.exit_crit_edge

if.then33.list_del.exit_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %element.0114, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %element.0114 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %element.0114, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then33.list_del.exit_crit_edge
  %40 = ptrtoint ptr %element.0114 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %element.0114, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %element.0114, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %42 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %26, align 4
  %call.i.i96 = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %43, ptr noundef nonnull %comp_list) #7
  br i1 %call.i.i96, label %if.end.i.i97, label %list_del.exit.for.inc_crit_edge

list_del.exit.for.inc_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i.i97:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr, ptr %26, align 4
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %comp_list, ptr %add.ptr, align 4
  %prev3.i.i = getelementptr i8, ptr %element.0114, i32 -4
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %add.ptr, ptr %43, align 4
  br label %for.inc

if.else35:                                        ; preds = %for.body
  %req_type = getelementptr i8, ptr %element.0114, i32 42
  %48 = ptrtoint ptr %req_type to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %req_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %49)
  %cmp37 = icmp eq i8 %49, 2
  br i1 %cmp37, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else35
  %call.i.i98 = call zeroext i1 @__list_del_entry_valid(ptr noundef %element.0114) #7
  br i1 %call.i.i98, label %if.end.i.i101, label %if.then39.list_del.exit103_crit_edge

if.then39.list_del.exit103_crit_edge:             ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit103

if.end.i.i101:                                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i99 = getelementptr inbounds %struct.list_head, ptr %element.0114, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i99 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i99, align 4
  %52 = ptrtoint ptr %element.0114 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %element.0114, align 4
  %prev1.i.i.i100 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i100, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %list_del.exit103

list_del.exit103:                                 ; preds = %if.end.i.i101, %if.then39.list_del.exit103_crit_edge
  %56 = ptrtoint ptr %element.0114 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 256 to ptr), ptr %element.0114, align 4
  %prev.i102 = getelementptr inbounds %struct.list_head, ptr %element.0114, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i102 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i102, align 4
  call void @esas2r_disc_local_start_request(ptr noundef %a, ptr noundef %add.ptr) #7
  br label %for.inc

if.else40:                                        ; preds = %if.else35
  br i1 %cmp41, label %if.then43, label %if.else40.for.inc_crit_edge

if.else40.for.inc_crit_edge:                      ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then43:                                        ; preds = %if.else40
  %call.i.i104 = call zeroext i1 @__list_del_entry_valid(ptr noundef %element.0114) #7
  br i1 %call.i.i104, label %if.end.i.i107, label %if.then43.list_del.exit109_crit_edge

if.then43.list_del.exit109_crit_edge:             ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit109

if.end.i.i107:                                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i105 = getelementptr inbounds %struct.list_head, ptr %element.0114, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i105 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i105, align 4
  %60 = ptrtoint ptr %element.0114 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %element.0114, align 4
  %prev1.i.i.i106 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i106, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %list_del.exit109

list_del.exit109:                                 ; preds = %if.end.i.i107, %if.then43.list_del.exit109_crit_edge
  %64 = ptrtoint ptr %element.0114 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 256 to ptr), ptr %element.0114, align 4
  %prev.i108 = getelementptr inbounds %struct.list_head, ptr %element.0114, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i108 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i108, align 4
  call void @esas2r_local_start_request(ptr noundef %a, ptr noundef %add.ptr) #7
  %66 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %flags1, align 4
  %68 = and i32 %67, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool46.not = icmp ne i32 %68, 0
  %cmp.i92.not = icmp eq ptr %next17.0117, %defer_list
  %or.cond = select i1 %tobool46.not, i1 true, i1 %cmp.i92.not
  br i1 %or.cond, label %list_del.exit109.for.end_crit_edge, label %list_del.exit109.for.body.backedge_crit_edge

list_del.exit109.for.body.backedge_crit_edge:     ; preds = %list_del.exit109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.backedge

list_del.exit109.for.end_crit_edge:               ; preds = %list_del.exit109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %if.else40.for.inc_crit_edge, %list_del.exit103, %if.end.i.i97, %list_del.exit.for.inc_crit_edge
  %cmp.i92.not.old = icmp eq ptr %next17.0117, %defer_list
  br i1 %cmp.i92.not.old, label %for.inc.for.end_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.backedge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %list_del.exit109.for.body.backedge_crit_edge
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del.exit109.for.end_crit_edge, %if.then16.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call20) #7
  %69 = ptrtoint ptr %comp_list to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %comp_list, align 4
  %cmp.i.not10.i = icmp eq ptr %70, %comp_list
  br i1 %cmp.i.not10.i, label %for.end.esas2r_comp_list_drain.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.esas2r_comp_list_drain.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %esas2r_comp_list_drain.exit

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %element.011.i = phi ptr [ %next.013.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %70, %for.end.for.body.i_crit_edge ]
  %71 = ptrtoint ptr %element.011.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %next.013.i = load ptr, ptr %element.011.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %element.011.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %element.011.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i.i, align 4
  %74 = ptrtoint ptr %element.011.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %element.011.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %78 = ptrtoint ptr %element.011.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %element.011.i, ptr %element.011.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %element.011.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %element.011.i, ptr %prev.i3.i.i, align 4
  call void @esas2r_complete_request(ptr noundef %a, ptr noundef %element.011.i) #7
  %cmp.i.not.i = icmp eq ptr %next.013.i, %comp_list
  br i1 %cmp.i.not.i, label %list_del_init.exit.i.esas2r_comp_list_drain.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del_init.exit.i.esas2r_comp_list_drain.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esas2r_comp_list_drain.exit

esas2r_comp_list_drain.exit:                      ; preds = %list_del_init.exit.i.esas2r_comp_list_drain.exit_crit_edge, %for.end.esas2r_comp_list_drain.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %comp_list) #7
  br label %if.end54

if.end54:                                         ; preds = %esas2r_comp_list_drain.exit, %land.lhs.true.if.end54_crit_edge, %if.end12.if.end54_crit_edge, %if.then.i.i, %if.then.i.if.end54_crit_edge, %if.then11.if.end54_crit_edge
  %call.i.i88 = call zeroext i1 @__kasan_check_write(ptr noundef %disable_cnt, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %disable_cnt, i32 1, i32 3, i32 1) #7
  %80 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %disable_cnt, ptr %disable_cnt, i32 1, ptr elementtype(i32) %disable_cnt) #7, !srcloc !49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_interrupt(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %int_mask.i = getelementptr inbounds %struct.esas2r_adapter, ptr %dev_id, i32 0, i32 9
  %0 = ptrtoint ptr %int_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_mask.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %regs.i = getelementptr inbounds %struct.esas2r_adapter, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 66048
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !36
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %6 = ptrtoint ptr %int_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_mask.i, align 8
  %and.i = and i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp4.i = icmp eq i32 %and.i, 0
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %dis_ints_cnt.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %dev_id, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i.i, ptr %dis_ints_cnt.i.i, i32 1, ptr elementtype(i32) %dis_ints_cnt.i.i) #7, !srcloc !32
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end6.i.if.end_crit_edge

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.i.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !35
  br label %if.end

if.end:                                           ; preds = %do.body.i.i, %if.end6.i.if.end_crit_edge
  %int_stat.i = getelementptr inbounds %struct.esas2r_adapter, ptr %dev_id, i32 0, i32 8
  %11 = ptrtoint ptr %int_stat.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %int_stat.i, align 4
  %12 = ptrtoint ptr %int_mask.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %int_mask.i, align 8
  %flags2 = getelementptr inbounds %struct.esas2r_adapter, ptr %dev_id, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags2) #7
  %flags.i = getelementptr inbounds %struct.esas2r_adapter, ptr %dev_id, i32 0, i32 4
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %flags.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %state.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %dev_id, i32 0, i32 54, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %tasklet.i = getelementptr inbounds %struct.esas2r_adapter, ptr %dev_id, i32 0, i32 54
  tail call void @__tasklet_hi_schedule(ptr noundef %tasklet.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.i.cleanup_crit_edge ], [ 1, %if.then.i.i ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_adapter_interrupt(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %int_stat = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 8
  %0 = ptrtoint ptr %int_stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_stat, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body, !prof !45

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !35
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 16520
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call fastcc void @esas2r_get_outbound_responses(ptr noundef %a)
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %int_stat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int_stat, align 4
  %and9 = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end28_crit_edge, label %if.then17, !prof !46

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then17:                                        ; preds = %if.end
  %regs20 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %9 = ptrtoint ptr %regs20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs20, align 4
  %add.ptr21 = getelementptr i8, ptr %10, i32 66688
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.then17.if.end28_crit_edge, label %if.then26

if.then17.if.end28_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call fastcc void @esas2r_doorbell_interrupt(ptr noundef %a, i32 noundef %12)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then17.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %int_mask = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 9
  %13 = ptrtoint ptr %int_mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4112, ptr %int_mask, align 8
  %dis_ints_cnt.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i, i32 1, i32 3, i32 1) #7
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i, ptr %dis_ints_cnt.i, i32 1, ptr elementtype(i32) %dis_ints_cnt.i) #7, !srcloc !42
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end28.esas2r_enable_chip_interrupts.exit_crit_edge

if.end28.esas2r_enable_chip_interrupts.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %esas2r_enable_chip_interrupts.exit

do.body.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 269484032) #7, !srcloc !35
  br label %esas2r_enable_chip_interrupts.exit

esas2r_enable_chip_interrupts.exit:               ; preds = %do.body.i, %if.end28.esas2r_enable_chip_interrupts.exit_crit_edge
  %disable_cnt = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %disable_cnt, i32 noundef 4) #7
  %17 = ptrtoint ptr %disable_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %disable_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp30 = icmp eq i32 %18, 0
  br i1 %cmp30, label %if.then37, label %esas2r_enable_chip_interrupts.exit.if.end38_crit_edge, !prof !46

esas2r_enable_chip_interrupts.exit.if.end38_crit_edge: ; preds = %esas2r_enable_chip_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then37:                                        ; preds = %esas2r_enable_chip_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @esas2r_do_deferred_processes(ptr noundef %a)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %esas2r_enable_chip_interrupts.exit.if.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_msi_interrupt(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 66048
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !36
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body, !prof !45

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 16520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #7, !srcloc !35
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 16520
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call fastcc void @esas2r_get_outbound_responses(ptr noundef %dev_id)
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %and16 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end.if.end35_crit_edge, label %if.then24, !prof !46

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then24:                                        ; preds = %if.end
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr28 = getelementptr i8, ptr %10, i32 66688
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.then24.if.end35_crit_edge, label %if.then33

if.then24.if.end35_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then33:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call fastcc void @esas2r_doorbell_interrupt(ptr noundef %dev_id, i32 noundef %12)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.then24.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %dis_ints_cnt.i = getelementptr inbounds %struct.esas2r_adapter, ptr %dev_id, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i, ptr %dis_ints_cnt.i, i32 1, ptr elementtype(i32) %dis_ints_cnt.i) #7, !srcloc !32
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i, label %do.body.i, label %if.end35.esas2r_disable_chip_interrupts.exit_crit_edge

if.end35.esas2r_disable_chip_interrupts.exit_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %esas2r_disable_chip_interrupts.exit

do.body.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !35
  br label %esas2r_disable_chip_interrupts.exit

esas2r_disable_chip_interrupts.exit:              ; preds = %do.body.i, %if.end35.esas2r_disable_chip_interrupts.exit_crit_edge
  %call.i.i.i59 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i, i32 1, i32 3, i32 1) #7
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i, ptr %dis_ints_cnt.i, i32 1, ptr elementtype(i32) %dis_ints_cnt.i) #7, !srcloc !42
  %asmresult.i.i.i.i.i60 = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i60)
  %cmp.i61 = icmp eq i32 %asmresult.i.i.i.i.i60, 0
  br i1 %cmp.i61, label %do.body.i64, label %esas2r_disable_chip_interrupts.exit.esas2r_enable_chip_interrupts.exit_crit_edge

esas2r_disable_chip_interrupts.exit.esas2r_enable_chip_interrupts.exit_crit_edge: ; preds = %esas2r_disable_chip_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %esas2r_enable_chip_interrupts.exit

do.body.i64:                                      ; preds = %esas2r_disable_chip_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr.i63 = getelementptr i8, ptr %18, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 269484032) #7, !srcloc !35
  br label %esas2r_enable_chip_interrupts.exit

esas2r_enable_chip_interrupts.exit:               ; preds = %do.body.i64, %esas2r_disable_chip_interrupts.exit.esas2r_enable_chip_interrupts.exit_crit_edge
  %disable_cnt = getelementptr inbounds %struct.esas2r_adapter, ptr %dev_id, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %disable_cnt, i32 noundef 4) #7
  %19 = ptrtoint ptr %disable_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %disable_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp37 = icmp eq i32 %20, 0
  br i1 %cmp37, label %if.then44, label %esas2r_enable_chip_interrupts.exit.if.end45_crit_edge, !prof !46

esas2r_enable_chip_interrupts.exit.if.end45_crit_edge: ; preds = %esas2r_enable_chip_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then44:                                        ; preds = %esas2r_enable_chip_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @esas2r_do_deferred_processes(ptr noundef %dev_id)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %esas2r_enable_chip_interrupts.exit.if.end45_crit_edge
  tail call void @esas2r_do_tasklet_tasks(ptr noundef %dev_id)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_do_tasklet_tasks(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  %ae.i63.i = alloca %struct.atto_vda_ae_hdr, align 1
  %ae.i.i = alloca %struct.atto_vda_ae_hdr, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end8_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then7:                                         ; preds = %if.then
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #7
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #7
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #7
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #7
  %call.i = tail call zeroext i1 @esas2r_is_adapter_present(ptr noundef %a) #7
  br i1 %call.i, label %lor.lhs.false.i, label %if.then7.if.then.i_crit_edge

if.then7.if.then.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then7
  %chip_uptime.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 22
  %9 = ptrtoint ptr %chip_uptime.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chip_uptime.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59999, i32 %10)
  %cmp.i = icmp ugt i32 %10, 59999
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then7.if.then.i_crit_edge
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags) #7
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #7
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #7
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %flags) #7
  %dis_ints_cnt.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i.i, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i.i, ptr %dis_ints_cnt.i.i, i32 1, ptr elementtype(i32) %dis_ints_cnt.i.i) #7, !srcloc !32
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i, label %do.body.i.i, label %if.then.i.esas2r_disable_chip_interrupts.exit.i_crit_edge

if.then.i.esas2r_disable_chip_interrupts.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esas2r_disable_chip_interrupts.exit.i

do.body.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %regs.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !35
  br label %esas2r_disable_chip_interrupts.exit.i

esas2r_disable_chip_interrupts.exit.i:            ; preds = %do.body.i.i, %if.then.i.esas2r_disable_chip_interrupts.exit.i_crit_edge
  %int_mask.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 9
  %14 = ptrtoint ptr %int_mask.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %int_mask.i, align 8
  tail call void @esas2r_process_adapter_reset(ptr noundef %a) #7
  %call8.i = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.7) #7
  br label %if.end

if.else.i:                                        ; preds = %lor.lhs.false.i
  %call10.i = tail call i32 @_test_and_set_bit(i32 noundef 19, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.then12.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then12.i:                                      ; preds = %if.else.i
  %dis_ints_cnt.i68.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 7
  %call.i.i.i69.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i68.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i68.i, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i68.i, ptr %dis_ints_cnt.i68.i, i32 1, ptr elementtype(i32) %dis_ints_cnt.i68.i) #7, !srcloc !32
  %asmresult.i.i.i.i.i70.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i70.i)
  %cmp.i71.i = icmp eq i32 %asmresult.i.i.i.i.i70.i, 1
  br i1 %cmp.i71.i, label %do.body.i74.i, label %if.then12.i.if.end.i_crit_edge

if.then12.i.if.end.i_crit_edge:                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body.i74.i:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %regs.i72.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %16 = ptrtoint ptr %regs.i72.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i72.i, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %17, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i, i32 0) #7, !srcloc !35
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i74.i, %if.then12.i.if.end.i_crit_edge, %if.else.i.if.end.i_crit_edge
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool15.not.i = icmp eq i32 %20, 0
  br i1 %tobool15.not.i, label %if.end.i.if.else22.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else22.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else22.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %23 = and i32 %22, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool18.not.i = icmp ne i32 %23, 0
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %brmerge.i = select i1 %tobool18.not.i, i1 true, i1 %tobool.not.not.i
  br i1 %brmerge.i, label %land.lhs.true.i.if.else22.i_crit_edge, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

land.lhs.true.i.if.else22.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else22.i

if.else22.i:                                      ; preds = %land.lhs.true.i.if.else22.i_crit_edge, %if.end.i.if.else22.i_crit_edge
  tail call void @esas2r_reset_chip(ptr noundef %a) #7
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else22.i, %land.lhs.true.i.if.end23.i_crit_edge
  %24 = ptrtoint ptr %chip_uptime.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chip_uptime.i, align 4
  %add.i = add i32 %25, 20000
  store i32 %add.i, ptr %chip_uptime.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %call25.i = tail call i32 @jiffies_to_msecs(i32 noundef %26) #7
  %chip_init_time.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 31
  %27 = ptrtoint ptr %chip_init_time.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call25.i, ptr %chip_init_time.i, align 4
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags, align 4
  %30 = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool28.not.i = icmp eq i32 %30, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %if.end23.i.if.end34.i_crit_edge

if.end23.i.if.end34.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then29.i:                                      ; preds = %if.end23.i
  tail call void @esas2r_process_adapter_reset(ptr noundef %a) #7
  br i1 %tobool.not.i, label %if.then31.i, label %if.then29.i.if.end34.i_crit_edge

if.then29.i.if.end34.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then31.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  %call32.i = tail call zeroext i16 @esas2r_targ_db_get_tgt_cnt(ptr noundef %a) #7
  %31 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 21
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %call32.i, ptr %31, align 8
  tail call void @esas2r_targ_db_remove_all(ptr noundef %a, i1 noundef zeroext false) #7
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %if.then29.i.if.end34.i_crit_edge, %if.end23.i.if.end34.i_crit_edge
  %int_mask35.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 9
  %33 = ptrtoint ptr %int_mask35.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %int_mask35.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end34.i, %esas2r_disable_chip_interrupts.exit.i, %if.then.if.end_crit_edge
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags, align 4
  %36 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not71.i = icmp eq i32 %36, 0
  br i1 %tobool.not71.i, label %if.end.if.end8_crit_edge, label %while.body.lr.ph.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

while.body.lr.ph.i:                               ; preds = %if.end
  %dis_ints_cnt.i.i73 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 7
  %regs.i.i74 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %37 = getelementptr inbounds %struct.atto_vda_ae_hdr, ptr %ae.i.i, i32 0, i32 1
  %38 = getelementptr inbounds %struct.atto_vda_ae_hdr, ptr %ae.i.i, i32 0, i32 2
  %39 = getelementptr inbounds %struct.atto_vda_ae_hdr, ptr %ae.i.i, i32 0, i32 3
  %40 = getelementptr inbounds %struct.atto_vda_ae_hdr, ptr %ae.i63.i, i32 0, i32 1
  %41 = getelementptr inbounds %struct.atto_vda_ae_hdr, ptr %ae.i63.i, i32 0, i32 2
  %42 = getelementptr inbounds %struct.atto_vda_ae_hdr, ptr %ae.i63.i, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %esas2r_enable_chip_interrupts.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags, align 4
  %45 = and i32 %44, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool3.not.i = icmp eq i32 %45, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i75, label %while.body.i.if.end.i83_crit_edge

while.body.i.if.end.i83_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i83

land.lhs.true.i75:                                ; preds = %while.body.i
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags, align 4
  %48 = and i32 %47, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool6.not.i = icmp eq i32 %48, 0
  br i1 %tobool6.not.i, label %if.then.i79, label %land.lhs.true.i75.if.end.i83_crit_edge

land.lhs.true.i75.if.end.i83_crit_edge:           ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i83

if.then.i79:                                      ; preds = %land.lhs.true.i75
  %call.i.i.i.i76 = call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i.i73, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i.i73, i32 1, i32 3, i32 1) #7
  %49 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i.i73, ptr %dis_ints_cnt.i.i73, i32 1, ptr elementtype(i32) %dis_ints_cnt.i.i73) #7, !srcloc !32
  %asmresult.i.i.i.i.i.i77 = extractvalue { i32, i32 } %49, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i77)
  %cmp.i.i78 = icmp eq i32 %asmresult.i.i.i.i.i.i77, 1
  br i1 %cmp.i.i78, label %do.body.i.i81, label %if.then.i79.if.end.i83_crit_edge

if.then.i79.if.end.i83_crit_edge:                 ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i83

do.body.i.i81:                                    ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %51, i32 66060
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80, i32 0) #7, !srcloc !35
  br label %if.end.i83

if.end.i83:                                       ; preds = %do.body.i.i81, %if.then.i79.if.end.i83_crit_edge, %land.lhs.true.i75.if.end.i83_crit_edge, %while.body.i.if.end.i83_crit_edge
  %call7.i = call zeroext i1 @esas2r_check_adapter(ptr noundef %a) #7
  %call8.i82 = call zeroext i1 @esas2r_init_adapter_hw(ptr noundef %a, i1 noundef zeroext false) #7
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags, align 4
  %54 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool11.not.i = icmp eq i32 %54, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end.i83.if.end8_crit_edge

if.end.i83.if.end8_crit_edge:                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end13.i:                                       ; preds = %if.end.i83
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags, align 4
  %57 = and i32 %56, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool16.not.i = icmp eq i32 %57, 0
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags, align 4
  %60 = and i32 %59, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool28.not.i84 = icmp eq i32 %60, 0
  br i1 %tobool16.not.i, label %if.else25.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end13.i
  br i1 %tobool28.not.i84, label %if.else.i85, label %if.then21.i

if.then21.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %call22.i = call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.8) #7
  br label %if.end33.i

if.else.i85:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef 11, ptr noundef %flags) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ae.i.i) #7
  %61 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 13, ptr %39, align 1
  %62 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %38, align 1
  %63 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %37, align 1
  %64 = ptrtoint ptr %ae.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 4, ptr %ae.i.i, align 1
  call void @esas2r_queue_fw_event(ptr noundef %a, i32 noundef 4, ptr noundef nonnull %ae.i.i, i32 noundef 128) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ae.i.i) #7
  br label %if.end33.i

if.else25.i:                                      ; preds = %if.end13.i
  br i1 %tobool28.not.i84, label %if.else30.i, label %if.else25.i.if.end31.i_crit_edge

if.else25.i.if.end31.i_crit_edge:                 ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.else30.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ae.i63.i) #7
  %65 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 4, ptr %42, align 1
  %66 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %41, align 1
  %67 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %40, align 1
  %68 = ptrtoint ptr %ae.i63.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 4, ptr %ae.i63.i, align 1
  call void @esas2r_queue_fw_event(ptr noundef %a, i32 noundef 4, ptr noundef nonnull %ae.i63.i, i32 noundef 128) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ae.i63.i) #7
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else30.i, %if.else25.i.if.end31.i_crit_edge
  %call32.i86 = call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.9) #7
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end31.i, %if.else.i85, %if.then21.i
  call void @_clear_bit(i32 noundef 19, ptr noundef %flags) #7
  %call.i.i.i65.i = call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i.i73, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i.i73, i32 1, i32 3, i32 1) #7
  %69 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i.i73, ptr %dis_ints_cnt.i.i73, i32 1, ptr elementtype(i32) %dis_ints_cnt.i.i73) #7, !srcloc !42
  %asmresult.i.i.i.i.i66.i = extractvalue { i32, i32 } %69, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i66.i)
  %cmp.i67.i = icmp eq i32 %asmresult.i.i.i.i.i66.i, 0
  br i1 %cmp.i67.i, label %do.body.i70.i, label %if.end33.i.esas2r_enable_chip_interrupts.exit.i_crit_edge

if.end33.i.esas2r_enable_chip_interrupts.exit.i_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esas2r_enable_chip_interrupts.exit.i

do.body.i70.i:                                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %71, i32 66060
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 269484032) #7, !srcloc !35
  br label %esas2r_enable_chip_interrupts.exit.i

esas2r_enable_chip_interrupts.exit.i:             ; preds = %do.body.i70.i, %if.end33.i.esas2r_enable_chip_interrupts.exit.i_crit_edge
  call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #7
  %72 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %flags, align 4
  %74 = and i32 %73, 8
  %tobool.not.i87 = icmp eq i32 %74, 0
  br i1 %tobool.not.i87, label %esas2r_enable_chip_interrupts.exit.i.if.end8_crit_edge, label %esas2r_enable_chip_interrupts.exit.i.while.body.i_crit_edge

esas2r_enable_chip_interrupts.exit.i.while.body.i_crit_edge: ; preds = %esas2r_enable_chip_interrupts.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

esas2r_enable_chip_interrupts.exit.i.if.end8_crit_edge: ; preds = %esas2r_enable_chip_interrupts.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %esas2r_enable_chip_interrupts.exit.i.if.end8_crit_edge, %if.end.i83.if.end8_crit_edge, %if.end.if.end8_crit_edge, %lor.lhs.false.if.end8_crit_edge
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %flags, align 4
  %77 = and i32 %76, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool11.not = icmp eq i32 %77, 0
  br i1 %tobool11.not, label %if.end8.if.end21_crit_edge, label %if.then12

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then12:                                        ; preds = %if.end8
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #7
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %flags, align 4
  %80 = and i32 %79, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool16.not = icmp eq i32 %80, 0
  br i1 %tobool16.not, label %do.body, label %if.then17

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 6, ptr noundef %flags) #7
  br label %if.end21

do.body:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %82, i32 66656
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #7, !srcloc !35
  br label %if.end21

if.end21:                                         ; preds = %do.body, %if.then17, %if.end8.if.end21_crit_edge
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %flags, align 4
  %85 = and i32 %84, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool24.not = icmp eq i32 %85, 0
  br i1 %tobool24.not, label %if.end21.if.end31_crit_edge, label %if.then25

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @esas2r_process_bus_reset(ptr noundef %a)
  %host = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 56
  %86 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %host, align 8
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %87, i32 0, i32 49
  %call26 = call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 2, ptr noundef %shost_gendev, ptr noundef nonnull @.str) #7
  %88 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %host, align 8
  call void @scsi_report_bus_reset(ptr noundef %89, i32 noundef 0) #7
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #7
  call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #7
  %call30 = call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.1) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.end21.if.end31_crit_edge
  %90 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %flags, align 4
  %and1.i71 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i71)
  %tobool34.not = icmp eq i32 %and1.i71, 0
  br i1 %tobool34.not, label %if.end31.if.end37_crit_edge, label %if.then35

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #7
  call void @esas2r_targ_db_report_changes(ptr noundef %a) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end31.if.end37_crit_edge
  %disable_cnt = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %disable_cnt, i32 noundef 4) #7
  %92 = ptrtoint ptr %disable_cnt to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %disable_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp = icmp eq i32 %93, 0
  br i1 %cmp, label %if.then39, label %if.end37.if.end40_crit_edge

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void @esas2r_do_deferred_processes(ptr noundef %a)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37.if.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_disc_local_start_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_local_start_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_process_adapter_reset(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  %comp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %comp_list) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %comp_list, i32 0, i32 1
  %1 = ptrtoint ptr %comp_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %comp_list, ptr %comp_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %comp_list, ptr %0, align 4
  %queue_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 14
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #7
  %interrupt_cx = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 15
  %3 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %interrupt_cx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %4, align 8
  %flags6 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  call void @_clear_bit(i32 noundef 22, ptr noundef %flags6) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %interrupt_cx, align 4
  %interrupt_cb = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 14
  %7 = ptrtoint ptr %interrupt_cb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %interrupt_cb, align 8
  %comp_cb = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 13
  %8 = ptrtoint ptr %comp_cb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @esas2r_dummy_complete, ptr %comp_cb, align 4
  %list_size = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 36
  %9 = ptrtoint ptr %list_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %list_size, align 8
  %sub = add i32 %10, -1
  %last_read = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 38
  %11 = ptrtoint ptr %last_read to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %last_read, align 8
  %last_write = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 37
  %12 = ptrtoint ptr %last_write to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %last_write, align 4
  %outbound_copy = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 10
  %13 = ptrtoint ptr %outbound_copy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %outbound_copy, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %sub, ptr %14, align 4
  %flags8 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  call void @_set_bit(i32 noundef 23, ptr noundef %flags8) #7
  %defer_list = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 19
  %16 = ptrtoint ptr %defer_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %element.047 = load ptr, ptr %defer_list, align 4
  %cmp.i.not48 = icmp eq ptr %element.047, %defer_list
  br i1 %cmp.i.not48, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %element.049 = phi ptr [ %element.0, %for.inc.for.body_crit_edge ], [ %element.047, %if.end.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %element.049, i32 -8
  %req_stat = getelementptr i8, ptr %element.049, i32 65
  %17 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp15 = icmp eq i8 %18, -1
  br i1 %cmp15, label %if.then17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then17:                                        ; preds = %for.body
  %call18 = call zeroext i1 @esas2r_ioreq_aborted(ptr noundef %a, ptr noundef %add.ptr, i8 noundef zeroext 10) #7
  br i1 %call18, label %if.then19, label %if.then17.for.inc_crit_edge

if.then17.for.inc_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then19:                                        ; preds = %if.then17
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %20, ptr noundef nonnull %comp_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then19.for.inc_crit_edge

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %0, align 4
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %comp_list, ptr %add.ptr, align 4
  %prev3.i.i = getelementptr i8, ptr %element.049, i32 -4
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %add.ptr, ptr %20, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.then19.for.inc_crit_edge, %if.then17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %element.049 to i32
  call void @__asan_load4_noabort(i32 %25)
  %element.0 = load ptr, ptr %element.049, align 4
  %cmp.i.not = icmp eq ptr %element.0, %defer_list
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #7
  %26 = ptrtoint ptr %comp_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %comp_list, align 4
  %cmp.i.not10.i = icmp eq ptr %27, %comp_list
  br i1 %cmp.i.not10.i, label %for.end.esas2r_comp_list_drain.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.esas2r_comp_list_drain.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %esas2r_comp_list_drain.exit

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %element.011.i = phi ptr [ %next.013.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %27, %for.end.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %element.011.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %next.013.i = load ptr, ptr %element.011.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %element.011.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %element.011.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %element.011.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %element.011.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %35 = ptrtoint ptr %element.011.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %element.011.i, ptr %element.011.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %element.011.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %element.011.i, ptr %prev.i3.i.i, align 4
  call void @esas2r_complete_request(ptr noundef %a, ptr noundef %element.011.i) #7
  %cmp.i.not.i = icmp eq ptr %next.013.i, %comp_list
  br i1 %cmp.i.not.i, label %list_del_init.exit.i.esas2r_comp_list_drain.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del_init.exit.i.esas2r_comp_list_drain.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esas2r_comp_list_drain.exit

esas2r_comp_list_drain.exit:                      ; preds = %list_del_init.exit.i.esas2r_comp_list_drain.exit_crit_edge, %for.end.esas2r_comp_list_drain.exit_crit_edge
  call fastcc void @esas2r_process_bus_reset(ptr noundef %a)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %comp_list) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @esas2r_dummy_complete(ptr nocapture %a, ptr nocapture %rq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @esas2r_ioreq_aborted(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esas2r_process_bus_reset(ptr noundef %a) unnamed_addr #0 align 64 {
entry:
  %comp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %comp_list) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %comp_list, i32 0, i32 1
  %1 = ptrtoint ptr %comp_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %comp_list, ptr %comp_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %comp_list, ptr %0, align 4
  %queue_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 14
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #7
  %defer_list = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 19
  %3 = ptrtoint ptr %defer_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %element.031 = load ptr, ptr %defer_list, align 4
  %cmp.i.not32 = icmp eq ptr %element.031, %defer_list
  br i1 %cmp.i.not32, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %element.033 = phi ptr [ %element.0, %for.inc.for.body_crit_edge ], [ %element.031, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %element.033, i32 -8
  %call9 = call zeroext i1 @esas2r_ioreq_aborted(ptr noundef %a, ptr noundef %add.ptr, i8 noundef zeroext 10) #7
  br i1 %call9, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %0, align 4
  %call.i.i30 = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %5, ptr noundef nonnull %comp_list) #7
  br i1 %call.i.i30, label %if.end.i.i, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %0, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %comp_list, ptr %add.ptr, align 4
  %prev3.i.i = getelementptr i8, ptr %element.033, i32 -4
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %add.ptr, ptr %5, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %element.033 to i32
  call void @__asan_load4_noabort(i32 %10)
  %element.0 = load ptr, ptr %element.033, align 4
  %cmp.i.not = icmp eq ptr %element.0, %defer_list
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #7
  %11 = ptrtoint ptr %comp_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %comp_list, align 4
  %cmp.i.not10.i = icmp eq ptr %12, %comp_list
  br i1 %cmp.i.not10.i, label %for.end.esas2r_comp_list_drain.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.esas2r_comp_list_drain.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %esas2r_comp_list_drain.exit

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %element.011.i = phi ptr [ %next.013.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %12, %for.end.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %element.011.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %next.013.i = load ptr, ptr %element.011.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %element.011.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %element.011.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %element.011.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %element.011.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %20 = ptrtoint ptr %element.011.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %element.011.i, ptr %element.011.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %element.011.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %element.011.i, ptr %prev.i3.i.i, align 4
  call void @esas2r_complete_request(ptr noundef %a, ptr noundef %element.011.i) #7
  %cmp.i.not.i = icmp eq ptr %next.013.i, %comp_list
  br i1 %cmp.i.not.i, label %list_del_init.exit.i.esas2r_comp_list_drain.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del_init.exit.i.esas2r_comp_list_drain.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esas2r_comp_list_drain.exit

esas2r_comp_list_drain.exit:                      ; preds = %list_del_init.exit.i.esas2r_comp_list_drain.exit_crit_edge, %for.end.esas2r_comp_list_drain.exit_crit_edge
  %disable_cnt = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %disable_cnt, i32 noundef 4) #7
  %22 = ptrtoint ptr %disable_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %disable_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp14 = icmp eq i32 %23, 0
  br i1 %cmp14, label %if.then16, label %esas2r_comp_list_drain.exit.if.end17_crit_edge

esas2r_comp_list_drain.exit.if.end17_crit_edge:   ; preds = %esas2r_comp_list_drain.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %esas2r_comp_list_drain.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @esas2r_do_deferred_processes(ptr noundef %a)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %esas2r_comp_list_drain.exit.if.end17_crit_edge
  %flags18 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  call void @_clear_bit(i32 noundef 9, ptr noundef %flags18) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %comp_list) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_log_dev(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_report_bus_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_log(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_targ_db_report_changes(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_force_interrupt(ptr nocapture noundef readonly %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 66656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2147483392) #7, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_ae_complete(ptr noundef %a, ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %func_rsp = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  %3 = ptrtoint ptr %func_rsp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %func_rsp, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %add.ptr = getelementptr i8, ptr %2, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp = icmp ugt i32 %5, 256
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4.not = icmp ne i32 %and, 0
  %or.cond.not = or i1 %cmp, %cmp4.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp6 = icmp eq i32 %4, 0
  %or.cond80 = select i1 %or.cond.not, i1 true, i1 %cmp6
  br i1 %or.cond80, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %rq, i32 noundef %5) #7
  br label %while.end

if.end:                                           ; preds = %entry
  %cmp787 = icmp ult ptr %2, %add.ptr
  br i1 %cmp787, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %mem_lock.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %ae.088 = phi ptr [ %2, %while.body.lr.ph ], [ %add.ptr43, %cleanup.while.body_crit_edge ]
  %6 = ptrtoint ptr %ae.088 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ae.088, align 1
  %conv = zext i8 %7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ae.088 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %conv)
  %cmp8 = icmp ult i32 %sub.ptr.sub, %conv
  %and11 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp12.not = icmp ne i32 %and11, 0
  %or.cond81.not = or i1 %cmp8, %cmp12.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp15 = icmp eq i8 %7, 0
  %or.cond82 = select i1 %or.cond81.not, i1 true, i1 %cmp15
  br i1 %or.cond82, label %cleanup.thread, label %if.end19

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv.le = zext i8 %7 to i32
  %call18 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %ae.088, i32 noundef %conv.le) #7
  br label %while.end

if.end19:                                         ; preds = %while.body
  tail call void @esas2r_nuxi_ae_data(ptr noundef %ae.088) #7
  tail call void @esas2r_queue_fw_event(ptr noundef %a, i32 noundef 4, ptr noundef %ae.088, i32 noundef 128) #7
  %bytype = getelementptr inbounds %struct.atto_vda_ae_hdr, ptr %ae.088, i32 0, i32 3
  %8 = ptrtoint ptr %bytype to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bytype, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %9, label %if.end19.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb28
    i8 3, label %sw.bb41
  ]

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end19
  %dwflags = getelementptr inbounds %struct.atto_vda_ae_raid, ptr %ae.088, i32 0, i32 1
  %11 = ptrtoint ptr %dwflags to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %dwflags, align 1
  %and21 = and i32 %12, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool.not = icmp eq i32 %and21, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.then22

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %acname = getelementptr inbounds %struct.atto_vda_ae_raid, ptr %ae.088, i32 0, i32 6
  %byrebuild_state = getelementptr inbounds %struct.atto_vda_ae_raid, ptr %ae.088, i32 0, i32 3
  %13 = ptrtoint ptr %byrebuild_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %byrebuild_state, align 1
  %conv24 = zext i8 %14 to i32
  %bygroup_state = getelementptr inbounds %struct.atto_vda_ae_raid, ptr %ae.088, i32 0, i32 2
  %15 = ptrtoint ptr %bygroup_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bygroup_state, align 1
  %conv25 = zext i8 %16 to i32
  %call26 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef %acname, i32 noundef %conv24, i32 noundef %conv25) #7
  br label %cleanup

sw.bb28:                                          ; preds = %if.end19
  %dwevent = getelementptr inbounds %struct.atto_vda_ae_lu, ptr %ae.088, i32 0, i32 1
  %17 = ptrtoint ptr %dwevent to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %dwevent, align 1
  %id = getelementptr inbounds %struct.atto_vda_ae_lu, ptr %ae.088, i32 0, i32 5
  %19 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %id, align 1
  %conv29 = zext i16 %20 to i32
  %bylun = getelementptr inbounds %struct.atto_vda_ae_lu, ptr %ae.088, i32 0, i32 5, i32 0, i32 1
  %21 = ptrtoint ptr %bylun to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bylun, align 1
  %conv31 = zext i8 %22 to i32
  %bystate = getelementptr inbounds %struct.atto_vda_ae_lu, ptr %ae.088, i32 0, i32 2
  %23 = ptrtoint ptr %bystate to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bystate, align 1
  %conv32 = zext i8 %24 to i32
  %call33 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef %18, i32 noundef %conv29, i32 noundef %conv31, i32 noundef %conv32) #7
  %25 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %26)
  %cmp37 = icmp ult i16 %26, 256
  br i1 %cmp37, label %if.then39, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then39:                                        ; preds = %sw.bb28
  %conv.i = zext i16 %26 to i32
  %27 = tail call i32 @llvm.umin.i32(i32 %conv, i32 24) #7
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mem_lock.i) #7
  %new_target_state.i = getelementptr %struct.esas2r_target, ptr %a, i32 %conv.i, i32 1
  %28 = ptrtoint ptr %new_target_state.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %new_target_state.i, align 1
  %29 = ptrtoint ptr %dwevent to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %dwevent, align 1
  %and.i = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then39.if.then19.i_crit_edge

if.then39.if.then19.i_crit_edge:                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19.i

if.else.i:                                        ; preds = %if.then39
  %31 = ptrtoint ptr %bystate to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bystate, align 1
  %switch.tableidx = add i8 %32, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %33 = icmp ult i8 %switch.tableidx, 6
  br i1 %33, label %switch.lookup, label %if.else.i.esas2r_lun_event.exit_crit_edge

if.else.i.esas2r_lun_event.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esas2r_lun_event.exit

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.esas2r_ae_complete, i32 0, i32 %34
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %35)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.then19.i

if.then19.i:                                      ; preds = %switch.lookup, %if.then39.if.then19.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.then39.if.then19.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %36 = ptrtoint ptr %new_target_state.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink.i, ptr %new_target_state.i, align 1
  %lu_event.i = getelementptr %struct.esas2r_target, ptr %a, i32 %conv.i, i32 12
  %37 = call ptr @memcpy(ptr %lu_event.i, ptr %ae.088, i32 %27)
  tail call void @esas2r_disc_queue_event(ptr noundef %a, i8 noundef zeroext 1) #7
  br label %esas2r_lun_event.exit

esas2r_lun_event.exit:                            ; preds = %if.then19.i, %if.else.i.esas2r_lun_event.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock.i, i32 noundef %call5.i) #7
  br label %cleanup

sw.bb41:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.6) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb41, %esas2r_lun_event.exit, %sw.bb28.cleanup_crit_edge, %if.then22, %sw.bb.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  %add.ptr43 = getelementptr i8, ptr %ae.088, i32 %conv
  %cmp7 = icmp ult ptr %add.ptr43, %add.ptr
  br i1 %cmp7, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %if.end.while.end_crit_edge, %if.end.thread
  tail call void @esas2r_build_ae_req(ptr noundef %a, ptr noundef %rq) #7
  %queue_lock.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 14
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i) #7
  tail call void @esas2r_start_vda_request(ptr noundef %a, ptr noundef %rq) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call2.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_nuxi_ae_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_queue_fw_event(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_send_reset_ae(ptr noundef %a, i1 noundef zeroext %pwr_mgt) local_unnamed_addr #0 align 64 {
entry:
  %ae = alloca %struct.atto_vda_ae_hdr, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ae) #7
  %0 = getelementptr inbounds %struct.atto_vda_ae_hdr, ptr %ae, i32 0, i32 1
  %1 = getelementptr inbounds %struct.atto_vda_ae_hdr, ptr %ae, i32 0, i32 2
  %2 = getelementptr inbounds %struct.atto_vda_ae_hdr, ptr %ae, i32 0, i32 3
  %. = select i1 %pwr_mgt, i8 13, i8 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %., ptr %2, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %1, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %0, align 1
  %6 = ptrtoint ptr %ae to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %ae, align 1
  call void @esas2r_queue_fw_event(ptr noundef %a, i32 noundef 4, ptr noundef nonnull %ae, i32 noundef 128) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ae) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_complete_request(ptr noundef %a, ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrq, align 8
  %function = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %function, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sub_func = getelementptr inbounds %struct.atto_vda_flash_req, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %sub_func to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sub_func, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp4 = icmp eq i8 %5, 3
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %interrupt_cb = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 14
  %6 = ptrtoint ptr %interrupt_cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupt_cb, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then6:                                         ; preds = %if.end
  tail call void %7(ptr noundef %a, ptr noundef %rq) #7
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %8 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %9)
  %cmp9 = icmp eq i8 %9, -2
  br i1 %cmp9, label %if.then11, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @esas2r_start_request(ptr noundef %a, ptr noundef %rq) #7
  br label %return

if.end13:                                         ; preds = %if.then6.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %10 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vrq, align 8
  %function15 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %function15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %function15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp17 = icmp eq i8 %13, 0
  br i1 %cmp17, label %land.lhs.true21, label %if.end13.if.end33_crit_edge, !prof !46

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true21:                                  ; preds = %if.end13
  %req_stat22 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %14 = ptrtoint ptr %req_stat22 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %req_stat22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp24.not = icmp eq i8 %15, 0
  br i1 %cmp24.not, label %land.lhs.true21.if.end33_crit_edge, label %if.then32, !prof !46

land.lhs.true21.if.end33_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then32:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @esas2r_check_req_rsp_sense(ptr noundef %a, ptr noundef %rq)
  tail call void @esas2r_log_request_failure(ptr noundef %a, ptr noundef %rq) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %land.lhs.true21.if.end33_crit_edge, %if.end13.if.end33_crit_edge
  %comp_cb = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 13
  %16 = ptrtoint ptr %comp_cb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %comp_cb, align 4
  tail call void %17(ptr noundef %a, ptr noundef %rq) #7
  br label %return

return:                                           ; preds = %if.end33, %if.then11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_start_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esas2r_check_req_rsp_sense(ptr noundef %a, ptr nocapture noundef %rq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sense_len = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12, i32 0, i32 1
  %0 = ptrtoint ptr %sense_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sense_len, align 1
  %sense_len1 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 11
  %2 = ptrtoint ptr %sense_len1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sense_len1, align 1
  %4 = tail call i8 @llvm.umin.i8(i8 %1, i8 %3)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.then5

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then5:                                         ; preds = %entry
  %sense_buf = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 5
  %5 = ptrtoint ptr %sense_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sense_buf, align 4
  %tobool6.not = icmp eq ptr %6, null
  %7 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %conv9 = zext i8 %4 to i32
  %10 = call ptr @memcpy(ptr %6, ptr %9, i32 %conv9)
  br label %if.end11

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %sense_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %sense_buf, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %1)
  %cmp13 = icmp ugt i8 %1, 12
  br i1 %cmp13, label %if.then15, label %if.end11.if.end26_crit_edge

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then15:                                        ; preds = %if.end11
  %12 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %arrayidx = getelementptr i8, ptr %14, i32 12
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %16)
  %cmp17 = icmp eq i8 %16, 63
  br i1 %cmp17, label %land.lhs.true, label %if.then15.if.end26_crit_edge

if.then15.if.end26_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true:                                    ; preds = %if.then15
  %arrayidx19 = getelementptr i8, ptr %14, i32 13
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %18)
  %cmp21 = icmp eq i8 %18, 14
  br i1 %cmp21, label %if.then23, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %target_id = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 9
  %19 = ptrtoint ptr %target_id to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %target_id, align 8
  tail call void @esas2r_target_state_changed(ptr noundef %a, i16 noundef zeroext %20, i8 noundef zeroext 6) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true.if.end26_crit_edge, %if.then15.if.end26_crit_edge, %if.end11.if.end26_crit_edge, %entry.if.end26_crit_edge
  %21 = ptrtoint ptr %sense_len1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %4, ptr %sense_len1, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_log_request_failure(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esas2r_local_reset_adapter(ptr noundef %a) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags.i) #7
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags.i) #7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #7
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @esas2r_is_adapter_present(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_reset_chip(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @esas2r_targ_db_get_tgt_cnt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_targ_db_remove_all(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @esas2r_check_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @esas2r_init_adapter_hw(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_disc_queue_event(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_build_ae_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_start_vda_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_target_state_changed(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/esas2r/esas2r_int.c", i32 645, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/esas2r/esas2r_int.c", i32 652, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/esas2r/esas2r_int.c", i32 765, i32 7}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/esas2r/esas2r_int.c", i32 786, i32 8}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/esas2r/esas2r_int.c", i32 808, i32 9}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/esas2r/esas2r_int.c", i32 818, i32 8}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/esas2r/esas2r_int.c", i32 832, i32 32}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/esas2r/esas2r_int.c", i32 521, i32 7}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/esas2r/esas2r_int.c", i32 585, i32 9}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/esas2r/esas2r_int.c", i32 601, i32 8}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/esas2r/esas2r_int.c", i32 683, i32 31}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2148362147}
!32 = !{i64 2148277456, i64 2148277488, i64 2148277517, i64 2148277551, i64 2148277582, i64 2148277605}
!33 = !{i64 2148362376}
!34 = !{i64 2155146426}
!35 = !{i64 5054651}
!36 = !{i64 5055069}
!37 = !{i64 2155153180}
!38 = !{i64 2155153643}
!39 = !{i64 2155154779}
!40 = !{i64 2155155608}
!41 = !{i64 2148365188}
!42 = !{i64 2148279921, i64 2148279953, i64 2148279982, i64 2148280016, i64 2148280047, i64 2148280070}
!43 = !{i64 2148365417}
!44 = !{i64 2155147280}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2155172144}
!48 = !{i64 2148276736, i64 2148276762, i64 2148276791, i64 2148276825, i64 2148276856, i64 2148276879}
!49 = !{i64 2148279201, i64 2148279227, i64 2148279256, i64 2148279290, i64 2148279321, i64 2148279344}
!50 = !{i64 2155149981}
!51 = !{i64 2155156216}
!52 = !{i64 2155157352}
!53 = !{i64 2155158240}
!54 = !{i64 2155159146}
!55 = !{i64 2155159664}
!56 = !{i64 2155160800}
!57 = !{i64 2155161684}
!58 = !{i64 2155171143}
!59 = !{i64 2155173260}
