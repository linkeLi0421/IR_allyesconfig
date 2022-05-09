; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/comedi_8255.c_pt.bc'
source_filename = "../drivers/comedi/drivers/comedi_8255.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+subdev_8255_init\22, \22a\22\09"
module asm "\09.weak\09__crc_subdev_8255_init\09\09\09\09"
module asm "\09.long\09__crc_subdev_8255_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_subdev_8255_init:\09\09\09\09\09"
module asm "\09.asciz \09\22subdev_8255_init\22\09\09\09\09\09"
module asm "__kstrtabns_subdev_8255_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+subdev_8255_mm_init\22, \22a\22\09"
module asm "\09.weak\09__crc_subdev_8255_mm_init\09\09\09\09"
module asm "\09.long\09__crc_subdev_8255_mm_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_subdev_8255_mm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22subdev_8255_mm_init\22\09\09\09\09\09"
module asm "__kstrtabns_subdev_8255_mm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+subdev_8255_regbase\22, \22a\22\09"
module asm "\09.weak\09__crc_subdev_8255_regbase\09\09\09\09"
module asm "\09.long\09__crc_subdev_8255_regbase\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_subdev_8255_regbase:\09\09\09\09\09"
module asm "\09.asciz \09\22subdev_8255_regbase\22\09\09\09\09\09"
module asm "__kstrtabns_subdev_8255_regbase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.subdev_8255_private = type { i32, ptr }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__kstrtab_subdev_8255_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_subdev_8255_init = external dso_local constant [0 x i8], align 1
@__ksymtab_subdev_8255_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @subdev_8255_init to i32), ptr @__kstrtab_subdev_8255_init, ptr @__kstrtabns_subdev_8255_init }, section "___ksymtab_gpl+subdev_8255_init", align 4
@__kstrtab_subdev_8255_mm_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_subdev_8255_mm_init = external dso_local constant [0 x i8], align 1
@__ksymtab_subdev_8255_mm_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @subdev_8255_mm_init to i32), ptr @__kstrtab_subdev_8255_mm_init, ptr @__kstrtabns_subdev_8255_mm_init }, section "___ksymtab_gpl+subdev_8255_mm_init", align 4
@__kstrtab_subdev_8255_regbase = external dso_local constant [0 x i8], align 1
@__kstrtabns_subdev_8255_regbase = external dso_local constant [0 x i8], align 1
@__ksymtab_subdev_8255_regbase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @subdev_8255_regbase to i32), ptr @__kstrtab_subdev_8255_regbase, ptr @__kstrtabns_subdev_8255_regbase }, section "___ksymtab_gpl+subdev_8255_regbase", align 4
@__initcall__kmod_comedi_8255__229_266_comedi_8255_module_init6 = internal global ptr @comedi_8255_module_init, section ".initcall6.init", align 4
@__exitcall_comedi_8255_module_exit = internal global ptr @comedi_8255_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [49 x i8] c"comedi_8255.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [65 x i8] c"comedi_8255.description=Comedi: Generic 8255 digital I/O support\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [52 x i8] c"comedi_8255.file=drivers/comedi/drivers/comedi_8255\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [24 x i8] c"comedi_8255.license=GPL\00", section ".modinfo", align 1
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_comedi_8255_module_exit, ptr @__initcall__kmod_comedi_8255__229_266_comedi_8255_module_init6, ptr @__ksymtab_subdev_8255_init, ptr @__ksymtab_subdev_8255_mm_init, ptr @__ksymtab_subdev_8255_regbase, ptr @comedi_8255_module_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %s, ptr noundef %io, i32 noundef %regbase) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @comedi_alloc_spriv(ptr noundef %s, i32 noundef 8) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.__subdev_8255_init.exit_crit_edge, label %if.end.i

entry.__subdev_8255_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__subdev_8255_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %tobool1.not.i = icmp eq ptr %io, null
  %io6.i = getelementptr inbounds %struct.subdev_8255_private, ptr %call.i, i32 0, i32 1
  %subdev_8255_mmio.sink.i = select i1 %tobool1.not.i, ptr @subdev_8255_io, ptr %io
  %0 = ptrtoint ptr %io6.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %subdev_8255_mmio.sink.i, ptr %io6.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %regbase, ptr %call.i, align 4
  %type.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %type.i, align 4
  %subdev_flags.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %3 = ptrtoint ptr %subdev_flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 196608, ptr %subdev_flags.i, align 4
  %n_chan.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %4 = ptrtoint ptr %n_chan.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 24, ptr %n_chan.i, align 4
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %5 = ptrtoint ptr %range_table.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @range_unipolar5, ptr %range_table.i, align 4
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %6 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %maxdata.i, align 4
  %insn_bits.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 20
  %7 = ptrtoint ptr %insn_bits.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @subdev_8255_insn, ptr %insn_bits.i, align 4
  %insn_config.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 21
  %8 = ptrtoint ptr %insn_config.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @subdev_8255_insn_config, ptr %insn_config.i, align 4
  %private.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %9 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %io_bits.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %13 = ptrtoint ptr %io_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_bits.i.i, align 4
  %and.i.i = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 144, i32 128
  %and3.i.i = and i32 %14, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %or6.i.i = or i32 %spec.select.i.i, 2
  %config.1.i.i = select i1 %tobool4.not.i.i, i32 %or6.i.i, i32 %spec.select.i.i
  %and9.i.i = and i32 %14, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  %or12.i.i = zext i1 %tobool10.not.i.i to i32
  %config.2.i.i = or i32 %config.1.i.i, %or12.i.i
  %and15.i.i = and i32 %14, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  %or18.i.i = or i32 %config.2.i.i, 8
  %config.3.i.i = select i1 %tobool16.not.i.i, i32 %or18.i.i, i32 %config.2.i.i
  %io.i.i = getelementptr inbounds %struct.subdev_8255_private, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io.i.i, align 4
  %call.i.i = tail call i32 %16(ptr noundef %dev, i32 noundef 1, i32 noundef 3, i32 noundef %config.3.i.i, i32 noundef %12) #4
  br label %__subdev_8255_init.exit

__subdev_8255_init.exit:                          ; preds = %if.end.i, %entry.__subdev_8255_init.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.__subdev_8255_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @subdev_8255_mm_init(ptr noundef %dev, ptr noundef %s, ptr noundef %io, i32 noundef %regbase) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @comedi_alloc_spriv(ptr noundef %s, i32 noundef 8) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.__subdev_8255_init.exit_crit_edge, label %if.end.i

entry.__subdev_8255_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__subdev_8255_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %tobool1.not.i = icmp eq ptr %io, null
  %io6.i = getelementptr inbounds %struct.subdev_8255_private, ptr %call.i, i32 0, i32 1
  %subdev_8255_mmio.sink.i = select i1 %tobool1.not.i, ptr @subdev_8255_mmio, ptr %io
  %0 = ptrtoint ptr %io6.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %subdev_8255_mmio.sink.i, ptr %io6.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %regbase, ptr %call.i, align 4
  %type.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %type.i, align 4
  %subdev_flags.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %3 = ptrtoint ptr %subdev_flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 196608, ptr %subdev_flags.i, align 4
  %n_chan.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %4 = ptrtoint ptr %n_chan.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 24, ptr %n_chan.i, align 4
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %5 = ptrtoint ptr %range_table.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @range_unipolar5, ptr %range_table.i, align 4
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %6 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %maxdata.i, align 4
  %insn_bits.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 20
  %7 = ptrtoint ptr %insn_bits.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @subdev_8255_insn, ptr %insn_bits.i, align 4
  %insn_config.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 21
  %8 = ptrtoint ptr %insn_config.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @subdev_8255_insn_config, ptr %insn_config.i, align 4
  %private.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %9 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %io_bits.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %13 = ptrtoint ptr %io_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_bits.i.i, align 4
  %and.i.i = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 144, i32 128
  %and3.i.i = and i32 %14, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %or6.i.i = or i32 %spec.select.i.i, 2
  %config.1.i.i = select i1 %tobool4.not.i.i, i32 %or6.i.i, i32 %spec.select.i.i
  %and9.i.i = and i32 %14, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  %or12.i.i = zext i1 %tobool10.not.i.i to i32
  %config.2.i.i = or i32 %config.1.i.i, %or12.i.i
  %and15.i.i = and i32 %14, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  %or18.i.i = or i32 %config.2.i.i, 8
  %config.3.i.i = select i1 %tobool16.not.i.i, i32 %or18.i.i, i32 %config.2.i.i
  %io.i.i = getelementptr inbounds %struct.subdev_8255_private, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io.i.i, align 4
  %call.i.i = tail call i32 %16(ptr noundef %dev, i32 noundef 1, i32 noundef 3, i32 noundef %config.3.i.i, i32 noundef %12) #4
  br label %__subdev_8255_init.exit

__subdev_8255_init.exit:                          ; preds = %if.end.i, %entry.__subdev_8255_init.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.__subdev_8255_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @subdev_8255_regbase(ptr nocapture noundef readonly %s) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @comedi_8255_module_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @comedi_8255_module_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_spriv(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_8255_mmio(ptr nocapture noundef readonly %dev, i32 noundef %dir, i32 noundef %port, i32 noundef %data, i32 noundef %regbase) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not = icmp eq i32 %dir, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %data to i8
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %regbase
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %port
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 %conv) #4, !srcloc !27
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mmio2 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio2, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 %regbase
  %add.ptr4 = getelementptr i8, ptr %add.ptr3, i32 %port
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %conv6 = zext i8 %4 to i32
  br label %return

return:                                           ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ %conv6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_8255_io(ptr nocapture noundef readonly %dev, i32 noundef %dir, i32 noundef %port, i32 noundef %data, i32 noundef %regbase) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not = icmp eq i32 %dir, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %data to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %regbase, %port
  %add1 = add i32 %add, %1
  %and = and i32 %add1, 1048575
  %add2 = or i32 %and, -18874368
  %2 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv) #4, !srcloc !27
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %iobase3 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase3, align 4
  %add4 = add i32 %regbase, %port
  %add5 = add i32 %add4, %4
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %5 = inttoptr i32 %add7 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %conv10 = zext i8 %6 to i32
  br label %return

return:                                           ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ %conv10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_8255_insn(ptr noundef %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then:                                          ; preds = %entry
  %and = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %io = getelementptr inbounds %struct.subdev_8255_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io, align 4
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %and4 = and i32 %7, 255
  %call5 = tail call i32 %5(ptr noundef %dev, i32 noundef 1, i32 noundef 0, i32 noundef %and4, i32 noundef %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %and6 = and i32 %call, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %if.then8

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %io9 = getelementptr inbounds %struct.subdev_8255_private, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %io9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io9, align 4
  %state10 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %10 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state10, align 4
  %shr = lshr i32 %11, 8
  %and11 = and i32 %shr, 255
  %call12 = tail call i32 %9(ptr noundef %dev, i32 noundef 1, i32 noundef 1, i32 noundef %and11, i32 noundef %3) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  %and14 = and i32 %call, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end23_crit_edge, label %if.then16

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %io17 = getelementptr inbounds %struct.subdev_8255_private, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %io17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io17, align 4
  %state18 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %14 = ptrtoint ptr %state18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state18, align 4
  %shr19 = lshr i32 %15, 16
  %and20 = and i32 %shr19, 255
  %call21 = tail call i32 %13(ptr noundef %dev, i32 noundef 1, i32 noundef 2, i32 noundef %and20, i32 noundef %3) #4
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.end13.if.end23_crit_edge, %entry.if.end23_crit_edge
  %io24 = getelementptr inbounds %struct.subdev_8255_private, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %io24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io24, align 4
  %call25 = tail call i32 %17(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %3) #4
  %18 = ptrtoint ptr %io24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io24, align 4
  %call27 = tail call i32 %19(ptr noundef %dev, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef %3) #4
  %shl = shl i32 %call27, 8
  %or = or i32 %shl, %call25
  %20 = ptrtoint ptr %io24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io24, align 4
  %call29 = tail call i32 %21(ptr noundef %dev, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef %3) #4
  %shl30 = shl i32 %call29, 16
  %or31 = or i32 %or, %shl30
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or31, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %23 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n, align 4
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_8255_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp = icmp ult i32 %and, 8
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp1 = icmp ult i32 %and, 16
  br i1 %cmp1, label %if.else.if.end8_crit_edge, label %if.else3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and)
  %cmp4 = icmp ult i32 %and, 20
  %. = select i1 %cmp4, i32 983040, i32 15728640
  br label %if.end8

if.end8:                                          ; preds = %if.else3, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %mask.0 = phi i32 [ 255, %entry.if.end8_crit_edge ], [ 65280, %if.else.if.end8_crit_edge ], [ %., %if.else3 ]
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef %mask.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %private.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %io_bits.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %6 = ptrtoint ptr %io_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_bits.i, align 4
  %and.i = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 144, i32 128
  %and3.i = and i32 %7, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or6.i = or i32 %spec.select.i, 2
  %config.1.i = select i1 %tobool4.not.i, i32 %or6.i, i32 %spec.select.i
  %and9.i = and i32 %7, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %or12.i = zext i1 %tobool10.not.i to i32
  %config.2.i = or i32 %config.1.i, %or12.i
  %and15.i = and i32 %7, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %or18.i = or i32 %config.2.i, 8
  %config.3.i = select i1 %tobool16.not.i, i32 %or18.i, i32 %config.2.i
  %io.i = getelementptr inbounds %struct.subdev_8255_private, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io.i, align 4
  %call.i = tail call i32 %9(ptr noundef %dev, i32 noundef 1, i32 noundef 3, i32 noundef %config.3.i, i32 noundef %5) #4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.end10 ], [ %call, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_subdev_8255_init, !1, !"__ksymtab_subdev_8255_init", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/comedi_8255.c", i32 209, i32 1}
!2 = !{ptr @__ksymtab_subdev_8255_mm_init, !3, !"__ksymtab_subdev_8255_mm_init", i1 false, i1 false}
!3 = !{!"../drivers/comedi/drivers/comedi_8255.c", i32 244, i32 1}
!4 = !{ptr @__ksymtab_subdev_8255_regbase, !5, !"__ksymtab_subdev_8255_regbase", i1 false, i1 false}
!5 = !{!"../drivers/comedi/drivers/comedi_8255.c", i32 260, i32 1}
!6 = !{ptr @__initcall__kmod_comedi_8255__229_266_comedi_8255_module_init6, !7, !"__initcall__kmod_comedi_8255__229_266_comedi_8255_module_init6", i1 false, i1 false}
!7 = !{!"../drivers/comedi/drivers/comedi_8255.c", i32 266, i32 1}
!8 = !{ptr @__exitcall_comedi_8255_module_exit, !9, !"__exitcall_comedi_8255_module_exit", i1 false, i1 false}
!9 = !{!"../drivers/comedi/drivers/comedi_8255.c", i32 271, i32 1}
!10 = !{ptr @__UNIQUE_ID_author230, !11, !"__UNIQUE_ID_author230", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/comedi_8255.c", i32 273, i32 1}
!12 = !{ptr @__UNIQUE_ID_description231, !13, !"__UNIQUE_ID_description231", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/comedi_8255.c", i32 274, i32 1}
!14 = !{ptr @__UNIQUE_ID_file232, !15, !"__UNIQUE_ID_file232", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/comedi_8255.c", i32 275, i32 1}
!16 = !{ptr @__UNIQUE_ID_license233, !15, !"__UNIQUE_ID_license233", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2153909634}
!27 = !{i64 6264907}
!28 = !{i64 6265302}
!29 = !{i64 2153909947}
!30 = !{i64 2153908956}
!31 = !{i64 2153909410}
