; ModuleID = '/llk/IR_all_yes/drivers/mtd/devices/mtdram.c_pt.bc'
source_filename = "../drivers/mtd/devices/mtdram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.erase_info = type { i64, i64, i64 }

@__param_str_total_size = internal constant [18 x i8] c"mtdram.total_size\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@total_size = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_total_size = internal constant %struct.kernel_param { ptr @__param_str_total_size, ptr null, ptr @param_ops_ulong, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @total_size } }, section "__param", align 4
@__UNIQUE_ID_total_sizetype230 = internal constant [33 x i8] c"mtdram.parmtype=total_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_total_size231 = internal constant [48 x i8] c"mtdram.parm=total_size:Total device size in KiB\00", section ".modinfo", align 1
@__param_str_erase_size = internal constant [18 x i8] c"mtdram.erase_size\00", align 1
@erase_size = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_erase_size = internal constant %struct.kernel_param { ptr @__param_str_erase_size, ptr null, ptr @param_ops_ulong, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @erase_size } }, section "__param", align 4
@__UNIQUE_ID_erase_sizetype232 = internal constant [33 x i8] c"mtdram.parmtype=erase_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_erase_size233 = internal constant [54 x i8] c"mtdram.parm=erase_size:Device erase block size in KiB\00", section ".modinfo", align 1
@__param_str_writebuf_size = internal constant [21 x i8] c"mtdram.writebuf_size\00", align 1
@writebuf_size = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_writebuf_size = internal constant %struct.kernel_param { ptr @__param_str_writebuf_size, ptr null, ptr @param_ops_ulong, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @writebuf_size } }, section "__param", align 4
@__UNIQUE_ID_writebuf_sizetype234 = internal constant [36 x i8] c"mtdram.parmtype=writebuf_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_writebuf_size235 = internal constant [71 x i8] c"mtdram.parm=writebuf_size:Device write buf size in Bytes (Default: 64)\00", section ".modinfo", align 1
@mtd_info = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_mtdram__238_182_init_mtdram6 = internal global ptr @init_mtdram, section ".initcall6.init", align 4
@__exitcall_cleanup_mtdram = internal global ptr @cleanup_mtdram, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [39 x i8] c"mtdram.file=drivers/mtd/devices/mtdram\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [19 x i8] c"mtdram.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [51 x i8] c"mtdram.author=Alexander Larsson <alexl@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [52 x i8] c"mtdram.description=Simulated MTD driver for testing\00", section ".modinfo", align 1
@check_offs_len.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mtdram\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"check_offs_len\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/devices/mtdram.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: unaligned address\0A\00", [41 x i8] zeroinitializer }, align 32
@check_offs_len.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: length not block aligned\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtdram test device\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.6 = private unnamed_addr constant [11 x i8] c"total_size\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 21, i32 22 }
@___asan_gen_.9 = private unnamed_addr constant [11 x i8] c"erase_size\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 22, i32 22 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"writebuf_size\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 23, i32 22 }
@___asan_gen_.15 = private unnamed_addr constant [9 x i8] c"mtd_info\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 35, i32 25 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 43, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 49, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [32 x i8] c"../drivers/mtd/devices/mtdram.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 171, i32 62 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_erase_size233, ptr @__UNIQUE_ID_erase_sizetype232, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__UNIQUE_ID_total_size231, ptr @__UNIQUE_ID_total_sizetype230, ptr @__UNIQUE_ID_writebuf_size235, ptr @__UNIQUE_ID_writebuf_sizetype234, ptr @__exitcall_cleanup_mtdram, ptr @__initcall__kmod_mtdram__238_182_init_mtdram6, ptr @__param_erase_size, ptr @__param_total_size, ptr @__param_writebuf_size, ptr @cleanup_mtdram, ptr @total_size, ptr @erase_size, ptr @writebuf_size, ptr @mtd_info, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @total_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erase_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writebuf_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_mtdram() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @mtd_info, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @mtd_device_unregister(ptr noundef nonnull %0) #7
  %1 = load ptr, ptr @mtd_info, align 4
  %priv = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void @vfree(ptr noundef %3) #7
  %4 = load ptr, ptr @mtd_info, align 4
  tail call void @kfree(ptr noundef %4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtdram_init_device(ptr noundef %mtd, ptr noundef %mapped_address, i32 noundef %size, ptr noundef %name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %mtd, i32 0, i32 1408)
  %name1 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %name1, align 8
  %2 = ptrtoint ptr %mtd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %mtd, align 8
  %flags = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7168, ptr %flags, align 4
  %conv = zext i32 %size to i64
  %size2 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %4 = ptrtoint ptr %size2 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %size2, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %5 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %writesize, align 4
  %6 = load i32, ptr @writebuf_size, align 4
  %writebufsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 5
  %7 = ptrtoint ptr %writebufsize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %writebufsize, align 8
  %8 = load i32, ptr @erase_size, align 4
  %mul = shl i32 %8, 10
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %9 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %erasesize, align 8
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mapped_address, ptr %priv, align 8
  %_erase = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 21
  %11 = ptrtoint ptr %_erase to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ram_erase, ptr %_erase, align 8
  %_point = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 22
  %12 = ptrtoint ptr %_point to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ram_point, ptr %_point, align 4
  %_unpoint = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 23
  %13 = ptrtoint ptr %_unpoint to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ram_unpoint, ptr %_unpoint, align 8
  %_read = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 24
  %14 = ptrtoint ptr %_read to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ram_read, ptr %_read, align 4
  %_write = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 25
  %15 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ram_write, ptr %_write, align 8
  %call = tail call i32 @mtd_device_parse_register(ptr noundef %mtd, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ram_erase(ptr nocapture noundef readonly %mtd, ptr nocapture noundef readonly %instr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %instr, align 8
  %len = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %len, align 8
  %call = tail call fastcc i32 @check_offs_len(ptr noundef %mtd, i64 noundef %1, i64 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %6 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %instr, align 8
  %idx.ext = trunc i64 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %idx.ext
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %len, align 8
  %conv = trunc i64 %9 to i32
  %10 = call ptr @memset(ptr %add.ptr, i32 255, i32 %conv)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ram_point(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef %virt, ptr noundef writeonly %phys) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %idx.ext = trunc i64 %from to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.ext
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %virt, align 4
  %3 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %retlen, align 4
  %tobool.not = icmp eq ptr %phys, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt, align 4
  %6 = ptrtoint ptr %5 to i32
  %and = and i32 %6, 4095
  %idx.neg = sub nsw i32 0, %and
  %add.ptr1 = getelementptr i8, ptr %5, i32 %idx.neg
  %call = tail call i32 @vmalloc_to_pfn(ptr noundef %add.ptr1) #7
  %shl = shl i32 %call, 12
  %add = or i32 %shl, %and
  %7 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %phys, align 4
  %add2 = add i32 %and, %len
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then
  %len.addr.0 = phi i32 [ %add2, %if.then ], [ %sub, %while.body.while.cond_crit_edge ]
  %addr.0 = phi ptr [ %add.ptr1, %if.then ], [ %add.ptr3, %while.body.while.cond_crit_edge ]
  %pfn0.0 = phi i32 [ %call, %if.then ], [ %inc, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len.addr.0)
  %cmp = icmp ugt i32 %len.addr.0, 4096
  br i1 %cmp, label %while.body, label %while.cond.if.end7_crit_edge

while.cond.if.end7_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

while.body:                                       ; preds = %while.cond
  %sub = add i32 %len.addr.0, -4096
  %add.ptr3 = getelementptr i8, ptr %addr.0, i32 4096
  %inc = add i32 %pfn0.0, 1
  %call4 = tail call i32 @vmalloc_to_pfn(ptr noundef %add.ptr3) #7
  %cmp5.not = icmp eq i32 %call4, %inc
  br i1 %cmp5.not, label %while.body.while.cond_crit_edge, label %if.then6

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.then6:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %10 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.ptr.sub, ptr %retlen, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %while.cond.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ram_unpoint(ptr nocapture noundef readnone %mtd, i64 noundef %from, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ram_read(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %idx.ext = trunc i64 %from to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.ext
  %2 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %len)
  %3 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %retlen, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ram_write(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef readonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %idx.ext = trunc i64 %to to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.ext
  %2 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %len)
  %3 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %retlen, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_mtdram() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @total_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 1408) #10
  store ptr %call7.i, ptr @mtd_info, align 4
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr @total_size, align 4
  %mul = shl i32 %2, 10
  %call4 = tail call noalias ptr @vmalloc(i32 noundef %mul) #11
  %tobool5.not = icmp eq ptr %call4, null
  %3 = load ptr, ptr @mtd_info, align 4
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %3) #7
  store ptr null, ptr @mtd_info, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %4 = load i32, ptr @total_size, align 4
  %mul8 = shl i32 %4, 10
  %call9 = tail call i32 @mtdram_init_device(ptr noundef %3, ptr noundef nonnull %call4, i32 noundef %mul8, ptr noundef nonnull @.str.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vfree(ptr noundef nonnull %call4) #7
  %5 = load ptr, ptr @mtd_info, align 4
  tail call void @kfree(ptr noundef %5) #7
  store ptr null, ptr @mtd_info, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %6 = load ptr, ptr @mtd_info, align 4
  %priv = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 54
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %9 = load i32, ptr @total_size, align 4
  %mul13 = shl i32 %9, 10
  %10 = call ptr @memset(ptr %8, i32 255, i32 %mul13)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then11 ], [ 0, %if.end12 ], [ -12, %if.then6 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_offs_len(ptr nocapture noundef readonly %mtd, i64 noundef %ofs, i64 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %erasesize_shift.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 8
  %0 = ptrtoint ptr %erasesize_shift.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %erasesize_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %erasesize_mask.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 10
  %2 = ptrtoint ptr %erasesize_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %erasesize_mask.i, align 4
  %4 = trunc i64 %ofs to i32
  %conv1.i = and i32 %3, %4
  br label %mtd_mod_by_eb.exit

if.end.i:                                         ; preds = %entry
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %5 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %ofs)
  %cmp171.i = icmp ult i64 %ofs, 4294967296
  br i1 %cmp171.i, label %if.then175.i, label %if.else181.i, !prof !57

if.then175.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv176.i = trunc i64 %ofs to i32
  %rem177.i = urem i32 %conv176.i, %6
  br label %mtd_mod_by_eb.exit

if.else181.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %ofs) #12, !srcloc !58
  %asmresult.i270.i = extractvalue { i64, i64 } %7, 0
  %shr.i.i = lshr i64 %asmresult.i270.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %mtd_mod_by_eb.exit

mtd_mod_by_eb.exit:                               ; preds = %if.else181.i, %if.then175.i, %if.then.i
  %retval.0.i31 = phi i32 [ %conv1.i, %if.then.i ], [ %rem177.i, %if.then175.i ], [ %conv.i.i, %if.else181.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i31)
  %tobool.not = icmp eq i32 %retval.0.i31, 0
  br i1 %tobool.not, label %mtd_mod_by_eb.exit.if.end6_crit_edge, label %do.body

mtd_mod_by_eb.exit.if.end6_crit_edge:             ; preds = %mtd_mod_by_eb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.body:                                          ; preds = %mtd_mod_by_eb.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_offs_len.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_offs_len, %if.then5)) #7
          to label %if.end6 [label %if.then5], !srcloc !59

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check_offs_len.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %mtd_mod_by_eb.exit.if.end6_crit_edge
  %ret.0 = phi i32 [ 0, %mtd_mod_by_eb.exit.if.end6_crit_edge ], [ -22, %if.then5 ], [ -22, %do.body ]
  %8 = ptrtoint ptr %erasesize_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erasesize_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i33 = icmp eq i32 %9, 0
  br i1 %tobool.not.i33, label %if.end.i41, label %if.then.i36

if.then.i36:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %erasesize_mask.i34 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 10
  %10 = ptrtoint ptr %erasesize_mask.i34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %erasesize_mask.i34, align 4
  %12 = trunc i64 %len to i32
  %conv1.i35 = and i32 %11, %12
  br label %mtd_mod_by_eb.exit159

if.end.i41:                                       ; preds = %if.end6
  %erasesize.i37 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %13 = ptrtoint ptr %erasesize.i37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %erasesize.i37, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %len)
  %cmp171.i149 = icmp ult i64 %len, 4294967296
  br i1 %cmp171.i149, label %if.then175.i153, label %if.else181.i157, !prof !57

if.then175.i153:                                  ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #9
  %conv176.i151 = trunc i64 %len to i32
  %rem177.i152 = urem i32 %conv176.i151, %14
  br label %mtd_mod_by_eb.exit159

if.else181.i157:                                  ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #9
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %len) #12, !srcloc !58
  %asmresult.i270.i154 = extractvalue { i64, i64 } %15, 0
  %shr.i.i155 = lshr i64 %asmresult.i270.i154, 32
  %conv.i.i156 = trunc i64 %shr.i.i155 to i32
  br label %mtd_mod_by_eb.exit159

mtd_mod_by_eb.exit159:                            ; preds = %if.else181.i157, %if.then175.i153, %if.then.i36
  %retval.0.i158 = phi i32 [ %conv1.i35, %if.then.i36 ], [ %rem177.i152, %if.then175.i153 ], [ %conv.i.i156, %if.else181.i157 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i158)
  %tobool8.not = icmp eq i32 %retval.0.i158, 0
  br i1 %tobool8.not, label %mtd_mod_by_eb.exit159.if.end26_crit_edge, label %do.body10

mtd_mod_by_eb.exit159.if.end26_crit_edge:         ; preds = %mtd_mod_by_eb.exit159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.body10:                                        ; preds = %mtd_mod_by_eb.exit159
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_offs_len.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_offs_len, %if.then22)) #7
          to label %if.end26 [label %if.then22], !srcloc !59

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check_offs_len.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %do.body10, %mtd_mod_by_eb.exit159.if.end26_crit_edge
  %ret.1 = phi i32 [ %ret.0, %mtd_mod_by_eb.exit159.if.end26_crit_edge ], [ -22, %if.then22 ], [ -22, %do.body10 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmalloc_to_pfn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !29, !31, !32, !34, !35, !37, !39, !40, !41, !42, !43, !45, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__param_total_size, !1, !"__param_total_size", i1 false, i1 false}
!1 = !{!"../drivers/mtd/devices/mtdram.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_total_sizetype230, !1, !"__UNIQUE_ID_total_sizetype230", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_total_size231, !4, !"__UNIQUE_ID_total_size231", i1 false, i1 false}
!4 = !{!"../drivers/mtd/devices/mtdram.c", i32 28, i32 1}
!5 = !{ptr @__param_erase_size, !6, !"__param_erase_size", i1 false, i1 false}
!6 = !{!"../drivers/mtd/devices/mtdram.c", i32 29, i32 1}
!7 = !{ptr @__UNIQUE_ID_erase_sizetype232, !6, !"__UNIQUE_ID_erase_sizetype232", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_erase_size233, !9, !"__UNIQUE_ID_erase_size233", i1 false, i1 false}
!9 = !{!"../drivers/mtd/devices/mtdram.c", i32 30, i32 1}
!10 = !{ptr @__param_writebuf_size, !11, !"__param_writebuf_size", i1 false, i1 false}
!11 = !{!"../drivers/mtd/devices/mtdram.c", i32 31, i32 1}
!12 = !{ptr @__UNIQUE_ID_writebuf_sizetype234, !11, !"__UNIQUE_ID_writebuf_sizetype234", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_writebuf_size235, !14, !"__UNIQUE_ID_writebuf_size235", i1 false, i1 false}
!14 = !{!"../drivers/mtd/devices/mtdram.c", i32 32, i32 1}
!15 = !{ptr @__initcall__kmod_mtdram__238_182_init_mtdram6, !16, !"__initcall__kmod_mtdram__238_182_init_mtdram6", i1 false, i1 false}
!16 = !{!"../drivers/mtd/devices/mtdram.c", i32 182, i32 1}
!17 = !{ptr @__exitcall_cleanup_mtdram, !18, !"__exitcall_cleanup_mtdram", i1 false, i1 false}
!18 = !{!"../drivers/mtd/devices/mtdram.c", i32 183, i32 1}
!19 = !{ptr @__UNIQUE_ID_file239, !20, !"__UNIQUE_ID_file239", i1 false, i1 false}
!20 = !{!"../drivers/mtd/devices/mtdram.c", i32 185, i32 1}
!21 = !{ptr @__UNIQUE_ID_license240, !20, !"__UNIQUE_ID_license240", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_author241, !23, !"__UNIQUE_ID_author241", i1 false, i1 false}
!23 = !{!"../drivers/mtd/devices/mtdram.c", i32 186, i32 1}
!24 = !{ptr @__UNIQUE_ID_description242, !25, !"__UNIQUE_ID_description242", i1 false, i1 false}
!25 = !{!"../drivers/mtd/devices/mtdram.c", i32 187, i32 1}
!26 = !{ptr @mtd_info, !27, !"mtd_info", i1 false, i1 false}
!27 = !{!"../drivers/mtd/devices/mtdram.c", i32 35, i32 25}
!28 = !{ptr @__param_str_total_size, !1, !"__param_str_total_size", i1 false, i1 false}
!29 = !{ptr @total_size, !30, !"total_size", i1 false, i1 false}
!30 = !{!"../drivers/mtd/devices/mtdram.c", i32 21, i32 22}
!31 = !{ptr @__param_str_erase_size, !6, !"__param_str_erase_size", i1 false, i1 false}
!32 = !{ptr @erase_size, !33, !"erase_size", i1 false, i1 false}
!33 = !{!"../drivers/mtd/devices/mtdram.c", i32 22, i32 22}
!34 = !{ptr @__param_str_writebuf_size, !11, !"__param_str_writebuf_size", i1 false, i1 false}
!35 = !{ptr @writebuf_size, !36, !"writebuf_size", i1 false, i1 false}
!36 = !{!"../drivers/mtd/devices/mtdram.c", i32 23, i32 22}
!37 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/devices/mtdram.c", i32 43, i32 3}
!39 = !{ptr @.str.1, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @check_offs_len.__UNIQUE_ID_ddebug236, !38, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!43 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/devices/mtdram.c", i32 49, i32 3}
!45 = !{ptr @check_offs_len.__UNIQUE_ID_ddebug237, !44, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!46 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/devices/mtdram.c", i32 171, i32 62}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 2148188831, i64 2148189111, i64 2148189445, i64 2148189779}
!59 = !{i64 2148955784, i64 2148955789, i64 2148955802, i64 2148955846, i64 2148955880, i64 2148955901}
