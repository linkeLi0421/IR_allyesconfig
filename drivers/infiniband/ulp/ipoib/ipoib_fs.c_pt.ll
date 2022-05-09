; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/ipoib/ipoib_fs.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/ipoib/ipoib_fs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.ipoib_dev_priv = type { %struct.spinlock, ptr, ptr, %struct.napi_struct, %struct.napi_struct, i32, %struct.rw_semaphore, %struct.mutex, %struct.rb_root, %struct.list_head, %struct.ipoib_neigh_table, ptr, %struct.list_head, %struct.rb_root, ptr, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, ptr, i8, i16, i16, ptr, ptr, ptr, ptr, i32, %union.ib_gid, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, [18 x %struct.ib_sge], %struct.ib_ud_wr, [64 x %struct.ib_wc], %struct.ib_recv_wr, [2 x %struct.ib_sge], [4 x %struct.ib_wc], %struct.list_head, %struct.ib_event_handler, ptr, %struct.list_head, %struct.list_head, i32, %struct.ipoib_cm_dev_priv, %struct.list_head, ptr, ptr, i64, %struct.ipoib_ethtool_st, i32, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ipoib_neigh_table = type { ptr, %struct.atomic_t, %struct.completion, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.ib_gid = type { %struct.anon.162 }
%struct.anon.162 = type { i64, i64 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.163, ptr, i32, i32, i32, %union.anon.164 }
%union.anon.163 = type { i64 }
%union.anon.164 = type { i32 }
%struct.ib_wc = type { %union.anon.159, i32, i32, i32, i32, ptr, %union.anon.160, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.165, ptr, i32 }
%union.anon.165 = type { i64 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.ipoib_cm_dev_priv = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.sk_buff_head, %struct.list_head, %struct.list_head, [4 x %struct.ib_wc], [16 x %struct.ib_sge], %struct.ib_recv_wr, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ipoib_ethtool_st = type { i16, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.148, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.149, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.150, ptr, %struct.address_space, %struct.list_head, %union.anon.151, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.148 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.149 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.150 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.151 = type { ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ipoib_path = type { ptr, %struct.sa_path_rec, ptr, %struct.sk_buff_head, %struct.list_head, i32, ptr, %struct.completion, %struct.rb_node, %struct.list_head }
%struct.sa_path_rec = type { %union.ib_gid, %union.ib_gid, i64, i32, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.176, i32 }
%union.anon.176 = type { %struct.sa_path_rec_opa }
%struct.sa_path_rec_opa = type { i32, i32, i8, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s_mcg\00", [25 x i8] zeroinitializer }, align 32
@ipoib_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ipoib_mcg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ipoib_mcg_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s_path\00", [24 x i8] zeroinitializer }, align 32
@ipoib_path_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ipoib_path_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ipoib\00", [26 x i8] zeroinitializer }, align 32
@ipoib_mcg_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ipoib_mcg_seq_start, ptr @ipoib_mcg_seq_stop, ptr @ipoib_mcg_seq_next, ptr @ipoib_mcg_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"GID: %s\0A  created: %10ld\0A  queuelen: %9d\0A  complete: %9s\0A  send_only: %8s\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@ipoib_path_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ipoib_path_seq_start, ptr @ipoib_path_seq_stop, ptr @ipoib_path_seq_next, ptr @ipoib_path_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GID: %s\0A  complete: %6s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"  DLID:     0x%04x\0A  SL: %12d\0A  rate: %8d.%d Gb/sec\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 225, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"ipoib_root\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 44, i32 23 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"ipoib_mcg_fops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 134, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 229, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"ipoib_path_fops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 218, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 245, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"ipoib_mcg_sops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 127, i32 36 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 114, i32 6 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 121, i32 17 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 121, i32 25 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 51, i32 25 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"ipoib_path_sops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 211, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 190, i32 6 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [43 x i8] c"../drivers/infiniband/ulp/ipoib/ipoib_fs.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 198, i32 7 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @ipoib_root, ptr @ipoib_mcg_fops, ptr @.str.1, ptr @ipoib_path_fops, ptr @.str.2, ptr @ipoib_mcg_sops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ipoib_path_sops, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_path_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcg_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_path_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_create_debug_files(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [22 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %name) #7
  %2 = call ptr @memset(ptr %name, i32 255, i32 22)
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 22, ptr noundef nonnull @.str, ptr noundef %dev)
  %3 = load ptr, ptr @ipoib_root, align 4
  %call5 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext -32476, ptr noundef %3, ptr noundef %dev, ptr noundef nonnull @ipoib_mcg_fops) #7
  %mcg_dentry = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 57
  %4 = ptrtoint ptr %mcg_dentry to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %mcg_dentry, align 8
  %call9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 22, ptr noundef nonnull @.str.1, ptr noundef %dev)
  %5 = load ptr, ptr @ipoib_root, align 4
  %call11 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext -32476, ptr noundef %5, ptr noundef %dev, ptr noundef nonnull @ipoib_path_fops) #7
  %path_dentry = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 58
  %6 = ptrtoint ptr %path_dentry to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %path_dentry, align 4
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %name) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_delete_debug_files(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %mcg_dentry = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %mcg_dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcg_dentry, align 8
  tail call void @debugfs_remove(ptr noundef %3) #7
  %path_dentry = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 58
  %4 = ptrtoint ptr %path_dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path_dentry, align 4
  tail call void @debugfs_remove(ptr noundef %5) #7
  %6 = ptrtoint ptr %path_dentry to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %path_dentry, align 4
  %7 = ptrtoint ptr %mcg_dentry to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %mcg_dentry, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_register_debugfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.2, ptr noundef null) #7
  store ptr %call, ptr @ipoib_root, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_unregister_debugfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ipoib_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_mcg_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @ipoib_mcg_sops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ipoib_mcg_seq_start(ptr nocapture noundef readonly %file, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %call = tail call ptr @ipoib_mcast_iter_init(ptr noundef %3) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry.while.cond_crit_edge
  %n.0 = phi i64 [ %dec, %while.body.while.cond_crit_edge ], [ %1, %entry.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %n.0)
  %tobool1.not = icmp eq i64 %n.0, 0
  br i1 %tobool1.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %dec = add i64 %n.0, -1
  %call2 = tail call i32 @ipoib_mcast_iter_next(ptr noundef nonnull %call) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.body.while.cond_crit_edge, label %if.then4

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.then4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ], [ %call, %while.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ipoib_mcg_seq_stop(ptr nocapture noundef %file, ptr nocapture noundef %iter_ptr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ipoib_mcg_seq_next(ptr nocapture noundef readnone %file, ptr noundef %iter_ptr, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %call = tail call i32 @ipoib_mcast_iter_next(ptr noundef %iter_ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %iter_ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then ], [ %iter_ptr, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_mcg_seq_show(ptr noundef %file, ptr noundef %iter_ptr) #0 align 64 {
entry:
  %gid_buf = alloca [40 x i8], align 1
  %mgid = alloca %union.ib_gid, align 8
  %created = alloca i32, align 4
  %queuelen = alloca i32, align 4
  %complete = alloca i32, align 4
  %send_only = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %gid_buf) #7
  %0 = call ptr @memset(ptr %gid_buf, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mgid) #7
  %1 = call ptr @memset(ptr %mgid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %created) #7
  %2 = ptrtoint ptr %created to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %created, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %queuelen) #7
  %3 = ptrtoint ptr %queuelen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %queuelen, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %complete) #7
  %4 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %complete, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %send_only) #7
  %5 = ptrtoint ptr %send_only to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %send_only, align 4, !annotation !37
  %tobool.not = icmp eq ptr %iter_ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @ipoib_mcast_iter_read(ptr noundef nonnull %iter_ptr, ptr noundef nonnull %mgid, ptr noundef nonnull %created, ptr noundef nonnull %queuelen, ptr noundef nonnull %complete, ptr noundef nonnull %send_only) #7
  call fastcc void @format_gid(ptr noundef nonnull %mgid, ptr noundef nonnull %gid_buf)
  %6 = ptrtoint ptr %created to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %created, align 4
  %8 = ptrtoint ptr %queuelen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queuelen, align 4
  %10 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool2.not, ptr @.str.5, ptr @.str.4
  %12 = ptrtoint ptr %send_only to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %send_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  %cond4 = select i1 %tobool3.not, ptr @.str.5, ptr @.str.4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.3, ptr noundef nonnull %gid_buf, i32 noundef %7, i32 noundef %9, ptr noundef nonnull %cond, ptr noundef nonnull %cond4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %send_only) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %complete) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %queuelen) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %created) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mgid) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %gid_buf) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipoib_mcast_iter_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_mcast_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_mcast_iter_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @format_gid(ptr nocapture noundef readonly %gid, ptr nocapture noundef writeonly %buf) unnamed_addr #5 align 64 {
for.inc.7:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %gid, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef %conv)
  %inc = add i32 %call, 1
  %arrayidx3 = getelementptr i8, ptr %buf, i32 %call
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 58, ptr %arrayidx3, align 1
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %inc
  %arrayidx.1 = getelementptr i16, ptr %gid, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %4 to i32
  %call.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.6, i32 noundef %conv.1)
  %add.1 = add i32 %call.1, %inc
  %inc.1 = add i32 %add.1, 1
  %arrayidx3.1 = getelementptr i8, ptr %buf, i32 %add.1
  %5 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 58, ptr %arrayidx3.1, align 1
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %inc.1
  %arrayidx.2 = getelementptr i16, ptr %gid, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %7 to i32
  %call.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.6, i32 noundef %conv.2)
  %add.2 = add i32 %call.2, %inc.1
  %inc.2 = add i32 %add.2, 1
  %arrayidx3.2 = getelementptr i8, ptr %buf, i32 %add.2
  %8 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 58, ptr %arrayidx3.2, align 1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %inc.2
  %arrayidx.3 = getelementptr i16, ptr %gid, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.3, align 2
  %conv.3 = zext i16 %10 to i32
  %call.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef nonnull @.str.6, i32 noundef %conv.3)
  %add.3 = add i32 %call.3, %inc.2
  %inc.3 = add i32 %add.3, 1
  %arrayidx3.3 = getelementptr i8, ptr %buf, i32 %add.3
  %11 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 58, ptr %arrayidx3.3, align 1
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %inc.3
  %arrayidx.4 = getelementptr i16, ptr %gid, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.4, align 2
  %conv.4 = zext i16 %13 to i32
  %call.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.4, ptr noundef nonnull @.str.6, i32 noundef %conv.4)
  %add.4 = add i32 %call.4, %inc.3
  %inc.4 = add i32 %add.4, 1
  %arrayidx3.4 = getelementptr i8, ptr %buf, i32 %add.4
  %14 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 58, ptr %arrayidx3.4, align 1
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 %inc.4
  %arrayidx.5 = getelementptr i16, ptr %gid, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.5, align 2
  %conv.5 = zext i16 %16 to i32
  %call.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.5, ptr noundef nonnull @.str.6, i32 noundef %conv.5)
  %add.5 = add i32 %call.5, %inc.4
  %inc.5 = add i32 %add.5, 1
  %arrayidx3.5 = getelementptr i8, ptr %buf, i32 %add.5
  %17 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 58, ptr %arrayidx3.5, align 1
  %add.ptr.6 = getelementptr i8, ptr %buf, i32 %inc.5
  %arrayidx.6 = getelementptr i16, ptr %gid, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.6, align 2
  %conv.6 = zext i16 %19 to i32
  %call.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.6, ptr noundef nonnull @.str.6, i32 noundef %conv.6)
  %add.6 = add i32 %call.6, %inc.5
  %inc.6 = add i32 %add.6, 1
  %arrayidx3.6 = getelementptr i8, ptr %buf, i32 %add.6
  %20 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 58, ptr %arrayidx3.6, align 1
  %add.ptr.7 = getelementptr i8, ptr %buf, i32 %inc.6
  %arrayidx.7 = getelementptr i16, ptr %gid, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.7, align 2
  %conv.7 = zext i16 %22 to i32
  %call.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.7, ptr noundef nonnull @.str.6, i32 noundef %conv.7)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_path_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @ipoib_path_sops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ipoib_path_seq_start(ptr nocapture noundef readonly %file, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %call = tail call ptr @ipoib_path_iter_init(ptr noundef %3) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry.while.cond_crit_edge
  %n.0 = phi i64 [ %dec, %while.body.while.cond_crit_edge ], [ %1, %entry.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %n.0)
  %tobool1.not = icmp eq i64 %n.0, 0
  br i1 %tobool1.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %dec = add i64 %n.0, -1
  %call2 = tail call i32 @ipoib_path_iter_next(ptr noundef nonnull %call) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.body.while.cond_crit_edge, label %if.then4

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.then4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ], [ %call, %while.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ipoib_path_seq_stop(ptr nocapture noundef %file, ptr nocapture noundef %iter_ptr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ipoib_path_seq_next(ptr nocapture noundef readnone %file, ptr noundef %iter_ptr, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %call = tail call i32 @ipoib_path_iter_next(ptr noundef %iter_ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %iter_ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then ], [ %iter_ptr, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_path_seq_show(ptr noundef %file, ptr noundef %iter_ptr) #0 align 64 {
entry:
  %gid_buf = alloca [40 x i8], align 1
  %path = alloca %struct.ipoib_path, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %gid_buf) #7
  %0 = call ptr @memset(ptr %gid_buf, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %path) #7
  %1 = call ptr @memset(ptr %path, i32 255, i32 240)
  %tobool.not = icmp eq ptr %iter_ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @ipoib_path_iter_read(ptr noundef nonnull %iter_ptr, ptr noundef nonnull %path) #7
  %pathrec = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 1
  call fastcc void @format_gid(ptr noundef %pathrec, ptr noundef nonnull %gid_buf)
  %rec_type.i = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 1, i32 19
  %2 = ptrtoint ptr %rec_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rec_type.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.sa_path_get_dlid.exit.thread_crit_edge [
    i32 0, label %if.then.i
    i32 3, label %if.then4.i
  ]

if.end.sa_path_get_dlid.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sa_path_get_dlid.exit.thread

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 1, i32 18
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 4
  %conv.i = zext i16 %7 to i32
  br label %sa_path_get_dlid.exit

if.then4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 1, i32 18
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  br label %sa_path_get_dlid.exit

sa_path_get_dlid.exit:                            ; preds = %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ %10, %if.then4.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool3.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool3.not, label %sa_path_get_dlid.exit.sa_path_get_dlid.exit.thread_crit_edge, label %sa_path_get_dlid.exit._crit_edge

sa_path_get_dlid.exit._crit_edge:                 ; preds = %sa_path_get_dlid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %11

sa_path_get_dlid.exit.sa_path_get_dlid.exit.thread_crit_edge: ; preds = %sa_path_get_dlid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sa_path_get_dlid.exit.thread

sa_path_get_dlid.exit.thread:                     ; preds = %sa_path_get_dlid.exit.sa_path_get_dlid.exit.thread_crit_edge, %if.end.sa_path_get_dlid.exit.thread_crit_edge
  br label %11

11:                                               ; preds = %sa_path_get_dlid.exit.thread, %sa_path_get_dlid.exit._crit_edge
  %12 = phi ptr [ @.str.5, %sa_path_get_dlid.exit.thread ], [ @.str.4, %sa_path_get_dlid.exit._crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.7, ptr noundef nonnull %gid_buf, ptr noundef nonnull %12) #7
  %13 = ptrtoint ptr %rec_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rec_type.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %14, label %.if.end15_crit_edge [
    i32 0, label %if.then.i25
    i32 3, label %if.then4.i26
  ]

.if.end15_crit_edge:                              ; preds = %11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then.i25:                                      ; preds = %11
  call void @__sanitizer_cov_trace_pc() #9
  %16 = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 1, i32 18
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 4
  %conv.i24 = zext i16 %18 to i32
  br label %sa_path_get_dlid.exit28

if.then4.i26:                                     ; preds = %11
  call void @__sanitizer_cov_trace_pc() #9
  %19 = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 1, i32 18
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  br label %sa_path_get_dlid.exit28

sa_path_get_dlid.exit28:                          ; preds = %if.then4.i26, %if.then.i25
  %retval.0.i27 = phi i32 [ %conv.i24, %if.then.i25 ], [ %21, %if.then4.i26 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i27)
  %tobool6.not = icmp eq i32 %retval.0.i27, 0
  br i1 %tobool6.not, label %sa_path_get_dlid.exit28.if.end15_crit_edge, label %if.then7

sa_path_get_dlid.exit28.if.end15_crit_edge:       ; preds = %sa_path_get_dlid.exit28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then7:                                         ; preds = %sa_path_get_dlid.exit28
  %rate9 = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 1, i32 14
  %22 = ptrtoint ptr %rate9 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rate9, align 8
  %conv = zext i8 %23 to i32
  %call10 = call i32 @ib_rate_to_mbps(i32 noundef %conv) #10
  %24 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %14, label %if.then7.sa_path_get_dlid.exit34_crit_edge [
    i32 0, label %if.then.i31
    i32 3, label %if.then4.i32
  ]

if.then7.sa_path_get_dlid.exit34_crit_edge:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sa_path_get_dlid.exit34

if.then.i31:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %25 = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 1, i32 18
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 4
  %conv.i30 = zext i16 %27 to i32
  br label %sa_path_get_dlid.exit34

if.then4.i32:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %28 = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 1, i32 18
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  br label %sa_path_get_dlid.exit34

sa_path_get_dlid.exit34:                          ; preds = %if.then4.i32, %if.then.i31, %if.then7.sa_path_get_dlid.exit34_crit_edge
  %retval.0.i33 = phi i32 [ %conv.i30, %if.then.i31 ], [ %30, %if.then4.i32 ], [ 0, %if.then7.sa_path_get_dlid.exit34_crit_edge ]
  %sl = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 1, i32 10
  %31 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sl, align 4
  %conv14 = zext i8 %32 to i32
  %call10.frozen = freeze i32 %call10
  %div = sdiv i32 %call10.frozen, 1000
  %33 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %call10.frozen, %33
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i33, i32 noundef %conv14, i32 noundef %div, i32 noundef %rem.decomposed) #7
  br label %if.end15

if.end15:                                         ; preds = %sa_path_get_dlid.exit34, %sa_path_get_dlid.exit28.if.end15_crit_edge, %.if.end15_crit_edge
  call void @seq_putc(ptr noundef %file, i8 noundef zeroext 10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %path) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %gid_buf) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipoib_path_iter_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_path_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_path_iter_read(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ib_rate_to_mbps(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_fs.c", i32 225, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_fs.c", i32 229, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_fs.c", i32 245, i32 34}
!6 = !{ptr @ipoib_root, !7, !"ipoib_root", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_fs.c", i32 44, i32 23}
!8 = !{ptr @ipoib_mcg_fops, !9, !"ipoib_mcg_fops", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_fs.c", i32 134, i32 1}
!10 = !{ptr @ipoib_mcg_sops, !11, !"ipoib_mcg_sops", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_fs.c", i32 127, i32 36}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_fs.c", i32 114, i32 6}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_fs.c", i32 121, i32 17}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_fs.c", i32 121, i32 25}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_fs.c", i32 51, i32 25}
!20 = !{ptr @ipoib_path_fops, !21, !"ipoib_path_fops", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_fs.c", i32 218, i32 1}
!22 = !{ptr @ipoib_path_sops, !23, !"ipoib_path_sops", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_fs.c", i32 211, i32 36}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_fs.c", i32 190, i32 6}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_fs.c", i32 198, i32 7}
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
