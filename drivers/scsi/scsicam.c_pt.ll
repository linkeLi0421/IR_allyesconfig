; ModuleID = '/llk/IR_all_yes/drivers/scsi/scsicam.c_pt.bc'
source_filename = "../drivers/scsi/scsicam.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+scsi_bios_ptable\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_bios_ptable\09\09\09\09"
module asm "\09.long\09__crc_scsi_bios_ptable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_bios_ptable:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_bios_ptable\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_bios_ptable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_partsize\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_partsize\09\09\09\09"
module asm "\09.long\09__crc_scsi_partsize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_partsize:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_partsize\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_partsize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsicam_bios_param\22, \22a\22\09"
module asm "\09.weak\09__crc_scsicam_bios_param\09\09\09\09"
module asm "\09.long\09__crc_scsicam_bios_param\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsicam_bios_param:\09\09\09\09\09"
module asm "\09.asciz \09\22scsicam_bios_param\22\09\09\09\09\09"
module asm "__kstrtabns_scsicam_bios_param:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.page = type { i32, %union.anon.6, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.msdos_partition = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

@__kstrtab_scsi_bios_ptable = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_bios_ptable = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_bios_ptable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_bios_ptable to i32), ptr @__kstrtab_scsi_bios_ptable, ptr @__kstrtabns_scsi_bios_ptable }, section "___ksymtab+scsi_bios_ptable", align 4
@__kstrtab_scsi_partsize = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_partsize = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_partsize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_partsize to i32), ptr @__kstrtab_scsi_partsize, ptr @__kstrtabns_scsi_partsize }, section "___ksymtab+scsi_partsize", align 4
@__kstrtab_scsicam_bios_param = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsicam_bios_param = external dso_local constant [0 x i8], align 1
@__ksymtab_scsicam_bios_param = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsicam_bios_param to i32), ptr @__kstrtab_scsicam_bios_param, ptr @__kstrtabns_scsicam_bios_param }, section "___ksymtab+scsicam_bios_param", align 4
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@___asan_gen_ = private constant [26 x i8] c"../drivers/scsi/scsicam.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 416, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 717, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_scsi_bios_ptable, ptr @__ksymtab_scsi_partsize, ptr @__ksymtab_scsicam_bios_param, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scsi_bios_ptable(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part0, align 4
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @read_cache_page(ptr noundef %7, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !19

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, -1
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %8, align 4
  %and.i16.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !20

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !19

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i18.i = add i32 %16, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %17, %if.end.i20.i ]
  %18 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #4, !srcloc !21
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !19

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i25.i = add i32 %16, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %call.i to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %19, %if.end.i27.i ]
  %20 = inttoptr i32 %retval.0.i28.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %23 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %if.then3, label %PageError.exit.if.end6_crit_edge

PageError.exit.if.end6_crit_edge:                 ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then3:                                         ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call ptr @page_address(ptr noundef %call.i) #4
  %add.ptr = getelementptr i8, ptr %call4, i32 446
  %call5 = tail call ptr @kmemdup(ptr noundef %add.ptr, i32 noundef 66, i32 noundef 3264) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %PageError.exit.if.end6_crit_edge
  %res.0 = phi ptr [ null, %PageError.exit.if.end6_crit_edge ], [ %call5, %if.then3 ]
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %8, align 4
  %and.i.i12 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i12)
  %tobool.not.i.i13 = icmp eq i32 %and.i.i12, 0
  br i1 %tobool.not.i.i13, label %if.end.i.i16, label %if.then.i.i15, !prof !19

if.then.i.i15:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i14 = add i32 %25, -1
  br label %_compound_head.exit.i18

if.end.i.i16:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i18

_compound_head.exit.i18:                          ; preds = %if.end.i.i16, %if.then.i.i15
  %retval.0.i.i17 = phi i32 [ %sub.i.i14, %if.then.i.i15 ], [ %26, %if.end.i.i16 ]
  %27 = inttoptr i32 %retval.0.i.i17 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #4
  %28 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !20

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.1) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i18
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #4
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #4, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@scsi_bios_ptable, %if.then.i.i.i.i.i)) #4
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !26

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %27, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #4
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__put_page(ptr noundef %27) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %res.0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %res.0, %if.then.i4.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @scsi_partsize(ptr nocapture noundef readonly %bdev, i64 noundef %capacity, ptr nocapture noundef writeonly %geom) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scsi_bios_ptable(ptr noundef %bdev)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 64
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21931, i16 %1)
  %cmp = icmp eq i16 %1, -21931
  br i1 %cmp, label %for.body.preheader, label %if.end.out_free_buf_crit_edge

if.end.out_free_buf_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_buf

for.body.preheader:                               ; preds = %if.end
  %sys_ind = getelementptr inbounds %struct.msdos_partition, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %sys_ind to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sys_ind, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %for.body.preheader.for.inc_crit_edge, label %if.end7

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end7:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %cyl8 = getelementptr inbounds %struct.msdos_partition, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %cyl8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cyl8, align 1
  %conv9 = zext i8 %5 to i32
  %sector = getelementptr inbounds %struct.msdos_partition, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %sector to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sector, align 1
  %8 = and i8 %7, -64
  %and = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %and, 2
  %add = or i32 %shl, %conv9
  %9 = tail call i32 @llvm.smax.i32(i32 %add, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %for.body.preheader.for.inc_crit_edge
  %largest.1 = phi ptr [ null, %for.body.preheader.for.inc_crit_edge ], [ %call, %if.end7 ]
  %largest_cyl.1 = phi i32 [ -1, %for.body.preheader.for.inc_crit_edge ], [ %9, %if.end7 ]
  %sys_ind.1 = getelementptr %struct.msdos_partition, ptr %call, i32 1, i32 4
  %10 = ptrtoint ptr %sys_ind.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sys_ind.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not.1 = icmp eq i8 %11, 0
  br i1 %tobool5.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end7.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.end7.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr = getelementptr %struct.msdos_partition, ptr %call, i32 1
  %cyl8.1 = getelementptr %struct.msdos_partition, ptr %call, i32 1, i32 3
  %12 = ptrtoint ptr %cyl8.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cyl8.1, align 1
  %conv9.1 = zext i8 %13 to i32
  %sector.1 = getelementptr %struct.msdos_partition, ptr %call, i32 1, i32 2
  %14 = ptrtoint ptr %sector.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sector.1, align 1
  %16 = and i8 %15, -64
  %and.1 = zext i8 %16 to i32
  %shl.1 = shl nuw nsw i32 %and.1, 2
  %add.1 = or i32 %shl.1, %conv9.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1, i32 %largest_cyl.1)
  %cmp11.1 = icmp sgt i32 %add.1, %largest_cyl.1
  %spec.select.1 = select i1 %cmp11.1, ptr %incdec.ptr, ptr %largest.1
  %17 = tail call i32 @llvm.smax.i32(i32 %add.1, i32 %largest_cyl.1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end7.1, %for.inc.for.inc.1_crit_edge
  %largest.1.1 = phi ptr [ %largest.1, %for.inc.for.inc.1_crit_edge ], [ %spec.select.1, %if.end7.1 ]
  %largest_cyl.1.1 = phi i32 [ %largest_cyl.1, %for.inc.for.inc.1_crit_edge ], [ %17, %if.end7.1 ]
  %sys_ind.2 = getelementptr %struct.msdos_partition, ptr %call, i32 2, i32 4
  %18 = ptrtoint ptr %sys_ind.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sys_ind.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not.2 = icmp eq i8 %19, 0
  br i1 %tobool5.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end7.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.end7.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr.1 = getelementptr %struct.msdos_partition, ptr %call, i32 2
  %cyl8.2 = getelementptr %struct.msdos_partition, ptr %call, i32 2, i32 3
  %20 = ptrtoint ptr %cyl8.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cyl8.2, align 1
  %conv9.2 = zext i8 %21 to i32
  %sector.2 = getelementptr %struct.msdos_partition, ptr %call, i32 2, i32 2
  %22 = ptrtoint ptr %sector.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sector.2, align 1
  %24 = and i8 %23, -64
  %and.2 = zext i8 %24 to i32
  %shl.2 = shl nuw nsw i32 %and.2, 2
  %add.2 = or i32 %shl.2, %conv9.2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2, i32 %largest_cyl.1.1)
  %cmp11.2 = icmp sgt i32 %add.2, %largest_cyl.1.1
  %spec.select.2 = select i1 %cmp11.2, ptr %incdec.ptr.1, ptr %largest.1.1
  %25 = tail call i32 @llvm.smax.i32(i32 %add.2, i32 %largest_cyl.1.1)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end7.2, %for.inc.1.for.inc.2_crit_edge
  %largest.1.2 = phi ptr [ %largest.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %spec.select.2, %if.end7.2 ]
  %largest_cyl.1.2 = phi i32 [ %largest_cyl.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %25, %if.end7.2 ]
  %sys_ind.3 = getelementptr %struct.msdos_partition, ptr %call, i32 3, i32 4
  %26 = ptrtoint ptr %sys_ind.3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sys_ind.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool5.not.3 = icmp eq i8 %27, 0
  br i1 %tobool5.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end7.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.end7.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr.2 = getelementptr %struct.msdos_partition, ptr %call, i32 3
  %cyl8.3 = getelementptr %struct.msdos_partition, ptr %call, i32 3, i32 3
  %28 = ptrtoint ptr %cyl8.3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cyl8.3, align 1
  %conv9.3 = zext i8 %29 to i32
  %sector.3 = getelementptr %struct.msdos_partition, ptr %call, i32 3, i32 2
  %30 = ptrtoint ptr %sector.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sector.3, align 1
  %32 = and i8 %31, -64
  %and.3 = zext i8 %32 to i32
  %shl.3 = shl nuw nsw i32 %and.3, 2
  %add.3 = or i32 %shl.3, %conv9.3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3, i32 %largest_cyl.1.2)
  %cmp11.3 = icmp sgt i32 %add.3, %largest_cyl.1.2
  %spec.select.3 = select i1 %cmp11.3, ptr %incdec.ptr.2, ptr %largest.1.2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end7.3, %for.inc.2.for.inc.3_crit_edge
  %largest.1.3 = phi ptr [ %largest.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %spec.select.3, %if.end7.3 ]
  %tobool16.not = icmp eq ptr %largest.1.3, null
  br i1 %tobool16.not, label %for.inc.3.out_free_buf_crit_edge, label %if.then17

for.inc.3.out_free_buf_crit_edge:                 ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_buf

if.then17:                                        ; preds = %for.inc.3
  %end_cyl18 = getelementptr inbounds %struct.msdos_partition, ptr %largest.1.3, i32 0, i32 7
  %33 = ptrtoint ptr %end_cyl18 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %end_cyl18, align 1
  %conv19 = zext i8 %34 to i32
  %end_sector20 = getelementptr inbounds %struct.msdos_partition, ptr %largest.1.3, i32 0, i32 6
  %35 = ptrtoint ptr %end_sector20 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %end_sector20, align 1
  %conv21 = zext i8 %36 to i32
  %and22 = shl nuw nsw i32 %conv21, 2
  %shl23 = and i32 %and22, 768
  %add24 = or i32 %shl23, %conv19
  %end_head25 = getelementptr inbounds %struct.msdos_partition, ptr %largest.1.3, i32 0, i32 5
  %37 = ptrtoint ptr %end_head25 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %end_head25, align 1
  %conv26 = zext i8 %38 to i32
  %and29 = and i32 %conv21, 63
  %add30 = add nuw nsw i32 %conv26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %cmp33 = icmp eq i32 %and29, 0
  br i1 %cmp33, label %if.then17.out_free_buf_crit_edge, label %if.end36

if.then17.out_free_buf_crit_edge:                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_buf

if.end36:                                         ; preds = %if.then17
  %mul = mul nuw nsw i32 %add30, %and29
  %mul38 = mul nuw nsw i32 %mul, %add24
  %mul39 = mul nuw nsw i32 %and29, %conv26
  %add40 = add nuw nsw i32 %mul39, %and29
  %add41 = add nuw nsw i32 %add40, %mul38
  %start_sect = getelementptr inbounds %struct.msdos_partition, ptr %largest.1.3, i32 0, i32 8
  %39 = ptrtoint ptr %start_sect to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %start_sect, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #4
  %nr_sects = getelementptr inbounds %struct.msdos_partition, ptr %largest.1.3, i32 0, i32 9
  %42 = ptrtoint ptr %nr_sects to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %nr_sects, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #4
  %add44 = add i32 %44, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %add44, i32 %add41)
  %cmp55 = icmp eq i32 %add44, %add41
  br i1 %cmp55, label %if.end36.if.then62_crit_edge, label %lor.lhs.false57

if.end36.if.then62_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then62

lor.lhs.false57:                                  ; preds = %if.end36
  %sub = sub i32 %add44, %add40
  %div = udiv i32 %sub, %add30
  %div48 = udiv i32 %div, %and29
  %mul51 = mul i32 %mul, %div48
  %add54 = add i32 %add40, %mul51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add24)
  %cmp58 = icmp eq i32 %add24, 1023
  call void @__sanitizer_cov_trace_cmp4(i32 %add54, i32 %add44)
  %cmp60 = icmp eq i32 %add54, %add44
  %or.cond = select i1 %cmp58, i1 %cmp60, i1 false
  br i1 %or.cond, label %lor.lhs.false57.if.then62_crit_edge, label %lor.lhs.false57.out_free_buf_crit_edge

lor.lhs.false57.out_free_buf_crit_edge:           ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_buf

lor.lhs.false57.if.then62_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false57.if.then62_crit_edge, %if.end36.if.then62_crit_edge
  %45 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add30, ptr %geom, align 4
  %arrayidx64 = getelementptr i32, ptr %geom, i32 1
  %46 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and29, ptr %arrayidx64, align 4
  %conv65 = trunc i64 %capacity to i32
  %div68 = udiv i32 %conv65, %mul
  %arrayidx69 = getelementptr i32, ptr %geom, i32 2
  %47 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div68, ptr %arrayidx69, align 4
  br label %out_free_buf

out_free_buf:                                     ; preds = %if.then62, %lor.lhs.false57.out_free_buf_crit_edge, %if.then17.out_free_buf_crit_edge, %for.inc.3.out_free_buf_crit_edge, %if.end.out_free_buf_crit_edge
  %tobool72 = phi i1 [ false, %for.inc.3.out_free_buf_crit_edge ], [ false, %lor.lhs.false57.out_free_buf_crit_edge ], [ false, %if.then17.out_free_buf_crit_edge ], [ true, %if.then62 ], [ false, %if.end.out_free_buf_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %out_free_buf, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool72, %out_free_buf ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsicam_bios_param(ptr nocapture noundef readonly %bdev, i64 noundef %capacity, ptr nocapture noundef %ip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @scsi_partsize(ptr noundef %bdev, i64 noundef %capacity, ptr noundef %ip)
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %capacity)
  %cmp = icmp ult i64 %capacity, 4294967296
  br i1 %cmp, label %if.then1, label %lor.lhs.falsethread-pre-split

if.then1:                                         ; preds = %if.end
  %conv = trunc i64 %capacity to i32
  %add.ptr = getelementptr i32, ptr %ip, i32 2
  %add.ptr3 = getelementptr i32, ptr %ip, i32 1
  %div.i = udiv i32 %conv, 63488
  %0 = mul i32 %div.i, 63488
  %rem.i.decomposed = sub i32 %conv, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool.not.i, label %if.then1.setsize.exit.thread_crit_edge, label %if.then.i

if.then1.setsize.exit.thread_crit_edge:           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  br label %setsize.exit.thread

if.then.i:                                        ; preds = %if.then1
  %inc.i = add nuw nsw i32 %div.i, 1
  %mul1.i = shl nuw nsw i32 %inc.i, 10
  %mul1.i.frozen = freeze i32 %mul1.i
  %div2.i = udiv i32 %conv, %mul1.i.frozen
  %1 = mul i32 %div2.i, %mul1.i.frozen
  %rem3.i.decomposed = sub i32 %conv, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i.decomposed)
  %tobool4.not.i = icmp eq i32 %rem3.i.decomposed, 0
  br i1 %tobool4.not.i, label %if.then.i.setsize.exit.thread_crit_edge, label %setsize.exit

if.then.i.setsize.exit.thread_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %setsize.exit.thread

setsize.exit.thread:                              ; preds = %if.then.i.setsize.exit.thread_crit_edge, %if.then1.setsize.exit.thread_crit_edge
  %sectors.034.i.ph = phi i32 [ 62, %if.then1.setsize.exit.thread_crit_edge ], [ %div2.i, %if.then.i.setsize.exit.thread_crit_edge ]
  %heads.033.i.ph = phi i32 [ %div.i, %if.then1.setsize.exit.thread_crit_edge ], [ %inc.i, %if.then.i.setsize.exit.thread_crit_edge ]
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1024, ptr %add.ptr, align 4
  %3 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sectors.034.i.ph, ptr %add.ptr3, align 4
  %4 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %heads.033.i.ph, ptr %ip, align 4
  br label %lor.lhs.false

setsize.exit:                                     ; preds = %if.then.i
  %inc6.i = add nuw nsw i32 %div2.i, 1
  %mul7.i = mul i32 %inc6.i, %inc.i
  %div8.i = udiv i32 %conv, %mul7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul7.i, i32 %conv)
  %cmp.i = icmp ugt i32 %mul7.i, %conv
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %div8.i
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select.i, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc6.i, ptr %add.ptr3, align 4
  %7 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc.i, ptr %ip, align 4
  br i1 %cmp.i, label %setsize.exit.if.then12_crit_edge, label %setsize.exit.lor.lhs.false_crit_edge

setsize.exit.lor.lhs.false_crit_edge:             ; preds = %setsize.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

setsize.exit.if.then12_crit_edge:                 ; preds = %setsize.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

lor.lhs.falsethread-pre-split:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %ip, align 4
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.falsethread-pre-split, %setsize.exit.lor.lhs.false_crit_edge, %setsize.exit.thread
  %9 = phi i32 [ %.pr, %lor.lhs.falsethread-pre-split ], [ %heads.033.i.ph, %setsize.exit.thread ], [ %inc.i, %setsize.exit.lor.lhs.false_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %9)
  %cmp6 = icmp sgt i32 %9, 255
  br i1 %cmp6, label %lor.lhs.false.if.then12_crit_edge, label %lor.lhs.false8

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %arrayidx9 = getelementptr i32, ptr %ip, i32 1
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %11)
  %cmp10 = icmp sgt i32 %11, 63
  br i1 %cmp10, label %lor.lhs.false8.if.then12_crit_edge, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false8.if.then12_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false8.if.then12_crit_edge, %lor.lhs.false.if.then12_crit_edge, %setsize.exit.if.then12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 134215679, i64 %capacity)
  %cmp13 = icmp ugt i64 %capacity, 134215679
  br i1 %cmp13, label %if.end20, label %if.end20.thread

if.end20.thread:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %ip, align 4
  %arrayidx19 = getelementptr i32, ptr %ip, i32 1
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %arrayidx19, align 4
  br label %if.else25

if.end20:                                         ; preds = %if.then12
  %14 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 255, ptr %ip, align 4
  %arrayidx17 = getelementptr i32, ptr %ip, i32 1
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 63, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 1052819775, i64 %capacity)
  %cmp21 = icmp ugt i64 %capacity, 1052819775
  br i1 %cmp21, label %if.end20.cleanup.sink.split_crit_edge, label %if.end20.if.else25_crit_edge

if.end20.if.else25_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else25

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.else25:                                        ; preds = %if.end20.if.else25_crit_edge, %if.end20.thread
  %conv26 = trunc i64 %capacity to i32
  %16 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ip, align 4
  %arrayidx28 = getelementptr i32, ptr %ip, i32 1
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx28, align 4
  %mul = mul i32 %19, %17
  %div = udiv i32 %conv26, %mul
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else25, %if.end20.cleanup.sink.split_crit_edge
  %div.sink = phi i32 [ %div, %if.else25 ], [ 65535, %if.end20.cleanup.sink.split_crit_edge ]
  %arrayidx29 = getelementptr i32, ptr %ip, i32 2
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div.sink, ptr %arrayidx29, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_scsi_bios_ptable, !1, !"__ksymtab_scsi_bios_ptable", i1 false, i1 false}
!1 = !{!"../drivers/scsi/scsicam.c", i32 49, i32 1}
!2 = !{ptr @__ksymtab_scsi_partsize, !3, !"__ksymtab_scsi_partsize", i1 false, i1 false}
!3 = !{!"../drivers/scsi/scsicam.c", i32 141, i32 1}
!4 = !{ptr @__ksymtab_scsicam_bios_param, !5, !"__ksymtab_scsicam_bios_param", i1 false, i1 false}
!5 = !{!"../drivers/scsi/scsicam.c", i32 259, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/mm.h", i32 717, i32 2}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2150224919, i64 2150225410, i64 2150224956, i64 2150225012, i64 2150225046, i64 2150225070, i64 2150225111, i64 2150225132, i64 2150225160, i64 2150225194}
!22 = !{i64 2153422449, i64 2153422932, i64 2153422486, i64 2153422542, i64 2153422576, i64 2153422600, i64 2153422641, i64 2153422662, i64 2153422690, i64 2153422724}
!23 = !{i64 2148434347}
!24 = !{i64 2148349056, i64 2148349088, i64 2148349117, i64 2148349151, i64 2148349182, i64 2148349205}
!25 = !{i64 2148434576}
!26 = !{i64 2148959248, i64 2148959253, i64 2148959266, i64 2148959310, i64 2148959344, i64 2148959365}
