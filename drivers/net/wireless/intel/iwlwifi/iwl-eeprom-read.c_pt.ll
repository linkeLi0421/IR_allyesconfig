; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.127, %struct.anon.128, %struct.iwl_dma_ptr }
%struct.anon.127 = type { i8, i8, i32 }
%struct.anon.128 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__func__.iwl_read_eeprom = private unnamed_addr constant [16 x i8] c"iwl_read_eeprom\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NVM size = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"EEPROM not found, EEPROM_GP=0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to acquire EEPROM semaphore.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to initialize OTP access.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Time out reading EEPROM[%d]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NVM Type: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OTP\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EEPROM\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown hardware type\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.iwl_eeprom_verify_signature = private unnamed_addr constant [28 x i8] c"iwl_eeprom_verify_signature\00", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EEPROM signature=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"EEPROM with bad signature: 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"OTP with bad signature: 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"bad EEPROM/OTP signature, type=%s, EEPROM_GP=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.iwl_eeprom_acquire_semaphore = private unnamed_addr constant [29 x i8] c"iwl_eeprom_acquire_semaphore\00", align 1
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Acquired semaphore after %d tries.\0A\00", [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.iwl_find_otp_image = private unnamed_addr constant [19 x i8] c"iwl_find_otp_image\00", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"OTP blocks %d addr 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"OTP has no valid blocks\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OTP is empty\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to read first block of OTP list.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Time out reading OTP[%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Uncorrectable OTP ECC error, abort OTP read\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Correctable OTP ECC error, continue read\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 32, i64 48, i64 64, i64 80, i64 496]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 311, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 319, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 326, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 333, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 373, i32 5 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 382, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 123, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 76, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 81, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 89, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 95, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 56, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 260, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 280, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 214, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 218, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 177, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 188, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [56 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 196, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_read_eeprom(ptr noundef %trans, ptr noundef writeonly %eeprom, ptr noundef writeonly %eeprom_size) local_unnamed_addr #0 align 64 {
entry:
  %validblockaddr = alloca i16, align 2
  %eeprom_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 48) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %validblockaddr) #5
  %0 = ptrtoint ptr %validblockaddr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %validblockaddr, align 2
  %tobool.not = icmp eq ptr %eeprom, null
  %tobool1.not = icmp eq ptr %eeprom_size, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup118_crit_edge, label %if.end

entry.cleanup118_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup118

if.end:                                           ; preds = %entry
  %hw_rev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 10
  %1 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hw_rev.i, align 8
  %3 = trunc i32 %2 to i16
  %trunc.i = and i16 %3, -16
  %4 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i, label %sw.default.i [
    i16 496, label %iwl_nvm_is_otp.exit
    i16 32, label %if.end.if.end4_crit_edge
    i16 48, label %if.end.if.end4_crit_edge250
    i16 80, label %if.end.if.end4_crit_edge251
    i16 64, label %if.end.if.end4_crit_edge252
  ]

if.end.if.end4_crit_edge252:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.if.end4_crit_edge251:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.if.end4_crit_edge250:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 52) #5
  %and5.i = lshr i32 %call.i, 16
  %and5.lobit.i = and i32 %and5.i, 1
  br label %if.end4

iwl_nvm_is_otp.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str.8) #5
  br label %cleanup118

if.end4:                                          ; preds = %sw.default.i, %if.end.if.end4_crit_edge, %if.end.if.end4_crit_edge250, %if.end.if.end4_crit_edge251, %if.end.if.end4_crit_edge252
  %retval.0.i.ph = phi i32 [ %and5.lobit.i, %sw.default.i ], [ 0, %if.end.if.end4_crit_edge ], [ 0, %if.end.if.end4_crit_edge250 ], [ 0, %if.end.if.end4_crit_edge251 ], [ 0, %if.end.if.end4_crit_edge252 ]
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %7 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans_cfg, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %eeprom_size5 = getelementptr inbounds %struct.iwl_base_params, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %eeprom_size5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %eeprom_size5, align 4
  %conv = zext i16 %12 to i32
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_read_eeprom, ptr noundef nonnull @.str, i32 noundef %conv) #5
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3264) #8
  %tobool10.not = icmp eq ptr %call9.i, null
  br i1 %tobool10.not, label %if.end4.cleanup118_crit_edge, label %if.end12

if.end4.cleanup118_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup118

if.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.ph)
  %tobool13.not = icmp eq i32 %retval.0.i.ph, 0
  %call.i179 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 48) #5
  %and.i = and i32 %call.i179, 7
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %16, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_eeprom_verify_signature, ptr noundef nonnull @.str.9, i32 noundef %and.i) #5
  %17 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and.i, label %do.end26.i [
    i32 1, label %sw.bb.i
    i32 2, label %if.end12.sw.bb11.i_crit_edge
    i32 4, label %if.end12.sw.bb11.i_crit_edge253
  ]

if.end12.sw.bb11.i_crit_edge253:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11.i

if.end12.sw.bb11.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11.i

sw.bb.i:                                          ; preds = %if.end12
  br i1 %tobool13.not, label %do.end7.i, label %sw.bb.i.if.end25_crit_edge

sw.bb.i.if.end25_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

do.end7.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %19, i32 noundef 0, ptr noundef nonnull @.str.10, i32 noundef 1) #5
  br label %do.end21

sw.bb11.i:                                        ; preds = %if.end12.sw.bb11.i_crit_edge, %if.end12.sw.bb11.i_crit_edge253
  br i1 %tobool13.not, label %sw.bb11.i.if.end25_crit_edge, label %do.end17.i

sw.bb11.i.if.end25_crit_edge:                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

do.end17.i:                                       ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %21, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef %and.i) #5
  br label %do.end21

do.end26.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %cond.i = select i1 %tobool13.not, ptr @.str.7, ptr @.str.6
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond.i, i32 noundef %and.i) #5
  br label %do.end21

do.end21:                                         ; preds = %do.end26.i, %do.end17.i, %do.end7.i
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %25, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %call) #5
  br label %err_free

if.end25:                                         ; preds = %sw.bb11.i.if.end25_crit_edge, %sw.bb.i.if.end25_crit_edge
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end25
  %count.017.i = phi i16 [ 0, %if.end25 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %27, i32 0, i32 34
  %28 = ptrtoint ptr %set_bits_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_bits_mask.i.i.i, align 4
  tail call void %29(ptr noundef %trans, i32 noundef 0, i32 noundef 2097152, i32 noundef 2097152) #5
  %call.i182 = tail call i32 @iwl_poll_bit(ptr noundef %trans, i32 noundef 0, i32 noundef 2097152, i32 noundef 2097152, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i182)
  %cmp2.i = icmp sgt i32 %call.i182, -1
  br i1 %cmp2.i, label %if.end37, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i16 %count.017.i, 1
  %cmp.i185 = icmp ult i16 %count.017.i, 999
  br i1 %cmp.i185, label %for.inc.i.for.body.i_crit_edge, label %do.end33

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end33:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @.str.2) #5
  br label %err_free

if.end37:                                         ; preds = %for.body.i
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %narrow.i = add nuw nsw i16 %count.017.i, 1
  %add.i = zext i16 %narrow.i to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %33, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_eeprom_acquire_semaphore, ptr noundef nonnull @.str.13, i32 noundef %add.i) #5
  br i1 %tobool13.not, label %for.cond76.preheader, label %if.then39

for.cond76.preheader:                             ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp78219.not = icmp eq i16 %12, 0
  br i1 %cmp78219.not, label %for.cond76.preheader.do.end113_crit_edge, label %for.cond76.preheader.for.body80_crit_edge

for.cond76.preheader.for.body80_crit_edge:        ; preds = %for.cond76.preheader
  br label %for.body80

for.cond76.preheader.do.end113_crit_edge:         ; preds = %for.cond76.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end113

if.then39:                                        ; preds = %if.end37
  %call.i186 = tail call i32 @iwl_finish_nic_init(ptr noundef %trans) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %tobool.not.i = icmp eq i32 %call.i186, 0
  br i1 %tobool.not.i, label %if.end.i187, label %do.end46

if.end.i187:                                      ; preds = %if.then39
  tail call void @iwl_set_bits_prph(ptr noundef %trans, i32 noundef 12300, i32 noundef 67108864) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 1073740) #5
  tail call void @iwl_clear_bits_prph(ptr noundef %trans, i32 noundef 12300, i32 noundef 67108864) #5
  %35 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trans_cfg, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %shadow_ram_support.i = getelementptr inbounds %struct.iwl_base_params, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %shadow_ram_support.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i = load i8, ptr %shadow_ram_support.i, align 4
  %40 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool1.not.i = icmp eq i8 %40, 0
  br i1 %tobool1.not.i, label %if.end.i187.if.end50_crit_edge, label %if.then2.i

if.end.i187.if.end50_crit_edge:                   ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then2.i:                                       ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i.i189 = getelementptr inbounds %struct.iwl_trans_ops, ptr %42, i32 0, i32 34
  %43 = ptrtoint ptr %set_bits_mask.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_bits_mask.i.i.i189, align 4
  tail call void %44(ptr noundef %trans, i32 noundef 592, i32 noundef -2147483648, i32 noundef -2147483648) #5
  br label %if.end50

do.end46:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %46, i32 noundef 0, ptr noundef nonnull @.str.3) #5
  br label %err_unlock

if.end50:                                         ; preds = %if.then2.i, %if.end.i187.if.end50_crit_edge
  %call51 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 48) #5
  %and = and i32 %call51, -385
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 48, i32 noundef %and) #5
  %47 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %48, i32 0, i32 34
  %49 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %50(ptr noundef %trans, i32 noundef 52, i32 noundef 3145728, i32 noundef 3145728) #5
  %51 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %trans_cfg, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %shadow_ram_support = getelementptr inbounds %struct.iwl_base_params, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %shadow_ram_support to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load = load i8, ptr %shadow_ram_support, align 4
  %56 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool54.not = icmp eq i8 %56, 0
  br i1 %tobool54.not, label %if.then55, label %if.end50.if.end60_crit_edge

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then55:                                        ; preds = %if.end50
  %call56 = call fastcc i32 @iwl_find_otp_image(ptr noundef %trans, ptr noundef nonnull %validblockaddr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.if.end60_crit_edge, label %if.then55.err_unlock_crit_edge

if.then55.err_unlock_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unlock

if.then55.if.end60_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.end60:                                         ; preds = %if.then55.if.end60_crit_edge, %if.end50.if.end60_crit_edge
  %57 = ptrtoint ptr %validblockaddr to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %validblockaddr, align 2
  %conv62 = zext i16 %58 to i32
  %add = add nuw nsw i32 %conv62, %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp63216.not = icmp eq i16 %12, 0
  br i1 %cmp63216.not, label %if.end60.do.end113_crit_edge, label %if.end60.for.body_crit_edge

if.end60.for.body_crit_edge:                      ; preds = %if.end60
  br label %for.body

if.end60.do.end113_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end113

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end60.for.body_crit_edge
  %cache_addr.0218 = phi i16 [ %add71, %for.inc.for.body_crit_edge ], [ 0, %if.end60.for.body_crit_edge ]
  %addr.0217 = phi i16 [ %add74, %for.inc.for.body_crit_edge ], [ %58, %if.end60.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %eeprom_data) #5
  %59 = ptrtoint ptr %eeprom_data to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %eeprom_data, align 2, !annotation !53
  %call65 = call fastcc i32 @iwl_read_otp_word(ptr noundef %trans, i16 noundef zeroext %addr.0217, ptr noundef nonnull %eeprom_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eeprom_data) #5
  br label %err_unlock

for.inc:                                          ; preds = %for.body
  %60 = ptrtoint ptr %eeprom_data to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %eeprom_data, align 2
  %62 = lshr exact i16 %cache_addr.0218, 1
  %div178 = zext i16 %62 to i32
  %arrayidx = getelementptr i16, ptr %call9.i, i32 %div178
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %61, ptr %arrayidx, align 2
  %add71 = add i16 %cache_addr.0218, 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eeprom_data) #5
  %add74 = add i16 %addr.0217, 2
  %conv61 = zext i16 %add74 to i32
  %cmp63 = icmp ugt i32 %add, %conv61
  br i1 %cmp63, label %for.inc.for.body_crit_edge, label %for.inc.do.end113_crit_edge

for.inc.do.end113_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end113

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body80:                                       ; preds = %for.inc104.for.body80_crit_edge, %for.cond76.preheader.for.body80_crit_edge
  %conv77220 = phi i32 [ %conv77, %for.inc104.for.body80_crit_edge ], [ 0, %for.cond76.preheader.for.body80_crit_edge ]
  %shl = shl nuw nsw i32 %conv77220, 1
  %and82 = and i32 %shl, 65532
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 44, i32 noundef %and82) #5
  %call83 = tail call i32 @iwl_poll_bit(ptr noundef %trans, i32 noundef 44, i32 noundef 1, i32 noundef 1, i32 noundef 5000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %cleanup101, label %for.inc104

cleanup101:                                       ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %65, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %conv77220) #5
  br label %err_unlock

for.inc104:                                       ; preds = %for.body80
  %call96 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 44) #5
  %shr = lshr i32 %call96, 16
  %conv97 = trunc i32 %shr to i16
  %66 = tail call i16 @llvm.bswap.i16(i16 %conv97)
  %div99177 = lshr i32 %conv77220, 1
  %arrayidx100 = getelementptr i16, ptr %call9.i, i32 %div99177
  %67 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %arrayidx100, align 2
  %add106 = add nuw nsw i32 %conv77220, 2
  %conv77 = and i32 %add106, 65535
  %cmp78 = icmp ult i32 %conv77, %conv
  br i1 %cmp78, label %for.inc104.for.body80_crit_edge, label %for.inc104.do.end113_crit_edge

for.inc104.do.end113_crit_edge:                   ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end113

for.inc104.for.body80_crit_edge:                  ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body80

do.end113:                                        ; preds = %for.inc104.do.end113_crit_edge, %for.inc.do.end113_crit_edge, %if.end60.do.end113_crit_edge, %for.cond76.preheader.do.end113_crit_edge
  %cond = phi ptr [ @.str.7, %for.cond76.preheader.do.end113_crit_edge ], [ @.str.6, %if.end60.do.end113_crit_edge ], [ @.str.7, %for.inc104.do.end113_crit_edge ], [ @.str.6, %for.inc.do.end113_crit_edge ]
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %69, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_read_eeprom, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond) #5
  %70 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i.i191 = getelementptr inbounds %struct.iwl_trans_ops, ptr %71, i32 0, i32 34
  %72 = ptrtoint ptr %set_bits_mask.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %set_bits_mask.i.i.i191, align 4
  tail call void %73(ptr noundef %trans, i32 noundef 0, i32 noundef 2097152, i32 noundef 0) #5
  %74 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv, ptr %eeprom_size, align 4
  %75 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call9.i, ptr %eeprom, align 4
  br label %cleanup118

err_unlock:                                       ; preds = %cleanup101, %cleanup, %if.then55.err_unlock_crit_edge, %do.end46
  %ret.0 = phi i32 [ %call.i186, %do.end46 ], [ %call65, %cleanup ], [ %call56, %if.then55.err_unlock_crit_edge ], [ %call83, %cleanup101 ]
  %76 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i.i193 = getelementptr inbounds %struct.iwl_trans_ops, ptr %77, i32 0, i32 34
  %78 = ptrtoint ptr %set_bits_mask.i.i.i193 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_bits_mask.i.i.i193, align 4
  tail call void %79(ptr noundef %trans, i32 noundef 0, i32 noundef 2097152, i32 noundef 0) #5
  br label %err_free

err_free:                                         ; preds = %err_unlock, %do.end33, %do.end21
  %ret.1 = phi i32 [ -2, %do.end21 ], [ %call.i182, %do.end33 ], [ %ret.0, %err_unlock ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #5
  br label %cleanup118

cleanup118:                                       ; preds = %err_free, %do.end113, %if.end4.cleanup118_crit_edge, %iwl_nvm_is_otp.exit, %entry.cleanup118_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free ], [ 0, %do.end113 ], [ -22, %entry.cleanup118_crit_edge ], [ -5, %iwl_nvm_is_otp.exit ], [ -12, %if.end4.cleanup118_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %validblockaddr) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_find_otp_image(ptr noundef %trans, ptr nocapture noundef writeonly %validblockaddr) unnamed_addr #0 align 64 {
entry:
  %link_value.i = alloca i16, align 2
  %link_value = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %link_value) #5
  %0 = ptrtoint ptr %link_value to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %link_value, align 2
  %call.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 52) #5
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %1 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %2, i32 0, i32 34
  %3 = ptrtoint ptr %set_bits_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_bits_mask.i.i.i, align 4
  tail call void %4(ptr noundef %trans, i32 noundef 52, i32 noundef 131072, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %link_value.i) #5
  %5 = ptrtoint ptr %link_value.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %link_value.i, align 2, !annotation !53
  %call.i39 = call fastcc i32 @iwl_read_otp_word(ptr noundef %trans, i16 noundef zeroext 0, ptr noundef nonnull %link_value.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool.not.i = icmp eq i32 %call.i39, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.iwl_is_otp_empty.exit.thread_crit_edge

entry.iwl_is_otp_empty.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_is_otp_empty.exit.thread

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %link_value.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %link_value.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not.i = icmp eq i16 %7, 0
  br i1 %tobool1.not.i, label %if.then.i.iwl_is_otp_empty.exit.thread_crit_edge, label %iwl_is_otp_empty.exit

if.then.i.iwl_is_otp_empty.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_is_otp_empty.exit.thread

iwl_is_otp_empty.exit.thread:                     ; preds = %if.then.i.iwl_is_otp_empty.exit.thread_crit_edge, %entry.iwl_is_otp_empty.exit.thread_crit_edge
  %.str.16.sink.i = phi ptr [ @.str.16, %if.then.i.iwl_is_otp_empty.exit.thread_crit_edge ], [ @.str.17, %entry.iwl_is_otp_empty.exit.thread_crit_edge ]
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %.str.16.sink.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link_value.i) #5
  br label %cleanup

iwl_is_otp_empty.exit:                            ; preds = %if.then.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link_value.i) #5
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end14.do.body_crit_edge, %iwl_is_otp_empty.exit
  %next_link_addr.0 = phi i16 [ 0, %iwl_is_otp_empty.exit ], [ %mul, %if.end14.do.body_crit_edge ]
  %usedblocks.0 = phi i32 [ 0, %iwl_is_otp_empty.exit ], [ %inc, %if.end14.do.body_crit_edge ]
  %10 = ptrtoint ptr %link_value to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %link_value, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %mul = shl i16 %12, 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %conv4 = zext i16 %mul to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_find_otp_image, ptr noundef nonnull @.str.14, i32 noundef %usedblocks.0, i32 noundef %conv4) #5
  %call7 = call fastcc i32 @iwl_read_otp_word(ptr noundef %trans, i16 noundef zeroext %mul, ptr noundef nonnull %link_value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %do.body
  %15 = ptrtoint ptr %link_value to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %link_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool10.not = icmp eq i16 %16, 0
  br i1 %tobool10.not, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i16 %next_link_addr.0, 2
  %17 = ptrtoint ptr %validblockaddr to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %add, ptr %validblockaddr, align 2
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %inc = add nuw nsw i32 %usedblocks.0, 1
  %18 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trans_cfg, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %max_ll_items = getelementptr inbounds %struct.iwl_base_params, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %max_ll_items to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %max_ll_items, align 4
  %conv16 = zext i8 %23 to i32
  %cmp.not.not = icmp ult i32 %usedblocks.0, %conv16
  br i1 %cmp.not.not, label %if.end14.do.body_crit_edge, label %do.end22

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %25, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_find_otp_image, ptr noundef nonnull @.str.15) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.then11, %do.body.cleanup_crit_edge, %iwl_is_otp_empty.exit.thread
  %retval.0 = phi i32 [ -22, %do.end22 ], [ 0, %if.then11 ], [ -22, %iwl_is_otp_empty.exit.thread ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link_value) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_read_otp_word(ptr noundef %trans, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %eeprom_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  %shl = shl nuw nsw i32 %conv, 1
  %and = and i32 %shl, 65532
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 44, i32 noundef %and) #5
  %call = tail call i32 @iwl_poll_bit(ptr noundef %trans, i32 noundef 44, i32 noundef 1, i32 noundef 1, i32 noundef 5000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.18, i32 noundef %conv) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 44) #5
  %call7 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 52) #5
  %and8 = and i32 %call7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.end17, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %5(ptr noundef %trans, i32 noundef 52, i32 noundef 2097152, i32 noundef 2097152) #5
  %dev14 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %6 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev14, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.19) #5
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %and18 = and i32 %call7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end28_crit_edge, label %if.then20

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %ops.i.i43 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i.i43 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i43, align 4
  %set_bits_mask.i.i44 = getelementptr inbounds %struct.iwl_trans_ops, ptr %9, i32 0, i32 34
  %10 = ptrtoint ptr %set_bits_mask.i.i44 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_bits_mask.i.i44, align 4
  tail call void %11(ptr noundef %trans, i32 noundef 52, i32 noundef 1048576, i32 noundef 1048576) #5
  %dev25 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %12 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev25, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @.str.20) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %if.end17.if.end28_crit_edge
  %shr = lshr i32 %call6, 16
  %conv29 = trunc i32 %shr to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv29)
  %15 = ptrtoint ptr %eeprom_data to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %eeprom_data, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then9, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %if.then9 ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_poll_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_finish_nic_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_set_bits_prph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_clear_bits_prph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !17, !19, !20, !22, !24, !26, !28, !29, !31, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__func__.iwl_read_eeprom, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 311, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 319, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 326, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 333, i32 4}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 373, i32 5}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 382, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 123, i32 3}
!17 = !{ptr @__func__.iwl_eeprom_verify_signature, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 76, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 81, i32 4}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 89, i32 4}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 95, i32 3}
!26 = !{ptr @__func__.iwl_eeprom_acquire_semaphore, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 56, i32 4}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__func__.iwl_find_otp_image, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 260, i32 3}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 280, i32 2}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 214, i32 4}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 218, i32 3}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 177, i32 3}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 188, i32 3}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-read.c", i32 196, i32 3}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
