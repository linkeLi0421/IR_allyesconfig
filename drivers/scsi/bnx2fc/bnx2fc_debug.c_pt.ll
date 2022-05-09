; ModuleID = '/llk/IR_all_yes/drivers/scsi/bnx2fc/bnx2fc_debug.c_pt.bc'
source_filename = "../drivers/scsi/bnx2fc/bnx2fc_debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.bnx2fc_cmd = type { %struct.list_head, i8, i8, i8, i8, %struct.kref, ptr, ptr, ptr, ptr, %struct.bnx2fc_mp_req, ptr, ptr, %struct.delayed_work, %struct.completion, %struct.completion, i32, i32, i16, %struct.fcoe_err_report_entry, ptr, ptr, ptr, i32, i32, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bnx2fc_mp_req = type { i8, i32, ptr, i32, ptr, i32, %struct.fc_frame_header, i32, ptr, i32, ptr, i32, %struct.fc_frame_header }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.fcoe_err_report_entry = type { %struct.fcoe_partial_err_report_entry, %struct.fcoe_fc_hdr }
%struct.fcoe_partial_err_report_entry = type { i32, i32, i32, i32 }
%struct.fcoe_fc_hdr = type { [3 x i8], i8, [3 x i8], i8, i16, i8, i8, [3 x i8], i8, i32, i16, i16 }
%struct.fcoe_port = type { ptr, ptr, %struct.sk_buff_head, i8, i32, i32, %struct.timer_list, %struct.work_struct, [6 x i8], ptr }
%struct.sk_buff_head = type { %union.anon.103, i32, %struct.spinlock }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bnx2fc_rport = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, [6 x i8], i32, i32, i32, %struct.atomic_t, %struct.b577xx_doorbell_set_prod, %struct.b577xx_fcoe_rx_doorbell, ptr, i32, i16, i8, i32, ptr, i32, i16, i8, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, [4 x ptr], [4 x i32], ptr, i32, %struct.spinlock, %struct.spinlock, %struct.atomic_t, i32, i32, i32, %struct.list_head, [257 x ptr], %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.wait_queue_head, %struct.timer_list, %struct.wait_queue_head }
%struct.b577xx_doorbell_set_prod = type { i16, i8, %struct.b577xx_doorbell_hdr }
%struct.b577xx_doorbell_hdr = type { i8 }
%struct.b577xx_fcoe_rx_doorbell = type { %struct.b577xx_doorbell_hdr, i8, i16 }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@bnx2fc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@BNX2FC_IO_DBG._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 34, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2fc: xid:0x%x %pV\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BNX2FC_IO_DBG\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/bnx2fc/bnx2fc_debug.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@BNX2FC_IO_DBG._entry_ptr = internal global ptr @BNX2FC_IO_DBG._entry, section ".printk_index", align 4
@BNX2FC_IO_DBG._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016bnx2fc: NULL %pV\00", [45 x i8] zeroinitializer }, align 32
@BNX2FC_IO_DBG._entry_ptr.7 = internal global ptr @BNX2FC_IO_DBG._entry.5, section ".printk_index", align 4
@BNX2FC_TGT_DBG._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 58, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2fc: port:%x %pV\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BNX2FC_TGT_DBG\00", [17 x i8] zeroinitializer }, align 32
@BNX2FC_TGT_DBG._entry_ptr = internal global ptr @BNX2FC_TGT_DBG._entry, section ".printk_index", align 4
@BNX2FC_TGT_DBG._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.9, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@BNX2FC_TGT_DBG._entry_ptr.11 = internal global ptr @BNX2FC_TGT_DBG._entry.10, section ".printk_index", align 4
@BNX2FC_HBA_DBG._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 79, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bnx2fc: %pV\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BNX2FC_HBA_DBG\00", [17 x i8] zeroinitializer }, align 32
@BNX2FC_HBA_DBG._entry_ptr = internal global ptr @BNX2FC_HBA_DBG._entry, section ".printk_index", align 4
@BNX2FC_HBA_DBG._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.13, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@BNX2FC_HBA_DBG._entry_ptr.15 = internal global ptr @BNX2FC_HBA_DBG._entry.14, section ".printk_index", align 4
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 32, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 36, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 56, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 60, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 79, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private constant [38 x i8] c"../drivers/scsi/bnx2fc/bnx2fc_debug.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 81, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @BNX2FC_HBA_DBG._entry, ptr @BNX2FC_HBA_DBG._entry.14, ptr @BNX2FC_HBA_DBG._entry_ptr, ptr @BNX2FC_HBA_DBG._entry_ptr.15, ptr @BNX2FC_IO_DBG._entry, ptr @BNX2FC_IO_DBG._entry.5, ptr @BNX2FC_IO_DBG._entry_ptr, ptr @BNX2FC_IO_DBG._entry_ptr.7, ptr @BNX2FC_TGT_DBG._entry, ptr @BNX2FC_TGT_DBG._entry.10, ptr @BNX2FC_TGT_DBG._entry_ptr, ptr @BNX2FC_TGT_DBG._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BNX2FC_IO_DBG._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BNX2FC_IO_DBG._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BNX2FC_TGT_DBG._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BNX2FC_TGT_DBG._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BNX2FC_HBA_DBG._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BNX2FC_HBA_DBG._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @BNX2FC_IO_DBG(ptr noundef readonly %io_req, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #4
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_debug_level to i32))
  %1 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !38

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %2, align 4
  %tobool5.not = icmp eq ptr %io_req, null
  br i1 %tobool5.not, label %if.end.do.end20_crit_edge, label %land.lhs.true

if.end.do.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true:                                    ; preds = %if.end
  %port = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 6
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %land.lhs.true.do.end20_crit_edge, label %land.lhs.true7

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true7:                                   ; preds = %land.lhs.true
  %lport = getelementptr inbounds %struct.fcoe_port, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lport, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %land.lhs.true7.do.end20_crit_edge, label %land.lhs.true10

land.lhs.true7.do.end20_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %land.lhs.true10.do.end20_crit_edge, label %do.end

land.lhs.true10.do.end20_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

do.end:                                           ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 49
  %xid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 18
  %11 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %xid, align 4
  %conv = zext i16 %12 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str, i32 noundef %conv, ptr noundef nonnull %vaf) #7
  br label %if.end21

do.end20:                                         ; preds = %land.lhs.true10.do.end20_crit_edge, %land.lhs.true7.do.end20_crit_edge, %land.lhs.true.do.end20_crit_edge, %if.end.do.end20_crit_edge
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %vaf) #7
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %do.end
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @BNX2FC_TGT_DBG(ptr noundef readonly %tgt, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #4
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_debug_level to i32))
  %1 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !38

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %2, align 4
  %tobool5.not = icmp eq ptr %tgt, null
  br i1 %tobool5.not, label %if.end.do.end23_crit_edge, label %land.lhs.true

if.end.do.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tgt, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %land.lhs.true.do.end23_crit_edge, label %land.lhs.true7

land.lhs.true.do.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23

land.lhs.true7:                                   ; preds = %land.lhs.true
  %lport = getelementptr inbounds %struct.fcoe_port, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lport, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %land.lhs.true7.do.end23_crit_edge, label %land.lhs.true10

land.lhs.true7.do.end23_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %land.lhs.true10.do.end23_crit_edge, label %land.lhs.true14

land.lhs.true10.do.end23_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %rport = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 1
  %11 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rport, align 4
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %land.lhs.true14.do.end23_crit_edge, label %do.end

land.lhs.true14.do.end23_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23

do.end:                                           ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 49
  %port_id = getelementptr inbounds %struct.fc_rport, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_id, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.8, i32 noundef %14, ptr noundef nonnull %vaf) #7
  br label %if.end24

do.end23:                                         ; preds = %land.lhs.true14.do.end23_crit_edge, %land.lhs.true10.do.end23_crit_edge, %land.lhs.true7.do.end23_crit_edge, %land.lhs.true.do.end23_crit_edge, %if.end.do.end23_crit_edge
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %vaf) #7
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %do.end
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @BNX2FC_HBA_DBG(ptr noundef readonly %lport, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #4
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_debug_level to i32))
  %1 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !38

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %2, align 4
  %tobool5.not = icmp eq ptr %lport, null
  br i1 %tobool5.not, label %if.end.do.end11_crit_edge, label %land.lhs.true

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lport, align 8
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %land.lhs.true.do.end11_crit_edge, label %do.end

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.12, ptr noundef nonnull %vaf) #7
  br label %if.end12

do.end11:                                         ; preds = %land.lhs.true.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %vaf) #7
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %do.end
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !22, !23, !24, !25, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bnx2fc/bnx2fc_debug.c", i32 32, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @BNX2FC_IO_DBG._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @BNX2FC_IO_DBG._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/bnx2fc/bnx2fc_debug.c", i32 36, i32 3}
!10 = !{ptr @BNX2FC_IO_DBG._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @BNX2FC_IO_DBG._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/bnx2fc/bnx2fc_debug.c", i32 56, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @BNX2FC_TGT_DBG._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @BNX2FC_TGT_DBG._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @BNX2FC_TGT_DBG._entry.10, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../drivers/scsi/bnx2fc/bnx2fc_debug.c", i32 60, i32 3}
!19 = !{ptr @BNX2FC_TGT_DBG._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/bnx2fc/bnx2fc_debug.c", i32 79, i32 3}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @BNX2FC_HBA_DBG._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @BNX2FC_HBA_DBG._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @BNX2FC_HBA_DBG._entry.14, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../drivers/scsi/bnx2fc/bnx2fc_debug.c", i32 81, i32 3}
!27 = !{ptr @BNX2FC_HBA_DBG._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
!38 = !{!"branch_weights", i32 2000, i32 1}
