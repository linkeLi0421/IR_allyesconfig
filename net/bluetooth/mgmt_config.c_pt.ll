; ModuleID = '/llk/IR_all_yes/net/bluetooth/mgmt_config.c_pt.bc'
source_filename = "../net/bluetooth/mgmt_config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.mgmt_rp_read_def_system_config = type { %struct.anon.145, %struct.anon.146, %struct.anon.147, %struct.anon.148, %struct.anon.149, %struct.anon.150, %struct.anon.151, %struct.anon.152, %struct.anon.153, %struct.anon.154, %struct.anon.155, %struct.anon.156, %struct.anon.157, %struct.anon.158, %struct.anon.159, %struct.anon.160, %struct.anon.161, %struct.anon.162, %struct.anon.163, %struct.anon.164, %struct.anon.165, %struct.anon.166, %struct.anon.167, %struct.anon.168, %struct.anon.169, %struct.anon.170, %struct.anon.171, %struct.anon.172, %struct.anon.173, %struct.anon.174, %struct.anon.175 }
%struct.anon.145 = type <{ %struct.mgmt_tlv, i16 }>
%struct.mgmt_tlv = type <{ i16, i8, [0 x i8] }>
%struct.anon.146 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.147 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.148 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.149 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.150 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.151 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.152 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.153 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.154 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.155 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.156 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.157 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.158 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.159 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.160 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.161 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.162 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.163 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.164 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.165 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.166 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.167 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.168 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.169 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.170 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.171 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.172 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.173 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.174 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.175 = type { %struct.mgmt_tlv, i8 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@read_def_system_config.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bluetooth\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"read_def_system_config\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/bluetooth/mgmt_config.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: sock %p\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: invalid len left %u, exp >= %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: unsupported parameter %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: invalid length %d, exp %zu for type %u\0A\00", [52 x i8] zeroinitializer }, align 32
@read_def_runtime_config.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.3, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"read_def_runtime_config\00", [40 x i8] zeroinitializer }, align 32
@set_def_runtime_config.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.3, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set_def_runtime_config\00", [41 x i8] zeroinitializer }, align 32
@switch.table.set_def_system_config = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [33 x i64] [i64 31, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 29, i64 30, i64 31]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 116, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 149, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 196, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 201, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 333, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [31 x i8] c"../net/bluetooth/mgmt_config.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 342, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [35 x i8] c"switch.table.set_def_system_config\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @switch.table.set_def_system_config], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.set_def_system_config to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @read_def_system_config(ptr noundef %sk, ptr noundef %hdev, ptr nocapture noundef readnone %data, i16 noundef zeroext %data_len) local_unnamed_addr #0 align 64 {
entry:
  %rp = alloca %struct.mgmt_rp_read_def_system_config, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 154, ptr nonnull %rp) #4
  %0 = getelementptr inbounds i8, ptr %rp, i32 146
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 2, !annotation !27
  %2 = ptrtoint ptr %rp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %rp, align 2
  %length = getelementptr inbounds %struct.mgmt_tlv, ptr %rp, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %length, align 2
  %value = getelementptr inbounds %struct.anon.145, ptr %rp, i32 0, i32 1
  %def_page_scan_type2 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 86
  %4 = ptrtoint ptr %def_page_scan_type2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %def_page_scan_type2, align 2
  %conv = zext i8 %5 to i16
  %6 = shl nuw i16 %conv, 8
  %7 = ptrtoint ptr %value to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %value, align 1
  %def_page_scan_int = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 1
  %8 = ptrtoint ptr %def_page_scan_int to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 256, ptr %def_page_scan_int, align 1
  %length5 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %length5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %length5, align 1
  %value6 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 1, i32 1
  %def_page_scan_int7 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 87
  %10 = ptrtoint ptr %def_page_scan_int7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %def_page_scan_int7, align 8
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %value6 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %value6, align 2
  %def_page_scan_window = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 2
  %14 = ptrtoint ptr %def_page_scan_window to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 512, ptr %def_page_scan_window, align 2
  %length10 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %length10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %length10, align 2
  %value11 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 2, i32 1
  %def_page_scan_window12 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 88
  %16 = ptrtoint ptr %def_page_scan_window12 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %def_page_scan_window12, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = ptrtoint ptr %value11 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %value11, align 1
  %def_inq_scan_type = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 3
  %20 = ptrtoint ptr %def_inq_scan_type to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 768, ptr %def_inq_scan_type, align 1
  %length15 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 3, i32 0, i32 1
  %21 = ptrtoint ptr %length15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %length15, align 1
  %value16 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 3, i32 1
  %def_inq_scan_type17 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 89
  %22 = ptrtoint ptr %def_inq_scan_type17 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %def_inq_scan_type17, align 4
  %conv18 = zext i8 %23 to i16
  %24 = shl nuw i16 %conv18, 8
  %25 = ptrtoint ptr %value16 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %value16, align 2
  %def_inq_scan_int = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 4
  %26 = ptrtoint ptr %def_inq_scan_int to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1024, ptr %def_inq_scan_int, align 2
  %length21 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %length21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %length21, align 2
  %value22 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 4, i32 1
  %def_inq_scan_int23 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 90
  %28 = ptrtoint ptr %def_inq_scan_int23 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %def_inq_scan_int23, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %31 = ptrtoint ptr %value22 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %value22, align 1
  %def_inq_scan_window = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 5
  %32 = ptrtoint ptr %def_inq_scan_window to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 1280, ptr %def_inq_scan_window, align 1
  %length26 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 5, i32 0, i32 1
  %33 = ptrtoint ptr %length26 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %length26, align 1
  %value27 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 5, i32 1
  %def_inq_scan_window28 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 91
  %34 = ptrtoint ptr %def_inq_scan_window28 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %def_inq_scan_window28, align 8
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %37 = ptrtoint ptr %value27 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %value27, align 2
  %def_br_lsto = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 6
  %38 = ptrtoint ptr %def_br_lsto to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1536, ptr %def_br_lsto, align 2
  %length31 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 6, i32 0, i32 1
  %39 = ptrtoint ptr %length31 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %length31, align 2
  %value32 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 6, i32 1
  %def_br_lsto33 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 92
  %40 = ptrtoint ptr %def_br_lsto33 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %def_br_lsto33, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %43 = ptrtoint ptr %value32 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %value32, align 1
  %def_page_timeout = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 7
  %44 = ptrtoint ptr %def_page_timeout to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 1792, ptr %def_page_timeout, align 1
  %length36 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 7, i32 0, i32 1
  %45 = ptrtoint ptr %length36 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %length36, align 1
  %value37 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 7, i32 1
  %def_page_timeout38 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 93
  %46 = ptrtoint ptr %def_page_timeout38 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %def_page_timeout38, align 4
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %49 = ptrtoint ptr %value37 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %value37, align 2
  %sniff_min_interval = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 8
  %50 = ptrtoint ptr %sniff_min_interval to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 2048, ptr %sniff_min_interval, align 2
  %length41 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 8, i32 0, i32 1
  %51 = ptrtoint ptr %length41 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %length41, align 2
  %value42 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 8, i32 1
  %sniff_min_interval43 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 103
  %52 = ptrtoint ptr %sniff_min_interval43 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %sniff_min_interval43, align 8
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %55 = ptrtoint ptr %value42 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %value42, align 1
  %sniff_max_interval = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 9
  %56 = ptrtoint ptr %sniff_max_interval to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 2304, ptr %sniff_max_interval, align 1
  %length46 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 9, i32 0, i32 1
  %57 = ptrtoint ptr %length46 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 2, ptr %length46, align 1
  %value47 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 9, i32 1
  %sniff_max_interval48 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 104
  %58 = ptrtoint ptr %sniff_max_interval48 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %sniff_max_interval48, align 2
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %61 = ptrtoint ptr %value47 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %value47, align 2
  %le_adv_min_interval = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 10
  %62 = ptrtoint ptr %le_adv_min_interval to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 2560, ptr %le_adv_min_interval, align 2
  %length51 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 10, i32 0, i32 1
  %63 = ptrtoint ptr %length51 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 2, ptr %length51, align 2
  %value52 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 10, i32 1
  %le_adv_min_interval53 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 44
  %64 = ptrtoint ptr %le_adv_min_interval53 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %le_adv_min_interval53, align 4
  %66 = tail call i16 @llvm.bswap.i16(i16 %65)
  %67 = ptrtoint ptr %value52 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %66, ptr %value52, align 1
  %le_adv_max_interval = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 11
  %68 = ptrtoint ptr %le_adv_max_interval to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 2816, ptr %le_adv_max_interval, align 1
  %length56 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 11, i32 0, i32 1
  %69 = ptrtoint ptr %length56 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %length56, align 1
  %value57 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 11, i32 1
  %le_adv_max_interval58 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 45
  %70 = ptrtoint ptr %le_adv_max_interval58 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %le_adv_max_interval58, align 2
  %72 = tail call i16 @llvm.bswap.i16(i16 %71)
  %73 = ptrtoint ptr %value57 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %value57, align 2
  %def_multi_adv_rotation_duration = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 12
  %74 = ptrtoint ptr %def_multi_adv_rotation_duration to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 3072, ptr %def_multi_adv_rotation_duration, align 2
  %length61 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 12, i32 0, i32 1
  %75 = ptrtoint ptr %length61 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 2, ptr %length61, align 2
  %value62 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 12, i32 1
  %def_multi_adv_rotation_duration63 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 94
  %76 = ptrtoint ptr %def_multi_adv_rotation_duration63 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %def_multi_adv_rotation_duration63, align 2
  %78 = tail call i16 @llvm.bswap.i16(i16 %77)
  %79 = ptrtoint ptr %value62 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %78, ptr %value62, align 1
  %le_scan_interval = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 13
  %80 = ptrtoint ptr %le_scan_interval to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 3328, ptr %le_scan_interval, align 1
  %length66 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 13, i32 0, i32 1
  %81 = ptrtoint ptr %length66 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 2, ptr %length66, align 1
  %value67 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 13, i32 1
  %le_scan_interval68 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 47
  %82 = ptrtoint ptr %le_scan_interval68 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %le_scan_interval68, align 2
  %84 = tail call i16 @llvm.bswap.i16(i16 %83)
  %85 = ptrtoint ptr %value67 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %value67, align 2
  %le_scan_window = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 14
  %86 = ptrtoint ptr %le_scan_window to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 3584, ptr %le_scan_window, align 2
  %length71 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 14, i32 0, i32 1
  %87 = ptrtoint ptr %length71 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 2, ptr %length71, align 2
  %value72 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 14, i32 1
  %le_scan_window73 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 48
  %88 = ptrtoint ptr %le_scan_window73 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %le_scan_window73, align 4
  %90 = tail call i16 @llvm.bswap.i16(i16 %89)
  %91 = ptrtoint ptr %value72 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 %90, ptr %value72, align 1
  %le_scan_int_suspend = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 15
  %92 = ptrtoint ptr %le_scan_int_suspend to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 3840, ptr %le_scan_int_suspend, align 1
  %length76 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 15, i32 0, i32 1
  %93 = ptrtoint ptr %length76 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 2, ptr %length76, align 1
  %value77 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 15, i32 1
  %le_scan_int_suspend78 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 49
  %94 = ptrtoint ptr %le_scan_int_suspend78 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %le_scan_int_suspend78, align 2
  %96 = tail call i16 @llvm.bswap.i16(i16 %95)
  %97 = ptrtoint ptr %value77 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %value77, align 2
  %le_scan_window_suspend = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 16
  %98 = ptrtoint ptr %le_scan_window_suspend to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 4096, ptr %le_scan_window_suspend, align 2
  %length81 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 16, i32 0, i32 1
  %99 = ptrtoint ptr %length81 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 2, ptr %length81, align 2
  %value82 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 16, i32 1
  %le_scan_window_suspend83 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 50
  %100 = ptrtoint ptr %le_scan_window_suspend83 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %le_scan_window_suspend83, align 8
  %102 = tail call i16 @llvm.bswap.i16(i16 %101)
  %103 = ptrtoint ptr %value82 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 2)
  store i16 %102, ptr %value82, align 1
  %le_scan_int_discovery = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 17
  %104 = ptrtoint ptr %le_scan_int_discovery to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 4352, ptr %le_scan_int_discovery, align 1
  %length86 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 17, i32 0, i32 1
  %105 = ptrtoint ptr %length86 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 2, ptr %length86, align 1
  %value87 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 17, i32 1
  %le_scan_int_discovery88 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 51
  %106 = ptrtoint ptr %le_scan_int_discovery88 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %le_scan_int_discovery88, align 2
  %108 = tail call i16 @llvm.bswap.i16(i16 %107)
  %109 = ptrtoint ptr %value87 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %value87, align 2
  %le_scan_window_discovery = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 18
  %110 = ptrtoint ptr %le_scan_window_discovery to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 4608, ptr %le_scan_window_discovery, align 2
  %length91 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 18, i32 0, i32 1
  %111 = ptrtoint ptr %length91 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 2, ptr %length91, align 2
  %value92 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 18, i32 1
  %le_scan_window_discovery93 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 52
  %112 = ptrtoint ptr %le_scan_window_discovery93 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %le_scan_window_discovery93, align 4
  %114 = tail call i16 @llvm.bswap.i16(i16 %113)
  %115 = ptrtoint ptr %value92 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 %114, ptr %value92, align 1
  %le_scan_int_adv_monitor = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 19
  %116 = ptrtoint ptr %le_scan_int_adv_monitor to i32
  call void @__asan_storeN_noabort(i32 %116, i32 2)
  store i16 4864, ptr %le_scan_int_adv_monitor, align 1
  %length96 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 19, i32 0, i32 1
  %117 = ptrtoint ptr %length96 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 2, ptr %length96, align 1
  %value97 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 19, i32 1
  %le_scan_int_adv_monitor98 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 53
  %118 = ptrtoint ptr %le_scan_int_adv_monitor98 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %le_scan_int_adv_monitor98, align 2
  %120 = tail call i16 @llvm.bswap.i16(i16 %119)
  %121 = ptrtoint ptr %value97 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %value97, align 2
  %le_scan_window_adv_monitor = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 20
  %122 = ptrtoint ptr %le_scan_window_adv_monitor to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 5120, ptr %le_scan_window_adv_monitor, align 2
  %length101 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 20, i32 0, i32 1
  %123 = ptrtoint ptr %length101 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 2, ptr %length101, align 2
  %value102 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 20, i32 1
  %le_scan_window_adv_monitor103 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 54
  %124 = ptrtoint ptr %le_scan_window_adv_monitor103 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %le_scan_window_adv_monitor103, align 8
  %126 = tail call i16 @llvm.bswap.i16(i16 %125)
  %127 = ptrtoint ptr %value102 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 2)
  store i16 %126, ptr %value102, align 1
  %le_scan_int_connect = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 21
  %128 = ptrtoint ptr %le_scan_int_connect to i32
  call void @__asan_storeN_noabort(i32 %128, i32 2)
  store i16 5376, ptr %le_scan_int_connect, align 1
  %length106 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 21, i32 0, i32 1
  %129 = ptrtoint ptr %length106 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 2, ptr %length106, align 1
  %value107 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 21, i32 1
  %le_scan_int_connect108 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 55
  %130 = ptrtoint ptr %le_scan_int_connect108 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %le_scan_int_connect108, align 2
  %132 = tail call i16 @llvm.bswap.i16(i16 %131)
  %133 = ptrtoint ptr %value107 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %value107, align 2
  %le_scan_window_connect = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 22
  %134 = ptrtoint ptr %le_scan_window_connect to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 5632, ptr %le_scan_window_connect, align 2
  %length111 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 22, i32 0, i32 1
  %135 = ptrtoint ptr %length111 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 2, ptr %length111, align 2
  %value112 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 22, i32 1
  %le_scan_window_connect113 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 56
  %136 = ptrtoint ptr %le_scan_window_connect113 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %le_scan_window_connect113, align 4
  %138 = tail call i16 @llvm.bswap.i16(i16 %137)
  %139 = ptrtoint ptr %value112 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 2)
  store i16 %138, ptr %value112, align 1
  %le_conn_min_interval = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 23
  %140 = ptrtoint ptr %le_conn_min_interval to i32
  call void @__asan_storeN_noabort(i32 %140, i32 2)
  store i16 5888, ptr %le_conn_min_interval, align 1
  %length116 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 23, i32 0, i32 1
  %141 = ptrtoint ptr %length116 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 2, ptr %length116, align 1
  %value117 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 23, i32 1
  %le_conn_min_interval118 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 57
  %142 = ptrtoint ptr %le_conn_min_interval118 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %le_conn_min_interval118, align 2
  %144 = tail call i16 @llvm.bswap.i16(i16 %143)
  %145 = ptrtoint ptr %value117 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %value117, align 2
  %le_conn_max_interval = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 24
  %146 = ptrtoint ptr %le_conn_max_interval to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 6144, ptr %le_conn_max_interval, align 2
  %length121 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 24, i32 0, i32 1
  %147 = ptrtoint ptr %length121 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 2, ptr %length121, align 2
  %value122 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 24, i32 1
  %le_conn_max_interval123 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 58
  %148 = ptrtoint ptr %le_conn_max_interval123 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %le_conn_max_interval123, align 8
  %150 = tail call i16 @llvm.bswap.i16(i16 %149)
  %151 = ptrtoint ptr %value122 to i32
  call void @__asan_storeN_noabort(i32 %151, i32 2)
  store i16 %150, ptr %value122, align 1
  %le_conn_latency = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 25
  %152 = ptrtoint ptr %le_conn_latency to i32
  call void @__asan_storeN_noabort(i32 %152, i32 2)
  store i16 6400, ptr %le_conn_latency, align 1
  %length126 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 25, i32 0, i32 1
  %153 = ptrtoint ptr %length126 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 2, ptr %length126, align 1
  %value127 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 25, i32 1
  %le_conn_latency128 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 59
  %154 = ptrtoint ptr %le_conn_latency128 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %le_conn_latency128, align 2
  %156 = tail call i16 @llvm.bswap.i16(i16 %155)
  %157 = ptrtoint ptr %value127 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %value127, align 2
  %le_supv_timeout = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 26
  %158 = ptrtoint ptr %le_supv_timeout to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 6656, ptr %le_supv_timeout, align 2
  %length131 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 26, i32 0, i32 1
  %159 = ptrtoint ptr %length131 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 2, ptr %length131, align 2
  %value132 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 26, i32 1
  %le_supv_timeout133 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 60
  %160 = ptrtoint ptr %le_supv_timeout133 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %le_supv_timeout133, align 4
  %162 = tail call i16 @llvm.bswap.i16(i16 %161)
  %163 = ptrtoint ptr %value132 to i32
  call void @__asan_storeN_noabort(i32 %163, i32 2)
  store i16 %162, ptr %value132, align 1
  %def_le_autoconnect_timeout = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 27
  %164 = ptrtoint ptr %def_le_autoconnect_timeout to i32
  call void @__asan_storeN_noabort(i32 %164, i32 2)
  store i16 6912, ptr %def_le_autoconnect_timeout, align 1
  %length136 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 27, i32 0, i32 1
  %165 = ptrtoint ptr %length136 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 2, ptr %length136, align 1
  %value137 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 27, i32 1
  %def_le_autoconnect_timeout138 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 95
  %166 = ptrtoint ptr %def_le_autoconnect_timeout138 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %def_le_autoconnect_timeout138, align 8
  %conv139 = zext i16 %167 to i32
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %conv139) #4
  %conv140 = trunc i32 %call to i16
  %168 = tail call i16 @llvm.bswap.i16(i16 %conv140)
  %169 = ptrtoint ptr %value137 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %value137, align 2
  %advmon_allowlist_duration = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 28
  %170 = ptrtoint ptr %advmon_allowlist_duration to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 7424, ptr %advmon_allowlist_duration, align 2
  %length143 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 28, i32 0, i32 1
  %171 = ptrtoint ptr %length143 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 2, ptr %length143, align 2
  %value144 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 28, i32 1
  %advmon_allowlist_duration145 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 79
  %172 = ptrtoint ptr %advmon_allowlist_duration145 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %advmon_allowlist_duration145, align 8
  %174 = tail call i16 @llvm.bswap.i16(i16 %173)
  %175 = ptrtoint ptr %value144 to i32
  call void @__asan_storeN_noabort(i32 %175, i32 2)
  store i16 %174, ptr %value144, align 1
  %advmon_no_filter_duration = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 29
  %176 = ptrtoint ptr %advmon_no_filter_duration to i32
  call void @__asan_storeN_noabort(i32 %176, i32 2)
  store i16 7680, ptr %advmon_no_filter_duration, align 1
  %length148 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 29, i32 0, i32 1
  %177 = ptrtoint ptr %length148 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 2, ptr %length148, align 1
  %value149 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 29, i32 1
  %advmon_no_filter_duration150 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 80
  %178 = ptrtoint ptr %advmon_no_filter_duration150 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %advmon_no_filter_duration150, align 2
  %180 = tail call i16 @llvm.bswap.i16(i16 %179)
  %181 = ptrtoint ptr %value149 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %value149, align 2
  %enable_advmon_interleave_scan = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 30
  %182 = ptrtoint ptr %enable_advmon_interleave_scan to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 7936, ptr %enable_advmon_interleave_scan, align 2
  %length153 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 30, i32 0, i32 1
  %183 = ptrtoint ptr %length153 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 1, ptr %length153, align 2
  %value154 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %rp, i32 0, i32 30, i32 1
  %enable_advmon_interleave_scan155 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 81
  %184 = ptrtoint ptr %enable_advmon_interleave_scan155 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %enable_advmon_interleave_scan155, align 4
  %186 = ptrtoint ptr %value154 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %value154, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_def_system_config.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_def_system_config, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_def_system_config.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef %sk) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %187 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %id, align 8
  %call159 = call i32 @mgmt_cmd_complete(ptr noundef %sk, i16 noundef zeroext %188, i16 noundef zeroext 75, i8 noundef zeroext 0, ptr noundef nonnull %rp, i32 noundef 154) #4
  call void @llvm.lifetime.end.p0(i64 154, ptr nonnull %rp) #4
  ret i32 %call159
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_cmd_complete(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_def_system_config(ptr noundef %sk, ptr noundef %hdev, ptr noundef readonly %data, i16 noundef zeroext %data_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %data_len)
  %cmp = icmp ult i16 %data_len, 3
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %name20 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %id = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 8
  %call = tail call i32 @mgmt_cmd_status(ptr noundef %sk, i16 noundef zeroext %1, i16 noundef zeroext 76, i8 noundef zeroext 13) #4
  br label %cleanup166

while.cond41.preheader:                           ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %data_len)
  %cmp43281 = icmp ugt i16 %data_len, 2
  br i1 %cmp43281, label %while.body45.lr.ph, label %while.cond41.preheader.while.end163_crit_edge

while.cond41.preheader.while.end163_crit_edge:    ; preds = %while.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end163

while.body45.lr.ph:                               ; preds = %while.cond41.preheader
  %enable_advmon_interleave_scan = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 81
  %advmon_no_filter_duration = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 80
  %advmon_allowlist_duration = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 79
  %def_le_autoconnect_timeout = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 95
  %le_supv_timeout = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 60
  %le_conn_latency = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 59
  %le_conn_max_interval = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 58
  %le_conn_min_interval = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 57
  %le_scan_window_connect = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 56
  %le_scan_int_connect = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 55
  %le_scan_window_adv_monitor = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 54
  %le_scan_int_adv_monitor = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 53
  %le_scan_window_discovery = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 52
  %le_scan_int_discovery = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 51
  %le_scan_window_suspend = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 50
  %le_scan_int_suspend = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 49
  %le_scan_window = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 48
  %le_scan_interval = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 47
  %def_multi_adv_rotation_duration = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 94
  %le_adv_max_interval = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 45
  %le_adv_min_interval = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 44
  %sniff_max_interval = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 104
  %sniff_min_interval = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 103
  %def_page_timeout = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 93
  %def_br_lsto = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 92
  %def_inq_scan_window = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 91
  %def_inq_scan_int = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 90
  %def_inq_scan_type = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 89
  %def_page_scan_window = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 88
  %def_page_scan_int = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 87
  %def_page_scan_type = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 86
  br label %while.body45

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader
  %buffer.0279 = phi ptr [ %data, %while.cond.preheader ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %buffer_left.0278 = phi i16 [ %data_len, %while.cond.preheader ], [ %conv36, %cleanup.while.body_crit_edge ]
  %conv2280 = zext i16 %buffer_left.0278 to i32
  %length = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.0279, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %length, align 1
  %conv5 = zext i8 %3 to i32
  %conv6 = add nuw nsw i32 %conv5, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %conv2280)
  %cmp10 = icmp ugt i32 %conv6, %conv2280
  br i1 %cmp10, label %if.then12, label %if.end17

if.then12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.4, ptr noundef %name20, i32 noundef %conv2280, i32 noundef %conv6) #4
  %id15 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %4 = ptrtoint ptr %id15 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id15, align 8
  %call16 = tail call i32 @mgmt_cmd_status(ptr noundef %sk, i16 noundef zeroext %5, i16 noundef zeroext 76, i8 noundef zeroext 13) #4
  br label %cleanup166

if.end17:                                         ; preds = %while.body
  %6 = ptrtoint ptr %buffer.0279 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %buffer.0279, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv18 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %8)
  %9 = icmp ult i16 %8, 32
  br i1 %9, label %switch.hole_check, label %if.end17.sw.epilog.thread_crit_edge

if.end17.sw.epilog.thread_crit_edge:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %switch.hole_check.sw.epilog.thread_crit_edge, %if.end17.sw.epilog.thread_crit_edge
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.5, ptr noundef %name20, i32 noundef %conv18) #4
  br label %cleanup

switch.hole_check:                                ; preds = %if.end17
  %switch.maskindex = zext i16 %8 to i32
  %switch.shifted = lshr i32 -268435457, %switch.maskindex
  %10 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %switch.lobit.not = icmp eq i32 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.thread_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.thread_crit_edge:     ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

switch.lookup:                                    ; preds = %switch.hole_check
  %11 = sext i16 %8 to i32
  %switch.gep = getelementptr inbounds [32 x i32], ptr @switch.table.set_def_system_config, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %conv5)
  %cmp24.not = icmp eq i32 %switch.load, %conv5
  br i1 %cmp24.not, label %switch.lookup.cleanup_crit_edge, label %if.then26

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then26:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %conv5.le = zext i8 %3 to i32
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.6, ptr noundef %name20, i32 noundef %conv5.le, i32 noundef %switch.load, i32 noundef %conv18) #4
  %id31 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %13 = ptrtoint ptr %id31 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id31, align 8
  %call32 = tail call i32 @mgmt_cmd_status(ptr noundef %sk, i16 noundef zeroext %14, i16 noundef zeroext 76, i8 noundef zeroext 13) #4
  br label %cleanup166

cleanup:                                          ; preds = %switch.lookup.cleanup_crit_edge, %sw.epilog.thread
  %15 = trunc i32 %conv6 to i16
  %conv36 = sub i16 %buffer_left.0278, %15
  %add.ptr = getelementptr i8, ptr %buffer.0279, i32 %conv6
  %cmp3 = icmp ugt i16 %conv36, 2
  br i1 %cmp3, label %cleanup.while.body_crit_edge, label %while.cond41.preheader

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body45:                                     ; preds = %sw.epilog156.while.body45_crit_edge, %while.body45.lr.ph
  %buffer.2283 = phi ptr [ %data, %while.body45.lr.ph ], [ %add.ptr162, %sw.epilog156.while.body45_crit_edge ]
  %buffer_left.2282 = phi i16 [ %data_len, %while.body45.lr.ph ], [ %conv160, %sw.epilog156.while.body45_crit_edge ]
  %length47 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 1
  %16 = ptrtoint ptr %length47 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %length47, align 1
  %conv49 = zext i8 %17 to i32
  %add50 = add nuw nsw i32 %conv49, 3
  %18 = ptrtoint ptr %buffer.2283 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %buffer.2283, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i16 %20, label %sw.default152 [
    i16 0, label %sw.bb55
    i16 1, label %sw.bb58
    i16 2, label %sw.bb61
    i16 3, label %sw.bb64
    i16 4, label %sw.bb68
    i16 5, label %sw.bb71
    i16 6, label %sw.bb74
    i16 7, label %sw.bb77
    i16 8, label %sw.bb80
    i16 9, label %sw.bb83
    i16 10, label %sw.bb86
    i16 11, label %sw.bb89
    i16 12, label %sw.bb92
    i16 13, label %sw.bb95
    i16 14, label %sw.bb98
    i16 15, label %sw.bb101
    i16 16, label %sw.bb104
    i16 17, label %sw.bb107
    i16 18, label %sw.bb110
    i16 19, label %sw.bb113
    i16 20, label %sw.bb116
    i16 21, label %sw.bb119
    i16 22, label %sw.bb122
    i16 23, label %sw.bb125
    i16 24, label %sw.bb128
    i16 25, label %sw.bb131
    i16 26, label %sw.bb134
    i16 27, label %if.else.i
    i16 29, label %sw.bb143
    i16 30, label %sw.bb146
    i16 31, label %sw.bb149
  ]

sw.bb55:                                          ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %22 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %value, align 1
  %24 = lshr i16 %23, 8
  %conv57 = trunc i16 %24 to i8
  %25 = ptrtoint ptr %def_page_scan_type to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv57, ptr %def_page_scan_type, align 2
  br label %sw.epilog156

sw.bb58:                                          ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value59 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %26 = ptrtoint ptr %value59 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %value59, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %29 = ptrtoint ptr %def_page_scan_int to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %def_page_scan_int, align 8
  br label %sw.epilog156

sw.bb61:                                          ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value62 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %30 = ptrtoint ptr %value62 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %value62, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %33 = ptrtoint ptr %def_page_scan_window to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %def_page_scan_window, align 2
  br label %sw.epilog156

sw.bb64:                                          ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value65 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %34 = ptrtoint ptr %value65 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %value65, align 1
  %36 = lshr i16 %35, 8
  %conv67 = trunc i16 %36 to i8
  %37 = ptrtoint ptr %def_inq_scan_type to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv67, ptr %def_inq_scan_type, align 4
  br label %sw.epilog156

sw.bb68:                                          ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value69 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %38 = ptrtoint ptr %value69 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %value69, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %41 = ptrtoint ptr %def_inq_scan_int to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %def_inq_scan_int, align 2
  br label %sw.epilog156

sw.bb71:                                          ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value72 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %42 = ptrtoint ptr %value72 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %value72, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %45 = ptrtoint ptr %def_inq_scan_window to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %def_inq_scan_window, align 8
  br label %sw.epilog156

sw.bb74:                                          ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value75 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %46 = ptrtoint ptr %value75 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %value75, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %49 = ptrtoint ptr %def_br_lsto to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %def_br_lsto, align 2
  br label %sw.epilog156

sw.bb77:                                          ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value78 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %50 = ptrtoint ptr %value78 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %value78, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  %53 = ptrtoint ptr %def_page_timeout to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %def_page_timeout, align 4
  br label %sw.epilog156

sw.bb80:                                          ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value81 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %54 = ptrtoint ptr %value81 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %value81, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %57 = ptrtoint ptr %sniff_min_interval to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %sniff_min_interval, align 8
  br label %sw.epilog156

sw.bb83:                                          ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value84 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %58 = ptrtoint ptr %value84 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %value84, align 1
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %61 = ptrtoint ptr %sniff_max_interval to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %sniff_max_interval, align 2
  br label %sw.epilog156

sw.bb86:                                          ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value87 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %62 = ptrtoint ptr %value87 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %value87, align 1
  %64 = tail call i16 @llvm.bswap.i16(i16 %63)
  %65 = ptrtoint ptr %le_adv_min_interval to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %le_adv_min_interval, align 4
  br label %sw.epilog156

sw.bb89:                                          ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value90 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %66 = ptrtoint ptr %value90 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %value90, align 1
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  %69 = ptrtoint ptr %le_adv_max_interval to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %le_adv_max_interval, align 2
  br label %sw.epilog156

sw.bb92:                                          ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value93 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %70 = ptrtoint ptr %value93 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %value93, align 1
  %72 = tail call i16 @llvm.bswap.i16(i16 %71)
  %73 = ptrtoint ptr %def_multi_adv_rotation_duration to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %def_multi_adv_rotation_duration, align 2
  br label %sw.epilog156

sw.bb95:                                          ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value96 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %74 = ptrtoint ptr %value96 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %value96, align 1
  %76 = tail call i16 @llvm.bswap.i16(i16 %75)
  %77 = ptrtoint ptr %le_scan_interval to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %le_scan_interval, align 2
  br label %sw.epilog156

sw.bb98:                                          ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value99 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %78 = ptrtoint ptr %value99 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %value99, align 1
  %80 = tail call i16 @llvm.bswap.i16(i16 %79)
  %81 = ptrtoint ptr %le_scan_window to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %le_scan_window, align 4
  br label %sw.epilog156

sw.bb101:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value102 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %82 = ptrtoint ptr %value102 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %value102, align 1
  %84 = tail call i16 @llvm.bswap.i16(i16 %83)
  %85 = ptrtoint ptr %le_scan_int_suspend to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %le_scan_int_suspend, align 2
  br label %sw.epilog156

sw.bb104:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value105 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %86 = ptrtoint ptr %value105 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %value105, align 1
  %88 = tail call i16 @llvm.bswap.i16(i16 %87)
  %89 = ptrtoint ptr %le_scan_window_suspend to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %le_scan_window_suspend, align 8
  br label %sw.epilog156

sw.bb107:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value108 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %90 = ptrtoint ptr %value108 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %value108, align 1
  %92 = tail call i16 @llvm.bswap.i16(i16 %91)
  %93 = ptrtoint ptr %le_scan_int_discovery to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %le_scan_int_discovery, align 2
  br label %sw.epilog156

sw.bb110:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value111 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %94 = ptrtoint ptr %value111 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %value111, align 1
  %96 = tail call i16 @llvm.bswap.i16(i16 %95)
  %97 = ptrtoint ptr %le_scan_window_discovery to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %le_scan_window_discovery, align 4
  br label %sw.epilog156

sw.bb113:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value114 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %98 = ptrtoint ptr %value114 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %value114, align 1
  %100 = tail call i16 @llvm.bswap.i16(i16 %99)
  %101 = ptrtoint ptr %le_scan_int_adv_monitor to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %le_scan_int_adv_monitor, align 2
  br label %sw.epilog156

sw.bb116:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value117 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %102 = ptrtoint ptr %value117 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %value117, align 1
  %104 = tail call i16 @llvm.bswap.i16(i16 %103)
  %105 = ptrtoint ptr %le_scan_window_adv_monitor to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %le_scan_window_adv_monitor, align 8
  br label %sw.epilog156

sw.bb119:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value120 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %106 = ptrtoint ptr %value120 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %value120, align 1
  %108 = tail call i16 @llvm.bswap.i16(i16 %107)
  %109 = ptrtoint ptr %le_scan_int_connect to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %le_scan_int_connect, align 2
  br label %sw.epilog156

sw.bb122:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value123 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %110 = ptrtoint ptr %value123 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %111 = load i16, ptr %value123, align 1
  %112 = tail call i16 @llvm.bswap.i16(i16 %111)
  %113 = ptrtoint ptr %le_scan_window_connect to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %le_scan_window_connect, align 4
  br label %sw.epilog156

sw.bb125:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value126 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %114 = ptrtoint ptr %value126 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %value126, align 1
  %116 = tail call i16 @llvm.bswap.i16(i16 %115)
  %117 = ptrtoint ptr %le_conn_min_interval to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %le_conn_min_interval, align 2
  br label %sw.epilog156

sw.bb128:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value129 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %118 = ptrtoint ptr %value129 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %value129, align 1
  %120 = tail call i16 @llvm.bswap.i16(i16 %119)
  %121 = ptrtoint ptr %le_conn_max_interval to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %le_conn_max_interval, align 8
  br label %sw.epilog156

sw.bb131:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value132 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %122 = ptrtoint ptr %value132 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 2)
  %123 = load i16, ptr %value132, align 1
  %124 = tail call i16 @llvm.bswap.i16(i16 %123)
  %125 = ptrtoint ptr %le_conn_latency to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %le_conn_latency, align 2
  br label %sw.epilog156

sw.bb134:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value135 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %126 = ptrtoint ptr %value135 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %value135, align 1
  %128 = tail call i16 @llvm.bswap.i16(i16 %127)
  %129 = ptrtoint ptr %le_supv_timeout to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %le_supv_timeout, align 4
  br label %sw.epilog156

if.else.i:                                        ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value138 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %130 = ptrtoint ptr %value138 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 2)
  %131 = load i16, ptr %value138, align 1
  %132 = tail call i16 @llvm.bswap.i16(i16 %131)
  %conv140 = zext i16 %132 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv140) #4
  %conv142 = trunc i32 %call2.i to i16
  %133 = ptrtoint ptr %def_le_autoconnect_timeout to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv142, ptr %def_le_autoconnect_timeout, align 8
  br label %sw.epilog156

sw.bb143:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value144 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %134 = ptrtoint ptr %value144 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %135 = load i16, ptr %value144, align 1
  %136 = tail call i16 @llvm.bswap.i16(i16 %135)
  %137 = ptrtoint ptr %advmon_allowlist_duration to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %advmon_allowlist_duration, align 8
  br label %sw.epilog156

sw.bb146:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value147 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %138 = ptrtoint ptr %value147 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %value147, align 1
  %140 = tail call i16 @llvm.bswap.i16(i16 %139)
  %141 = ptrtoint ptr %advmon_no_filter_duration to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %advmon_no_filter_duration, align 2
  br label %sw.epilog156

sw.bb149:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %value150 = getelementptr inbounds %struct.mgmt_tlv, ptr %buffer.2283, i32 0, i32 2
  %142 = ptrtoint ptr %value150 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %value150, align 1
  %144 = ptrtoint ptr %enable_advmon_interleave_scan to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %enable_advmon_interleave_scan, align 4
  br label %sw.epilog156

sw.default152:                                    ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  %conv54 = zext i16 %20 to i32
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.5, ptr noundef %name20, i32 noundef %conv54) #4
  br label %sw.epilog156

sw.epilog156:                                     ; preds = %sw.default152, %sw.bb149, %sw.bb146, %sw.bb143, %if.else.i, %sw.bb134, %sw.bb131, %sw.bb128, %sw.bb125, %sw.bb122, %sw.bb119, %sw.bb116, %sw.bb113, %sw.bb110, %sw.bb107, %sw.bb104, %sw.bb101, %sw.bb98, %sw.bb95, %sw.bb92, %sw.bb89, %sw.bb86, %sw.bb83, %sw.bb80, %sw.bb77, %sw.bb74, %sw.bb71, %sw.bb68, %sw.bb64, %sw.bb61, %sw.bb58, %sw.bb55
  %145 = trunc i32 %add50 to i16
  %conv160 = sub i16 %buffer_left.2282, %145
  %add.ptr162 = getelementptr i8, ptr %buffer.2283, i32 %add50
  %cmp43 = icmp ugt i16 %conv160, 2
  br i1 %cmp43, label %sw.epilog156.while.body45_crit_edge, label %sw.epilog156.while.end163_crit_edge

sw.epilog156.while.end163_crit_edge:              ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end163

sw.epilog156.while.body45_crit_edge:              ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body45

while.end163:                                     ; preds = %sw.epilog156.while.end163_crit_edge, %while.cond41.preheader.while.end163_crit_edge
  %id164 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %146 = ptrtoint ptr %id164 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %id164, align 8
  %call165 = tail call i32 @mgmt_cmd_complete(ptr noundef %sk, i16 noundef zeroext %147, i16 noundef zeroext 76, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #4
  br label %cleanup166

cleanup166:                                       ; preds = %while.end163, %if.then26, %if.then12, %if.then
  %retval.2 = phi i32 [ %call, %if.then ], [ %call165, %while.end163 ], [ %call32, %if.then26 ], [ %call16, %if.then12 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_cmd_status(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_warn(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @read_def_runtime_config(ptr noundef %sk, ptr noundef %hdev, ptr nocapture noundef readnone %data, i16 noundef zeroext %data_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_def_runtime_config.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_def_runtime_config, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_def_runtime_config.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef %sk) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 8
  %call3 = tail call i32 @mgmt_cmd_complete(ptr noundef %sk, i16 noundef zeroext %1, i16 noundef zeroext 77, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #4
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_def_runtime_config(ptr noundef %sk, ptr noundef %hdev, ptr nocapture noundef readnone %data, i16 noundef zeroext %data_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_def_runtime_config.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_def_runtime_config, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_def_runtime_config.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef %sk) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 8
  %call3 = tail call i32 @mgmt_cmd_status(ptr noundef %sk, i16 noundef zeroext %1, i16 noundef zeroext 76, i8 noundef zeroext 13) #4
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/mgmt_config.c", i32 116, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @read_def_system_config.__UNIQUE_ID_ddebug475, !1, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/mgmt_config.c", i32 149, i32 4}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/bluetooth/mgmt_config.c", i32 196, i32 4}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/bluetooth/mgmt_config.c", i32 201, i32 4}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/bluetooth/mgmt_config.c", i32 333, i32 2}
!14 = !{ptr @read_def_runtime_config.__UNIQUE_ID_ddebug476, !13, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/bluetooth/mgmt_config.c", i32 342, i32 2}
!17 = !{ptr @set_def_runtime_config.__UNIQUE_ID_ddebug477, !16, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
!28 = !{i64 2148787802, i64 2148787807, i64 2148787820, i64 2148787864, i64 2148787898, i64 2148787919}
