; ModuleID = '/llk/IR_all_yes/sound/firewire/fireworks/fireworks_command.c_pt.bc'
source_filename = "../sound/firewire/fireworks/fireworks_command.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_efw = type { ptr, ptr, i32, %struct.mutex, %struct.spinlock, i32, i8, i8, i8, i32, i32, i32, i32, [3 x i32], [3 x i32], %struct.amdtp_stream, %struct.amdtp_stream, %struct.cmp_connection, %struct.cmp_connection, i32, i32, i32, i32, i32, [8 x %struct.snd_efw_phys_grp], [8 x %struct.snd_efw_phys_grp], i32, i8, %struct.wait_queue_head, ptr, ptr, ptr, %struct.amdtp_domain }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.snd_efw_phys_grp = type { i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
%struct.snd_efw_transaction = type { i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.snd_efw_hwinfo = type { i32, i32, i32, i32, i32, [32 x i8], [32 x i8], i32, i32, i32, i32, i32, i32, [8 x %struct.snd_efw_phys_grp], i32, [8 x %struct.snd_efw_phys_grp], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32] }
%struct.efc_clock = type { i32, i32, i32 }

@efw_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"EFW command failed [%u/%u]: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efw_transaction\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sound/firewire/fireworks/fireworks_command.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efw_transaction._entry_ptr = internal global ptr @efw_transaction._entry, section ".printk_index", align 4
@efr_status_names = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bad\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bad command\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"comm err\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bad quad count\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unsupported\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1394 timeout\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DSP timeout\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bad rate\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bad clock\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bad channel\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bad pan\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flash busy\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bad mirror\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bad LED\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad parameter\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"incomplete\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 154, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"efr_status_names\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 80, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 81, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 82, i32 22 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 83, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 84, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 85, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 86, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 87, i32 30 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 88, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 89, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 90, i32 28 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 91, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 92, i32 26 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 93, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 94, i32 29 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 95, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 96, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [48 x i8] c"../sound/firewire/fireworks/fireworks_command.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 97, i32 35 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @efw_transaction._entry, ptr @efw_transaction._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @efr_status_names, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efw_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efr_status_names to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_command_set_resp_addr(ptr noundef %efw, i16 noundef zeroext %addr_high, i32 noundef %addr_low) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #6
  %0 = getelementptr inbounds [2 x i32], ptr %addr, i32 0, i32 1
  %conv = zext i16 %addr_high to i32
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %addr, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %addr_low, ptr %0, align 4
  %resp_addr_changable = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 6
  %3 = ptrtoint ptr %resp_addr_changable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %resp_addr_changable, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call fastcc i32 @efw_transaction(ptr noundef %efw, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %addr, i32 noundef 8, ptr noundef null, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -38, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efw_transaction(ptr noundef %efw, i32 noundef %category, i32 noundef %command, ptr nocapture noundef readonly %params, i32 noundef %param_bytes, ptr noundef writeonly %resp, i32 noundef %resp_bytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umax.i32(i32 %param_bytes, i32 %resp_bytes)
  %add = add i32 %0, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #9
  %cmp1 = icmp eq ptr %call9.i.i, null
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %seqnum2 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 5
  %1 = ptrtoint ptr %seqnum2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %seqnum2, align 4
  %3 = add i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 65539, i32 %3)
  %4 = icmp ult i32 %3, 65539
  %add9 = add i32 %2, 2
  %storemerge = select i1 %4, i32 65536, i32 %add9
  %5 = ptrtoint ptr %seqnum2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge, ptr %seqnum2, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %add13 = add i32 %param_bytes, 24
  %div98 = lshr i32 %add13, 2
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div98, ptr %call9.i.i, align 128
  %version = getelementptr inbounds %struct.snd_efw_transaction, ptr %call9.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %version, align 4
  %seqnum14 = getelementptr inbounds %struct.snd_efw_transaction, ptr %call9.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %seqnum14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge, ptr %seqnum14, align 8
  %category15 = getelementptr inbounds %struct.snd_efw_transaction, ptr %call9.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %category15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %category, ptr %category15, align 4
  %command16 = getelementptr inbounds %struct.snd_efw_transaction, ptr %call9.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %command16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %command, ptr %command16, align 16
  %status = getelementptr inbounds %struct.snd_efw_transaction, ptr %call9.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %status, align 4
  %params17 = getelementptr %struct.snd_efw_transaction, ptr %call9.i.i, i32 0, i32 6
  %12 = call ptr @memcpy(ptr %params17, ptr %params, i32 %param_bytes)
  %unit = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 1
  %13 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unit, align 4
  %call18 = tail call i32 @snd_efw_transaction_run(ptr noundef %14, ptr noundef nonnull %call9.i.i, i32 noundef %add13, ptr noundef nonnull %call9.i.i, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end.end_crit_edge, label %if.end21

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end21:                                         ; preds = %if.end
  %15 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp23 = icmp eq i32 %16, 0
  br i1 %cmp23, label %if.end21.do.end_crit_edge, label %lor.lhs.false24

if.end21.do.end_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false24:                                  ; preds = %if.end21
  %17 = ptrtoint ptr %category15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %category15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %category)
  %cmp26.not = icmp eq i32 %18, %category
  br i1 %cmp26.not, label %lor.lhs.false27, label %lor.lhs.false24.do.end_crit_edge

lor.lhs.false24.do.end_crit_edge:                 ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %19 = ptrtoint ptr %command16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %command16, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %command)
  %cmp29.not = icmp eq i32 %20, %command
  br i1 %cmp29.not, label %lor.lhs.false30, label %lor.lhs.false27.do.end_crit_edge

lor.lhs.false27.do.end_crit_edge:                 ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp32.not = icmp eq i32 %22, 0
  br i1 %cmp32.not, label %if.end38, label %lor.lhs.false30.do.end_crit_edge

lor.lhs.false30.do.end_crit_edge:                 ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false30.do.end_crit_edge, %lor.lhs.false27.do.end_crit_edge, %lor.lhs.false24.do.end_crit_edge, %if.end21.do.end_crit_edge
  %23 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %unit, align 4
  %25 = ptrtoint ptr %category15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %category15, align 4
  %27 = ptrtoint ptr %command16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %command16, align 16
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status, align 4
  %arrayidx = getelementptr [17 x ptr], ptr @efr_status_names, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef %26, i32 noundef %28, ptr noundef %32) #10
  br label %end

if.end38:                                         ; preds = %lor.lhs.false30
  %cmp39 = icmp eq ptr %resp, null
  br i1 %cmp39, label %if.end38.end_crit_edge, label %if.end41

if.end38.end_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end41:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %33 = call ptr @memset(ptr %resp, i32 0, i32 %resp_bytes)
  %34 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call9.i.i, align 128
  %mul = shl i32 %35, 2
  %sub = add i32 %mul, -24
  %36 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %resp_bytes)
  %37 = call ptr @memcpy(ptr %resp, ptr %params17, i32 %36)
  br label %end

end:                                              ; preds = %if.end41, %if.end38.end_crit_edge, %do.end, %if.end.end_crit_edge
  %err.0 = phi i32 [ %call18, %if.end.end_crit_edge ], [ -5, %do.end ], [ %call18, %if.end38.end_crit_edge ], [ %call18, %if.end41 ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_command_set_tx_mode(ptr noundef %efw, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %param = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #6
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mode, ptr %param, align 4
  %call = call fastcc i32 @efw_transaction(ptr noundef %efw, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %param, i32 noundef 4, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_command_get_hwinfo(ptr noundef %efw, ptr noundef %hwinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @efw_transaction(ptr noundef %efw, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %hwinfo, i32 noundef 260)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.end_crit_edge, label %do.body

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.snd_efw_hwinfo, ptr %hwinfo, i32 0, i32 5, i32 31
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %arrayidx, align 1
  %arrayidx73 = getelementptr %struct.snd_efw_hwinfo, ptr %hwinfo, i32 0, i32 6, i32 31
  %1 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx73, align 1
  br label %end

end:                                              ; preds = %do.body, %entry.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_command_get_phys_meters(ptr noundef %efw, ptr noundef %meters, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @efw_transaction(ptr noundef %efw, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef %meters, i32 noundef %len)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_command_get_clock_source(ptr noundef %efw, ptr nocapture noundef writeonly %source) local_unnamed_addr #0 align 64 {
entry:
  %clock = alloca %struct.efc_clock, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %clock) #6
  %0 = call ptr @memset(ptr %clock, i32 0, i32 12)
  %call.i = call fastcc i32 @efw_transaction(ptr noundef %efw, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef nonnull %clock, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %clock, align 4
  %3 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %source, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clock) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_command_get_sampling_rate(ptr noundef %efw, ptr nocapture noundef writeonly %rate) local_unnamed_addr #0 align 64 {
entry:
  %clock = alloca %struct.efc_clock, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %clock) #6
  %0 = call ptr @memset(ptr %clock, i32 0, i32 12)
  %call.i = call fastcc i32 @efw_transaction(ptr noundef %efw, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef nonnull %clock, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sampling_rate = getelementptr inbounds %struct.efc_clock, ptr %clock, i32 0, i32 1
  %1 = ptrtoint ptr %sampling_rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sampling_rate, align 4
  %3 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clock) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_command_set_sampling_rate(ptr noundef %efw, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  %clock.i = alloca %struct.efc_clock, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %clock.i) #6
  %0 = call ptr @memset(ptr %clock.i, i32 0, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rate)
  %cmp1.i = icmp eq i32 %rate, -1
  br i1 %cmp1.i, label %entry.command_set_clock.exit_crit_edge, label %if.end.i

entry.command_set_clock.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %command_set_clock.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call fastcc i32 @efw_transaction(ptr noundef %efw, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef nonnull %clock.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.end.i.command_set_clock.exit_crit_edge, label %if.end4.i

if.end.i.command_set_clock.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %command_set_clock.exit

if.end4.i:                                        ; preds = %if.end.i
  %1 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %clock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp6.i = icmp eq i32 %2, -1
  br i1 %cmp6.i, label %land.lhs.true7.i, label %if.end4.i.land.lhs.true19.i_crit_edge

if.end4.i.land.lhs.true19.i_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true19.i

land.lhs.true7.i:                                 ; preds = %if.end4.i
  %sampling_rate.i = getelementptr inbounds %struct.efc_clock, ptr %clock.i, i32 0, i32 1
  %3 = ptrtoint ptr %sampling_rate.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sampling_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %rate)
  %cmp8.i = icmp eq i32 %4, %rate
  br i1 %cmp8.i, label %land.lhs.true7.i.command_set_clock.exit_crit_edge, label %land.lhs.true7.i.land.lhs.true19.i_crit_edge

land.lhs.true7.i.land.lhs.true19.i_crit_edge:     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true19.i

land.lhs.true7.i.command_set_clock.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %command_set_clock.exit

land.lhs.true19.i:                                ; preds = %land.lhs.true7.i.land.lhs.true19.i_crit_edge, %if.end4.i.land.lhs.true19.i_crit_edge
  %sampling_rate20.i = getelementptr inbounds %struct.efc_clock, ptr %clock.i, i32 0, i32 1
  %5 = ptrtoint ptr %sampling_rate20.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sampling_rate20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %rate)
  %cmp21.not.i = icmp eq i32 %6, %rate
  br i1 %cmp21.not.i, label %land.lhs.true19.i.if.end24.i_crit_edge, label %if.then22.i

land.lhs.true19.i.if.end24.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.then22.i:                                      ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %sampling_rate20.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %rate, ptr %sampling_rate20.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %land.lhs.true19.i.if.end24.i_crit_edge
  %index.i = getelementptr inbounds %struct.efc_clock, ptr %clock.i, i32 0, i32 2
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %index.i, align 4
  %call34.i = call fastcc i32 @efw_transaction(ptr noundef %efw, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %clock.i, i32 noundef 12, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %if.end24.i.command_set_clock.exit_crit_edge, label %if.end37.i

if.end24.i.command_set_clock.exit_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %command_set_clock.exit

if.end37.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 150) #6
  br label %command_set_clock.exit

command_set_clock.exit:                           ; preds = %if.end37.i, %if.end24.i.command_set_clock.exit_crit_edge, %land.lhs.true7.i.command_set_clock.exit_crit_edge, %if.end.i.command_set_clock.exit_crit_edge, %entry.command_set_clock.exit_crit_edge
  %err.0.i = phi i32 [ %call.i.i, %if.end.i.command_set_clock.exit_crit_edge ], [ %call.i.i, %land.lhs.true7.i.command_set_clock.exit_crit_edge ], [ %call34.i, %if.end24.i.command_set_clock.exit_crit_edge ], [ %call34.i, %if.end37.i ], [ -22, %entry.command_set_clock.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clock.i) #6
  ret i32 %err.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_transaction_run(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 154, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @efw_transaction._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @efw_transaction._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 81, i32 22}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 82, i32 22}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 83, i32 29}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 84, i32 27}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 85, i32 32}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 86, i32 29}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 87, i32 30}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 88, i32 29}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 89, i32 27}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 90, i32 28}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 91, i32 29}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 92, i32 26}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 93, i32 29}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 94, i32 29}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 95, i32 26}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 96, i32 31}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 97, i32 35}
!42 = !{ptr @efr_status_names, !43, !"efr_status_names", i1 false, i1 false}
!43 = !{!"../sound/firewire/fireworks/fireworks_command.c", i32 80, i32 26}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i8 0, i8 2}
