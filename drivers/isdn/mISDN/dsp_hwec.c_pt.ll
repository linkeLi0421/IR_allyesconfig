; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/dsp_hwec.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/dsp_hwec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mISDN_dsp_element = type { ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mISDN_dsp_element_arg = type { ptr, ptr, ptr }
%struct.mISDN_ctrl_req = type { i32, i32, i32, i32 }
%struct.dsp = type { %struct.list_head, %struct.mISDNchannel, ptr, [64 x i8], i32, %struct.dsp_echo, i32, i32, i32, %struct.dsp_tone, %struct.dsp_dtmf, i32, i32, %struct.work_struct, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [32768 x i8], [32768 x i8], i32, i32, i32, i32, %struct.dsp_features, i32, i32, i32, i32, i32, i32, i32, i32, [18 x i32], [1024 x i32], i32, [9 x i8], [9 x i8], i32, i32, [16 x i8], [9 x i8], i32, %struct.dsp_pipeline }
%struct.list_head = type { ptr, ptr }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dsp_echo = type { i32, i32 }
%struct.dsp_tone = type { i32, i32, i32, ptr, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dsp_dtmf = type { i32, i32, i32, i32, i32, [102 x i16], i8, i8, i32, [16 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.dsp_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsp_pipeline = type { %struct.rwlock_t, %struct.list_head, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@dsp_hwec_p = internal global { %struct.mISDN_dsp_element, [36 x i8] } { %struct.mISDN_dsp_element { ptr @.str.20, ptr null, ptr null, ptr null, ptr null, i32 1, ptr @args }, [36 x i8] zeroinitializer }, align 32
@dsp_hwec = dso_local global { ptr, [28 x i8] } { ptr @dsp_hwec_p, [28 x i8] zeroinitializer }, align 32
@dsp_hwec_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: failed to enable hwec: dsp is NULL\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsp_hwec_enable\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/isdn/mISDN/dsp_hwec.c\00", [34 x i8] zeroinitializer }, align 32
@dsp_hwec_enable._entry_ptr = internal global ptr @dsp_hwec_enable._entry, section ".printk_index", align 4
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"=\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"deftaps\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@dsp_hwec_enable._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: enabling hwec with deftaps=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@dsp_hwec_enable._entry_ptr.9 = internal global ptr @dsp_hwec_enable._entry.7, section ".printk_index", align 4
@dsp_hwec_enable._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: CONTROL_CHANNEL failed\0A\00", [34 x i8] zeroinitializer }, align 32
@dsp_hwec_enable._entry_ptr.12 = internal global ptr @dsp_hwec_enable._entry.10, section ".printk_index", align 4
@dsp_hwec_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: failed to disable hwec: dsp is NULL\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsp_hwec_disable\00", [47 x i8] zeroinitializer }, align 32
@dsp_hwec_disable._entry_ptr = internal global ptr @dsp_hwec_disable._entry, section ".printk_index", align 4
@dsp_hwec_disable._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: disabling hwec\0A\00", [42 x i8] zeroinitializer }, align 32
@dsp_hwec_disable._entry_ptr.17 = internal global ptr @dsp_hwec_disable._entry.15, section ".printk_index", align 4
@dsp_hwec_disable._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.14, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dsp_hwec_disable._entry_ptr.19 = internal global ptr @dsp_hwec_disable._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hwec\00", [27 x i8] zeroinitializer }, align 32
@args = internal global { [1 x %struct.mISDN_dsp_element_arg], [20 x i8] } { [1 x %struct.mISDN_dsp_element_arg] [%struct.mISDN_dsp_element_arg { ptr @.str.5, ptr @.str.21, ptr @.str.22 }], [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"128\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Set the number of taps of cancellation.\00", [56 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"dsp_hwec_p\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 23, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant [9 x i8] c"dsp_hwec\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 32, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 41, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 61, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 64, i32 24 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 70, i32 22 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 71, i32 21 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 80, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 86, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 97, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 102, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 106, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 24, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 19, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 20, i32 15 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [33 x i8] c"../drivers/isdn/mISDN/dsp_hwec.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 20, i32 22 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @dsp_hwec_disable._entry, ptr @dsp_hwec_disable._entry.15, ptr @dsp_hwec_disable._entry.18, ptr @dsp_hwec_disable._entry_ptr, ptr @dsp_hwec_disable._entry_ptr.17, ptr @dsp_hwec_disable._entry_ptr.19, ptr @dsp_hwec_enable._entry, ptr @dsp_hwec_enable._entry.10, ptr @dsp_hwec_enable._entry.7, ptr @dsp_hwec_enable._entry_ptr, ptr @dsp_hwec_enable._entry_ptr.12, ptr @dsp_hwec_enable._entry_ptr.9, ptr @dsp_hwec_p, ptr @dsp_hwec, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.20, ptr @args, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_hwec_p to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_hwec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_hwec_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_hwec_enable._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_hwec_enable._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_hwec_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_hwec_disable._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_hwec_disable._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_hwec_enable(ptr noundef %dsp, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %cq = alloca %struct.mISDN_ctrl_req, align 4
  %dup = alloca ptr, align 4
  %tok = alloca ptr, align 4
  %tmp8 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq) #6
  %0 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq, i32 0, i32 2
  %tobool.not = icmp eq ptr %dsp, null
  %1 = call ptr @memset(ptr %cq, i32 255, i32 16)
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %cleanup49

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %arg, null
  br i1 %tobool1.not, label %if.end.do.end36_crit_edge, label %if.end3

if.end.do.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %2)
  %char0 = load i8, ptr %arg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool5.not = icmp eq i8 %char0, 0
  br i1 %tobool5.not, label %if.end3.do.end36_crit_edge, label %if.end7

if.end3.do.end36_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

if.end7:                                          ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dup) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tok) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp8) #6
  %3 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp8, align 4, !annotation !55
  %call9 = tail call noalias ptr @kstrdup(ptr noundef nonnull %arg, i32 noundef 2592) #6
  %4 = ptrtoint ptr %dup to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %dup, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %cleanup.thread, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end7
  %call136266 = call ptr @strsep(ptr noundef nonnull %dup, ptr noundef nonnull @.str.3) #6
  %5 = ptrtoint ptr %tok to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call136266, ptr %tok, align 4
  %tobool14.not6367 = icmp eq ptr %call136266, null
  br i1 %tobool14.not6367, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body.lr.ph_crit_edge

while.cond.preheader.while.body.lr.ph_crit_edge:  ; preds = %while.cond.preheader
  br label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tok) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dup) #6
  br label %cleanup49

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge.while.body_crit_edge
  %call1364 = phi ptr [ %call136269, %while.body.lr.ph ], [ %call13, %while.cond.backedge.while.body_crit_edge ]
  %6 = ptrtoint ptr %call1364 to i32
  call void @__asan_load1_noabort(i32 %6)
  %char060 = load i8, ptr %call1364, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char060)
  %tobool16.not = icmp eq i8 %char060, 0
  br i1 %tobool16.not, label %while.body.while.cond.backedge_crit_edge, label %if.end18

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end18.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call13 = call ptr @strsep(ptr noundef nonnull %dup, ptr noundef nonnull @.str.3) #6
  %7 = ptrtoint ptr %tok to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %tok, align 4
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %while.body
  %call19 = call ptr @strsep(ptr noundef nonnull %tok, ptr noundef nonnull @.str.4) #6
  %8 = ptrtoint ptr %tok to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tok, align 4
  %tobool20.not = icmp eq ptr %9, null
  br i1 %tobool20.not, label %if.end18.while.cond.backedge_crit_edge, label %if.end22

if.end18.while.cond.backedge_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.end22:                                         ; preds = %if.end18
  %call23 = call i32 @strcmp(ptr noundef %call19, ptr noundef nonnull dereferenceable(8) @.str.5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end22.if.end29_crit_edge

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then25:                                        ; preds = %if.end22
  %call26 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %9, ptr noundef nonnull @.str.6, ptr noundef nonnull %tmp8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26)
  %cmp = icmp eq i32 %call26, 1
  br i1 %cmp, label %if.then27, label %if.then25.if.end29_crit_edge

if.then25.if.end29_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp8, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then25.if.end29_crit_edge, %if.end22.if.end29_crit_edge
  %deftaps.1 = phi i32 [ %deftaps.0.ph68, %if.end22.if.end29_crit_edge ], [ %11, %if.then27 ], [ %deftaps.0.ph68, %if.then25.if.end29_crit_edge ]
  %call1362 = call ptr @strsep(ptr noundef nonnull %dup, ptr noundef nonnull @.str.3) #6
  %12 = ptrtoint ptr %tok to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1362, ptr %tok, align 4
  %tobool14.not63 = icmp eq ptr %call1362, null
  br i1 %tobool14.not63, label %if.end29.cleanup_crit_edge, label %if.end29.while.body.lr.ph_crit_edge

if.end29.while.body.lr.ph_crit_edge:              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end29.while.body.lr.ph_crit_edge, %while.cond.preheader.while.body.lr.ph_crit_edge
  %call136269 = phi ptr [ %call1362, %if.end29.while.body.lr.ph_crit_edge ], [ %call136266, %while.cond.preheader.while.body.lr.ph_crit_edge ]
  %deftaps.0.ph68 = phi i32 [ %deftaps.1, %if.end29.while.body.lr.ph_crit_edge ], [ 128, %while.cond.preheader.while.body.lr.ph_crit_edge ]
  br label %while.body

cleanup:                                          ; preds = %if.end29.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  %deftaps.0.ph.lcssa = phi i32 [ 128, %while.cond.preheader.cleanup_crit_edge ], [ %deftaps.0.ph68, %while.cond.backedge.cleanup_crit_edge ], [ %deftaps.1, %if.end29.cleanup_crit_edge ]
  %13 = ptrtoint ptr %dup to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dup, align 4
  call void @kfree(ptr noundef %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tok) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dup) #6
  br label %do.end36

do.end36:                                         ; preds = %cleanup, %if.end3.do.end36_crit_edge, %if.end.do.end36_crit_edge
  %deftaps.3 = phi i32 [ %deftaps.0.ph.lcssa, %cleanup ], [ 128, %if.end3.do.end36_crit_edge ], [ 128, %if.end.do.end36_crit_edge ]
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef %deftaps.3) #9
  %15 = getelementptr inbounds i8, ptr %cq, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 12)
  %17 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16391, ptr %cq, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %deftaps.3, ptr %0, align 4
  %ch = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 1
  %peer = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 1, i32 6
  %19 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %peer, align 4
  %ctrl = getelementptr inbounds %struct.mISDNchannel, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl, align 4
  %call40 = call i32 %22(ptr noundef %ch, i32 noundef 768, ptr noundef nonnull %cq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.end45, label %do.end36.cleanup49_crit_edge

do.end36.cleanup49_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

do.end45:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1) #9
  br label %cleanup49

cleanup49:                                        ; preds = %do.end45, %do.end36.cleanup49_crit_edge, %cleanup.thread, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_hwec_disable(ptr noundef %dsp) local_unnamed_addr #0 align 64 {
entry:
  %cq = alloca %struct.mISDN_ctrl_req, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq) #6
  %tobool.not = icmp eq ptr %dsp, null
  br i1 %tobool.not, label %do.end, label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #9
  br label %cleanup

do.end3:                                          ; preds = %entry
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #9
  %0 = getelementptr inbounds i8, ptr %cq, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16392, ptr %cq, align 4
  %ch = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 1
  %peer = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 1, i32 6
  %3 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %peer, align 4
  %ctrl = getelementptr inbounds %struct.mISDNchannel, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl, align 4
  %call7 = call i32 %6(ptr noundef %ch, i32 noundef 768, ptr noundef nonnull %cq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end12, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end12:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.end3.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsp_hwec_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dsp_hwec, align 4
  %call = tail call i32 @mISDN_dsp_element_register(ptr noundef %0) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_dsp_element_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_hwec_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dsp_hwec, align 4
  tail call void @mISDN_dsp_element_unregister(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_dsp_element_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @dsp_hwec, !1, !"dsp_hwec", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 32, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 41, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dsp_hwec_enable._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @dsp_hwec_enable._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 61, i32 30}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 64, i32 24}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 70, i32 22}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 71, i32 21}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 80, i32 2}
!18 = !{ptr @dsp_hwec_enable._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @dsp_hwec_enable._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 86, i32 3}
!22 = !{ptr @dsp_hwec_enable._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dsp_hwec_enable._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 97, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dsp_hwec_disable._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @dsp_hwec_disable._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 102, i32 2}
!31 = !{ptr @dsp_hwec_disable._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @dsp_hwec_disable._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @dsp_hwec_disable._entry.18, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 106, i32 3}
!35 = !{ptr @dsp_hwec_disable._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 24, i32 10}
!38 = !{ptr @dsp_hwec_p, !39, !"dsp_hwec_p", i1 false, i1 false}
!39 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 23, i32 33}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 20, i32 15}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 20, i32 22}
!44 = !{ptr @args, !45, !"args", i1 false, i1 false}
!45 = !{!"../drivers/isdn/mISDN/dsp_hwec.c", i32 19, i32 37}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
