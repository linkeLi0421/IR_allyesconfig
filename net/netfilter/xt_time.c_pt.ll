; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_time.c_pt.bc'
source_filename = "../net/netfilter/xt_time.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.timezone = type { i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xt_action_param = type { %union.anon.114, %union.anon.115, ptr, i32, i16, i8 }
%union.anon.114 = type { ptr }
%union.anon.115 = type { ptr }
%struct.xt_time_info = type { i32, i32, i32, i32, i32, i8, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@xt_time_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"time\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @time_mt, ptr @time_mt_check, ptr null, ptr null, ptr null, i32 24, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_time__354_294_time_mt_init6 = internal global ptr @time_mt_init, section ".initcall6.init", align 4
@__exitcall_time_mt_exit = internal global ptr @time_mt_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author355 = internal constant [51 x i8] c"xt_time.author=Jan Engelhardt <jengelh@medozas.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description356 = internal constant [49 x i8] c"xt_time.description=Xtables: time-based matching\00", section ".modinfo", align 1
@__UNIQUE_ID_file357 = internal constant [35 x i8] c"xt_time.file=net/netfilter/xt_time\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [20 x i8] c"xt_time.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias359 = internal constant [23 x i8] c"xt_time.alias=ipt_time\00", section ".modinfo", align 1
@__UNIQUE_ID_alias360 = internal constant [24 x i8] c"xt_time.alias=ip6t_time\00", section ".modinfo", align 1
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@days_since_epoch = internal constant { [70 x i16], [52 x i8] } { [70 x i16] [i16 25202, i16 24837, i16 24472, i16 24106, i16 23741, i16 23376, i16 23011, i16 22645, i16 22280, i16 21915, i16 21550, i16 21184, i16 20819, i16 20454, i16 20089, i16 19723, i16 19358, i16 18993, i16 18628, i16 18262, i16 17897, i16 17532, i16 17167, i16 16801, i16 16436, i16 16071, i16 15706, i16 15340, i16 14975, i16 14610, i16 14245, i16 13879, i16 13514, i16 13149, i16 12784, i16 12418, i16 12053, i16 11688, i16 11323, i16 10957, i16 10592, i16 10227, i16 9862, i16 9496, i16 9131, i16 8766, i16 8401, i16 8035, i16 7670, i16 7305, i16 6940, i16 6574, i16 6209, i16 5844, i16 5479, i16 5113, i16 4748, i16 4383, i16 4018, i16 3652, i16 3287, i16 2922, i16 2557, i16 2191, i16 1826, i16 1461, i16 1096, i16 730, i16 365, i16 0], [52 x i8] zeroinitializer }, align 32
@days_since_leapyear = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335], [40 x i8] zeroinitializer }, align 32
@days_since_year = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334], [40 x i8] zeroinitializer }, align 32
@time_mt_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.time_mt_check = private unnamed_addr constant [14 x i8] c"time_mt_check\00", align 1
@time_mt_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.time_mt_check, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016xt_time: invalid argument - start or stop time greater than 23:59:59\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/netfilter/xt_time.c\00", [40 x i8] zeroinitializer }, align 32
@time_mt_check._entry_ptr = internal global ptr @time_mt_check._entry, section ".printk_index", align 4
@time_mt_check._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@time_mt_check._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.time_mt_check, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016xt_time: unknown flags 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@time_mt_check._entry_ptr.6 = internal global ptr @time_mt_check._entry.4, section ".printk_index", align 4
@time_mt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016xt_time: kernel timezone is +%02d%02d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"time_mt_init\00", [19 x i8] zeroinitializer }, align 32
@time_mt_init._entry_ptr = internal global ptr @time_mt_init._entry, section ".printk_index", align 4
@time_mt_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016xt_time: kernel timezone is -%02d%02d\0A\00", [55 x i8] zeroinitializer }, align 32
@time_mt_init._entry_ptr.11 = internal global ptr @time_mt_init._entry.9, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"days_since_epoch\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 50, i32 24 }
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"days_since_leapyear\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 38, i32 24 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"days_since_year\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 34, i32 24 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 249, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 254, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 280, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [27 x i8] c"../net/netfilter/xt_time.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 283, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_alias359, ptr @__UNIQUE_ID_alias360, ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_description356, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_license358, ptr @__exitcall_time_mt_exit, ptr @__initcall__kmod_xt_time__354_294_time_mt_init6, ptr @time_mt_check._entry, ptr @time_mt_check._entry.4, ptr @time_mt_check._entry_ptr, ptr @time_mt_check._entry_ptr.6, ptr @time_mt_exit, ptr @time_mt_init._entry, ptr @time_mt_init._entry.9, ptr @time_mt_init._entry_ptr, ptr @time_mt_init._entry_ptr.11, ptr @days_since_epoch, ptr @days_since_leapyear, ptr @days_since_year, ptr @time_mt_check._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @time_mt_check._rs.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @days_since_epoch to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @days_since_leapyear to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @days_since_year to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_mt_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_mt_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_mt_check._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_mt_check._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_mt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_mt_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @time_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_match(ptr noundef nonnull @xt_time_mt_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @time_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %0 = load i32, ptr @sys_tz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %do.end, label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub i32 0, %0
  %sub.frozen = freeze i32 %sub
  %div = sdiv i32 %sub.frozen, 60
  %1 = mul i32 %div, 60
  %rem.decomposed = sub i32 %sub.frozen, %1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %div, i32 noundef %rem.decomposed) #7
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %.frozen = freeze i32 %0
  %div614 = udiv i32 %.frozen, 60
  %2 = mul i32 %div614, 60
  %rem715.decomposed = sub i32 %.frozen, %2
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div614, i32 noundef %rem715.decomposed) #7
  br label %if.end

if.end:                                           ; preds = %do.end4, %do.end
  %call9 = tail call i32 @xt_register_match(ptr noundef nonnull @xt_time_mt_reg) #4
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @time_mt(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i64 @ktime_get_real_seconds() #4
  %flags = getelementptr inbounds %struct.xt_time_info, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %6 = load i32, ptr @sys_tz, align 4
  %mul = mul i32 %6, 60
  %conv1 = sext i32 %mul to i64
  %sub = sub i64 %call, %conv1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stamp.0 = phi i64 [ %sub, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  %conv2 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %stamp.0, i64 %conv2)
  %cmp = icmp slt i64 %stamp.0, %conv2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %date_stop = getelementptr inbounds %struct.xt_time_info, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %date_stop to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %date_stop, align 4
  %conv4 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %stamp.0, i64 %conv4)
  %cmp5 = icmp sgt i64 %stamp.0, %conv4
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -4454547087429121353, i64 %stamp.0) #8, !srcloc !54
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -4454547087429121353, i64 %stamp.0, i64 %11, i32 0) #8, !srcloc !55
  %asmresult10.i.i.i = extractvalue { i64, i32 } %12, 0
  %conv14.i.i = trunc i64 %stamp.0 to i32
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 16
  %conv159.i.i = trunc i64 %div1581.i.i to i32
  %mul160.neg.i.i = mul i32 %conv159.i.i, -86400
  %sub161.i.i = add i32 %mul160.neg.i.i, %conv14.i.i
  %daytime_start = getelementptr inbounds %struct.xt_time_info, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %daytime_start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %daytime_start, align 4
  %daytime_stop = getelementptr inbounds %struct.xt_time_info, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %daytime_stop to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %daytime_stop, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp10 = icmp ult i32 %14, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub161.i.i, i32 %14)
  %cmp14 = icmp ult i32 %sub161.i.i, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub161.i.i, i32 %16)
  %cmp18 = icmp ugt i32 %sub161.i.i, %16
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end8
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp18
  br i1 %or.cond, label %if.then12.cleanup_crit_edge, label %if.then12.if.end41_crit_edge

if.then12.if.end41_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.end8
  %or.cond87 = select i1 %cmp14, i1 %cmp18, i1 false
  br i1 %or.cond87, label %if.else.cleanup_crit_edge, label %if.end29

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %if.else
  %17 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool33.not = icmp eq i8 %17, 0
  br i1 %tobool33.not, label %if.end29.if.end41_crit_edge, label %land.lhs.true34

if.end29.if.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

land.lhs.true34:                                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %sub39 = add i64 %stamp.0, -86400
  %spec.select = select i1 %cmp18, i64 %stamp.0, i64 %sub39
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true34, %if.end29.if.end41_crit_edge, %if.then12.if.end41_crit_edge
  %stamp.1 = phi i64 [ %stamp.0, %if.end29.if.end41_crit_edge ], [ %stamp.0, %if.then12.if.end41_crit_edge ], [ %spec.select, %land.lhs.true34 ]
  %18 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -4454547087429121353, i64 %stamp.1) #8, !srcloc !54
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -4454547087429121353, i64 %stamp.1, i64 %18, i32 0) #8, !srcloc !55
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %19, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 16
  %conv.i88 = trunc i64 %div1581.i.i.i to i32
  %sub.i = add i32 %conv.i88, 3
  %rem.i89 = urem i32 %sub.i, 7
  %weekdays_match = getelementptr inbounds %struct.xt_time_info, ptr %2, i32 0, i32 5
  %20 = ptrtoint ptr %weekdays_match to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %weekdays_match, align 4
  %conv42 = zext i8 %21 to i32
  %shl = shl nuw nsw i32 2, %rem.i89
  %and44 = and i32 %shl, %conv42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end41.cleanup_crit_edge, label %if.end47

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  %monthdays_match = getelementptr inbounds %struct.xt_time_info, ptr %2, i32 0, i32 4
  %22 = ptrtoint ptr %monthdays_match to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %monthdays_match, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %23)
  %cmp48.not = icmp eq i32 %23, -2
  br i1 %cmp48.not, label %if.end47.if.end58_crit_edge, label %if.then50

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 25202, i32 %conv.i88)
  %cmp1.i = icmp ult i32 %conv.i88, 25202
  br i1 %cmp1.i, label %for.inc.preheader.i, label %for.end.thread.i

for.end.thread.i:                                 ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #6
  %sub10.i = add i32 %conv.i88, -25202
  br label %for.cond19.preheader.i

for.inc.preheader.i:                              ; preds = %if.then50
  %24 = trunc i64 %div1581.i.i.i to i16
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %for.inc.preheader.i
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.inc.i_crit_edge ], [ 0, %for.inc.preheader.i ]
  %year.02.i = phi i32 [ %dec.i, %for.inc.i.for.inc.i_crit_edge ], [ 2039, %for.inc.preheader.i ]
  %inc.i = add i32 %i.03.i, 1
  %dec.i = add i32 %year.02.i, -1
  %arrayidx.i = getelementptr [70 x i16], ptr @days_since_epoch, i32 0, i32 %inc.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.i, align 2
  %cmp.i = icmp ugt i16 %26, %24
  br i1 %cmp.i, label %for.inc.i.for.inc.i_crit_edge, label %for.end.i

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.end.i:                                        ; preds = %for.inc.i
  %phi.cast.i = zext i16 %26 to i32
  %sub.i91 = sub i32 %conv.i88, %phi.cast.i
  %rem.i.i = and i32 %dec.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %for.end.i.for.cond19.preheader.i_crit_edge

for.end.i.for.cond19.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond19.preheader.i

land.rhs.i.i:                                     ; preds = %for.end.i
  %rem1.i.i = urem i32 %dec.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i.i)
  %cmp2.not.i.i = icmp ne i32 %rem1.i.i, 0
  %rem3.i.i = urem i32 %dec.i, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i.i)
  %cmp4.i.i = icmp eq i32 %rem3.i.i, 0
  %or.cond.i = or i1 %cmp2.not.i.i, %cmp4.i.i
  br i1 %or.cond.i, label %land.rhs.preheader.i, label %land.rhs.i.i.for.cond19.preheader.i_crit_edge

land.rhs.i.i.for.cond19.preheader.i_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond19.preheader.i

land.rhs.preheader.i:                             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 335, i32 %sub.i91)
  %cmp9.i = icmp ult i32 %sub.i91, 335
  br i1 %cmp9.i, label %for.inc12.i, label %land.rhs.preheader.i.for.end14.i_crit_edge

land.rhs.preheader.i.for.end14.i_crit_edge:       ; preds = %land.rhs.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end14.i

for.cond19.preheader.i:                           ; preds = %land.rhs.i.i.for.cond19.preheader.i_crit_edge, %for.end.i.for.cond19.preheader.i_crit_edge, %for.end.thread.i
  %sub13.i = phi i32 [ %sub10.i, %for.end.thread.i ], [ %sub.i91, %for.end.i.for.cond19.preheader.i_crit_edge ], [ %sub.i91, %land.rhs.i.i.for.cond19.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 334, i32 %sub13.i)
  %cmp25.i = icmp ult i32 %sub13.i, 334
  br i1 %cmp25.i, label %for.inc29.i, label %for.cond19.preheader.i.for.end31.i_crit_edge

for.cond19.preheader.i.for.end31.i_crit_edge:     ; preds = %for.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end31.i

for.inc12.i:                                      ; preds = %land.rhs.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 305, i32 %sub.i91)
  %cmp9.1.i = icmp ult i32 %sub.i91, 305
  br i1 %cmp9.1.i, label %for.inc12.1.i, label %for.inc12.i.for.end14.i_crit_edge

for.inc12.i.for.end14.i_crit_edge:                ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end14.i

for.inc12.1.i:                                    ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 274, i32 %sub.i91)
  %cmp9.2.i = icmp ult i32 %sub.i91, 274
  br i1 %cmp9.2.i, label %for.inc12.2.i, label %for.inc12.1.i.for.end14.i_crit_edge

for.inc12.1.i.for.end14.i_crit_edge:              ; preds = %for.inc12.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end14.i

for.inc12.2.i:                                    ; preds = %for.inc12.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 244, i32 %sub.i91)
  %cmp9.3.i = icmp ult i32 %sub.i91, 244
  br i1 %cmp9.3.i, label %for.inc12.3.i, label %for.inc12.2.i.for.end14.i_crit_edge

for.inc12.2.i.for.end14.i_crit_edge:              ; preds = %for.inc12.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end14.i

for.inc12.3.i:                                    ; preds = %for.inc12.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 213, i32 %sub.i91)
  %cmp9.4.i = icmp ult i32 %sub.i91, 213
  br i1 %cmp9.4.i, label %for.inc12.4.i, label %for.inc12.3.i.for.end14.i_crit_edge

for.inc12.3.i.for.end14.i_crit_edge:              ; preds = %for.inc12.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end14.i

for.inc12.4.i:                                    ; preds = %for.inc12.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 182, i32 %sub.i91)
  %cmp9.5.i = icmp ult i32 %sub.i91, 182
  br i1 %cmp9.5.i, label %for.inc12.5.i, label %for.inc12.4.i.for.end14.i_crit_edge

for.inc12.4.i.for.end14.i_crit_edge:              ; preds = %for.inc12.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end14.i

for.inc12.5.i:                                    ; preds = %for.inc12.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 152, i32 %sub.i91)
  %cmp9.6.i = icmp ult i32 %sub.i91, 152
  br i1 %cmp9.6.i, label %for.inc12.6.i, label %for.inc12.5.i.for.end14.i_crit_edge

for.inc12.5.i.for.end14.i_crit_edge:              ; preds = %for.inc12.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end14.i

for.inc12.6.i:                                    ; preds = %for.inc12.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 121, i32 %sub.i91)
  %cmp9.7.i = icmp ult i32 %sub.i91, 121
  br i1 %cmp9.7.i, label %for.inc12.7.i, label %for.inc12.6.i.for.end14.i_crit_edge

for.inc12.6.i.for.end14.i_crit_edge:              ; preds = %for.inc12.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end14.i

for.inc12.7.i:                                    ; preds = %for.inc12.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 91, i32 %sub.i91)
  %cmp9.8.i = icmp ult i32 %sub.i91, 91
  br i1 %cmp9.8.i, label %for.inc12.8.i, label %for.inc12.7.i.for.end14.i_crit_edge

for.inc12.7.i.for.end14.i_crit_edge:              ; preds = %for.inc12.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end14.i

for.inc12.8.i:                                    ; preds = %for.inc12.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %sub.i91)
  %cmp9.9.i = icmp ult i32 %sub.i91, 60
  br i1 %cmp9.9.i, label %for.inc12.9.i, label %for.inc12.8.i.for.end14.i_crit_edge

for.inc12.8.i.for.end14.i_crit_edge:              ; preds = %for.inc12.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end14.i

for.inc12.9.i:                                    ; preds = %for.inc12.8.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %sub.i91)
  %cmp9.10.i = icmp ugt i32 %sub.i91, 30
  %spec.select.i = zext i1 %cmp9.10.i to i32
  br label %for.end14.i

for.end14.i:                                      ; preds = %for.inc12.9.i, %for.inc12.8.i.for.end14.i_crit_edge, %for.inc12.7.i.for.end14.i_crit_edge, %for.inc12.6.i.for.end14.i_crit_edge, %for.inc12.5.i.for.end14.i_crit_edge, %for.inc12.4.i.for.end14.i_crit_edge, %for.inc12.3.i.for.end14.i_crit_edge, %for.inc12.2.i.for.end14.i_crit_edge, %for.inc12.1.i.for.end14.i_crit_edge, %for.inc12.i.for.end14.i_crit_edge, %land.rhs.preheader.i.for.end14.i_crit_edge
  %i.1.lcssa.i = phi i32 [ 11, %land.rhs.preheader.i.for.end14.i_crit_edge ], [ 10, %for.inc12.i.for.end14.i_crit_edge ], [ 9, %for.inc12.1.i.for.end14.i_crit_edge ], [ 8, %for.inc12.2.i.for.end14.i_crit_edge ], [ 7, %for.inc12.3.i.for.end14.i_crit_edge ], [ 6, %for.inc12.4.i.for.end14.i_crit_edge ], [ 5, %for.inc12.5.i.for.end14.i_crit_edge ], [ 4, %for.inc12.6.i.for.end14.i_crit_edge ], [ 3, %for.inc12.7.i.for.end14.i_crit_edge ], [ 2, %for.inc12.8.i.for.end14.i_crit_edge ], [ %spec.select.i, %for.inc12.9.i ]
  %arrayidx15.i = getelementptr [12 x i16], ptr @days_since_leapyear, i32 0, i32 %i.1.lcssa.i
  br label %localtime_3.exit

for.inc29.i:                                      ; preds = %for.cond19.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 304, i32 %sub13.i)
  %cmp25.1.i = icmp ult i32 %sub13.i, 304
  br i1 %cmp25.1.i, label %for.inc29.1.i, label %for.inc29.i.for.end31.i_crit_edge

for.inc29.i.for.end31.i_crit_edge:                ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end31.i

for.inc29.1.i:                                    ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 273, i32 %sub13.i)
  %cmp25.2.i = icmp ult i32 %sub13.i, 273
  br i1 %cmp25.2.i, label %for.inc29.2.i, label %for.inc29.1.i.for.end31.i_crit_edge

for.inc29.1.i.for.end31.i_crit_edge:              ; preds = %for.inc29.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end31.i

for.inc29.2.i:                                    ; preds = %for.inc29.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 243, i32 %sub13.i)
  %cmp25.3.i = icmp ult i32 %sub13.i, 243
  br i1 %cmp25.3.i, label %for.inc29.3.i, label %for.inc29.2.i.for.end31.i_crit_edge

for.inc29.2.i.for.end31.i_crit_edge:              ; preds = %for.inc29.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end31.i

for.inc29.3.i:                                    ; preds = %for.inc29.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 212, i32 %sub13.i)
  %cmp25.4.i = icmp ult i32 %sub13.i, 212
  br i1 %cmp25.4.i, label %for.inc29.4.i, label %for.inc29.3.i.for.end31.i_crit_edge

for.inc29.3.i.for.end31.i_crit_edge:              ; preds = %for.inc29.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end31.i

for.inc29.4.i:                                    ; preds = %for.inc29.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 181, i32 %sub13.i)
  %cmp25.5.i = icmp ult i32 %sub13.i, 181
  br i1 %cmp25.5.i, label %for.inc29.5.i, label %for.inc29.4.i.for.end31.i_crit_edge

for.inc29.4.i.for.end31.i_crit_edge:              ; preds = %for.inc29.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end31.i

for.inc29.5.i:                                    ; preds = %for.inc29.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 151, i32 %sub13.i)
  %cmp25.6.i = icmp ult i32 %sub13.i, 151
  br i1 %cmp25.6.i, label %for.inc29.6.i, label %for.inc29.5.i.for.end31.i_crit_edge

for.inc29.5.i.for.end31.i_crit_edge:              ; preds = %for.inc29.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end31.i

for.inc29.6.i:                                    ; preds = %for.inc29.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %sub13.i)
  %cmp25.7.i = icmp ult i32 %sub13.i, 120
  br i1 %cmp25.7.i, label %for.inc29.7.i, label %for.inc29.6.i.for.end31.i_crit_edge

for.inc29.6.i.for.end31.i_crit_edge:              ; preds = %for.inc29.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end31.i

for.inc29.7.i:                                    ; preds = %for.inc29.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %sub13.i)
  %cmp25.8.i = icmp ult i32 %sub13.i, 90
  br i1 %cmp25.8.i, label %for.inc29.8.i, label %for.inc29.7.i.for.end31.i_crit_edge

for.inc29.7.i.for.end31.i_crit_edge:              ; preds = %for.inc29.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end31.i

for.inc29.8.i:                                    ; preds = %for.inc29.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %sub13.i)
  %cmp25.9.i = icmp ult i32 %sub13.i, 59
  br i1 %cmp25.9.i, label %for.inc29.9.i, label %for.inc29.8.i.for.end31.i_crit_edge

for.inc29.8.i.for.end31.i_crit_edge:              ; preds = %for.inc29.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end31.i

for.inc29.9.i:                                    ; preds = %for.inc29.8.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %sub13.i)
  %cmp25.10.i = icmp ugt i32 %sub13.i, 30
  %spec.select14.i = zext i1 %cmp25.10.i to i32
  br label %for.end31.i

for.end31.i:                                      ; preds = %for.inc29.9.i, %for.inc29.8.i.for.end31.i_crit_edge, %for.inc29.7.i.for.end31.i_crit_edge, %for.inc29.6.i.for.end31.i_crit_edge, %for.inc29.5.i.for.end31.i_crit_edge, %for.inc29.4.i.for.end31.i_crit_edge, %for.inc29.3.i.for.end31.i_crit_edge, %for.inc29.2.i.for.end31.i_crit_edge, %for.inc29.1.i.for.end31.i_crit_edge, %for.inc29.i.for.end31.i_crit_edge, %for.cond19.preheader.i.for.end31.i_crit_edge
  %i.2.lcssa.i = phi i32 [ 11, %for.cond19.preheader.i.for.end31.i_crit_edge ], [ 10, %for.inc29.i.for.end31.i_crit_edge ], [ 9, %for.inc29.1.i.for.end31.i_crit_edge ], [ 8, %for.inc29.2.i.for.end31.i_crit_edge ], [ 7, %for.inc29.3.i.for.end31.i_crit_edge ], [ 6, %for.inc29.4.i.for.end31.i_crit_edge ], [ 5, %for.inc29.5.i.for.end31.i_crit_edge ], [ 4, %for.inc29.6.i.for.end31.i_crit_edge ], [ 3, %for.inc29.7.i.for.end31.i_crit_edge ], [ 2, %for.inc29.8.i.for.end31.i_crit_edge ], [ %spec.select14.i, %for.inc29.9.i ]
  %arrayidx32.i = getelementptr [12 x i16], ptr @days_since_year, i32 0, i32 %i.2.lcssa.i
  br label %localtime_3.exit

localtime_3.exit:                                 ; preds = %for.end31.i, %for.end14.i
  %arrayidx32.sink.i = phi ptr [ %arrayidx32.i, %for.end31.i ], [ %arrayidx15.i, %for.end14.i ]
  %sub13.sink.i = phi i32 [ %sub13.i, %for.end31.i ], [ %sub.i91, %for.end14.i ]
  %27 = ptrtoint ptr %arrayidx32.sink.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx32.sink.i, align 2
  %conv33.i = zext i16 %28 to i32
  %sub34.i = add i32 %sub13.sink.i, 1
  %conv36.i = sub i32 %sub34.i, %conv33.i
  %conv52 = and i32 %conv36.i, 255
  %shl53 = shl nuw i32 1, %conv52
  %and54 = and i32 %shl53, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %localtime_3.exit.cleanup_crit_edge, label %localtime_3.exit.if.end58_crit_edge

localtime_3.exit.if.end58_crit_edge:              ; preds = %localtime_3.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

localtime_3.exit.cleanup_crit_edge:               ; preds = %localtime_3.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end58:                                         ; preds = %localtime_3.exit.if.end58_crit_edge, %if.end47.if.end58_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %localtime_3.exit.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end58 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.then12.cleanup_crit_edge ], [ false, %if.else.cleanup_crit_edge ], [ false, %if.end41.cleanup_crit_edge ], [ false, %localtime_3.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @time_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %daytime_start = getelementptr inbounds %struct.xt_time_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %daytime_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %daytime_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 86399, i32 %3)
  %cmp = icmp ugt i32 %3, 86399
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %daytime_stop = getelementptr inbounds %struct.xt_time_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %daytime_stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %daytime_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 86399, i32 %5)
  %cmp1 = icmp ugt i32 %5, 86399
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %if.end4

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @time_mt_check._rs, ptr noundef nonnull @__func__.time_mt_check) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.xt_time_info, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 1
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end19, label %if.then6

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @time_mt_check._rs.3, ptr noundef nonnull @__func__.time_mt_check) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %do.end12

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 1
  %10 = and i8 %9, -4
  %and16 = zext i8 %10 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %and16) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %and22 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp ne i32 %and22, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp26 = icmp ult i32 %3, %5
  %or.cond = select i1 %tobool23.not, i1 %cmp26, i1 false
  %spec.select = select i1 %or.cond, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end12, %if.then6.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -33, %do.end ], [ -33, %if.then.cleanup_crit_edge ], [ -22, %do.end12 ], [ -22, %if.then6.cleanup_crit_edge ], [ %spec.select, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_xt_time__354_294_time_mt_init6, !1, !"__initcall__kmod_xt_time__354_294_time_mt_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_time.c", i32 294, i32 1}
!2 = !{ptr @__exitcall_time_mt_exit, !3, !"__exitcall_time_mt_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_time.c", i32 295, i32 1}
!4 = !{ptr @__UNIQUE_ID_author355, !5, !"__UNIQUE_ID_author355", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_time.c", i32 296, i32 1}
!6 = !{ptr @__UNIQUE_ID_description356, !7, !"__UNIQUE_ID_description356", i1 false, i1 false}
!7 = !{!"../net/netfilter/xt_time.c", i32 297, i32 1}
!8 = !{ptr @__UNIQUE_ID_file357, !9, !"__UNIQUE_ID_file357", i1 false, i1 false}
!9 = !{!"../net/netfilter/xt_time.c", i32 298, i32 1}
!10 = !{ptr @__UNIQUE_ID_license358, !9, !"__UNIQUE_ID_license358", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias359, !12, !"__UNIQUE_ID_alias359", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_time.c", i32 299, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias360, !14, !"__UNIQUE_ID_alias360", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_time.c", i32 300, i32 1}
!15 = !{ptr @xt_time_mt_reg, !16, !"xt_time_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_time.c", i32 266, i32 24}
!17 = !{ptr @days_since_epoch, !18, !"days_since_epoch", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_time.c", i32 50, i32 24}
!19 = !{ptr @days_since_leapyear, !20, !"days_since_leapyear", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_time.c", i32 38, i32 24}
!21 = !{ptr @days_since_year, !22, !"days_since_year", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_time.c", i32 34, i32 24}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/xt_time.c", i32 249, i32 3}
!25 = !{ptr @time_mt_check._rs, !24, !"_rs", i1 false, i1 false}
!26 = !{ptr @__func__.time_mt_check, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @time_mt_check._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @time_mt_check._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @time_mt_check._rs.3, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../net/netfilter/xt_time.c", i32 254, i32 3}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @time_mt_check._entry.4, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @time_mt_check._entry_ptr.6, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/netfilter/xt_time.c", i32 280, i32 3}
!38 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @time_mt_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @time_mt_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/netfilter/xt_time.c", i32 283, i32 3}
!43 = !{ptr @time_mt_init._entry.9, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @time_mt_init._entry_ptr.11, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 523491, i64 523518}
!55 = !{i64 524186, i64 524213, i64 524246, i64 524267, i64 524294, i64 524320}
