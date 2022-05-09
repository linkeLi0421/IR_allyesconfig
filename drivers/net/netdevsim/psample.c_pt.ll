; ModuleID = '/llk/IR_all_yes/drivers/net/netdevsim/psample.c_pt.bc'
source_filename = "../drivers/net/netdevsim/psample.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nsim_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.netdev_phys_item_id, %struct.list_head, %struct.mutex, i8, i32, i32, i8, i8, i8, ptr, %struct.nsim_dev_health, ptr, %struct.spinlock, i8, i8, i8, i8, %struct.anon.137, ptr, i16 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nsim_dev_health = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.137 = type { %struct.udp_tunnel_nic_shared, [2 x [4 x i32]], i8, i8, i8, i8, i8, i32 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.nsim_dev_psample = type { %struct.delayed_work, ptr, ptr, i32, i32, i32, i32, i32, i16, i64, i64, i8 }
%struct.psample_metadata = type { i32, i32, i32, i16, i64, i64, i8 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@nsim_dev_psample_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&psample->psample_dw)->work)\00", [47 x i8] zeroinitializer }, align 32
@nsim_dev_psample_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&psample->psample_dw)->timer\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"psample\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"group_num\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"trunc_size\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in_ifindex\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"out_ifindex\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"out_tc\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"out_tc_occ_max\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"latency_max\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@nsim_psample_enable_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @nsim_dev_psample_enable_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"192.0.2.1\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"198.51.100.1\00", [19 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 208, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 210, i32 37 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 218, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 221, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 225, i32 21 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 229, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 233, i32 21 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 237, i32 21 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 240, i32 21 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 244, i32 21 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 247, i32 22 }
@___asan_gen_.57 = private unnamed_addr constant [25 x i8] c"nsim_psample_enable_fops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 191, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 61, i32 23 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [35 x i8] c"../drivers/net/netdevsim/psample.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 62, i32 23 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @nsim_dev_psample_init.__key, ptr @.str, ptr @nsim_dev_psample_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @nsim_psample_enable_fops, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_psample_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_psample_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_psample_enable_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsim_dev_psample_init(ptr noundef %nsim_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 160) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %psample1 = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 35
  %1 = ptrtoint ptr %psample1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %psample1, align 4
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @nsim_dev_psample_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry9 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry9, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nsim_dev_psample_report_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.delayed_work, ptr %call7.i.i, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @nsim_dev_psample_init.__key.1) #4
  %ddir = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 3
  %6 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddir, align 4
  %call18 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef %7) #4
  %ddir19 = getelementptr inbounds %struct.nsim_dev_psample, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %ddir19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call18, ptr %ddir19, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %call18 to i32
  %10 = ptrtoint ptr %psample1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %psample1, align 4
  tail call void @kfree(ptr noundef %11) #4
  br label %cleanup

if.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %rate = getelementptr inbounds %struct.nsim_dev_psample, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 100, ptr %rate, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.4, i16 noundef zeroext 384, ptr noundef %call18, ptr noundef %rate) #4
  %group_num = getelementptr inbounds %struct.nsim_dev_psample, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %group_num to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %group_num, align 8
  %14 = ptrtoint ptr %ddir19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddir19, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.5, i16 noundef zeroext 384, ptr noundef %15, ptr noundef %group_num) #4
  %trunc_size = getelementptr inbounds %struct.nsim_dev_psample, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %trunc_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %trunc_size, align 4
  %17 = ptrtoint ptr %ddir19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ddir19, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.6, i16 noundef zeroext 384, ptr noundef %18, ptr noundef %trunc_size) #4
  %in_ifindex = getelementptr inbounds %struct.nsim_dev_psample, ptr %call7.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %in_ifindex to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %in_ifindex, align 8
  %20 = ptrtoint ptr %ddir19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ddir19, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.7, i16 noundef zeroext 384, ptr noundef %21, ptr noundef %in_ifindex) #4
  %out_ifindex = getelementptr inbounds %struct.nsim_dev_psample, ptr %call7.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %out_ifindex to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %out_ifindex, align 4
  %23 = ptrtoint ptr %ddir19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ddir19, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %24, ptr noundef %out_ifindex) #4
  %out_tc = getelementptr inbounds %struct.nsim_dev_psample, ptr %call7.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %out_tc to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %out_tc, align 8
  %26 = ptrtoint ptr %ddir19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ddir19, align 4
  tail call void @debugfs_create_u16(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef %27, ptr noundef %out_tc) #4
  %out_tc_occ_max = getelementptr inbounds %struct.nsim_dev_psample, ptr %call7.i.i, i32 0, i32 9
  %28 = ptrtoint ptr %out_tc_occ_max to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 10000, ptr %out_tc_occ_max, align 8
  %29 = ptrtoint ptr %ddir19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ddir19, align 4
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.10, i16 noundef zeroext 384, ptr noundef %30, ptr noundef %out_tc_occ_max) #4
  %latency_max = getelementptr inbounds %struct.nsim_dev_psample, ptr %call7.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %latency_max to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 50, ptr %latency_max, align 8
  %32 = ptrtoint ptr %ddir19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ddir19, align 4
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.11, i16 noundef zeroext 384, ptr noundef %33, ptr noundef %latency_max) #4
  %34 = ptrtoint ptr %ddir19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ddir19, align 4
  %call43 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 128, ptr noundef %35, ptr noundef %nsim_dev, ptr noundef nonnull @nsim_psample_enable_fops) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then22 ], [ 0, %if.end25 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsim_dev_psample_report_work(ptr noundef %work) #0 align 64 {
entry:
  %out_tc_occ.i = alloca i64, align 8
  %latency.i = alloca i64, align 8
  %md = alloca %struct.psample_metadata, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %md) #4
  %0 = call ptr @memset(ptr %md, i32 0, i32 40)
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %1 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %5 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 14) #4
  tail call void @get_random_bytes(ptr noundef %call1.i, i32 noundef 6) #4
  %6 = ptrtoint ptr %call1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call1.i, align 1
  %8 = and i8 %7, -4
  %9 = or i8 %8, 2
  store i8 %9, ptr %call1.i, align 1
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %call1.i, i32 0, i32 1
  tail call void @get_random_bytes(ptr noundef %h_source.i, i32 noundef 6) #4
  %10 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %h_source.i, align 1
  %12 = and i8 %11, -4
  %13 = or i8 %12, 2
  store i8 %13, ptr %h_source.i, align 1
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %call1.i, i32 0, i32 2
  %14 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 2048, ptr %h_proto.i, align 1
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %15 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2048, ptr %protocol.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i, align 4
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %22 = trunc i32 %17 to i16
  %conv1.i.i = add i16 %conv.i.i.i, %22
  %23 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv1.i.i, ptr %network_header.i.i.i, align 4
  %call3.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #4
  %protocol4.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 6
  %24 = ptrtoint ptr %protocol4.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 17, ptr %protocol4.i, align 1
  %call5.i = tail call i32 @in_aton(ptr noundef nonnull @.str.13) #4
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 8
  %25 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call5.i, ptr %saddr.i, align 4
  %call6.i = tail call i32 @in_aton(ptr noundef nonnull @.str.14) #4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 9
  %26 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call6.i, ptr %daddr.i, align 4
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 4
  %27 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %frag_off.i, align 2
  %28 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 69, ptr %call3.i, align 4
  %tot_len10.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 2
  %29 = ptrtoint ptr %tot_len10.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 128, ptr %tot_len10.i, align 2
  %id.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 3
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %id.i, align 4
  %ttl.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 5
  %31 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 100, ptr %ttl.i, align 4
  %check.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 7
  %32 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %check.i, align 2
  %33 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %call3.i, i32 5) #4, !srcloc !40
  %asmresult.i.i = extractvalue { i32, ptr, i32, i32 } %33, 0
  %34 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i) #8, !srcloc !41
  %neg.i.i.i = xor i32 %34, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i55.i = trunc i32 %shr.i.i.i to i16
  %35 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i.i55.i, ptr %check.i, align 2
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i, align 4
  %40 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i58.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i.i59.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i60.i = sub i32 %sub.ptr.lhs.cast.i.i58.i, %sub.ptr.rhs.cast.i.i59.i
  %conv.i.i61.i = trunc i32 %sub.ptr.sub.i.i60.i to i16
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 19
  %42 = trunc i32 %37 to i16
  %conv1.i62.i = add i16 %conv.i.i61.i, %42
  %43 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv1.i62.i, ptr %transport_header.i.i.i, align 2
  %call.i63.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 108) #4
  %44 = call ptr @memset(ptr %call.i63.i, i32 0, i32 108)
  tail call void @get_random_bytes(ptr noundef %call.i63.i, i32 noundef 2) #4
  %dest.i = getelementptr inbounds %struct.udphdr, ptr %call.i63.i, i32 0, i32 1
  tail call void @get_random_bytes(ptr noundef %dest.i, i32 noundef 2) #4
  %len21.i = getelementptr inbounds %struct.udphdr, ptr %call.i63.i, i32 0, i32 2
  %45 = ptrtoint ptr %len21.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 108, ptr %len21.i, align 2
  %46 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i, align 4
  %trunc_size.i = getelementptr inbounds %struct.nsim_dev_psample, ptr %work, i32 0, i32 5
  %48 = ptrtoint ptr %trunc_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %trunc_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i9 = icmp eq i32 %49, 0
  %len..i = select i1 %tobool.not.i9, i32 %47, i32 %49
  %50 = ptrtoint ptr %md to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %len..i, ptr %md, align 8
  %in_ifindex.i = getelementptr inbounds %struct.nsim_dev_psample, ptr %work, i32 0, i32 6
  %51 = ptrtoint ptr %in_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %in_ifindex.i, align 8
  %in_ifindex3.i = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 1
  %53 = ptrtoint ptr %in_ifindex3.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %in_ifindex3.i, align 4
  %out_ifindex.i = getelementptr inbounds %struct.nsim_dev_psample, ptr %work, i32 0, i32 7
  %54 = ptrtoint ptr %out_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %out_ifindex.i, align 4
  %out_ifindex4.i = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 2
  %56 = ptrtoint ptr %out_ifindex4.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %out_ifindex4.i, align 8
  %out_tc.i = getelementptr inbounds %struct.nsim_dev_psample, ptr %work, i32 0, i32 8
  %57 = ptrtoint ptr %out_tc.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %out_tc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %58)
  %cmp.not.i = icmp eq i16 %58, -1
  br i1 %cmp.not.i, label %if.end.if.end.i10_crit_edge, label %if.then.i

if.end.if.end.i10_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i10

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %out_tc7.i = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 3
  %59 = ptrtoint ptr %out_tc7.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %out_tc7.i, align 4
  %out_tc_valid.i = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 6
  %60 = ptrtoint ptr %out_tc_valid.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load.i = load i8, ptr %out_tc_valid.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %out_tc_valid.i, align 8
  br label %if.end.i10

if.end.i10:                                       ; preds = %if.then.i, %if.end.if.end.i10_crit_edge
  %out_tc_occ_max.i = getelementptr inbounds %struct.nsim_dev_psample, ptr %work, i32 0, i32 9
  %61 = ptrtoint ptr %out_tc_occ_max.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %out_tc_occ_max.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %62)
  %tobool8.not.i = icmp eq i64 %62, 0
  br i1 %tobool8.not.i, label %if.end.i10.if.end15.i_crit_edge, label %if.then9.i

if.end.i10.if.end15.i_crit_edge:                  ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

if.then9.i:                                       ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_tc_occ.i) #4
  %63 = ptrtoint ptr %out_tc_occ.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 -1, ptr %out_tc_occ.i, align 8, !annotation !42
  call void @get_random_bytes(ptr noundef nonnull %out_tc_occ.i, i32 noundef 8) #4
  %64 = ptrtoint ptr %out_tc_occ.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %out_tc_occ.i, align 8
  %66 = ptrtoint ptr %out_tc_occ_max.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %out_tc_occ_max.i, align 8
  %sub.i = add i64 %67, -1
  %and.i = and i64 %sub.i, %65
  %out_tc_occ11.i = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 4
  %68 = ptrtoint ptr %out_tc_occ11.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %and.i, ptr %out_tc_occ11.i, align 8
  %out_tc_occ_valid.i = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 6
  %69 = ptrtoint ptr %out_tc_occ_valid.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load12.i = load i8, ptr %out_tc_occ_valid.i, align 8
  %bf.set14.i = or i8 %bf.load12.i, 64
  store i8 %bf.set14.i, ptr %out_tc_occ_valid.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_tc_occ.i) #4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then9.i, %if.end.i10.if.end15.i_crit_edge
  %latency_max.i = getelementptr inbounds %struct.nsim_dev_psample, ptr %work, i32 0, i32 10
  %70 = ptrtoint ptr %latency_max.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %latency_max.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %71)
  %tobool16.not.i = icmp eq i64 %71, 0
  br i1 %tobool16.not.i, label %if.end15.i.nsim_dev_psample_md_prepare.exit_crit_edge, label %if.then17.i

if.end15.i.nsim_dev_psample_md_prepare.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nsim_dev_psample_md_prepare.exit

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %latency.i) #4
  %72 = ptrtoint ptr %latency.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 -1, ptr %latency.i, align 8, !annotation !42
  call void @get_random_bytes(ptr noundef nonnull %latency.i, i32 noundef 8) #4
  %73 = ptrtoint ptr %latency.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %latency.i, align 8
  %75 = ptrtoint ptr %latency_max.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %latency_max.i, align 8
  %sub19.i = add i64 %76, -1
  %and20.i = and i64 %sub19.i, %74
  %latency21.i = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 5
  %77 = ptrtoint ptr %latency21.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %and20.i, ptr %latency21.i, align 8
  %latency_valid.i = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 6
  %78 = ptrtoint ptr %latency_valid.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load22.i = load i8, ptr %latency_valid.i, align 8
  %bf.set24.i = or i8 %bf.load22.i, 32
  store i8 %bf.set24.i, ptr %latency_valid.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %latency.i) #4
  br label %nsim_dev_psample_md_prepare.exit

nsim_dev_psample_md_prepare.exit:                 ; preds = %if.then17.i, %if.end15.i.nsim_dev_psample_md_prepare.exit_crit_edge
  %group = getelementptr inbounds %struct.nsim_dev_psample, ptr %work, i32 0, i32 2
  %79 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %group, align 8
  %rate = getelementptr inbounds %struct.nsim_dev_psample, ptr %work, i32 0, i32 3
  %81 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rate, align 4
  call void @psample_sample_packet(ptr noundef %80, ptr noundef nonnull %call.i.i, i32 noundef %82, ptr noundef nonnull %md) #4
  call void @consume_skb(ptr noundef nonnull %call.i.i) #4
  br label %out

out:                                              ; preds = %nsim_dev_psample_md_prepare.exit, %entry.out_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %83 = load ptr, ptr @system_wq, align 4
  %call.i.i11 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %83, ptr noundef %work, i32 noundef 10) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %md) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u16(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsim_dev_psample_exit(ptr nocapture noundef readonly %nsim_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %psample = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 35
  %0 = ptrtoint ptr %psample to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psample, align 4
  %ddir = getelementptr inbounds %struct.nsim_dev_psample, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddir, align 4
  tail call void @debugfs_remove(ptr noundef %3) #4
  %4 = ptrtoint ptr %psample to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psample, align 4
  %is_active = getelementptr inbounds %struct.nsim_dev_psample, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %is_active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_active, align 8, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %5) #4
  %8 = ptrtoint ptr %psample to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %psample, align 4
  %group = getelementptr inbounds %struct.nsim_dev_psample, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %group, align 8
  tail call void @psample_group_put(ptr noundef %11) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %psample to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %psample, align 4
  tail call void @kfree(ptr noundef %13) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psample_group_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psample_sample_packet(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_aton(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_psample_enable_write(ptr nocapture noundef readonly %file, ptr noundef %data, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #4
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enable, align 1, !annotation !42
  %call = call i32 @kstrtobool_from_user(ptr noundef %data, i32 noundef %count, ptr noundef nonnull %enable) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  %psample1.i14 = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 35
  %5 = ptrtoint ptr %psample1.i14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %psample1.i14, align 4
  %is_active.i15 = getelementptr inbounds %struct.nsim_dev_psample, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %is_active.i15 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_active.i15, align 8, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i16 = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  br i1 %tobool.not.i16, label %if.end.i, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.then2
  %call.i = call ptr @priv_to_devlink(ptr noundef %1) #4
  %call2.i = call ptr @devlink_net(ptr noundef %call.i) #4
  %group_num.i = getelementptr inbounds %struct.nsim_dev_psample, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %group_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %group_num.i, align 8
  %call3.i = call ptr @psample_group_get(ptr noundef %call2.i, i32 noundef %10) #4
  %group.i = getelementptr inbounds %struct.nsim_dev_psample, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %group.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3.i, ptr %group.i, align 8
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %6, i32 noundef 10) #4
  %13 = ptrtoint ptr %is_active.i15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %is_active.i15, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool.not.i16, label %if.else.cleanup_crit_edge, label %if.end.i19

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i19:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %is_active.i15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %is_active.i15, align 8
  %call.i17 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %6) #4
  %group.i18 = getelementptr inbounds %struct.nsim_dev_psample, ptr %6, i32 0, i32 2
  %15 = ptrtoint ptr %group.i18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %group.i18, align 8
  call void @psample_group_put(ptr noundef %16) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i19, %if.else.cleanup_crit_edge, %if.end7.i, %if.end.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %count, %if.end7.i ], [ %count, %if.end.i19 ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -16, %if.then2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @psample_group_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @nsim_dev_psample_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/netdevsim/psample.c", i32 208, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nsim_dev_psample_init.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/netdevsim/psample.c", i32 210, i32 37}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/netdevsim/psample.c", i32 218, i32 21}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/netdevsim/psample.c", i32 221, i32 21}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/netdevsim/psample.c", i32 225, i32 21}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/netdevsim/psample.c", i32 229, i32 21}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/netdevsim/psample.c", i32 233, i32 21}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/netdevsim/psample.c", i32 237, i32 21}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/netdevsim/psample.c", i32 240, i32 21}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/netdevsim/psample.c", i32 244, i32 21}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/netdevsim/psample.c", i32 247, i32 22}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/netdevsim/psample.c", i32 61, i32 23}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/netdevsim/psample.c", i32 62, i32 23}
!29 = !{ptr @nsim_psample_enable_fops, !30, !"nsim_psample_enable_fops", i1 false, i1 false}
!30 = !{!"../drivers/net/netdevsim/psample.c", i32 191, i32 37}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 6508159, i64 6508198, i64 6508224, i64 6508248, i64 6508273, i64 6508299, i64 6508324, i64 6508350, i64 6508377, i64 6508403, i64 6508442, i64 6508486, i64 6508517, i64 6508542}
!41 = !{i64 6507776}
!42 = !{!"auto-init"}
!43 = !{i8 0, i8 2}
