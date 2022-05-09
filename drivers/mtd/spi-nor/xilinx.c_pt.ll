; ModuleID = '/llk/IR_all_yes/drivers/mtd/spi-nor/xilinx.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/xilinx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.flash_info = type { ptr, [6 x i8], i8, i32, i16, i16, i16, i8, i16, i8, i8, i8, %struct.spi_nor_otp_organization, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }
%struct.spi_nor_fixups = type { ptr, ptr, ptr, ptr }
%struct.spi_nor_manufacturer = type { ptr, ptr, i32, ptr }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.76, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.70 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.76 = type { ptr, ptr }
%struct.spi_nor_flash_parameter = type { i64, i32, i32, i8, i8, %struct.spi_nor_hwcaps, [16 x %struct.spi_nor_read_command], [8 x %struct.spi_nor_pp_command], %struct.spi_nor_erase_map, %struct.spi_nor_otp, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_hwcaps = type { i32 }
%struct.spi_nor_read_command = type { i8, i8, i8, i32 }
%struct.spi_nor_pp_command = type { i8, i32 }
%struct.spi_nor_erase_map = type { ptr, %struct.spi_nor_erase_region, [4 x %struct.spi_nor_erase_type], i8 }
%struct.spi_nor_erase_region = type { i64, i64 }
%struct.spi_nor_erase_type = type { i32, i32, i32, i8, i8 }
%struct.spi_nor_otp = type { ptr, ptr }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xilinx\00", [25 x i8] zeroinitializer }, align 32
@xilinx_parts = internal constant { [5 x %struct.flash_info], [88 x i8] } { [5 x %struct.flash_info] [%struct.flash_info { ptr @.str.1, [6 x i8] c"\1F\22\00\00\00\00", i8 3, i32 2112, i16 64, i16 264, i16 3, i8 0, i16 2304, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.2, [6 x i8] c"\1F$\00\00\00\00", i8 3, i32 2112, i16 256, i16 264, i16 3, i8 0, i16 2304, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.3, [6 x i8] c"\1F$\00\00\00\00", i8 3, i32 2112, i16 256, i16 264, i16 3, i8 0, i16 2304, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.4, [6 x i8] c"\1F%\00\00\00\00", i8 3, i32 2112, i16 512, i16 264, i16 3, i8 0, i16 2304, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.5, [6 x i8] c"\1F&\00\00\00\00", i8 3, i32 4224, i16 512, i16 528, i16 3, i8 0, i16 2304, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }], [88 x i8] zeroinitializer }, align 32
@xilinx_fixups = internal constant { %struct.spi_nor_fixups, [16 x i8] } { %struct.spi_nor_fixups { ptr null, ptr null, ptr null, ptr @xilinx_late_init }, [16 x i8] zeroinitializer }, align 32
@spi_nor_xilinx = dso_local constant { %struct.spi_nor_manufacturer, [16 x i8] } { %struct.spi_nor_manufacturer { ptr @.str, ptr @xilinx_parts, i32 5, ptr @xilinx_fixups }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3S50AN\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3S200AN\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3S400AN\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3S700AN\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"3S1400AN\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 93, i32 10 }
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"xilinx_parts\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 11, i32 32 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"xilinx_fixups\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 88, i32 36 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"spi_nor_xilinx\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 92, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 13, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 14, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 15, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 16, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [32 x i8] c"../drivers/mtd/spi-nor/xilinx.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 17, i32 4 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @xilinx_parts, ptr @xilinx_fixups, ptr @spi_nor_xilinx, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_parts to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_fixups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_xilinx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xilinx_late_init(ptr nocapture noundef readonly %nor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %setup = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @xilinx_nor_setup, ptr %setup, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_nor_setup(ptr noundef %nor, ptr nocapture noundef readnone %hwcaps) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %0 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bouncebuf, align 4
  %call = tail call i32 @spi_nor_xread_sr(ptr noundef %nor, ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %erase_opcode = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 9
  %2 = ptrtoint ptr %erase_opcode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 80, ptr %erase_opcode, align 1
  %program_opcode = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 12
  %3 = ptrtoint ptr %program_opcode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -126, ptr %program_opcode, align 8
  %read_opcode = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 10
  %4 = ptrtoint ptr %read_opcode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %read_opcode, align 2
  %flags = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or = or i32 %6, 4
  store i32 %or, ptr %flags, align 4
  %7 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bouncebuf, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  %params14 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %12 = ptrtoint ptr %params14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %params14, align 4
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %page_size4 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %page_size4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_size4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %15)
  %cmp = icmp eq i32 %15, 264
  %cond = select i1 %cmp, i32 256, i32 512
  %16 = ptrtoint ptr %page_size4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %page_size4, align 4
  %writebufsize = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 5
  %17 = ptrtoint ptr %writebufsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %writebufsize, align 8
  %mul = shl nuw nsw i32 %cond, 3
  %info = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 6
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 4
  %n_sectors = getelementptr inbounds %struct.flash_info, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %n_sectors to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %n_sectors, align 8
  %conv8 = zext i16 %21 to i32
  %mul9 = mul nuw nsw i32 %mul, %conv8
  %conv10 = zext i32 %mul9 to i64
  %22 = ptrtoint ptr %params14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %params14, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv10, ptr %23, align 8
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %convert_addr = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %13, i32 0, i32 13
  %25 = ptrtoint ptr %convert_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @s3an_convert_addr, ptr %convert_addr, align 4
  %info15 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 6
  %26 = ptrtoint ptr %info15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info15, align 4
  %sector_size = getelementptr inbounds %struct.flash_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sector_size, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then3
  %mul.sink = phi i32 [ %mul, %if.then3 ], [ %29, %if.else ]
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 3
  %30 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul.sink, ptr %erasesize, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_xread_sr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s3an_convert_addr(ptr nocapture noundef readonly %nor, i32 noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %page_size1 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %page_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_size1, align 4
  %.frozen = freeze i32 %3
  %div = udiv i32 %addr, %.frozen
  %4 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %addr, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %3)
  %cmp = icmp ugt i32 %3, 512
  %cond = select i1 %cmp, i32 10, i32 9
  %shl = shl i32 %div, %cond
  %or = or i32 %shl, %rem.decomposed
  ret i32 %or
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/spi-nor/xilinx.c", i32 93, i32 10}
!2 = !{ptr @spi_nor_xilinx, !3, !"spi_nor_xilinx", i1 false, i1 false}
!3 = !{!"../drivers/mtd/spi-nor/xilinx.c", i32 92, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/spi-nor/xilinx.c", i32 13, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/spi-nor/xilinx.c", i32 14, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/spi-nor/xilinx.c", i32 15, i32 4}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/spi-nor/xilinx.c", i32 16, i32 4}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/spi-nor/xilinx.c", i32 17, i32 4}
!14 = !{ptr @xilinx_parts, !15, !"xilinx_parts", i1 false, i1 false}
!15 = !{!"../drivers/mtd/spi-nor/xilinx.c", i32 11, i32 32}
!16 = !{ptr @xilinx_fixups, !17, !"xilinx_fixups", i1 false, i1 false}
!17 = !{!"../drivers/mtd/spi-nor/xilinx.c", i32 88, i32 36}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
