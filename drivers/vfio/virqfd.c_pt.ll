; ModuleID = '/llk/IR_all_yes/drivers/vfio/virqfd.c_pt.bc'
source_filename = "../drivers/vfio/virqfd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+vfio_virqfd_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_vfio_virqfd_enable\09\09\09\09"
module asm "\09.long\09__crc_vfio_virqfd_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfio_virqfd_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22vfio_virqfd_enable\22\09\09\09\09\09"
module asm "__kstrtabns_vfio_virqfd_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vfio_virqfd_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_vfio_virqfd_disable\09\09\09\09"
module asm "\09.long\09__crc_vfio_virqfd_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfio_virqfd_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22vfio_virqfd_disable\22\09\09\09\09\09"
module asm "__kstrtabns_vfio_virqfd_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.virqfd = type { ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.wait_queue_entry, %struct.poll_table_struct, %struct.work_struct, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.poll_table_struct = type { ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@vfio_irqfd_cleanup_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vfio_virqfd_enable.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&virqfd->shutdown)\00", [59 x i8] zeroinitializer }, align 32
@vfio_virqfd_enable.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&virqfd->inject)\00", [61 x i8] zeroinitializer }, align 32
@virqfd_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_vfio_virqfd_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfio_virqfd_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_vfio_virqfd_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfio_virqfd_enable to i32), ptr @__kstrtab_vfio_virqfd_enable, ptr @__kstrtabns_vfio_virqfd_enable }, section "___ksymtab_gpl+vfio_virqfd_enable", align 4
@__kstrtab_vfio_virqfd_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfio_virqfd_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_vfio_virqfd_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfio_virqfd_disable to i32), ptr @__kstrtab_vfio_virqfd_disable, ptr @__kstrtabns_vfio_virqfd_disable }, section "___ksymtab_gpl+vfio_virqfd_disable", align 4
@__initcall__kmod_vfio_virqfd__228_220_vfio_virqfd_init6 = internal global ptr @vfio_virqfd_init, section ".initcall6.init", align 4
@__exitcall_vfio_virqfd_exit = internal global ptr @vfio_virqfd_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_version229 = internal constant [24 x i8] c"vfio_virqfd.version=0.1\00", section ".modinfo", align 1
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vfio_virqfd\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.4, ptr @.str.5 }, section "__modver", align 4
@__UNIQUE_ID_file230 = internal constant [42 x i8] c"vfio_virqfd.file=drivers/vfio/vfio_virqfd\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [27 x i8] c"vfio_virqfd.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [64 x i8] c"vfio_virqfd.author=Alex Williamson <alex.williamson@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [59 x i8] c"vfio_virqfd.description=IRQFD support for VFIO bus drivers\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"virqfd_lock\00", [20 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vfio-irqfd-cleanup\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [22 x i8] c"vfio_irqfd_cleanup_wq\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 20, i32 33 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 128, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 129, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"virqfd_lock\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 223, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 21, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [25 x i8] c"../drivers/vfio/virqfd.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 26, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__UNIQUE_ID_version229, ptr @__exitcall_vfio_virqfd_exit, ptr @__initcall__kmod_vfio_virqfd__228_220_vfio_virqfd_init6, ptr @__ksymtab_vfio_virqfd_disable, ptr @__ksymtab_vfio_virqfd_enable, ptr @__modver_attr, ptr @vfio_virqfd_exit, ptr @vfio_irqfd_cleanup_wq, ptr @vfio_virqfd_enable.__key, ptr @.str, ptr @vfio_virqfd_enable.__key.1, ptr @.str.2, ptr @virqfd_lock, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_irqfd_cleanup_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_virqfd_enable.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_virqfd_enable.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virqfd_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vfio_virqfd_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @vfio_irqfd_cleanup_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfio_virqfd_enable(ptr noundef %opaque, ptr noundef %handler, ptr noundef %thread, ptr noundef %data, ptr noundef %pvirqfd, i32 noundef %fd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 140) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pvirqfd1 = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 9
  %1 = ptrtoint ptr %pvirqfd1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pvirqfd, ptr %pvirqfd1, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %opaque, ptr %call7.i.i, align 8
  %handler3 = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %handler3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %handler, ptr %handler3, align 8
  %thread4 = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %thread4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %thread, ptr %thread4, align 4
  %data5 = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %data5, align 8
  %shutdown = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %shutdown, i32 noundef 0) #5
  %6 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %shutdown, align 4
  %lockdep_map = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @vfio_virqfd_enable.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry10 = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry10, ptr %entry10, align 8
  %prev.i = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 8, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 8, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @virqfd_shutdown, ptr %func, align 8
  %inject = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %inject, i32 noundef 0) #5
  %10 = ptrtoint ptr %inject to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %inject, align 4
  %lockdep_map18 = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map18, ptr noundef nonnull @.str.2, ptr noundef nonnull @vfio_virqfd_enable.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry20 = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry20, ptr %entry20, align 8
  %prev.i96 = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry20, ptr %prev.i96, align 4
  %func22 = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %func22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @virqfd_inject, ptr %func22, align 8
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #5, !noalias !44
  %and.i.i = and i32 %call.i, -4
  %14 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool25.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool25.not, label %if.end.err_fd_crit_edge, label %if.end27

if.end.err_fd_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_fd

if.end27:                                         ; preds = %if.end
  %call29 = tail call ptr @eventfd_ctx_fileget(ptr noundef nonnull %14) #5
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call29 to i32
  br label %err_ctx

if.end33:                                         ; preds = %if.end27
  %eventfd = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %eventfd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call29, ptr %eventfd, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @virqfd_lock) #5
  %17 = ptrtoint ptr %pvirqfd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pvirqfd, align 4
  %tobool34.not = icmp eq ptr %18, null
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @virqfd_lock) #5
  tail call void @eventfd_ctx_put(ptr noundef %call29) #5
  br label %err_ctx

if.end36:                                         ; preds = %if.end33
  %19 = ptrtoint ptr %pvirqfd to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %pvirqfd, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @virqfd_lock) #5
  %wait = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %wait, align 8
  %private.i = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %private.i, align 4
  %func1.i = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @virqfd_wakeup, ptr %func1.i, align 8
  %pt = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %pt to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @virqfd_ptable_queue_proc, ptr %pt, align 4
  %_key.i = getelementptr inbounds %struct.virqfd, ptr %call7.i.i, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %_key.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %_key.i, align 8
  %f_op.i = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 3
  %25 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_op.i, align 4
  %poll.i = getelementptr inbounds %struct.file_operations, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %poll.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %poll.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end36.if.then41_crit_edge, label %vfs_poll.exit, !prof !47

if.end36.if.then41_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

vfs_poll.exit:                                    ; preds = %if.end36
  %call.i97 = tail call i32 %28(ptr noundef nonnull %14, ptr noundef %pt) #5
  %and = and i32 %call.i97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %vfs_poll.exit.if.end50_crit_edge, label %vfs_poll.exit.if.then41_crit_edge

vfs_poll.exit.if.then41_crit_edge:                ; preds = %vfs_poll.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

vfs_poll.exit.if.end50_crit_edge:                 ; preds = %vfs_poll.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then41:                                        ; preds = %vfs_poll.exit.if.then41_crit_edge, %if.end36.if.then41_crit_edge
  %tobool42.not = icmp eq ptr %handler, null
  br i1 %tobool42.not, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then41
  %call43 = tail call i32 %handler(ptr noundef %opaque, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  %tobool45.not = icmp eq ptr %thread, null
  %or.cond = or i1 %tobool45.not, %tobool44.not
  br i1 %or.cond, label %lor.lhs.false.if.end50_crit_edge, label %lor.lhs.false.if.then46_crit_edge

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then46

lor.lhs.false.if.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

land.lhs.true:                                    ; preds = %if.then41
  %tobool45.not.old = icmp eq ptr %thread, null
  br i1 %tobool45.not.old, label %land.lhs.true.if.end50_crit_edge, label %land.lhs.true.if.then46_crit_edge

land.lhs.true.if.then46_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then46

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then46:                                        ; preds = %land.lhs.true.if.then46_crit_edge, %lor.lhs.false.if.then46_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %inject) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %land.lhs.true.if.end50_crit_edge, %lor.lhs.false.if.end50_crit_edge, %vfs_poll.exit.if.end50_crit_edge
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i98 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i98, label %if.end50.cleanup_crit_edge, label %if.then.i

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fput(ptr noundef nonnull %14) #5
  br label %cleanup

err_ctx:                                          ; preds = %if.then35, %if.then31
  %ret.0 = phi i32 [ %15, %if.then31 ], [ -16, %if.then35 ]
  %and.i100 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool.not.i101 = icmp eq i32 %and.i100, 0
  br i1 %tobool.not.i101, label %err_ctx.err_fd_crit_edge, label %if.then.i102

err_ctx.err_fd_crit_edge:                         ; preds = %err_ctx
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_fd

if.then.i102:                                     ; preds = %err_ctx
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fput(ptr noundef nonnull %14) #5
  br label %err_fd

err_fd:                                           ; preds = %if.then.i102, %err_ctx.err_fd_crit_edge, %if.end.err_fd_crit_edge
  %ret.1 = phi i32 [ -9, %if.end.err_fd_crit_edge ], [ %ret.0, %err_ctx.err_fd_crit_edge ], [ %ret.0, %if.then.i102 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_fd, %if.then.i, %if.end50.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_fd ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virqfd_shutdown(ptr noundef %work) #2 align 64 {
entry:
  %cnt = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -92
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cnt) #5
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cnt, align 8, !annotation !48
  %eventfd = getelementptr i8, ptr %work, i32 -88
  %1 = ptrtoint ptr %eventfd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %eventfd, align 4
  %wait = getelementptr i8, ptr %work, i32 -28
  %call = call i32 @eventfd_ctx_remove_wait_queue(ptr noundef %2, ptr noundef %wait, ptr noundef nonnull %cnt) #5
  %inject = getelementptr i8, ptr %work, i32 -72
  %call1 = call zeroext i1 @flush_work(ptr noundef %inject) #5
  %3 = ptrtoint ptr %eventfd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eventfd, align 4
  call void @eventfd_ctx_put(ptr noundef %4) #5
  call void @kfree(ptr noundef %add.ptr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cnt) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virqfd_inject(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %thread = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %data = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call void %1(ptr noundef %3, ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @eventfd_ctx_fileget(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virqfd_wakeup(ptr noundef %wait, i32 noundef %mode, i32 noundef %sync, ptr noundef %key) #2 align 64 {
entry:
  %cnt = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wait, i32 -64
  %0 = ptrtoint ptr %key to i32
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cnt) #5
  %1 = ptrtoint ptr %cnt to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %cnt, align 8, !annotation !48
  %eventfd = getelementptr i8, ptr %wait, i32 -60
  %2 = ptrtoint ptr %eventfd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eventfd, align 4
  call void @eventfd_ctx_do_read(ptr noundef %3, ptr noundef nonnull %cnt) #5
  %handler = getelementptr i8, ptr %wait, i32 -56
  %4 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handler, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.then.land.lhs.true_crit_edge, label %lor.lhs.false

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.then
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %data = getelementptr i8, ptr %wait, i32 -48
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %call = call i32 %5(ptr noundef %7, ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %thread = getelementptr i8, ptr %wait, i32 -52
  %10 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %thread, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %inject = getelementptr i8, ptr %wait, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %inject) #5
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cnt) #5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %and8 = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end23_crit_edge, label %if.then10

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then10:                                        ; preds = %if.end7
  %call15 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @virqfd_lock) #5
  %pvirqfd = getelementptr i8, ptr %wait, i32 72
  %13 = ptrtoint ptr %pvirqfd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pvirqfd, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %cmp18 = icmp eq ptr %16, %add.ptr
  br i1 %cmp18, label %if.then20, label %if.then10.if.end22_crit_edge

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then20:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %14, align 4
  %18 = load ptr, ptr @vfio_irqfd_cleanup_wq, align 4
  %shutdown.i = getelementptr i8, ptr %wait, i32 28
  %call.i.i35 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %shutdown.i) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then10.if.end22_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @virqfd_lock, i32 noundef %call15) #5
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end7.if.end23_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virqfd_ptable_queue_proc(ptr nocapture noundef readnone %file, ptr noundef %wqh, ptr noundef %pt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wait = getelementptr i8, ptr %pt, i32 -20
  tail call void @add_wait_queue(ptr noundef %wqh, ptr noundef %wait) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventfd_ctx_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfio_virqfd_disable(ptr nocapture noundef %pvirqfd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @virqfd_lock) #5
  %0 = ptrtoint ptr %pvirqfd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvirqfd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = load ptr, ptr @vfio_irqfd_cleanup_wq, align 4
  %shutdown.i = getelementptr inbounds %struct.virqfd, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %shutdown.i) #5
  %3 = ptrtoint ptr %pvirqfd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pvirqfd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @virqfd_lock, i32 noundef %call2) #5
  %4 = load ptr, ptr @vfio_irqfd_cleanup_wq, align 4
  tail call void @flush_workqueue(ptr noundef %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_virqfd_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.7, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.8) #5
  store ptr %call, ptr @vfio_irqfd_cleanup_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eventfd_ctx_remove_wait_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventfd_ctx_do_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !27, !29, !31, !32, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @vfio_virqfd_enable.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/vfio/virqfd.c", i32 128, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @vfio_virqfd_enable.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/vfio/virqfd.c", i32 129, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_vfio_virqfd_enable, !7, !"__ksymtab_vfio_virqfd_enable", i1 false, i1 false}
!7 = !{!"../drivers/vfio/virqfd.c", i32 196, i32 1}
!8 = !{ptr @__ksymtab_vfio_virqfd_disable, !9, !"__ksymtab_vfio_virqfd_disable", i1 false, i1 false}
!9 = !{!"../drivers/vfio/virqfd.c", i32 218, i32 1}
!10 = !{ptr @__initcall__kmod_vfio_virqfd__228_220_vfio_virqfd_init6, !11, !"__initcall__kmod_vfio_virqfd__228_220_vfio_virqfd_init6", i1 false, i1 false}
!11 = !{!"../drivers/vfio/virqfd.c", i32 220, i32 1}
!12 = !{ptr @__exitcall_vfio_virqfd_exit, !13, !"__exitcall_vfio_virqfd_exit", i1 false, i1 false}
!13 = !{!"../drivers/vfio/virqfd.c", i32 221, i32 1}
!14 = !{ptr @__UNIQUE_ID_version229, !15, !"__UNIQUE_ID_version229", i1 false, i1 false}
!15 = !{!"../drivers/vfio/virqfd.c", i32 223, i32 1}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__modver_attr, !15, !"__modver_attr", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_file230, !21, !"__UNIQUE_ID_file230", i1 false, i1 false}
!21 = !{!"../drivers/vfio/virqfd.c", i32 224, i32 1}
!22 = !{ptr @__UNIQUE_ID_license231, !21, !"__UNIQUE_ID_license231", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_author232, !24, !"__UNIQUE_ID_author232", i1 false, i1 false}
!24 = !{!"../drivers/vfio/virqfd.c", i32 225, i32 1}
!25 = !{ptr @__UNIQUE_ID_description233, !26, !"__UNIQUE_ID_description233", i1 false, i1 false}
!26 = !{!"../drivers/vfio/virqfd.c", i32 226, i32 1}
!27 = !{ptr @vfio_irqfd_cleanup_wq, !28, !"vfio_irqfd_cleanup_wq", i1 false, i1 false}
!28 = !{!"../drivers/vfio/virqfd.c", i32 20, i32 33}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/vfio/virqfd.c", i32 21, i32 8}
!31 = !{ptr @virqfd_lock, !30, !"virqfd_lock", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/vfio/virqfd.c", i32 26, i32 3}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"fdget: %agg.result"}
!46 = distinct !{!46, !"fdget"}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{!"auto-init"}
