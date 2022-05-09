; ModuleID = '/llk/IR_all_yes/net/caif/cfmuxl.c_pt.bc'
source_filename = "../net/caif/cfmuxl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cflayer = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.cfmuxl = type { %struct.cflayer, %struct.list_head, %struct.list_head, [8 x ptr], [8 x ptr], %struct.spinlock, %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cfsrvl = type { %struct.cflayer, i8, i8, i8, i8, ptr, %struct.dev_info, ptr, ptr, %struct.callback_head }
%struct.dev_info = type { ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.caif_payload_info = type { ptr, i16, i16 }

@cfmuxl_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&this->transmit_lock\00", [43 x i8] zeroinitializer }, align 32
@cfmuxl_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&this->receive_lock\00", [44 x i8] zeroinitializer }, align 32
@cfmuxl_remove_dnlayer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013caif:%s(): caif:Assert detected:'%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cfmuxl_remove_dnlayer\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/caif/cfmuxl.c\00", [46 x i8] zeroinitializer }, align 32
@cfmuxl_remove_dnlayer._entry_ptr = internal global ptr @cfmuxl_remove_dnlayer._entry, section ".printk_index", align 4
@cfmuxl_remove_uplayer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.6, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014caif:%s(): Trying to remove control layer\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cfmuxl_remove_uplayer\00", [42 x i8] zeroinitializer }, align 32
@cfmuxl_remove_uplayer._entry_ptr = internal global ptr @cfmuxl_remove_uplayer._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_from_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@cfmuxl_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.6, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013caif:%s(): erroneous Caif Packet\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cfmuxl_receive\00", [17 x i8] zeroinitializer }, align 32
@cfmuxl_receive._entry_ptr = internal global ptr @cfmuxl_receive._entry, section ".printk_index", align 4
@cfmuxl_receive.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.12, ptr @.str.6, ptr @.str.14, i8 0, i8 47, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"caif\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Received data on unknown link ID = %d (0x%x) up == NULL\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"caif:%s(): Received data on unknown link ID = %d (0x%x) up == NULL\00", [61 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@get_up.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@cfmuxl_transmit.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.20, ptr @.str.6, ptr @.str.21, i8 0, i8 56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cfmuxl_transmit\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Send data on unknown phy ID = %d (0x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"caif:%s(): Send data on unknown phy ID = %d (0x%x)\0A\00", [44 x i8] zeroinitializer }, align 32
@get_dn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cfmuxl_ctrlcmd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 59, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 60, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 117, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 158, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 78, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 181, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 189, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 695, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 127, i32 7 }
@___asan_gen_.87 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 723, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [21 x i8] c"../net/caif/cfmuxl.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 224, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @cfmuxl_receive._entry, ptr @cfmuxl_receive._entry_ptr, ptr @cfmuxl_remove_dnlayer._entry, ptr @cfmuxl_remove_dnlayer._entry_ptr, ptr @cfmuxl_remove_uplayer._entry, ptr @cfmuxl_remove_uplayer._entry_ptr, ptr @cfmuxl_create.__key, ptr @.str, ptr @cfmuxl_create.__key.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfmuxl_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfmuxl_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfmuxl_remove_dnlayer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfmuxl_remove_uplayer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfmuxl_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfmuxl_create() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 220) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %receive = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %receive to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cfmuxl_receive, ptr %receive, align 8
  %transmit = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %transmit to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cfmuxl_transmit, ptr %transmit, align 4
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cfmuxl_ctrlcmd, ptr %ctrlcmd, align 8
  %srvl_list = getelementptr inbounds %struct.cfmuxl, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %srvl_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %srvl_list, ptr %srvl_list, align 4
  %prev.i = getelementptr inbounds %struct.cfmuxl, ptr %call7.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %srvl_list, ptr %prev.i, align 8
  %frml_list = getelementptr inbounds %struct.cfmuxl, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %frml_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %frml_list, ptr %frml_list, align 4
  %prev.i20 = getelementptr inbounds %struct.cfmuxl, ptr %call7.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %frml_list, ptr %prev.i20, align 8
  %transmit_lock = getelementptr inbounds %struct.cfmuxl, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %transmit_lock, ptr noundef nonnull @.str, ptr noundef nonnull @cfmuxl_create.__key, i16 noundef signext 3) #7
  %receive_lock = getelementptr inbounds %struct.cfmuxl, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %receive_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @cfmuxl_create.__key.1, i16 noundef signext 3) #7
  %name = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1836414976, ptr %name, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfmuxl_receive(ptr noundef %layr, ptr noundef %pkt) #0 align 64 {
entry:
  %id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id) #7
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %id, align 1, !annotation !62
  %call = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %id, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #11
  call void @cfpkt_destroy(ptr noundef %pkt) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !63
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 1
  %conv.i = zext i8 %6 to i32
  %rem.i = and i32 %conv.i, 7
  %arrayidx.i = getelementptr %struct.cfmuxl, ptr %layr, i32 0, i32 3, i32 %rem.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i31 = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool.not.i32 = icmp eq i32 %call.i31, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i33, label %rcu_read_lock.exit.do.end7.i_crit_edge

rcu_read_lock.exit.do.end7.i_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

land.lhs.true.i33:                                ; preds = %rcu_read_lock.exit
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i33.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i33.do.end7.i_crit_edge:            ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i33
  %.b70.i = load i1, ptr @get_up.__warned, align 1
  br i1 %.b70.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i34

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

if.then.i34:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @get_up.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 127, ptr noundef nonnull @.str.18) #7
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i34, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i33.do.end7.i_crit_edge, %rcu_read_lock.exit.do.end7.i_crit_edge
  %cmp.i = icmp eq ptr %8, null
  br i1 %cmp.i, label %do.end7.i.if.then14.i_crit_edge, label %lor.lhs.false.i

do.end7.i.if.then14.i_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i

lor.lhs.false.i:                                  ; preds = %do.end7.i
  %id10.i = getelementptr inbounds %struct.cflayer, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %id10.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i)
  %cmp12.not.i = icmp eq i32 %10, %conv.i
  br i1 %cmp12.not.i, label %lor.lhs.false.i.lor.lhs.false.i45_crit_edge, label %lor.lhs.false.i.if.then14.i_crit_edge

lor.lhs.false.i.if.then14.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i

lor.lhs.false.i.lor.lhs.false.i45_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i45

if.then14.i:                                      ; preds = %lor.lhs.false.i.if.then14.i_crit_edge, %do.end7.i.if.then14.i_crit_edge
  %receive_lock.i = getelementptr inbounds %struct.cfmuxl, ptr %layr, i32 0, i32 6
  call void @_raw_spin_lock_bh(ptr noundef %receive_lock.i) #7
  %srvl_list.i = getelementptr inbounds %struct.cfmuxl, ptr %layr, i32 0, i32 1
  %call.i.i = call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then14.i.for.cond.i.i.preheader_crit_edge

if.then14.i.for.cond.i.i.preheader_crit_edge:     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.preheader

land.lhs.true.i.i:                                ; preds = %if.then14.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.preheader

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b27.i.i = load i1, ptr @get_from_id.__warned, align 1
  br i1 %.b27.i.i, label %land.lhs.true3.i.i.for.cond.i.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @get_from_id.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @.str.10) #7
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %if.then.i.i, %land.lhs.true3.i.i.for.cond.i.i.preheader_crit_edge, %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge, %if.then14.i.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %srvl_list.i, %for.cond.i.i.preheader ]
  %11 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load volatile ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %srvl_list.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.get_up.exit_crit_edge, label %for.body.i.i

for.cond.i.i.get_up.exit_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_up.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %id9.i.i = getelementptr i8, ptr %.pn.i.i, i32 24
  %12 = ptrtoint ptr %id9.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id9.i.i, align 4
  %cmp10.i.i = icmp eq i32 %13, %conv.i
  br i1 %cmp10.i.i, label %cleanup.split.loop.exit28.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

cleanup.split.loop.exit28.i.i:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lyr.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  br label %get_up.exit

get_up.exit:                                      ; preds = %cleanup.split.loop.exit28.i.i, %for.cond.i.i.get_up.exit_crit_edge
  %retval.0.i.i = phi ptr [ %lyr.0.le.i.i, %cleanup.split.loop.exit28.i.i ], [ null, %for.cond.i.i.get_up.exit_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %retval.0.i.i, ptr %arrayidx.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %receive_lock.i) #7
  %cmp4 = icmp eq ptr %retval.0.i.i, null
  br i1 %cmp4, label %do.body7, label %get_up.exit.lor.lhs.false.i45_crit_edge

get_up.exit.lor.lhs.false.i45_crit_edge:          ; preds = %get_up.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i45

do.body7:                                         ; preds = %get_up.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cfmuxl_receive.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cfmuxl_receive, %do.end18)) #7
          to label %if.then13 [label %do.end18], !srcloc !65

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %id, align 1
  %conv14 = zext i8 %16 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cfmuxl_receive.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12, i32 noundef %conv14, i32 noundef %conv14) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then13, %do.body7
  call void @cfpkt_destroy(ptr noundef %pkt) #7
  %call.i35 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i35, label %do.end18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

do.end18.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %do.end18
  %call1.i36 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.19) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %do.end18.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  %17 = call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i.i.i.i42 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

lor.lhs.false.i45:                                ; preds = %get_up.exit.lor.lhs.false.i45_crit_edge, %lor.lhs.false.i.lor.lhs.false.i45_crit_edge
  %up.0.i66 = phi ptr [ %retval.0.i.i, %get_up.exit.lor.lhs.false.i45_crit_edge ], [ %8, %lor.lhs.false.i.lor.lhs.false.i45_crit_edge ]
  %21 = ptrtoint ptr %up.0.i66 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %up.0.i66, align 4
  %cmp1.i = icmp eq ptr %22, null
  br i1 %cmp1.i, label %lor.lhs.false.i45.cfsrvl_get.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i45.cfsrvl_get.exit_crit_edge:      ; preds = %lor.lhs.false.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfsrvl_get.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i45
  %hold.i = getelementptr inbounds %struct.cfsrvl, ptr %up.0.i66, i32 0, i32 7
  %23 = ptrtoint ptr %hold.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hold.i, align 4
  %cmp3.i = icmp eq ptr %24, null
  br i1 %cmp3.i, label %lor.lhs.false2.i.cfsrvl_get.exit_crit_edge, label %if.end.i

lor.lhs.false2.i.cfsrvl_get.exit_crit_edge:       ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfsrvl_get.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %24(ptr noundef nonnull %22) #7
  br label %cfsrvl_get.exit

cfsrvl_get.exit:                                  ; preds = %if.end.i, %lor.lhs.false2.i.cfsrvl_get.exit_crit_edge, %lor.lhs.false.i45.cfsrvl_get.exit_crit_edge
  %call.i46 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i46, label %cfsrvl_get.exit.lor.lhs.false.i59_crit_edge, label %land.lhs.true.i49

cfsrvl_get.exit.lor.lhs.false.i59_crit_edge:      ; preds = %cfsrvl_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i59

land.lhs.true.i49:                                ; preds = %cfsrvl_get.exit
  %call1.i47 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47)
  %tobool.not.i48 = icmp eq i32 %call1.i47, 0
  br i1 %tobool.not.i48, label %land.lhs.true.i49.lor.lhs.false.i59_crit_edge, label %land.lhs.true2.i51

land.lhs.true.i49.lor.lhs.false.i59_crit_edge:    ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i59

land.lhs.true2.i51:                               ; preds = %land.lhs.true.i49
  %.b4.i50 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i50, label %land.lhs.true2.i51.lor.lhs.false.i59_crit_edge, label %if.then.i52

land.lhs.true2.i51.lor.lhs.false.i59_crit_edge:   ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i59

if.then.i52:                                      ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.19) #7
  br label %lor.lhs.false.i59

lor.lhs.false.i59:                                ; preds = %if.then.i52, %land.lhs.true2.i51.lor.lhs.false.i59_crit_edge, %land.lhs.true.i49.lor.lhs.false.i59_crit_edge, %cfsrvl_get.exit.lor.lhs.false.i59_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  %25 = call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i.i.i.i53 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i53 to ptr
  %preempt_count.i.i.i.i54 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i54, align 4
  %sub.i.i.i55 = add i32 %28, -1
  store volatile i32 %sub.i.i.i55, ptr %preempt_count.i.i.i.i54, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %receive = getelementptr inbounds %struct.cflayer, ptr %up.0.i66, i32 0, i32 3
  %29 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %receive, align 4
  %call20 = call i32 %30(ptr noundef nonnull %up.0.i66, ptr noundef %pkt) #7
  %31 = ptrtoint ptr %up.0.i66 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %up.0.i66, align 4
  %cmp1.i58 = icmp eq ptr %32, null
  br i1 %cmp1.i58, label %lor.lhs.false.i59.cleanup_crit_edge, label %lor.lhs.false2.i62

lor.lhs.false.i59.cleanup_crit_edge:              ; preds = %lor.lhs.false.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false2.i62:                               ; preds = %lor.lhs.false.i59
  %hold.i60 = getelementptr inbounds %struct.cfsrvl, ptr %up.0.i66, i32 0, i32 7
  %33 = ptrtoint ptr %hold.i60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hold.i60, align 4
  %cmp3.i61 = icmp eq ptr %34, null
  br i1 %cmp3.i61, label %lor.lhs.false2.i62.cleanup_crit_edge, label %if.end.i63

lor.lhs.false2.i62.cleanup_crit_edge:             ; preds = %lor.lhs.false2.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i63:                                       ; preds = %lor.lhs.false2.i62
  call void @__sanitizer_cov_trace_pc() #9
  %put.i = getelementptr inbounds %struct.cfsrvl, ptr %up.0.i66, i32 0, i32 8
  %35 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %put.i, align 4
  call void %36(ptr noundef nonnull %32) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i63, %lor.lhs.false2.i62.cleanup_crit_edge, %lor.lhs.false.i59.cleanup_crit_edge, %rcu_read_unlock.exit, %do.end
  %retval.0 = phi i32 [ -71, %do.end ], [ 0, %rcu_read_unlock.exit ], [ %call20, %lor.lhs.false.i59.cleanup_crit_edge ], [ %call20, %lor.lhs.false2.i62.cleanup_crit_edge ], [ %call20, %if.end.i63 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfmuxl_transmit(ptr noundef %layr, ptr noundef %pkt) #0 align 64 {
entry:
  %linkid = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %linkid) #7
  %0 = ptrtoint ptr %linkid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %linkid, align 1, !annotation !62
  %call = tail call ptr @cfpkt_info(ptr noundef %pkt) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !67

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/caif/cfmuxl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #7, !srcloc !68
  unreachable

do.end9:                                          ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !63
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %do.end9.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end9.rcu_read_lock.exit_crit_edge:             ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end9
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end9.rcu_read_lock.exit_crit_edge
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %id.i = getelementptr inbounds %struct.dev_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 4
  %rem.i = and i32 %8, 7
  %arrayidx.i = getelementptr %struct.cfmuxl, ptr %layr, i32 0, i32 4, i32 %rem.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i52 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54, label %rcu_read_lock.exit.do.end7.i_crit_edge

rcu_read_lock.exit.do.end7.i_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

land.lhs.true.i54:                                ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i54.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i54.do.end7.i_crit_edge:            ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i54
  %.b69.i = load i1, ptr @get_dn.__warned, align 1
  br i1 %.b69.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i55

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

if.then.i55:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @get_dn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 141, ptr noundef nonnull @.str.18) #7
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i55, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i54.do.end7.i_crit_edge, %rcu_read_lock.exit.do.end7.i_crit_edge
  %cmp.i = icmp eq ptr %10, null
  br i1 %cmp.i, label %do.end7.i.if.then12.i_crit_edge, label %lor.lhs.false.i

do.end7.i.if.then12.i_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

lor.lhs.false.i:                                  ; preds = %do.end7.i
  %id9.i = getelementptr inbounds %struct.cflayer, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %id9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id9.i, align 4
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp11.not.i = icmp eq i32 %12, %14
  br i1 %cmp11.not.i, label %lor.lhs.false.i.if.end31_crit_edge, label %lor.lhs.false.i.if.then12.i_crit_edge

lor.lhs.false.i.if.then12.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

lor.lhs.false.i.if.end31_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then12.i:                                      ; preds = %lor.lhs.false.i.if.then12.i_crit_edge, %do.end7.i.if.then12.i_crit_edge
  %transmit_lock.i = getelementptr inbounds %struct.cfmuxl, ptr %layr, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %transmit_lock.i) #7
  %frml_list.i = getelementptr inbounds %struct.cfmuxl, ptr %layr, i32 0, i32 2
  %15 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then12.i.do.end.i.i_crit_edge

if.then12.i.do.end.i.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then12.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b27.i.i = load i1, ptr @get_from_id.__warned, align 1
  br i1 %.b27.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @get_from_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @.str.10) #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.then12.i.do.end.i.i_crit_edge
  %conv.i.i = and i32 %16, 65535
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %do.end.i.i
  %.pn.in.i.i = phi ptr [ %frml_list.i, %do.end.i.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %17 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i.i = load volatile ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %frml_list.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.get_dn.exit_crit_edge, label %for.body.i.i

for.cond.i.i.get_dn.exit_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_dn.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %id9.i.i = getelementptr i8, ptr %.pn.i.i, i32 24
  %18 = ptrtoint ptr %id9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id9.i.i, align 4
  %cmp10.i.i = icmp eq i32 %19, %conv.i.i
  br i1 %cmp10.i.i, label %cleanup.split.loop.exit28.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

cleanup.split.loop.exit28.i.i:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lyr.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  br label %get_dn.exit

get_dn.exit:                                      ; preds = %cleanup.split.loop.exit28.i.i, %for.cond.i.i.get_dn.exit_crit_edge
  %retval.0.i.i = phi ptr [ %lyr.0.le.i.i, %cleanup.split.loop.exit28.i.i ], [ null, %for.cond.i.i.get_dn.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %retval.0.i.i, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %transmit_lock.i) #7
  %cmp = icmp eq ptr %retval.0.i.i, null
  br i1 %cmp, label %do.body12, label %get_dn.exit.if.end31_crit_edge

get_dn.exit.if.end31_crit_edge:                   ; preds = %get_dn.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.body12:                                        ; preds = %get_dn.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cfmuxl_transmit.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cfmuxl_transmit, %do.end30)) #7
          to label %if.then24 [label %do.end30], !srcloc !65

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 4
  %id = getelementptr inbounds %struct.dev_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cfmuxl_transmit.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %24, i32 noundef %24) #7
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.body12
  %call.i56 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i56, label %do.end30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i59

do.end30.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i59:                                ; preds = %do.end30
  %call1.i57 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i61

land.lhs.true.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i59
  %.b4.i60 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i60, label %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, label %if.then.i62

land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i62:                                      ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.19) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i62, %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, %do.end30.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  %25 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i.i.i.i63 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i63 to ptr
  %preempt_count.i.i.i.i64 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i64, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i64, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  tail call void @cfpkt_destroy(ptr noundef %pkt) #7
  br label %cleanup

if.end31:                                         ; preds = %get_dn.exit.if.end31_crit_edge, %lor.lhs.false.i.if.end31_crit_edge
  %dn.0.i78 = phi ptr [ %retval.0.i.i, %get_dn.exit.if.end31_crit_edge ], [ %10, %lor.lhs.false.i.if.end31_crit_edge ]
  %hdr_len = getelementptr inbounds %struct.caif_payload_info, ptr %call, i32 0, i32 1
  %29 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hdr_len, align 4
  %add = add i16 %30, 1
  store i16 %add, ptr %hdr_len, align 4
  %channel_id = getelementptr inbounds %struct.caif_payload_info, ptr %call, i32 0, i32 2
  %31 = ptrtoint ptr %channel_id to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %channel_id, align 2
  %conv33 = trunc i16 %32 to i8
  %33 = ptrtoint ptr %linkid to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv33, ptr %linkid, align 1
  %call34 = call i32 @cfpkt_add_head(ptr noundef %pkt, ptr noundef nonnull %linkid, i16 noundef zeroext 1) #7
  call void @cffrml_hold(ptr noundef nonnull %dn.0.i78) #7
  %call.i65 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i65, label %if.end31.rcu_read_unlock.exit75_crit_edge, label %land.lhs.true.i68

if.end31.rcu_read_unlock.exit75_crit_edge:        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit75

land.lhs.true.i68:                                ; preds = %if.end31
  %call1.i66 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67 = icmp eq i32 %call1.i66, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i68.rcu_read_unlock.exit75_crit_edge, label %land.lhs.true2.i70

land.lhs.true.i68.rcu_read_unlock.exit75_crit_edge: ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit75

land.lhs.true2.i70:                               ; preds = %land.lhs.true.i68
  %.b4.i69 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69, label %land.lhs.true2.i70.rcu_read_unlock.exit75_crit_edge, label %if.then.i71

land.lhs.true2.i70.rcu_read_unlock.exit75_crit_edge: ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit75

if.then.i71:                                      ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.19) #7
  br label %rcu_read_unlock.exit75

rcu_read_unlock.exit75:                           ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit75_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit75_crit_edge, %if.end31.rcu_read_unlock.exit75_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  %34 = call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i.i.i.i72 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i74 = add i32 %37, -1
  store volatile i32 %sub.i.i.i74, ptr %preempt_count.i.i.i.i73, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %transmit = getelementptr inbounds %struct.cflayer, ptr %dn.0.i78, i32 0, i32 4
  %38 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %transmit, align 4
  %call35 = call i32 %39(ptr noundef nonnull %dn.0.i78, ptr noundef %pkt) #7
  call void @cffrml_put(ptr noundef nonnull %dn.0.i78) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit75, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -107, %rcu_read_unlock.exit ], [ %call35, %rcu_read_unlock.exit75 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %linkid) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfmuxl_ctrlcmd(ptr noundef %layr, i32 noundef %ctrl, i32 noundef %phyid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !63
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b48 = load i1, ptr @cfmuxl_ctrlcmd.__warned, align 1
  br i1 %.b48, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cfmuxl_ctrlcmd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 253, ptr noundef nonnull @.str.10) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %srvl_list = getelementptr inbounds %struct.cfmuxl, ptr %layr, i32 0, i32 1
  %4 = ptrtoint ptr %srvl_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn58 = load volatile ptr, ptr %srvl_list, align 4
  %cmp.not60 = icmp eq ptr %.pn58, %srvl_list
  br i1 %cmp.not60, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn61 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn58, %do.end.for.body_crit_edge ]
  %layer.062 = getelementptr i8, ptr %.pn61, i32 -8
  %call13 = tail call zeroext i1 @cfsrvl_phyid_match(ptr noundef %layer.062, i32 noundef %phyid) #7
  br i1 %call13, label %land.lhs.true14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true14:                                  ; preds = %for.body
  %ctrlcmd = getelementptr i8, ptr %.pn61, i32 16
  %5 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrlcmd, align 4
  %tobool15.not = icmp eq ptr %6, null
  br i1 %tobool15.not, label %land.lhs.true14.for.inc_crit_edge, label %if.then16

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then16:                                        ; preds = %land.lhs.true14
  %7 = zext i32 %ctrl to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ctrl, label %if.then16.if.end24_crit_edge [
    i32 8, label %if.then16.land.lhs.true19_crit_edge
    i32 2, label %if.then16.land.lhs.true19_crit_edge63
  ]

if.then16.land.lhs.true19_crit_edge63:            ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true19

if.then16.land.lhs.true19_crit_edge:              ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true19

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

land.lhs.true19:                                  ; preds = %if.then16.land.lhs.true19_crit_edge, %if.then16.land.lhs.true19_crit_edge63
  %id = getelementptr i8, ptr %.pn61, i32 24
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp20.not = icmp eq i32 %9, 0
  br i1 %cmp20.not, label %land.lhs.true19.if.end24_crit_edge, label %if.then21

land.lhs.true19.if.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %9 to i8
  %call23 = tail call ptr @cfmuxl_remove_uplayer(ptr noundef %layr, i8 noundef zeroext %conv)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %land.lhs.true19.if.end24_crit_edge, %if.then16.if.end24_crit_edge
  %10 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrlcmd, align 4
  tail call void %11(ptr noundef %layer.062, i32 noundef %ctrl, i32 noundef %phyid) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %land.lhs.true14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %.pn61 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load volatile ptr, ptr %.pn61, align 4
  %cmp.not = icmp eq ptr %.pn, %srvl_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i49, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i52

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i52:                                ; preds = %for.end
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.19) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  %13 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i.i.i.i56 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i56 to ptr
  %preempt_count.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i57, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i57, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfmuxl_set_dnlayer(ptr noundef %layr, ptr noundef %dn, i8 noundef zeroext %phyid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %transmit_lock = getelementptr inbounds %struct.cfmuxl, ptr %layr, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %transmit_lock) #7
  %node = getelementptr inbounds %struct.cflayer, ptr %dn, i32 0, i32 2
  %frml_list = getelementptr inbounds %struct.cfmuxl, ptr %layr, i32 0, i32 2
  %0 = ptrtoint ptr %frml_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frml_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %frml_list, ptr noundef %1) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_rcu.exit_crit_edge

entry.list_add_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %node, align 4
  %prev2.i.i = getelementptr inbounds %struct.cflayer, ptr %dn, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %frml_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !70
  %4 = ptrtoint ptr %frml_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %node, ptr %frml_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %node, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_add_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %transmit_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfmuxl_set_uplayer(ptr noundef %layr, ptr noundef %up, i8 noundef zeroext %linkid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %receive_lock = getelementptr inbounds %struct.cfmuxl, ptr %layr, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %receive_lock) #7
  %srvl_list = getelementptr inbounds %struct.cfmuxl, ptr %layr, i32 0, i32 1
  %call.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b27.i = load i1, ptr @get_from_id.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @get_from_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @.str.10) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %conv.i = zext i8 %linkid to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %srvl_list, %do.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %srvl_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %id9.i = getelementptr i8, ptr %.pn.i, i32 24
  %1 = ptrtoint ptr %id9.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id9.i, align 4
  %cmp10.i = icmp eq i32 %2, %conv.i
  br i1 %cmp10.i, label %get_from_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

get_from_id.exit:                                 ; preds = %for.body.i
  %lyr.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %cmp.not = icmp eq ptr %lyr.0.le.i, null
  br i1 %cmp.not, label %get_from_id.exit.if.end_crit_edge, label %if.then

get_from_id.exit.if.end_crit_edge:                ; preds = %get_from_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %get_from_id.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_rcu.exit_crit_edge

if.then.list_del_rcu.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_rcu.exit, %get_from_id.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %node2 = getelementptr inbounds %struct.cflayer, ptr %up, i32 0, i32 2
  %10 = ptrtoint ptr %srvl_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %srvl_list, align 4
  %call.i.i9 = tail call zeroext i1 @__list_add_valid(ptr noundef %node2, ptr noundef %srvl_list, ptr noundef %11) #7
  br i1 %call.i.i9, label %if.end.i.i10, label %if.end.list_add_rcu.exit_crit_edge

if.end.list_add_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_rcu.exit

if.end.i.i10:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %node2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %node2, align 4
  %prev2.i.i = getelementptr inbounds %struct.cflayer, ptr %up, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %srvl_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !70
  %14 = ptrtoint ptr %srvl_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %node2, ptr %srvl_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node2, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i10, %if.end.list_add_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %receive_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfmuxl_remove_dnlayer(ptr noundef %layr, i8 noundef zeroext %phyid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %phyid, 7
  %rem = zext i8 %0 to i32
  %transmit_lock = getelementptr inbounds %struct.cfmuxl, ptr %layr, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %transmit_lock) #7
  %arrayidx = getelementptr %struct.cfmuxl, ptr %layr, i32 0, i32 4, i32 %rem
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr null, ptr %arrayidx, align 4
  %frml_list = getelementptr inbounds %struct.cfmuxl, ptr %layr, i32 0, i32 2
  %call.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b27.i = load i1, ptr @get_from_id.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @get_from_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @.str.10) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %conv.i = zext i8 %phyid to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %frml_list, %do.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %frml_list
  br i1 %cmp.not.i, label %for.cond.i.out_crit_edge, label %for.body.i

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.i:                                       ; preds = %for.cond.i
  %id9.i = getelementptr i8, ptr %.pn.i, i32 24
  %3 = ptrtoint ptr %id9.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id9.i, align 4
  %cmp10.i = icmp eq i32 %4, %conv.i
  br i1 %cmp10.i, label %get_from_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

get_from_id.exit:                                 ; preds = %for.body.i
  %lyr.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %cmp = icmp eq ptr %lyr.0.le.i, null
  br i1 %cmp, label %get_from_id.exit.out_crit_edge, label %if.end

get_from_id.exit.out_crit_edge:                   ; preds = %get_from_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %get_from_id.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_rcu.exit_crit_edge

if.end.list_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %out

out:                                              ; preds = %list_del_rcu.exit, %get_from_id.exit.out_crit_edge, %for.cond.i.out_crit_edge
  %retval.0.i63 = phi ptr [ %lyr.0.le.i, %list_del_rcu.exit ], [ null, %get_from_id.exit.out_crit_edge ], [ null, %for.cond.i.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %transmit_lock) #7
  ret ptr %retval.0.i63
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfmuxl_remove_uplayer(ptr noundef %layr, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %id, 7
  %rem = zext i8 %0 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %id)
  %cmp = icmp eq i8 %id, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %receive_lock = getelementptr inbounds %struct.cfmuxl, ptr %layr, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %receive_lock) #7
  %srvl_list = getelementptr inbounds %struct.cfmuxl, ptr %layr, i32 0, i32 1
  %call.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b27.i = load i1, ptr @get_from_id.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @get_from_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @.str.10) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %conv.i = zext i8 %id to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %srvl_list, %do.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %srvl_list
  br i1 %cmp.not.i, label %for.cond.i.out_crit_edge, label %for.body.i

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.i:                                       ; preds = %for.cond.i
  %id9.i = getelementptr i8, ptr %.pn.i, i32 24
  %2 = ptrtoint ptr %id9.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id9.i, align 4
  %cmp10.i = icmp eq i32 %3, %conv.i
  br i1 %cmp10.i, label %get_from_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

get_from_id.exit:                                 ; preds = %for.body.i
  %lyr.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %cmp6 = icmp eq ptr %lyr.0.le.i, null
  br i1 %cmp6, label %get_from_id.exit.out_crit_edge, label %do.body15

get_from_id.exit.out_crit_edge:                   ; preds = %get_from_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body15:                                        ; preds = %get_from_id.exit
  %arrayidx = getelementptr %struct.cfmuxl, ptr %layr, i32 0, i32 3, i32 %rem
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %arrayidx, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.body15.list_del_rcu.exit_crit_edge

do.body15.list_del_rcu.exit_crit_edge:            ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %do.body15.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %out

out:                                              ; preds = %list_del_rcu.exit, %get_from_id.exit.out_crit_edge, %for.cond.i.out_crit_edge
  %retval.0.i34 = phi ptr [ null, %get_from_id.exit.out_crit_edge ], [ %lyr.0.le.i, %list_del_rcu.exit ], [ null, %for.cond.i.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %receive_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %retval.0.i34, %out ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_extr_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfpkt_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_add_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cffrml_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cffrml_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfsrvl_phyid_match(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !50}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @cfmuxl_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/caif/cfmuxl.c", i32 59, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @cfmuxl_create.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../net/caif/cfmuxl.c", i32 60, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/caif/cfmuxl.c", i32 61, i32 49}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/caif/cfmuxl.c", i32 117, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cfmuxl_remove_dnlayer._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @cfmuxl_remove_dnlayer._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/caif/cfmuxl.c", i32 158, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cfmuxl_remove_uplayer._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @cfmuxl_remove_uplayer._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/caif/cfmuxl.c", i32 78, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/caif/cfmuxl.c", i32 181, i32 3}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cfmuxl_receive._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @cfmuxl_receive._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/caif/cfmuxl.c", i32 189, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cfmuxl_receive.__UNIQUE_ID_ddebug351, !29, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!32 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/caif/cfmuxl.c", i32 127, i32 7}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/caif/cfmuxl.c", i32 224, i32 3}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cfmuxl_transmit.__UNIQUE_ID_ddebug352, !44, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!47 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/caif/cfmuxl.c", i32 141, i32 7}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/caif/cfmuxl.c", i32 253, i32 2}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
!63 = !{i64 2149921819}
!64 = !{i64 2155968174}
!65 = !{i64 2148306389, i64 2148306394, i64 2148306407, i64 2148306451, i64 2148306485, i64 2148306506}
!66 = !{i64 2149922085}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{i64 2155995669, i64 2155996151, i64 2155995706, i64 2155995762, i64 2155995796, i64 2155995820, i64 2155995861, i64 2155995882, i64 2155995910, i64 2155995944}
!69 = !{i64 2155980586}
!70 = !{i64 2151424331}
