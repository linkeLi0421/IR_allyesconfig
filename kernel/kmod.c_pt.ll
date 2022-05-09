; ModuleID = '/llk/IR_all_yes/kernel/kmod.c_pt.bc'
source_filename = "../kernel/kmod.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__request_module\22, \22a\22\09"
module asm "\09.weak\09__crc___request_module\09\09\09\09"
module asm "\09.long\09__crc___request_module\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___request_module:\09\09\09\09\09"
module asm "\09.asciz \09\22__request_module\22\09\09\09\09\09"
module asm "__kstrtabns___request_module:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.__va_list = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.subprocess_info = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@modprobe_path = dso_local global { [256 x i8], [64 x i8] } { [256 x i8] c"/sbin/modprobe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] zeroinitializer }, align 32
@__request_module.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kernel/kmod.c\00", [18 x i8] zeroinitializer }, align 32
@kmod_concurrent_max = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 50 }, [28 x i8] zeroinitializer }, align 32
@__request_module._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.__request_module = private unnamed_addr constant [17 x i8] c"__request_module\00", align 1
@__request_module._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @__func__.__request_module, ptr @.str, i32 154, ptr null, ptr null }, align 1
@.str.2 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\014request_module: kmod_concurrent_max (%u) close to 0 (max_modprobes: %u), for module %s, throttling...\00", [56 x i8] zeroinitializer }, align 32
@__request_module._entry_ptr = internal global ptr @__request_module._entry, section ".printk_index", align 4
@kmod_wq = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @kmod_wq, i64 44), ptr getelementptr (i8, ptr @kmod_wq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@__request_module._rs.3 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__request_module._entry.4 = internal constant %struct.pi_entry { ptr @.str.5, ptr @__func__.__request_module, ptr @.str, i32 160, ptr null, ptr null }, align 1
@.str.5 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\014request_module: modprobe %s cannot be processed, kmod busy with %d threads for more than %d seconds now\00", [54 x i8] zeroinitializer }, align 32
@__request_module._entry_ptr.6 = internal global ptr @__request_module._entry.4, section ".printk_index", align 4
@__request_module._rs.7 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__request_module._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @__func__.__request_module, ptr @.str, i32 163, ptr null, ptr null }, align 1
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014request_module: sigkill sent for modprobe %s, giving up\00", [38 x i8] zeroinitializer }, align 32
@__request_module._entry_ptr.10 = internal global ptr @__request_module._entry.8, section ".printk_index", align 4
@__kstrtab___request_module = external dso_local constant [0 x i8], align 1
@__kstrtabns___request_module = external dso_local constant [0 x i8], align 1
@__ksymtab___request_module = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__request_module to i32), ptr @__kstrtab___request_module, ptr @__kstrtabns___request_module }, section "___ksymtab+__request_module", align 4
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kmod_wq.lock\00", [19 x i8] zeroinitializer }, align 32
@__tracepoint_module_request = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/module.h\00", [34 x i8] zeroinitializer }, align 32
@trace_module_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@call_modprobe.envp = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOME=/\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TERM=linux\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PATH=/sbin:/usr/sbin:/bin:/usr/bin\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-q\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"--\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"modprobe_path\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 61, i32 6 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 136, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"kmod_concurrent_max\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 43, i32 17 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 152, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [8 x i8] c"kmod_wq\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 159, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 163, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 44, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant [33 x i8] c"../include/trace/events/module.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 107, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 108, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [5 x i8] c"envp\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 72, i32 15 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 73, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 74, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 75, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 88, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [17 x i8] c"../kernel/kmod.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 89, i32 12 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab___request_module, ptr @__request_module._entry, ptr @__request_module._entry.4, ptr @__request_module._entry.8, ptr @__request_module._entry_ptr, ptr @__request_module._entry_ptr.10, ptr @__request_module._entry_ptr.6, ptr @modprobe_path, ptr @.str, ptr @kmod_concurrent_max, ptr @.str.1, ptr @.str.2, ptr @kmod_wq, ptr @.str.5, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @call_modprobe.envp, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modprobe_path to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmod_concurrent_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmod_wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @call_modprobe.envp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__request_module(i1 noundef zeroext %wait, ptr nocapture noundef readonly %fmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %module_name = alloca [60 x i8], align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %module_name) #11
  %1 = call ptr @memset(ptr %module_name, i32 255, i32 60)
  br i1 %wait, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %call = tail call zeroext i1 @current_is_async() #11
  br i1 %call, label %land.rhs4, label %land.rhs.if.end31_crit_edge

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.rhs4:                                        ; preds = %land.rhs
  %.b167 = load i1, ptr @__request_module.__already_done, align 1
  br i1 %.b167, label %land.rhs4.if.end31_crit_edge, label %if.then, !prof !60

land.rhs4.if.end31_crit_edge:                     ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then:                                          ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__request_module.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef null) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs4.if.end31_crit_edge, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %2 = load i8, ptr @modprobe_path, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool39.not = icmp eq i8 %2, 0
  br i1 %tobool39.not, label %if.end31.cleanup145_crit_edge, label %if.end41

if.end31.cleanup145_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup145

if.end41:                                         ; preds = %if.end31
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call42 = call i32 @vsnprintf(ptr noundef nonnull %module_name, i32 noundef 60, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %call42)
  %cmp = icmp ugt i32 %call42, 59
  br i1 %cmp, label %if.end41.cleanup145_crit_edge, label %if.end44

if.end41.cleanup145_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup145

if.end44:                                         ; preds = %if.end41
  %call46 = call i32 @security_kernel_module_request(ptr noundef nonnull %module_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.cleanup145_crit_edge

if.end44.cleanup145_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup145

if.end49:                                         ; preds = %if.end44
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kmod_concurrent_max, i32 noundef 4) #11
  %4 = load volatile i32, ptr @kmod_concurrent_max, align 4
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, %if.end49
  %c.0.i.i = phi i32 [ %4, %if.end49 ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge ]
  %sub.i.i = add i32 %c.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then52, label %do.cond3.i.i, !prof !61

do.cond3.i.i:                                     ; preds = %do.body1.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !62
  call void @llvm.prefetch.p0(ptr nonnull @kmod_concurrent_max, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond3.i.i
  %5 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @kmod_concurrent_max, ptr nonnull @kmod_concurrent_max, i32 %c.0.i.i, i32 %sub.i.i, ptr nonnull elementtype(i32) @kmod_concurrent_max) #11, !srcloc !63
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %5, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !64
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %c.0.i.i
  br i1 %cmp.not.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.if.end139_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, !prof !60

arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i.i

arch_atomic_cmpxchg.exit.i.i.i.if.end139_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.then52:                                        ; preds = %do.body1.i.i
  %call53 = call i32 @___ratelimit(ptr noundef nonnull @__request_module._rs, ptr noundef nonnull @__func__.__request_module) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.if.end63_crit_edge, label %do.end58

if.then52.if.end63_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

do.end58:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i169 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kmod_concurrent_max, i32 noundef 4) #11
  %6 = load volatile i32, ptr @kmod_concurrent_max, align 4
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %6, i32 noundef 50, ptr noundef nonnull %module_name) #14
  br label %if.end63

if.end63:                                         ; preds = %do.end58, %if.then52.if.end63_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 157) #11
  %call.i.i170 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kmod_concurrent_max, i32 noundef 4) #11
  %7 = load volatile i32, ptr @kmod_concurrent_max, align 4
  br label %do.body1.i.i174

do.body1.i.i174:                                  ; preds = %arch_atomic_cmpxchg.exit.i.i.i181.do.body1.i.i174_crit_edge, %if.end63
  %c.0.i.i171 = phi i32 [ %7, %if.end63 ], [ %asmresult3.i.i.i.i.i179, %arch_atomic_cmpxchg.exit.i.i.i181.do.body1.i.i174_crit_edge ]
  %sub.i.i172 = add i32 %c.0.i.i171, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i172)
  %cmp.i.i173 = icmp slt i32 %sub.i.i172, 0
  br i1 %cmp.i.i173, label %do.body1.i.i174.if.then83_crit_edge, label %do.cond3.i.i175, !prof !61

do.body1.i.i174.if.then83_crit_edge:              ; preds = %do.body1.i.i174
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83

do.cond3.i.i175:                                  ; preds = %do.body1.i.i174
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !62
  call void @llvm.prefetch.p0(ptr nonnull @kmod_concurrent_max, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i178

do.body.i.i.i.i.i178:                             ; preds = %do.body.i.i.i.i.i178.do.body.i.i.i.i.i178_crit_edge, %do.cond3.i.i175
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @kmod_concurrent_max, ptr nonnull @kmod_concurrent_max, i32 %c.0.i.i171, i32 %sub.i.i172, ptr nonnull elementtype(i32) @kmod_concurrent_max) #11, !srcloc !63
  %asmresult.i.i.i.i.i176 = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i177 = icmp eq i32 %asmresult.i.i.i.i.i176, 0
  br i1 %tobool.not.i.i.i.i.i177, label %arch_atomic_cmpxchg.exit.i.i.i181, label %do.body.i.i.i.i.i178.do.body.i.i.i.i.i178_crit_edge

do.body.i.i.i.i.i178.do.body.i.i.i.i.i178_crit_edge: ; preds = %do.body.i.i.i.i.i178
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i178

arch_atomic_cmpxchg.exit.i.i.i181:                ; preds = %do.body.i.i.i.i.i178
  %asmresult3.i.i.i.i.i179 = extractvalue { i32, i32 } %8, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !64
  %cmp.not.i.i.i180 = icmp eq i32 %asmresult3.i.i.i.i.i179, %c.0.i.i171
  br i1 %cmp.not.i.i.i180, label %atomic_dec_if_positive.exit182, label %arch_atomic_cmpxchg.exit.i.i.i181.do.body1.i.i174_crit_edge, !prof !60

arch_atomic_cmpxchg.exit.i.i.i181.do.body1.i.i174_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i181
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i.i174

atomic_dec_if_positive.exit182:                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i181
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i172)
  %cmp71 = icmp sgt i32 %sub.i.i172, -1
  br i1 %cmp71, label %atomic_dec_if_positive.exit182.if.end139_crit_edge, label %atomic_dec_if_positive.exit182.if.then83_crit_edge

atomic_dec_if_positive.exit182.if.then83_crit_edge: ; preds = %atomic_dec_if_positive.exit182
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83

atomic_dec_if_positive.exit182.if.end139_crit_edge: ; preds = %atomic_dec_if_positive.exit182
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.then83:                                        ; preds = %atomic_dec_if_positive.exit182.if.then83_crit_edge, %do.body1.i.i174.if.then83_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then83
  %__ret84.0 = phi i32 [ 500, %if.then83 ], [ %call109, %cleanup ]
  %call85 = call i32 @prepare_to_wait_event(ptr noundef nonnull @kmod_wq, ptr noundef nonnull %__wq_entry, i32 noundef 258) #11
  %call.i.i183 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kmod_concurrent_max, i32 noundef 4) #11
  %10 = load volatile i32, ptr @kmod_concurrent_max, align 4
  br label %do.body1.i.i187

do.body1.i.i187:                                  ; preds = %arch_atomic_cmpxchg.exit.i.i.i194.do.body1.i.i187_crit_edge, %for.cond
  %c.0.i.i184 = phi i32 [ %10, %for.cond ], [ %asmresult3.i.i.i.i.i192, %arch_atomic_cmpxchg.exit.i.i.i194.do.body1.i.i187_crit_edge ]
  %sub.i.i185 = add i32 %c.0.i.i184, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i185)
  %cmp.i.i186 = icmp slt i32 %sub.i.i185, 0
  br i1 %cmp.i.i186, label %do.body1.i.i187.atomic_dec_if_positive.exit195_crit_edge, label %do.cond3.i.i188, !prof !61

do.body1.i.i187.atomic_dec_if_positive.exit195_crit_edge: ; preds = %do.body1.i.i187
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_dec_if_positive.exit195

do.cond3.i.i188:                                  ; preds = %do.body1.i.i187
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !62
  call void @llvm.prefetch.p0(ptr nonnull @kmod_concurrent_max, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i191

do.body.i.i.i.i.i191:                             ; preds = %do.body.i.i.i.i.i191.do.body.i.i.i.i.i191_crit_edge, %do.cond3.i.i188
  %11 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @kmod_concurrent_max, ptr nonnull @kmod_concurrent_max, i32 %c.0.i.i184, i32 %sub.i.i185, ptr nonnull elementtype(i32) @kmod_concurrent_max) #11, !srcloc !63
  %asmresult.i.i.i.i.i189 = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i.i.i190 = icmp eq i32 %asmresult.i.i.i.i.i189, 0
  br i1 %tobool.not.i.i.i.i.i190, label %arch_atomic_cmpxchg.exit.i.i.i194, label %do.body.i.i.i.i.i191.do.body.i.i.i.i.i191_crit_edge

do.body.i.i.i.i.i191.do.body.i.i.i.i.i191_crit_edge: ; preds = %do.body.i.i.i.i.i191
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i191

arch_atomic_cmpxchg.exit.i.i.i194:                ; preds = %do.body.i.i.i.i.i191
  %asmresult3.i.i.i.i.i192 = extractvalue { i32, i32 } %11, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !64
  %cmp.not.i.i.i193 = icmp eq i32 %asmresult3.i.i.i.i.i192, %c.0.i.i184
  br i1 %cmp.not.i.i.i193, label %arch_atomic_cmpxchg.exit.i.i.i194.atomic_dec_if_positive.exit195_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i194.do.body1.i.i187_crit_edge, !prof !60

arch_atomic_cmpxchg.exit.i.i.i194.do.body1.i.i187_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i194
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i.i187

arch_atomic_cmpxchg.exit.i.i.i194.atomic_dec_if_positive.exit195_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i194
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_dec_if_positive.exit195

atomic_dec_if_positive.exit195:                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i194.atomic_dec_if_positive.exit195_crit_edge, %do.body1.i.i187.atomic_dec_if_positive.exit195_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i185)
  %cmp88 = icmp sgt i32 %sub.i.i185, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret84.0)
  %tobool92.not = icmp eq i32 %__ret84.0, 0
  %12 = select i1 %cmp88, i1 %tobool92.not, i1 false
  %__ret84.1 = select i1 %12, i32 1, i32 %__ret84.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret84.1)
  %tobool98.not = icmp eq i32 %__ret84.1, 0
  %13 = select i1 %cmp88, i1 true, i1 %tobool98.not
  br i1 %13, label %for.end, label %if.end105

if.end105:                                        ; preds = %atomic_dec_if_positive.exit195
  %tobool106.not = icmp eq i32 %call85, 0
  br i1 %tobool106.not, label %cleanup, label %if.end105.if.end111_crit_edge

if.end105.if.end111_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

cleanup:                                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  %call109 = call i32 @schedule_timeout(i32 noundef %__ret84.1) #11
  br label %for.cond

for.end:                                          ; preds = %atomic_dec_if_positive.exit195
  call void @__sanitizer_cov_trace_pc() #13
  call void @finish_wait(ptr noundef nonnull @kmod_wq, ptr noundef nonnull %__wq_entry) #11
  br label %if.end111

if.end111:                                        ; preds = %for.end, %if.end105.if.end111_crit_edge
  %__ret84.2200 = phi i32 [ %__ret84.1, %for.end ], [ %call85, %if.end105.if.end111_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  %14 = zext i32 %__ret84.2200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__ret84.2200, label %if.end111.if.end139_crit_edge [
    i32 0, label %if.then114
    i32 -512, label %if.then126
  ]

if.end111.if.end139_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.then114:                                       ; preds = %if.end111
  %call115 = call i32 @___ratelimit(ptr noundef nonnull @__request_module._rs.3, ptr noundef nonnull @__func__.__request_module) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then114.cleanup145_crit_edge, label %do.end120

if.then114.cleanup145_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup145

do.end120:                                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %module_name, i32 noundef 50, i32 noundef 5) #14
  br label %cleanup145

if.then126:                                       ; preds = %if.end111
  %call127 = call i32 @___ratelimit(ptr noundef nonnull @__request_module._rs.7, ptr noundef nonnull @__func__.__request_module) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then126.cleanup145_crit_edge, label %do.end132

if.then126.cleanup145_crit_edge:                  ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup145

do.end132:                                        ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #13
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %module_name) #14
  br label %cleanup145

if.end139:                                        ; preds = %if.end111.if.end139_crit_edge, %atomic_dec_if_positive.exit182.if.end139_crit_edge, %arch_atomic_cmpxchg.exit.i.i.i.if.end139_crit_edge
  %15 = call ptr @llvm.returnaddress(i32 0)
  %16 = ptrtoint ptr %15 to i32
  call fastcc void @trace_module_request(ptr noundef nonnull %module_name, i1 noundef zeroext %wait, i32 noundef %16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 20) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end139.call_modprobe.exit_crit_edge, label %if.end.i

if.end139.call_modprobe.exit_crit_edge:           ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %call_modprobe.exit

if.end.i:                                         ; preds = %if.end139
  %call1.i = call noalias ptr @kstrdup(ptr noundef nonnull %module_name, i32 noundef 3264) #11
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.free_argv.i_crit_edge, label %if.end4.i

if.end.i.free_argv.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_argv.i

if.end4.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @modprobe_path, ptr %call7.i.i, align 8
  %arrayidx5.i = getelementptr ptr, ptr %call7.i.i, i32 1
  %19 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.18, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr ptr, ptr %call7.i.i, i32 2
  %20 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.19, ptr %arrayidx6.i, align 8
  %arrayidx7.i = getelementptr ptr, ptr %call7.i.i, i32 3
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call1.i, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr ptr, ptr %call7.i.i, i32 4
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx8.i, align 8
  %call9.i = call ptr @call_usermodehelper_setup(ptr noundef nonnull @modprobe_path, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @call_modprobe.envp, i32 noundef 3264, ptr noundef null, ptr noundef nonnull @free_modprobe_argv, ptr noundef null) #11
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %free_module_name.i, label %if.end12.i

if.end12.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = select i1 %wait, i32 6, i32 5
  %call13.i = call i32 @call_usermodehelper_exec(ptr noundef nonnull %call9.i, i32 noundef %or.i) #11
  br label %call_modprobe.exit

free_module_name.i:                               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call1.i) #11
  br label %free_argv.i

free_argv.i:                                      ; preds = %free_module_name.i, %if.end.i.free_argv.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %call_modprobe.exit

call_modprobe.exit:                               ; preds = %free_argv.i, %if.end12.i, %if.end139.call_modprobe.exit_crit_edge
  %retval.0.i = phi i32 [ %call13.i, %if.end12.i ], [ -12, %if.end139.call_modprobe.exit_crit_edge ], [ -12, %free_argv.i ]
  %call.i.i196 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kmod_concurrent_max, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @kmod_concurrent_max, i32 1, i32 3, i32 1) #11
  %23 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @kmod_concurrent_max, ptr nonnull @kmod_concurrent_max, i32 1, ptr nonnull elementtype(i32) @kmod_concurrent_max) #11, !srcloc !65
  call void @__wake_up(ptr noundef nonnull @kmod_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %cleanup145

cleanup145:                                       ; preds = %call_modprobe.exit, %do.end132, %if.then126.cleanup145_crit_edge, %do.end120, %if.then114.cleanup145_crit_edge, %if.end44.cleanup145_crit_edge, %if.end41.cleanup145_crit_edge, %if.end31.cleanup145_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %call_modprobe.exit ], [ -2, %if.end31.cleanup145_crit_edge ], [ -36, %if.end41.cleanup145_crit_edge ], [ %call46, %if.end44.cleanup145_crit_edge ], [ -62, %do.end120 ], [ -62, %if.then114.cleanup145_crit_edge ], [ -512, %do.end132 ], [ -512, %if.then126.cleanup145_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %module_name) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @current_is_async() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_kernel_module_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_module_request(ptr noundef %name, i1 noundef zeroext %wait, i32 noundef %ip) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_request, i32 0, i32 1), ptr blockaddress(@trace_module_request, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !66

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !60

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !67
  %call43 = tail call i32 @__traceiter_module_request(ptr noundef null, ptr noundef %name, i1 noundef zeroext %wait, i32 noundef %ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !68
  %13 = tail call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !60

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_request, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_module_request.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_module_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 127, ptr noundef nonnull @.str.13) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !70
  %31 = tail call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_module_request(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @call_usermodehelper_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_modprobe_argv(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %argv = getelementptr inbounds %struct.subprocess_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %argv, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %3) #11
  %4 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %argv, align 4
  tail call void @kfree(ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper_exec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !26, !28, !29, !31, !32, !33, !34, !36, !37, !39, !41, !43, !45, !47}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @modprobe_path, !1, !"modprobe_path", i1 false, i1 false}
!1 = !{!"../kernel/kmod.c", i32 61, i32 6}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../kernel/kmod.c", i32 136, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../kernel/kmod.c", i32 152, i32 3}
!7 = !{ptr @__request_module._rs, !6, !"_rs", i1 false, i1 false}
!8 = !{ptr @__func__.__request_module, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__request_module._entry, !6, !"_entry", i1 false, i1 false}
!11 = !{ptr @__request_module._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__request_module._rs.3, !13, !"_rs", i1 false, i1 false}
!13 = !{!"../kernel/kmod.c", i32 159, i32 4}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__request_module._entry.4, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @__request_module._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__request_module._rs.7, !18, !"_rs", i1 false, i1 false}
!18 = !{!"../kernel/kmod.c", i32 163, i32 4}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__request_module._entry.8, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @__request_module._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab___request_module, !23, !"__ksymtab___request_module", i1 false, i1 false}
!23 = !{!"../kernel/kmod.c", i32 177, i32 1}
!24 = !{ptr @kmod_concurrent_max, !25, !"kmod_concurrent_max", i1 false, i1 false}
!25 = !{!"../kernel/kmod.c", i32 43, i32 17}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/kmod.c", i32 44, i32 8}
!28 = !{ptr @kmod_wq, !27, !"kmod_wq", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/trace/events/module.h", i32 107, i32 1}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!33 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/kmod.c", i32 73, i32 3}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/kmod.c", i32 74, i32 3}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/kmod.c", i32 75, i32 3}
!43 = !{ptr @call_modprobe.envp, !44, !"envp", i1 false, i1 false}
!44 = !{!"../kernel/kmod.c", i32 72, i32 15}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/kmod.c", i32 88, i32 12}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/kmod.c", i32 89, i32 12}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2148445033}
!63 = !{i64 827719, i64 827743, i64 827764, i64 827781, i64 827798}
!64 = !{i64 2148445259}
!65 = !{i64 2148343186, i64 2148343212, i64 2148343241, i64 2148343275, i64 2148343306, i64 2148343329}
!66 = !{i64 2148956563, i64 2148956568, i64 2148956581, i64 2148956625, i64 2148956659, i64 2148956680}
!67 = !{i64 2155561757}
!68 = !{i64 2155561976}
!69 = !{i64 2149367904}
!70 = !{i64 2149368940}
