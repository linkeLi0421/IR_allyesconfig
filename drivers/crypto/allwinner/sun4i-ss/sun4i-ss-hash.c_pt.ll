; ModuleID = '/llk/IR_all_yes/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c_pt.bc'
source_filename = "../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.sun4i_ss_ctx = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [128 x i8], [132 x i8], %struct.spinlock, [6 x i32], ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.md5_state = type { [4 x i32], [16 x i32], i64 }
%struct.sha1_state = type { [5 x i32], i64, [64 x i8] }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.sun4i_req_ctx = type { i32, i64, [5 x i32], [64 x i8], i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@sun4i_hash.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sun4i_ss\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sun4i_hash\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s %s bc=%llu len=%u mode=%x wl=%u h0=%0x\00", [54 x i8] zeroinitializer }, align 32
@sun4i_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 214, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot process too large request\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_hash._entry_ptr = internal global ptr @sun4i_hash._entry, section ".printk_index", align 4
@sun4i_hash._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 249, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ERROR: Bound error %u %u\0A\00", [38 x i8] zeroinitializer }, align 32
@sun4i_hash._entry_ptr.9 = internal global ptr @sun4i_hash._entry.7, section ".printk_index", align 4
@sun4i_hash.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"We can DMA\0A\00", [20 x i8] zeroinitializer }, align 32
@sun4i_hash._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@sun4i_hash._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 371, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ERROR: hash end timeout %d>%d ctl=%x len=%u\0A\00", [51 x i8] zeroinitializer }, align 32
@sun4i_hash._entry_ptr.14 = internal global ptr @sun4i_hash._entry.12, section ".printk_index", align 4
@sun4i_hash._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sun4i_hash._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 472, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sun4i_hash._entry_ptr.17 = internal global ptr @sun4i_hash._entry.16, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 204, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 214, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 248, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 269, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 369, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private constant [53 x i8] c"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 470, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @sun4i_hash._entry, ptr @sun4i_hash._entry.12, ptr @sun4i_hash._entry.16, ptr @sun4i_hash._entry.7, ptr @sun4i_hash._entry_ptr, ptr @sun4i_hash._entry_ptr.14, ptr @sun4i_hash._entry_ptr.17, ptr @sun4i_hash._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @sun4i_hash._rs, ptr @.str.11, ptr @.str.13, ptr @sun4i_hash._rs.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hash._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hash._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hash._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hash._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hash._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_crainit(ptr nocapture noundef %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %2 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 48)
  %ss = getelementptr i8, ptr %1, i32 512
  %3 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ss, align 128
  %ss2 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %5 = ptrtoint ptr %ss2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ss2, align 4
  %dev = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %4, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !39
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !40
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %9 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 112, ptr %reqsize1.i, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun4i_hash_craexit(ptr nocapture noundef readonly %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ss = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %0 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ss, align 4
  %dev = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #9
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sun4i_hash_init(ptr nocapture noundef %areq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg, align 4
  %4 = call ptr @memset(ptr %__ctx.i, i32 0, i32 112)
  %mode = getelementptr i8, ptr %3, i32 -380
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %7 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %__ctx.i, align 8
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_export_md5(ptr nocapture noundef readonly %areq, ptr nocapture noundef writeonly %out) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %byte_count = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %byte_count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %byte_count, align 8
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 60
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %conv = zext i32 %3 to i64
  %add = add i64 %1, %conv
  %byte_count1 = getelementptr inbounds %struct.md5_state, ptr %out, i32 0, i32 2
  %4 = ptrtoint ptr %byte_count1 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add, ptr %byte_count1, align 8
  %block = getelementptr inbounds %struct.md5_state, ptr %out, i32 0, i32 1
  %buf = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 4
  %5 = load i32, ptr %len, align 4
  %6 = call ptr @memcpy(ptr %block, ptr %buf, i32 %5)
  %7 = load i64, ptr %byte_count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %if.else, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %out, align 4
  %arrayidx.1 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1, align 4
  %arrayidx7.1 = getelementptr [4 x i32], ptr %out, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx7.1, align 4
  %arrayidx.2 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.2, align 4
  %arrayidx7.2 = getelementptr [4 x i32], ptr %out, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx7.2, align 4
  %arrayidx.3 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1732584193, ptr %out, align 8
  %arrayidx11 = getelementptr [4 x i32], ptr %out, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -271733879, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr [4 x i32], ptr %out, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1732584194, ptr %arrayidx13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.preheader
  %.sink = phi i32 [ %18, %for.body.preheader ], [ 271733878, %if.else ]
  %arrayidx7.3 = getelementptr [4 x i32], ptr %out, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %arrayidx7.3, align 4
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_import_md5(ptr nocapture noundef %areq, ptr nocapture noundef readonly %in) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i, align 4
  %4 = call ptr @memset(ptr %__ctx.i, i32 0, i32 112)
  %mode.i = getelementptr i8, ptr %3, i32 -380
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode.i, align 4
  %7 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %__ctx.i, align 8
  %byte_count = getelementptr inbounds %struct.md5_state, ptr %in, i32 0, i32 2
  %8 = ptrtoint ptr %byte_count to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %byte_count, align 8
  %and = and i64 %9, -64
  %byte_count2 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %byte_count2 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %and, ptr %byte_count2, align 8
  %11 = load i64, ptr %byte_count, align 8
  %12 = trunc i64 %11 to i32
  %conv = and i32 %12, 63
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 60
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %len, align 4
  %buf = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 4
  %block = getelementptr inbounds %struct.md5_state, ptr %in, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %buf, ptr %block, i32 %conv)
  %15 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %in, align 4
  %arrayidx9 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx9, align 4
  %arrayidx.1 = getelementptr [4 x i32], ptr %in, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1, align 4
  %arrayidx9.1 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx9.1, align 4
  %arrayidx.2 = getelementptr [4 x i32], ptr %in, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.2, align 4
  %arrayidx9.2 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx9.2, align 4
  %arrayidx.3 = getelementptr [4 x i32], ptr %in, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.3, align 4
  %arrayidx9.3 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx9.3, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_export_sha1(ptr nocapture noundef readonly %areq, ptr nocapture noundef writeonly %out) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %byte_count = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %byte_count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %byte_count, align 8
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 60
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %conv = zext i32 %3 to i64
  %add = add i64 %1, %conv
  %count = getelementptr inbounds %struct.sha1_state, ptr %out, i32 0, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add, ptr %count, align 8
  %buffer = getelementptr inbounds %struct.sha1_state, ptr %out, i32 0, i32 2
  %buf = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 4
  %5 = load i32, ptr %len, align 4
  %6 = call ptr @memcpy(ptr %buffer, ptr %buf, i32 %5)
  %7 = load i64, ptr %byte_count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %if.else, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %out, align 4
  %arrayidx.1 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1, align 4
  %arrayidx5.1 = getelementptr [5 x i32], ptr %out, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx5.1, align 4
  %arrayidx.2 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.2, align 4
  %arrayidx5.2 = getelementptr [5 x i32], ptr %out, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx5.2, align 4
  %arrayidx.3 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.3, align 4
  %arrayidx5.3 = getelementptr [5 x i32], ptr %out, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx5.3, align 4
  %arrayidx.4 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.4, align 4
  %arrayidx5.4 = getelementptr [5 x i32], ptr %out, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx5.4, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1732584193, ptr %out, align 8
  %arrayidx9 = getelementptr [5 x i32], ptr %out, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -271733879, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr [5 x i32], ptr %out, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1732584194, ptr %arrayidx11, align 8
  %arrayidx13 = getelementptr [5 x i32], ptr %out, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 271733878, ptr %arrayidx13, align 4
  %arrayidx15 = getelementptr [5 x i32], ptr %out, i32 0, i32 4
  %27 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1009589776, ptr %arrayidx15, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.preheader
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_import_sha1(ptr nocapture noundef %areq, ptr nocapture noundef readonly %in) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i, align 4
  %4 = call ptr @memset(ptr %__ctx.i, i32 0, i32 112)
  %mode.i = getelementptr i8, ptr %3, i32 -380
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode.i, align 4
  %7 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %__ctx.i, align 8
  %count = getelementptr inbounds %struct.sha1_state, ptr %in, i32 0, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %count, align 8
  %and = and i64 %9, -64
  %byte_count = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %byte_count to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %and, ptr %byte_count, align 8
  %11 = load i64, ptr %count, align 8
  %12 = trunc i64 %11 to i32
  %conv = and i32 %12, 63
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 60
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %len, align 4
  %buf = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 4
  %buffer = getelementptr inbounds %struct.sha1_state, ptr %in, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %buf, ptr %buffer, i32 %conv)
  %15 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %in, align 4
  %arrayidx7 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx7, align 4
  %arrayidx.1 = getelementptr [5 x i32], ptr %in, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1, align 4
  %arrayidx7.1 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx7.1, align 4
  %arrayidx.2 = getelementptr [5 x i32], ptr %in, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.2, align 4
  %arrayidx7.2 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx7.2, align 4
  %arrayidx.3 = getelementptr [5 x i32], ptr %in, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.3, align 4
  %arrayidx7.3 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx7.3, align 4
  %arrayidx.4 = getelementptr [5 x i32], ptr %in, i32 0, i32 4
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.4, align 4
  %arrayidx7.4 = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 3
  %29 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx7.4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_final(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %flags, align 8
  %call1 = tail call fastcc i32 @sun4i_hash(ptr noundef %areq)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun4i_hash(ptr noundef %areq) unnamed_addr #0 align 64 {
entry:
  %bf = alloca [32 x i32], align 4
  %mi = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %bf) #9
  %0 = call ptr @memset(ptr %bf, i32 0, i32 128)
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %1 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tfm.i, align 16
  %__crt_alg = getelementptr i8, ptr %2, i32 12
  %3 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg, align 4
  %ss4 = getelementptr i8, ptr %2, i32 168
  %5 = ptrtoint ptr %ss4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ss4, align 4
  %src = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %7 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mi) #9
  %9 = call ptr @memset(ptr %mi, i32 255, i32 44)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_hash.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun4i_hash, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %6, i32 0, i32 6
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %15, i32 0, i32 8
  %byte_count = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %byte_count to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %byte_count, align 8
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %18 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbytes, align 8
  %20 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %__ctx.i, align 8
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 60
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %hash = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hash, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun4i_hash.__UNIQUE_ID_ddebug246, ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %cra_name.i, i64 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %nbytes11 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %26 = ptrtoint ptr %nbytes11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nbytes11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.not = icmp eq i32 %27, 0
  br i1 %tobool12.not, label %land.lhs.true, label %do.end.if.end23_crit_edge, !prof !42

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %do.end
  %flags = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 8
  %and = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %do.end.if.end23_crit_edge
  %len25 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 60
  %30 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len25, align 4
  %sub = xor i32 %31, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sub)
  %cmp = icmp ugt i32 %27, %sub
  br i1 %cmp, label %do.end35, label %if.end37, !prof !42

do.end35:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %dev36 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %6, i32 0, i32 6
  %32 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end37:                                         ; preds = %if.end23
  %add = add i32 %31, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp40 = icmp ult i32 %add, 64
  br i1 %cmp40, label %land.lhs.true41, label %if.end37.if.end54_crit_edge

if.end37.if.end54_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.lhs.true41:                                  ; preds = %if.end37
  %flags42 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %34 = ptrtoint ptr %flags42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags42, align 8
  %and43 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then45, label %land.lhs.true41.if.end54_crit_edge

land.lhs.true41.if.end54_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then45:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %src, align 4
  %call48 = tail call i32 @sg_nents(ptr noundef %37) #9
  %buf = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 4
  %38 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len25, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %39
  %40 = ptrtoint ptr %nbytes11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nbytes11, align 8
  %call51 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %37, i32 noundef %call48, ptr noundef %add.ptr, i32 noundef %41, i32 noundef 0) #9
  %42 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len25, align 4
  %add53 = add i32 %43, %call51
  store i32 %add53, ptr %len25, align 4
  br label %cleanup

if.end54:                                         ; preds = %land.lhs.true41.if.end54_crit_edge, %if.end37.if.end54_crit_edge
  %slock = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %6, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %slock) #9
  %byte_count55 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %byte_count55 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %byte_count55, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool56.not = icmp eq i64 %45, 0
  br i1 %tobool56.not, label %if.end54.do.body69_crit_edge, label %for.cond.preheader

if.end54.do.body69_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body69

for.cond.preheader:                               ; preds = %if.end54
  %46 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__crt_alg, align 4
  %add.ptr.i.i.i897 = getelementptr i8, ptr %47, i32 -128
  %48 = ptrtoint ptr %add.ptr.i.i.i897 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i.i.i897, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %cmp59899.not = icmp ult i32 %49, 4
  br i1 %cmp59899.not, label %for.cond.preheader.do.body69_crit_edge, label %do.body60.lr.ph

for.cond.preheader.do.body69_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body69

do.body60.lr.ph:                                  ; preds = %for.cond.preheader
  %base65 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %6, i32 0, i32 1
  br label %do.body60

do.body60:                                        ; preds = %do.body60.do.body60_crit_edge, %do.body60.lr.ph
  %i.0900 = phi i32 [ 0, %do.body60.lr.ph ], [ %inc, %do.body60.do.body60_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  tail call void @arm_heavy_mb() #9
  %arrayidx64 = getelementptr %struct.sun4i_req_ctx, ptr %__ctx.i, i32 0, i32 2, i32 %i.0900
  %50 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx64, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = ptrtoint ptr %base65 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base65, align 4
  %add.ptr66 = getelementptr i8, ptr %54, i32 36
  %mul = shl i32 %i.0900, 2
  %add.ptr67 = getelementptr i8, ptr %add.ptr66, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %52) #9, !srcloc !44
  %inc = add nuw nsw i32 %i.0900, 1
  %55 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %__crt_alg, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %56, i32 -128
  %57 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i.i.i, align 128
  %div877 = lshr i32 %58, 2
  %cmp59 = icmp ult i32 %inc, %div877
  br i1 %cmp59, label %do.body60.do.body60_crit_edge, label %do.body60.do.body69_crit_edge

do.body60.do.body69_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body69

do.body60.do.body60_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60

do.body69:                                        ; preds = %do.body60.do.body69_crit_edge, %for.cond.preheader.do.body69_crit_edge, %if.end54.do.body69_crit_edge
  %ivmode.0 = phi i32 [ 1, %if.end54.do.body69_crit_edge ], [ 16385, %for.cond.preheader.do.body69_crit_edge ], [ 16385, %do.body60.do.body69_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %__ctx.i, align 8
  %or73 = or i32 %ivmode.0, %60
  %61 = tail call i32 @llvm.bswap.i32(i32 %or73)
  %base74 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %6, i32 0, i32 1
  %62 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base74, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #9, !srcloc !44
  %flags76 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %64 = ptrtoint ptr %flags76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags76, align 8
  %and77 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.body69.hash_final_crit_edge, label %if.end80

do.body69.hash_final_crit_edge:                   ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_final

if.end80:                                         ; preds = %do.body69
  %and82 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %66 = ptrtoint ptr %nbytes11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nbytes11, align 8
  br i1 %tobool83.not, label %if.then84, label %if.else

if.then84:                                        ; preds = %if.end80
  %68 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len25, align 4
  %add87 = add i32 %69, %67
  %div88870 = and i32 %add87, -64
  %sub91 = sub i32 %div88870, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %sub91)
  %cmp93 = icmp ult i32 %67, %sub91
  %sub95 = sub i32 %67, %sub91
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub95)
  %cmp96 = icmp ugt i32 %sub95, 63
  %or.cond = or i1 %cmp93, %cmp96
  br i1 %or.cond, label %do.end100, label %if.then84.if.end116_crit_edge

if.then84.if.end116_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

do.end100:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  %dev101 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %6, i32 0, i32 6
  %70 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev101, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.8, i32 noundef %sub91, i32 noundef %67) #12
  br label %do.body600

if.else:                                          ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %cmp105 = icmp ult i32 %67, 4
  br i1 %cmp105, label %if.else.if.end116_crit_edge, label %if.else107

if.else.if.end116_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.else107:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len25, align 4
  %add110 = add i32 %73, %67
  %div111876 = and i32 %add110, -4
  %sub114 = sub i32 %div111876, %73
  br label %if.end116

if.end116:                                        ; preds = %if.else107, %if.else.if.end116_crit_edge, %if.then84.if.end116_crit_edge
  %end.0 = phi i32 [ %sub114, %if.else107 ], [ %sub91, %if.then84.if.end116_crit_edge ], [ 0, %if.else.if.end116_crit_edge ]
  %tobool117.not901.not = icmp eq ptr %8, null
  br i1 %tobool117.not901.not, label %if.end116.land.lhs.true124_crit_edge, label %if.end116.while.body_crit_edge

if.end116.while.body_crit_edge:                   ; preds = %if.end116
  br label %while.body

if.end116.land.lhs.true124_crit_edge:             ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true124

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end116.while.body_crit_edge
  %in_sg.0902 = phi ptr [ %call122, %while.body.while.body_crit_edge ], [ %8, %if.end116.while.body_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %in_sg.0902, i32 0, i32 2
  %74 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %length, align 4
  %rem = and i32 %75, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool119.not = icmp eq i32 %rem, 0
  %call122 = tail call ptr @sg_next(ptr noundef nonnull %in_sg.0902) #9
  %tobool117.not = icmp ne ptr %call122, null
  %or.cond878 = and i1 %tobool117.not, %tobool119.not
  br i1 %or.cond878, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %tobool119.not, label %while.end.land.lhs.true124_crit_edge, label %while.end.if.end148_crit_edge

while.end.if.end148_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

while.end.land.lhs.true124_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true124

land.lhs.true124:                                 ; preds = %while.end.land.lhs.true124_crit_edge, %if.end116.land.lhs.true124_crit_edge
  %76 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool126.not = icmp eq i32 %77, 0
  br i1 %tobool126.not, label %land.lhs.true127, label %land.lhs.true124.if.end148_crit_edge

land.lhs.true124.if.end148_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

land.lhs.true127:                                 ; preds = %land.lhs.true124
  %78 = ptrtoint ptr %nbytes11 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nbytes11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool129.not = icmp eq i32 %79, 0
  br i1 %tobool129.not, label %land.lhs.true127.if.end148_crit_edge, label %do.body131

land.lhs.true127.if.end148_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

do.body131:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_hash.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun4i_hash, %if.then143)) #9
          to label %if.end148 [label %if.then143], !srcloc !41

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #11
  %dev144 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %6, i32 0, i32 6
  %80 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev144, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun4i_hash.__UNIQUE_ID_ddebug247, ptr noundef %81, ptr noundef nonnull @.str.10) #9
  br label %if.end148

if.end148:                                        ; preds = %if.then143, %do.body131, %land.lhs.true127.if.end148_crit_edge, %land.lhs.true124.if.end148_crit_edge, %while.end.if.end148_crit_edge
  %82 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %src, align 4
  %call151 = tail call i32 @sg_nents(ptr noundef %83) #9
  call void @sg_miter_start(ptr noundef nonnull %mi, ptr noundef %83, i32 noundef %call151, i32 noundef 5) #9
  %call152 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %mi) #9
  %length157 = getelementptr inbounds %struct.sg_mapping_iter, ptr %mi, i32 0, i32 2
  %buf181 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 4
  %addr = getelementptr inbounds %struct.sg_mapping_iter, ptr %mi, i32 0, i32 1
  br label %do.body153

do.body153:                                       ; preds = %do.cond291.do.body153_crit_edge, %if.end148
  %rx_cnt.0 = phi i32 [ 32, %if.end148 ], [ %rx_cnt.2, %do.cond291.do.body153_crit_edge ]
  %in_i.0 = phi i32 [ 0, %if.end148 ], [ %in_i.4, %do.cond291.do.body153_crit_edge ]
  %i.3 = phi i32 [ 0, %if.end148 ], [ %i.6, %do.cond291.do.body153_crit_edge ]
  %84 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool155.not = icmp eq i32 %85, 0
  br i1 %tobool155.not, label %lor.lhs.false156, label %do.body153.if.then160_crit_edge

do.body153.if.then160_crit_edge:                  ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then160

lor.lhs.false156:                                 ; preds = %do.body153
  %86 = ptrtoint ptr %length157 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %length157, align 4
  %sub158 = sub i32 %87, %in_i.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub158)
  %cmp159 = icmp ult i32 %sub158, 4
  br i1 %cmp159, label %lor.lhs.false156.if.then160_crit_edge, label %lor.lhs.false156.if.end214_crit_edge

lor.lhs.false156.if.end214_crit_edge:             ; preds = %lor.lhs.false156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end214

lor.lhs.false156.if.then160_crit_edge:            ; preds = %lor.lhs.false156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then160

if.then160:                                       ; preds = %lor.lhs.false156.if.then160_crit_edge, %do.body153.if.then160_crit_edge
  %88 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %89)
  %cmp163903 = icmp ult i32 %89, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %end.0, i32 %i.3)
  %cmp165904 = icmp ugt i32 %end.0, %i.3
  %or.cond879905 = select i1 %cmp163903, i1 %cmp165904, i1 false
  br i1 %or.cond879905, label %if.then160.while.body167_crit_edge, label %if.then160.while.end195_crit_edge

if.then160.while.end195_crit_edge:                ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end195

if.then160.while.body167_crit_edge:               ; preds = %if.then160
  br label %while.body167

while.body167:                                    ; preds = %if.end194.while.body167_crit_edge, %if.then160.while.body167_crit_edge
  %90 = phi i32 [ %101, %if.end194.while.body167_crit_edge ], [ %89, %if.then160.while.body167_crit_edge ]
  %i.4907 = phi i32 [ %add188, %if.end194.while.body167_crit_edge ], [ %i.3, %if.then160.while.body167_crit_edge ]
  %in_i.1906 = phi i32 [ %in_i.2, %if.end194.while.body167_crit_edge ], [ %in_i.0, %if.then160.while.body167_crit_edge ]
  %sub168 = sub i32 %end.0, %i.4907
  %sub170 = sub nuw nsw i32 64, %90
  %91 = call i32 @llvm.umin.i32(i32 %sub168, i32 %sub170)
  %92 = ptrtoint ptr %length157 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %length157, align 4
  %sub174 = sub i32 %93, %in_i.1906
  %94 = call i32 @llvm.umin.i32(i32 %sub174, i32 %91)
  %add.ptr184 = getelementptr i8, ptr %buf181, i32 %90
  %95 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %addr, align 4
  %add.ptr185 = getelementptr i8, ptr %96, i32 %in_i.1906
  %97 = call ptr @memcpy(ptr %add.ptr184, ptr %add.ptr185, i32 %94)
  %98 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len25, align 4
  %add187 = add i32 %99, %94
  store i32 %add187, ptr %len25, align 4
  %add188 = add i32 %94, %i.4907
  %add189 = add i32 %94, %in_i.1906
  call void @__sanitizer_cov_trace_cmp4(i32 %add189, i32 %93)
  %cmp191 = icmp eq i32 %add189, %93
  br i1 %cmp191, label %if.then192, label %while.body167.if.end194_crit_edge

while.body167.if.end194_crit_edge:                ; preds = %while.body167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end194

if.then192:                                       ; preds = %while.body167
  call void @__sanitizer_cov_trace_pc() #11
  %call193 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %mi) #9
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %while.body167.if.end194_crit_edge
  %in_i.2 = phi i32 [ 0, %if.then192 ], [ %add189, %while.body167.if.end194_crit_edge ]
  %100 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %101)
  %cmp163 = icmp ult i32 %101, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %end.0, i32 %add188)
  %cmp165 = icmp ugt i32 %end.0, %add188
  %or.cond879 = select i1 %cmp163, i1 %cmp165, i1 false
  br i1 %or.cond879, label %if.end194.while.body167_crit_edge, label %if.end194.while.end195_crit_edge

if.end194.while.end195_crit_edge:                 ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end195

if.end194.while.body167_crit_edge:                ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body167

while.end195:                                     ; preds = %if.end194.while.end195_crit_edge, %if.then160.while.end195_crit_edge
  %in_i.1.lcssa = phi i32 [ %in_i.0, %if.then160.while.end195_crit_edge ], [ %in_i.2, %if.end194.while.end195_crit_edge ]
  %i.4.lcssa = phi i32 [ %i.3, %if.then160.while.end195_crit_edge ], [ %add188, %if.end194.while.end195_crit_edge ]
  %.lcssa896 = phi i32 [ %89, %if.then160.while.end195_crit_edge ], [ %101, %if.end194.while.end195_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.lcssa896)
  %cmp197 = icmp ugt i32 %.lcssa896, 3
  %rem200 = and i32 %.lcssa896, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem200)
  %tobool201.not = icmp eq i32 %rem200, 0
  %or.cond880 = and i1 %cmp197, %tobool201.not
  br i1 %or.cond880, label %if.then202, label %while.end195.if.end214_crit_edge

while.end195.if.end214_crit_edge:                 ; preds = %while.end195
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end214

if.then202:                                       ; preds = %while.end195
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base74, align 4
  %add.ptr204 = getelementptr i8, ptr %103, i32 512
  %div208875 = lshr i32 %.lcssa896, 2
  call void @__raw_writesl(ptr noundef %add.ptr204, ptr noundef %buf181, i32 noundef %div208875) #9
  %104 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len25, align 4
  %conv = zext i32 %105 to i64
  %106 = ptrtoint ptr %byte_count55 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %byte_count55, align 8
  %add211 = add i64 %107, %conv
  store i64 %add211, ptr %byte_count55, align 8
  store i32 0, ptr %len25, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then202, %while.end195.if.end214_crit_edge, %lor.lhs.false156.if.end214_crit_edge
  %in_i.3 = phi i32 [ %in_i.1.lcssa, %if.then202 ], [ %in_i.1.lcssa, %while.end195.if.end214_crit_edge ], [ %in_i.0, %lor.lhs.false156.if.end214_crit_edge ]
  %i.5 = phi i32 [ %i.4.lcssa, %if.then202 ], [ %i.4.lcssa, %while.end195.if.end214_crit_edge ], [ %i.3, %lor.lhs.false156.if.end214_crit_edge ]
  %108 = ptrtoint ptr %length157 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %length157, align 4
  %sub216 = sub i32 %109, %in_i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub216)
  %cmp217 = icmp ugt i32 %sub216, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %end.0, i32 %i.5)
  %cmp220 = icmp ugt i32 %end.0, %i.5
  %or.cond881 = select i1 %cmp217, i1 %cmp220, i1 false
  br i1 %or.cond881, label %if.then222, label %if.end214.do.cond291_crit_edge

if.end214.do.cond291_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond291

if.then222:                                       ; preds = %if.end214
  %110 = ptrtoint ptr %nbytes11 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nbytes11, align 8
  %sub226 = sub i32 %111, %i.5
  %112 = call i32 @llvm.umin.i32(i32 %sub216, i32 %sub226)
  %div236872 = and i32 %sub216, -4
  %113 = call i32 @llvm.umin.i32(i32 %div236872, i32 %112)
  %sub245 = sub i32 %end.0, %i.5
  %div246873 = lshr i32 %sub245, 2
  %114 = call i32 @llvm.umin.i32(i32 %div246873, i32 %rx_cnt.0)
  %div254874 = lshr i32 %113, 2
  %115 = call i32 @llvm.umin.i32(i32 %114, i32 %div254874)
  %116 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base74, align 4
  %add.ptr263 = getelementptr i8, ptr %117, i32 512
  %118 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %addr, align 4
  %add.ptr265 = getelementptr i8, ptr %119, i32 %in_i.3
  call void @__raw_writesl(ptr noundef %add.ptr263, ptr noundef %add.ptr265, i32 noundef %115) #9
  %mul266 = shl nuw i32 %115, 2
  %conv267 = zext i32 %mul266 to i64
  %120 = ptrtoint ptr %byte_count55 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %byte_count55, align 8
  %add269 = add i64 %121, %conv267
  store i64 %add269, ptr %byte_count55, align 8
  %add271 = add i32 %mul266, %i.5
  %add273 = add i32 %mul266, %in_i.3
  %sub274 = sub i32 %rx_cnt.0, %115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub274)
  %tobool275.not = icmp eq i32 %sub274, 0
  br i1 %tobool275.not, label %if.then276, label %if.then222.if.end283_crit_edge

if.then222.if.end283_crit_edge:                   ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end283

if.then276:                                       ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base74, align 4
  %add.ptr278 = getelementptr i8, ptr %123, i32 68
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr278) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !47
  %and282 = and i32 %124, 63
  br label %if.end283

if.end283:                                        ; preds = %if.then276, %if.then222.if.end283_crit_edge
  %rx_cnt.1 = phi i32 [ %sub274, %if.then222.if.end283_crit_edge ], [ %and282, %if.then276 ]
  %125 = ptrtoint ptr %length157 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %length157, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add273, i32 %126)
  %cmp285 = icmp eq i32 %add273, %126
  br i1 %cmp285, label %if.then287, label %if.end283.do.cond291_crit_edge

if.end283.do.cond291_crit_edge:                   ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond291

if.then287:                                       ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #11
  %call288 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %mi) #9
  br label %do.cond291

do.cond291:                                       ; preds = %if.then287, %if.end283.do.cond291_crit_edge, %if.end214.do.cond291_crit_edge
  %rx_cnt.2 = phi i32 [ %rx_cnt.1, %if.then287 ], [ %rx_cnt.1, %if.end283.do.cond291_crit_edge ], [ %rx_cnt.0, %if.end214.do.cond291_crit_edge ]
  %in_i.4 = phi i32 [ 0, %if.then287 ], [ %add273, %if.end283.do.cond291_crit_edge ], [ %in_i.3, %if.end214.do.cond291_crit_edge ]
  %i.6 = phi i32 [ %add271, %if.then287 ], [ %add271, %if.end283.do.cond291_crit_edge ], [ %i.5, %if.end214.do.cond291_crit_edge ]
  %cmp292 = icmp ult i32 %i.6, %end.0
  br i1 %cmp292, label %do.cond291.do.body153_crit_edge, label %do.end294

do.cond291.do.body153_crit_edge:                  ; preds = %do.cond291
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body153

do.end294:                                        ; preds = %do.cond291
  %127 = ptrtoint ptr %nbytes11 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %nbytes11, align 8
  %sub296 = sub i32 %128, %i.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub296)
  %cmp297 = icmp ult i32 %sub296, 64
  br i1 %cmp297, label %while.cond300.preheader, label %do.end294.if.end351_crit_edge

do.end294.if.end351_crit_edge:                    ; preds = %do.end294
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end351

while.cond300.preheader:                          ; preds = %do.end294
  %129 = ptrtoint ptr %nbytes11 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nbytes11, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %i.6)
  %cmp302911 = icmp ugt i32 %130, %i.6
  br i1 %cmp302911, label %while.cond300.preheader.land.lhs.true304_crit_edge, label %while.cond300.preheader.if.end351_crit_edge

while.cond300.preheader.if.end351_crit_edge:      ; preds = %while.cond300.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end351

while.cond300.preheader.land.lhs.true304_crit_edge: ; preds = %while.cond300.preheader
  br label %land.lhs.true304

land.lhs.true304:                                 ; preds = %if.end349.land.lhs.true304_crit_edge, %while.cond300.preheader.land.lhs.true304_crit_edge
  %131 = phi i32 [ %144, %if.end349.land.lhs.true304_crit_edge ], [ %130, %while.cond300.preheader.land.lhs.true304_crit_edge ]
  %i.7913 = phi i32 [ %add342, %if.end349.land.lhs.true304_crit_edge ], [ %i.6, %while.cond300.preheader.land.lhs.true304_crit_edge ]
  %in_i.5912 = phi i32 [ %in_i.6, %if.end349.land.lhs.true304_crit_edge ], [ %in_i.4, %while.cond300.preheader.land.lhs.true304_crit_edge ]
  %132 = ptrtoint ptr %length157 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %length157, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %in_i.5912)
  %cmp306 = icmp ugt i32 %133, %in_i.5912
  br i1 %cmp306, label %land.rhs308, label %land.lhs.true304.if.end351_crit_edge

land.lhs.true304.if.end351_crit_edge:             ; preds = %land.lhs.true304
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end351

land.rhs308:                                      ; preds = %land.lhs.true304
  %134 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %len25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %135)
  %cmp310 = icmp ult i32 %135, 64
  br i1 %cmp310, label %while.body313, label %land.rhs308.if.end351_crit_edge

land.rhs308.if.end351_crit_edge:                  ; preds = %land.rhs308
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end351

while.body313:                                    ; preds = %land.rhs308
  %sub315 = sub i32 %131, %i.7913
  %sub317 = sub nuw nsw i32 64, %135
  %136 = call i32 @llvm.umin.i32(i32 %sub315, i32 %sub317)
  %sub326 = sub i32 %133, %in_i.5912
  %137 = call i32 @llvm.umin.i32(i32 %sub326, i32 %136)
  %add.ptr337 = getelementptr i8, ptr %buf181, i32 %135
  %138 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %addr, align 4
  %add.ptr339 = getelementptr i8, ptr %139, i32 %in_i.5912
  %140 = call ptr @memcpy(ptr %add.ptr337, ptr %add.ptr339, i32 %137)
  %141 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %len25, align 4
  %add341 = add i32 %142, %137
  store i32 %add341, ptr %len25, align 4
  %add342 = add i32 %137, %i.7913
  %add343 = add i32 %137, %in_i.5912
  call void @__sanitizer_cov_trace_cmp4(i32 %add343, i32 %133)
  %cmp345 = icmp eq i32 %add343, %133
  br i1 %cmp345, label %if.then347, label %while.body313.if.end349_crit_edge

while.body313.if.end349_crit_edge:                ; preds = %while.body313
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end349

if.then347:                                       ; preds = %while.body313
  call void @__sanitizer_cov_trace_pc() #11
  %call348 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %mi) #9
  br label %if.end349

if.end349:                                        ; preds = %if.then347, %while.body313.if.end349_crit_edge
  %in_i.6 = phi i32 [ 0, %if.then347 ], [ %add343, %while.body313.if.end349_crit_edge ]
  %143 = ptrtoint ptr %nbytes11 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %nbytes11, align 8
  %cmp302 = icmp ugt i32 %144, %add342
  br i1 %cmp302, label %if.end349.land.lhs.true304_crit_edge, label %if.end349.if.end351_crit_edge

if.end349.if.end351_crit_edge:                    ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end351

if.end349.land.lhs.true304_crit_edge:             ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true304

if.end351:                                        ; preds = %if.end349.if.end351_crit_edge, %land.rhs308.if.end351_crit_edge, %land.lhs.true304.if.end351_crit_edge, %while.cond300.preheader.if.end351_crit_edge, %do.end294.if.end351_crit_edge
  call void @sg_miter_stop(ptr noundef nonnull %mi) #9
  %145 = ptrtoint ptr %flags76 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %flags76, align 8
  %and353 = and i32 %146, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and353)
  %tobool354.not = icmp eq i32 %and353, 0
  br i1 %tobool354.not, label %do.body357, label %if.end351.hash_final_crit_edge

if.end351.hash_final_crit_edge:                   ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_final

do.body357:                                       ; preds = %if.end351
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @arm_heavy_mb() #9
  %147 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %__ctx.i, align 8
  %or362 = or i32 %148, 5
  %149 = call i32 @llvm.bswap.i32(i32 %or362)
  %150 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base74, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %149) #9, !srcloc !44
  br label %do.body365

do.body365:                                       ; preds = %do.body365.do.body365_crit_edge, %do.body357
  %i.8 = phi i32 [ 0, %do.body357 ], [ %inc373, %do.body365.do.body365_crit_edge ]
  %152 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base74, align 4
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #9, !srcloc !46
  %155 = call i32 @llvm.bswap.i32(i32 %154)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !49
  %inc373 = add nuw nsw i32 %i.8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %i.8)
  %cmp375 = icmp ugt i32 %i.8, 98
  %and378 = and i32 %155, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and378)
  %tobool379.not = icmp eq i32 %and378, 0
  %or.cond882 = select i1 %cmp375, i1 true, i1 %tobool379.not
  br i1 %or.cond882, label %do.end381, label %do.body365.do.body365_crit_edge

do.body365.do.body365_crit_edge:                  ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body365

do.end381:                                        ; preds = %do.body365
  br i1 %cmp375, label %do.body391, label %if.end403, !prof !42

do.body391:                                       ; preds = %do.end381
  %call392 = call i32 @___ratelimit(ptr noundef nonnull @sun4i_hash._rs, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call392)
  %tobool393.not = icmp eq i32 %call392, 0
  br i1 %tobool393.not, label %do.body391.do.body600_crit_edge, label %do.end397

do.body391.do.body600_crit_edge:                  ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body600

do.end397:                                        ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #11
  %dev398 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %6, i32 0, i32 6
  %156 = ptrtoint ptr %dev398 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev398, align 4
  %158 = ptrtoint ptr %nbytes11 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %nbytes11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.13, i32 noundef %inc373, i32 noundef 100, i32 noundef %155, i32 noundef %159) #12
  br label %do.body600

if.end403:                                        ; preds = %do.end381
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %160(i32 noundef 214748) #9
  %161 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %__crt_alg, align 4
  %add.ptr.i.i.i889914 = getelementptr i8, ptr %162, i32 -128
  %163 = ptrtoint ptr %add.ptr.i.i.i889914 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %add.ptr.i.i.i889914, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %164)
  %cmp407916.not = icmp ult i32 %164, 4
  br i1 %cmp407916.not, label %if.end403.do.body600_crit_edge, label %if.end403.for.body409_crit_edge

if.end403.for.body409_crit_edge:                  ; preds = %if.end403
  br label %for.body409

if.end403.do.body600_crit_edge:                   ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body600

for.body409:                                      ; preds = %for.body409.for.body409_crit_edge, %if.end403.for.body409_crit_edge
  %i.9917 = phi i32 [ %inc422, %for.body409.for.body409_crit_edge ], [ 0, %if.end403.for.body409_crit_edge ]
  %165 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base74, align 4
  %add.ptr413 = getelementptr i8, ptr %166, i32 76
  %mul414 = shl i32 %i.9917, 2
  %add.ptr415 = getelementptr i8, ptr %add.ptr413, i32 %mul414
  %167 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr415) #9, !srcloc !46
  %168 = call i32 @llvm.bswap.i32(i32 %167)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  %arrayidx420 = getelementptr %struct.sun4i_req_ctx, ptr %__ctx.i, i32 0, i32 2, i32 %i.9917
  %169 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %arrayidx420, align 4
  %inc422 = add nuw nsw i32 %i.9917, 1
  %170 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %__crt_alg, align 4
  %add.ptr.i.i.i889 = getelementptr i8, ptr %171, i32 -128
  %172 = ptrtoint ptr %add.ptr.i.i.i889 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %add.ptr.i.i.i889, align 128
  %div406871 = lshr i32 %173, 2
  %cmp407 = icmp ult i32 %inc422, %div406871
  br i1 %cmp407, label %for.body409.for.body409_crit_edge, label %for.body409.do.body600_crit_edge

for.body409.do.body600_crit_edge:                 ; preds = %for.body409
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body600

for.body409.for.body409_crit_edge:                ; preds = %for.body409
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body409

hash_final:                                       ; preds = %if.end351.hash_final_crit_edge, %do.body69.hash_final_crit_edge
  %stat_req = getelementptr i8, ptr %4, i32 516
  %174 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %stat_req, align 4
  %inc426 = add i32 %175, 1
  store i32 %inc426, ptr %stat_req, align 4
  %176 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %len25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool428.not = icmp eq i32 %177, 0
  br i1 %tobool428.not, label %hash_final.if.end464_crit_edge, label %if.then429

hash_final.if.end464_crit_edge:                   ; preds = %hash_final
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end464

if.then429:                                       ; preds = %hash_final
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %177)
  %tobool432.not = icmp ult i32 %177, 4
  br i1 %tobool432.not, label %if.then429.if.end442_crit_edge, label %if.then433

if.then429.if.end442_crit_edge:                   ; preds = %if.then429
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = and i32 %177, -4
  br label %if.end442

if.then433:                                       ; preds = %if.then429
  call void @__sanitizer_cov_trace_pc() #11
  %div431869 = lshr i32 %177, 2
  %178 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base74, align 4
  %add.ptr435 = getelementptr i8, ptr %179, i32 512
  %buf436 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 4
  call void @__raw_writesl(ptr noundef %add.ptr435, ptr noundef %buf436, i32 noundef %div431869) #9
  %mul438 = and i32 %177, -4
  %conv439 = zext i32 %mul438 to i64
  %180 = ptrtoint ptr %byte_count55 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %byte_count55, align 8
  %add441 = add i64 %181, %conv439
  store i64 %add441, ptr %byte_count55, align 8
  br label %if.end442

if.end442:                                        ; preds = %if.then433, %if.then429.if.end442_crit_edge
  %mul444.pre-phi = phi i32 [ %.pre, %if.then429.if.end442_crit_edge ], [ %mul438, %if.then433 ]
  %182 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %len25, align 4
  %sub445 = sub i32 %183, %mul444.pre-phi
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub445)
  %tobool446.not = icmp eq i32 %sub445, 0
  br i1 %tobool446.not, label %if.end442.if.end464_crit_edge, label %if.then447

if.end442.if.end464_crit_edge:                    ; preds = %if.end442
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end464

if.then447:                                       ; preds = %if.end442
  call void @__sanitizer_cov_trace_pc() #11
  %buf448 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 4
  %add.ptr451 = getelementptr i8, ptr %buf448, i32 %mul444.pre-phi
  %184 = ptrtoint ptr %add.ptr451 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %add.ptr451, align 4
  %186 = call i32 @llvm.bswap.i32(i32 %185) #9
  %mul453.neg = mul i32 %sub445, -8
  %sub455 = add i32 %mul453.neg, 32
  %shr456 = lshr i32 -1, %sub455
  %and459 = and i32 %186, %shr456
  %conv460 = zext i32 %sub445 to i64
  %187 = ptrtoint ptr %byte_count55 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %byte_count55, align 8
  %add462 = add i64 %188, %conv460
  store i64 %add462, ptr %byte_count55, align 8
  br label %if.end464

if.end464:                                        ; preds = %if.then447, %if.end442.if.end464_crit_edge, %hash_final.if.end464_crit_edge
  %wb.0 = phi i32 [ %and459, %if.then447 ], [ 0, %if.end442.if.end464_crit_edge ], [ 0, %hash_final.if.end464_crit_edge ]
  %nbw.0 = phi i32 [ %sub445, %if.then447 ], [ 0, %if.end442.if.end464_crit_edge ], [ 0, %hash_final.if.end464_crit_edge ]
  %mul465 = shl i32 %nbw.0, 3
  %shl = shl i32 128, %mul465
  %or466 = or i32 %shl, %wb.0
  %189 = call i32 @llvm.bswap.i32(i32 %or466)
  %190 = ptrtoint ptr %bf to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %bf, align 4
  %191 = ptrtoint ptr %byte_count55 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %byte_count55, align 8
  %193 = trunc i64 %192 to i32
  %194 = and i32 %193, 63
  %conv473 = sub nuw nsw i32 64, %194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbw.0)
  %tobool474.not = icmp eq i32 %nbw.0, 0
  %spec.select = select i1 %tobool474.not, i32 12, i32 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv473, i32 %spec.select)
  %cmp477 = icmp ult i32 %conv473, %spec.select
  %add480 = sub nuw nsw i32 128, %194
  %spec.select883 = select i1 %cmp477, i32 %add480, i32 %conv473
  %sub482 = sub nsw i32 %spec.select883, %spec.select
  %div483868 = lshr i32 %sub482, 2
  %add484 = add nuw nsw i32 %div483868, 1
  %195 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %__ctx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %196)
  %cmp486 = icmp eq i32 %196, 48
  %shl491 = shl i64 %192, 3
  %197 = call i64 @llvm.bswap.i64(i64 %shl491)
  %.sink = select i1 %cmp486, i64 %shl491, i64 %197
  %198 = getelementptr [32 x i32], ptr %bf, i32 0, i32 %add484
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 %.sink, ptr %198, align 8
  %j.0 = add nuw nsw i32 %div483868, 3
  %200 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %base74, align 4
  %add.ptr501 = getelementptr i8, ptr %201, i32 512
  call void @__raw_writesl(ptr noundef %add.ptr501, ptr noundef nonnull %bf, i32 noundef %j.0) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  call void @arm_heavy_mb() #9
  %202 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %__ctx.i, align 8
  %or508 = or i32 %203, 5
  %204 = call i32 @llvm.bswap.i32(i32 %or508)
  %205 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base74, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %204) #9, !srcloc !44
  br label %do.body511

do.body511:                                       ; preds = %do.body511.do.body511_crit_edge, %if.end464
  %i.10 = phi i32 [ 0, %if.end464 ], [ %inc519, %do.body511.do.body511_crit_edge ]
  %207 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %base74, align 4
  %209 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %208) #9, !srcloc !46
  %210 = call i32 @llvm.bswap.i32(i32 %209)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  %inc519 = add nuw nsw i32 %i.10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %i.10)
  %cmp521 = icmp ugt i32 %i.10, 98
  %and524 = and i32 %210, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and524)
  %tobool525.not = icmp eq i32 %and524, 0
  %or.cond884 = select i1 %cmp521, i1 true, i1 %tobool525.not
  br i1 %or.cond884, label %do.end527, label %do.body511.do.body511_crit_edge

do.body511.do.body511_crit_edge:                  ; preds = %do.body511
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body511

do.end527:                                        ; preds = %do.body511
  br i1 %cmp521, label %do.body537, label %if.end549, !prof !42

do.body537:                                       ; preds = %do.end527
  %call538 = call i32 @___ratelimit(ptr noundef nonnull @sun4i_hash._rs.15, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call538)
  %tobool539.not = icmp eq i32 %call538, 0
  br i1 %tobool539.not, label %do.body537.do.body600_crit_edge, label %do.end543

do.body537.do.body600_crit_edge:                  ; preds = %do.body537
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body600

do.end543:                                        ; preds = %do.body537
  call void @__sanitizer_cov_trace_pc() #11
  %dev544 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %6, i32 0, i32 6
  %211 = ptrtoint ptr %dev544 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev544, align 4
  %213 = ptrtoint ptr %nbytes11 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %nbytes11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %212, ptr noundef nonnull @.str.13, i32 noundef %inc519, i32 noundef 100, i32 noundef %210, i32 noundef %214) #12
  br label %do.body600

if.end549:                                        ; preds = %do.end527
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %215 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %215(i32 noundef 214748) #9
  %216 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %__ctx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %217)
  %cmp551 = icmp eq i32 %217, 48
  %result = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %218 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %base74, align 4
  %add.ptr561 = getelementptr i8, ptr %219, i32 76
  %220 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr561) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %cmp551, label %for.cond554.preheader, label %for.cond580.preheader

for.cond580.preheader:                            ; preds = %if.end549
  call void @__sanitizer_cov_trace_pc() #11
  %221 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %result, align 32
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_storeN_noabort(i32 %223, i32 4)
  store i32 %220, ptr %222, align 1
  %224 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %base74, align 4
  %add.ptr589.1 = getelementptr i8, ptr %225, i32 80
  %226 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr589.1) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !53
  %227 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %result, align 32
  %add.ptr595.1 = getelementptr i8, ptr %228, i32 4
  %229 = ptrtoint ptr %add.ptr595.1 to i32
  call void @__asan_storeN_noabort(i32 %229, i32 4)
  store i32 %226, ptr %add.ptr595.1, align 1
  %230 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %base74, align 4
  %add.ptr589.2 = getelementptr i8, ptr %231, i32 84
  %232 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr589.2) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !53
  %233 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %result, align 32
  %add.ptr595.2 = getelementptr i8, ptr %234, i32 8
  %235 = ptrtoint ptr %add.ptr595.2 to i32
  call void @__asan_storeN_noabort(i32 %235, i32 4)
  store i32 %232, ptr %add.ptr595.2, align 1
  %236 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %base74, align 4
  %add.ptr589.3 = getelementptr i8, ptr %237, i32 88
  %238 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr589.3) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !53
  %239 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %result, align 32
  %add.ptr595.3 = getelementptr i8, ptr %240, i32 12
  %241 = ptrtoint ptr %add.ptr595.3 to i32
  call void @__asan_storeN_noabort(i32 %241, i32 4)
  store i32 %238, ptr %add.ptr595.3, align 1
  br label %do.body600

for.cond554.preheader:                            ; preds = %if.end549
  %242 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %6, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %243, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool567.not = icmp eq i8 %245, 0
  %246 = call i32 @llvm.bswap.i32(i32 %220)
  %.sink926 = select i1 %tobool567.not, i32 %246, i32 %220
  %247 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %result, align 32
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_storeN_noabort(i32 %249, i32 4)
  store i32 %.sink926, ptr %248, align 1
  %250 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %base74, align 4
  %add.ptr563.1 = getelementptr i8, ptr %251, i32 80
  %252 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr563.1) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  %253 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %6, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %254, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool567.not.1 = icmp eq i8 %256, 0
  %257 = call i32 @llvm.bswap.i32(i32 %252)
  %.sink928 = select i1 %tobool567.not.1, i32 %257, i32 %252
  %258 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %result, align 32
  %add.ptr574.1 = getelementptr i8, ptr %259, i32 4
  %260 = ptrtoint ptr %add.ptr574.1 to i32
  call void @__asan_storeN_noabort(i32 %260, i32 4)
  store i32 %.sink928, ptr %add.ptr574.1, align 1
  %261 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %base74, align 4
  %add.ptr563.2 = getelementptr i8, ptr %262, i32 84
  %263 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr563.2) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  %264 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %6, align 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %265, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool567.not.2 = icmp eq i8 %267, 0
  %268 = call i32 @llvm.bswap.i32(i32 %263)
  %.sink930 = select i1 %tobool567.not.2, i32 %268, i32 %263
  %269 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %result, align 32
  %add.ptr574.2 = getelementptr i8, ptr %270, i32 8
  %271 = ptrtoint ptr %add.ptr574.2 to i32
  call void @__asan_storeN_noabort(i32 %271, i32 4)
  store i32 %.sink930, ptr %add.ptr574.2, align 1
  %272 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %base74, align 4
  %add.ptr563.3 = getelementptr i8, ptr %273, i32 88
  %274 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr563.3) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  %275 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %6, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %276, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %tobool567.not.3 = icmp eq i8 %278, 0
  %279 = call i32 @llvm.bswap.i32(i32 %274)
  %.sink932 = select i1 %tobool567.not.3, i32 %279, i32 %274
  %280 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %result, align 32
  %add.ptr574.3 = getelementptr i8, ptr %281, i32 12
  %282 = ptrtoint ptr %add.ptr574.3 to i32
  call void @__asan_storeN_noabort(i32 %282, i32 4)
  store i32 %.sink932, ptr %add.ptr574.3, align 1
  %283 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %base74, align 4
  %add.ptr563.4 = getelementptr i8, ptr %284, i32 92
  %285 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr563.4) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  %286 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %6, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %287, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %tobool567.not.4 = icmp eq i8 %289, 0
  br i1 %tobool567.not.4, label %if.else571.4, label %if.then568.4

if.then568.4:                                     ; preds = %for.cond554.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %290 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %result, align 32
  %add.ptr570.4 = getelementptr i8, ptr %291, i32 16
  %292 = ptrtoint ptr %add.ptr570.4 to i32
  call void @__asan_storeN_noabort(i32 %292, i32 4)
  store i32 %285, ptr %add.ptr570.4, align 1
  br label %do.body600

if.else571.4:                                     ; preds = %for.cond554.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %293 = call i32 @llvm.bswap.i32(i32 %285)
  %294 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %result, align 32
  %add.ptr574.4 = getelementptr i8, ptr %295, i32 16
  %296 = ptrtoint ptr %add.ptr574.4 to i32
  call void @__asan_storeN_noabort(i32 %296, i32 4)
  store i32 %293, ptr %add.ptr574.4, align 1
  br label %do.body600

do.body600:                                       ; preds = %if.else571.4, %if.then568.4, %for.cond580.preheader, %do.end543, %do.body537.do.body600_crit_edge, %for.body409.do.body600_crit_edge, %if.end403.do.body600_crit_edge, %do.end397, %do.body391.do.body600_crit_edge, %do.end100
  %err.0 = phi i32 [ -22, %do.end100 ], [ -5, %do.end397 ], [ -5, %do.body391.do.body600_crit_edge ], [ -5, %do.end543 ], [ -5, %do.body537.do.body600_crit_edge ], [ 0, %if.end403.do.body600_crit_edge ], [ 0, %for.cond580.preheader ], [ 0, %if.else571.4 ], [ 0, %if.then568.4 ], [ 0, %for.body409.do.body600_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !56
  call void @arm_heavy_mb() #9
  %297 = ptrtoint ptr %base74 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %base74, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 0) #9, !srcloc !44
  call void @_raw_spin_unlock_bh(ptr noundef %slock) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body600, %if.then45, %do.end35, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end35 ], [ %err.0, %do.body600 ], [ 0, %if.then45 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mi) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %bf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_update(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %flags, align 8
  %call1 = tail call fastcc i32 @sun4i_hash(ptr noundef %areq)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_finup(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %flags, align 8
  %call1 = tail call fastcc i32 @sun4i_hash(ptr noundef %areq)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_digest(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i, align 4
  %4 = call ptr @memset(ptr %__ctx.i, i32 0, i32 112)
  %mode.i = getelementptr i8, ptr %3, i32 -380
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode.i, align 4
  %7 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %__ctx.i, align 8
  %flags = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %flags, align 8
  %call2 = tail call fastcc i32 @sun4i_hash(ptr noundef %areq)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !24, !25, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c", i32 204, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sun4i_hash.__UNIQUE_ID_ddebug246, !1, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c", i32 214, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sun4i_hash._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @sun4i_hash._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c", i32 248, i32 4}
!14 = !{ptr @sun4i_hash._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sun4i_hash._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c", i32 269, i32 3}
!18 = !{ptr @sun4i_hash.__UNIQUE_ID_ddebug247, !17, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c", i32 369, i32 3}
!21 = !{ptr @sun4i_hash._rs, !20, !"_rs", i1 false, i1 false}
!22 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sun4i_hash._entry.12, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @sun4i_hash._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @sun4i_hash._rs.15, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c", i32 470, i32 3}
!27 = !{ptr @sun4i_hash._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sun4i_hash._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2148258633}
!39 = !{i64 743456, i64 743481, i64 743503, i64 743519, i64 743531, i64 743551, i64 743575, i64 743591, i64 743603}
!40 = !{i64 2148258821}
!41 = !{i64 2148741029, i64 2148741034, i64 2148741047, i64 2148741091, i64 2148741125, i64 2148741146}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 2154620364}
!44 = !{i64 4641043}
!45 = !{i64 2154620820}
!46 = !{i64 4641461}
!47 = !{i64 2154643765}
!48 = !{i64 2154647401}
!49 = !{i64 2154648138}
!50 = !{i64 2154651773}
!51 = !{i64 2154655022}
!52 = !{i64 2154655759}
!53 = !{i64 2154659918}
!54 = !{i8 0, i8 2}
!55 = !{i64 2154659403}
!56 = !{i64 2154660133}
