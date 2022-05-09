; ModuleID = '/llk/IR_all_yes/net/ncsi/ncsi-aen.c_pt.bc'
source_filename = "../net/ncsi/ncsi-aen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ncsi_aen_handler = type { i8, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ncsi_aen_pkt_hdr = type { %struct.ncsi_pkt_hdr, [3 x i8], i8 }
%struct.ncsi_pkt_hdr = type { i8, i8, i8, i8, i8, i8, i16, [2 x i32] }
%struct.ncsi_dev = type { i32, i32, ptr, ptr }
%struct.ncsi_channel = type { i8, i32, i8, %struct.spinlock, ptr, %struct.ncsi_channel_version, [6 x %struct.ncsi_channel_cap], [8 x %struct.ncsi_channel_mode], %struct.ncsi_channel_mac_filter, %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_stats, %struct.anon.140, %struct.list_head, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ncsi_channel_version = type { i32, i32, [12 x i8], i32, [4 x i16], i32 }
%struct.ncsi_channel_cap = type { i32, i32 }
%struct.ncsi_channel_mode = type { i32, i32, i32, [8 x i32] }
%struct.ncsi_channel_mac_filter = type { i8, i8, i8, i64, ptr }
%struct.ncsi_channel_vlan_filter = type { i8, i64, ptr }
%struct.ncsi_channel_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.140 = type { %struct.timer_list, i8, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ncsi_aen_lsc_pkt = type { %struct.ncsi_aen_pkt_hdr, i32, i32, i32, [14 x i8] }
%struct.ncsi_dev_priv = type { %struct.ncsi_dev, i32, i32, %struct.spinlock, i32, i32, %struct.list_head, ptr, [256 x %struct.ncsi_request], i32, i32, ptr, ptr, %struct.list_head, %struct.work_struct, %struct.packet_type, %struct.list_head, %struct.list_head, i8, i8, i32 }
%struct.ncsi_request = type { i8, i8, i32, ptr, ptr, ptr, %struct.timer_list, i8, i32, i32, %struct.nlmsghdr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.ncsi_package = type { i8, [16 x i8], ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, i8, i32, ptr }
%struct.ncsi_aen_hncdsc_pkt = type { %struct.ncsi_aen_pkt_hdr, i32, i32, [18 x i8] }

@ncsi_aen_handlers = internal constant { [3 x %struct.ncsi_aen_handler], [60 x i8] } { [3 x %struct.ncsi_aen_handler] [%struct.ncsi_aen_handler { i8 0, i32 12, ptr @ncsi_aen_handler_lsc }, %struct.ncsi_aen_handler { i8 1, i32 4, ptr @ncsi_aen_handler_cr }, %struct.ncsi_aen_handler { i8 2, i32 8, ptr @ncsi_aen_handler_hncdsc }], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid AEN (0x%x) received\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NCSI: 'bad' packet ignored for AEN type 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"NCSI: Handler for AEN type 0x%x returned %d\0A\00", [51 x i8] zeroinitializer }, align 32
@ncsi_aen_handler_lsc.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ncsi_aen\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ncsi_aen_handler_lsc\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/ncsi/ncsi-aen.c\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NCSI: LSC AEN - channel %u state %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NCSI: Inactive channel %u received AEN!\0A\00", [55 x i8] zeroinitializer }, align 32
@ncsi_aen_handler_lsc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ncsi_aen_handler_lsc.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_aen_handler_hncdsc.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.12, ptr @.str.5, ptr @.str.13, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ncsi_aen_handler_hncdsc\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NCSI: host driver %srunning on channel %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"ncsi_aen_handlers\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 202, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 224, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 232, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 240, i32 7 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 77, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 86, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 118, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [23 x i8] c"../net/ncsi/ncsi-aen.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 190, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @ncsi_aen_handlers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncsi_aen_handlers to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ncsi_aen_handler(ptr noundef %ndp, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %type1 = getelementptr inbounds %struct.ncsi_aen_pkt_hdr, ptr %add.ptr.i, i32 0, i32 2
  %4 = ptrtoint ptr %type1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %6 = icmp ult i8 %5, 3
  br i1 %6, label %switch.lookup, label %if.then6

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %type1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type1, align 1
  %conv8 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef %conv8) #7
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.idx.cast = zext i8 %5 to i32
  %revision.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 1
  %11 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %revision.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.not.i = icmp eq i8 %12, 1
  br i1 %cmp.not.i, label %if.end.i, label %switch.lookup.if.then13_crit_edge

switch.lookup.if.then13_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.end.i:                                         ; preds = %switch.lookup
  %payload = getelementptr [3 x %struct.ncsi_aen_handler], ptr @ncsi_aen_handlers, i32 0, i32 %switch.idx.cast, i32 1
  %13 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %payload, align 4
  %conv10 = trunc i32 %14 to i16
  %length.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 6
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %length.i, align 2
  %conv4.i = and i32 %14, 65535
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %conv10)
  %cmp5.not.i = icmp eq i16 %16, %conv10
  br i1 %cmp5.not.i, label %if.end8.i, label %if.end.i.if.then13_crit_edge

if.end.i.if.then13_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.end8.i:                                        ; preds = %if.end.i
  %add.ptr.i47 = getelementptr %struct.ncsi_aen_pkt_hdr, ptr %add.ptr.i, i32 1
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i47, i32 %conv4.i
  %add.ptr11.i = getelementptr i8, ptr %add.ptr10.i, i32 -4
  %17 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp12.i = icmp eq i32 %18, 0
  br i1 %cmp12.i, label %if.end8.i.if.end18_crit_edge, label %if.end15.i

if.end8.i.if.end18_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.end15.i:                                       ; preds = %if.end8.i
  %sub.i = add nuw nsw i32 %conv4.i, 16
  %call.i = tail call i32 @ncsi_calculate_checksum(ptr noundef %add.ptr.i, i32 noundef %sub.i) #4
  %19 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %call.i)
  %cmp17.not.i = icmp eq i32 %20, %call.i
  br i1 %cmp17.not.i, label %if.end15.i.if.end18_crit_edge, label %if.end15.i.if.then13_crit_edge

if.end15.i.if.then13_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.end15.i.if.end18_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then13:                                        ; preds = %if.end15.i.if.then13_crit_edge, %if.end.i.if.then13_crit_edge, %switch.lookup.if.then13_crit_edge
  %dev15 = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %21 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev15, align 4
  %23 = ptrtoint ptr %type1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %type1, align 1
  %conv17 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.1, i32 noundef %conv17) #7
  br label %out

if.end18:                                         ; preds = %if.end15.i.if.end18_crit_edge, %if.end8.i.if.end18_crit_edge
  %handler = getelementptr [3 x %struct.ncsi_aen_handler], ptr @ncsi_aen_handlers, i32 0, i32 %switch.idx.cast, i32 2
  %25 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handler, align 4
  %call19 = tail call i32 %26(ptr noundef %ndp, ptr noundef %add.ptr.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.out_crit_edge, label %if.then21

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %dev23 = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %27 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev23, align 4
  %29 = ptrtoint ptr %type1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %type1, align 1
  %conv25 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.2, i32 noundef %conv25, i32 noundef %call19) #7
  br label %out

out:                                              ; preds = %if.then21, %if.end18.out_crit_edge, %if.then13
  %ret.0 = phi i32 [ -22, %if.then13 ], [ %call19, %if.then21 ], [ 0, %if.end18.out_crit_edge ]
  tail call void @consume_skb(ptr noundef %skb) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then6
  %retval.0 = phi i32 [ %ret.0, %out ], [ -2, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_aen_handler_lsc(ptr noundef %ndp, ptr nocapture noundef readonly %h) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #4
  %0 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !38
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %h, i32 0, i32 5
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %ndp, i8 noundef zeroext %2, ptr noundef null, ptr noundef nonnull %nc) #4
  %3 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ncsi_channel, ptr %4, i32 0, i32 3
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %5 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nc, align 4
  %arrayidx7 = getelementptr %struct.ncsi_channel, ptr %6, i32 0, i32 7, i32 2, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  %status = getelementptr inbounds %struct.ncsi_aen_lsc_pkt, ptr %h, i32 0, i32 1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  store i32 %10, ptr %arrayidx7, align 4
  %oem_status = getelementptr inbounds %struct.ncsi_aen_lsc_pkt, ptr %h, i32 0, i32 2
  %11 = ptrtoint ptr %oem_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oem_status, align 4
  %arrayidx11 = getelementptr %struct.ncsi_channel, ptr %6, i32 0, i32 7, i32 2, i32 3, i32 4
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx11, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %and14 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_aen_handler_lsc.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_aen_handler_lsc, %if.then28)) #4
          to label %do.end36 [label %if.then28], !srcloc !39

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nc, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 8
  %conv29 = zext i8 %19 to i32
  %cond = select i1 %tobool15.not, ptr @.str.8, ptr @.str.7
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_aen_handler_lsc.__UNIQUE_ID_ddebug457, ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef %conv29, ptr noundef nonnull %cond) #4
  br label %do.end36

do.end36:                                         ; preds = %if.then28, %if.end
  %20 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nc, align 4
  %link = getelementptr inbounds %struct.ncsi_channel, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %link, align 4
  %cmp.i = icmp ne ptr %23, %link
  %state42 = getelementptr inbounds %struct.ncsi_channel, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %state42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state42, align 4
  %lock43 = getelementptr inbounds %struct.ncsi_channel, ptr %21, i32 0, i32 3
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock43, i32 noundef %call3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp44 = icmp eq i32 %25, 1
  br i1 %cmp44, label %if.then46, label %do.end36.if.end51_crit_edge

do.end36.if.end51_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then46:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #6
  %dev48 = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %26 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev48, align 4
  %28 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nc, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 8
  %conv50 = zext i8 %31 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.9, i32 noundef %conv50) #7
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %do.end36.if.end51_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and14)
  %cmp56 = icmp eq i32 %and, %and14
  %brmerge = select i1 %cmp56, i1 true, i1 %cmp.i
  br i1 %brmerge, label %if.end51.cleanup_crit_edge, label %if.end61

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end61:                                         ; preds = %if.end51
  %multi_package = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 18
  %32 = ptrtoint ptr %multi_package to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %multi_package, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool62.not = icmp eq i8 %33, 0
  br i1 %tobool62.not, label %land.lhs.true, label %if.end61.if.end86_crit_edge

if.end61.if.end86_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86

land.lhs.true:                                    ; preds = %if.end61
  %34 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nc, align 4
  %package = getelementptr inbounds %struct.ncsi_channel, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %package to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %package, align 8
  %multi_channel = getelementptr inbounds %struct.ncsi_package, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %multi_channel to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %multi_channel, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool63.not = icmp eq i8 %39, 0
  br i1 %tobool63.not, label %if.then64, label %land.lhs.true.if.end86_crit_edge

land.lhs.true.if.end86_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86

if.then64:                                        ; preds = %land.lhs.true
  br i1 %tobool12.not, label %if.then64.cleanup_crit_edge, label %if.then66

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then66:                                        ; preds = %if.then64
  %flags67 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 1
  %40 = ptrtoint ptr %flags67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags67, align 4
  %or = or i32 %41, 4
  store i32 %or, ptr %flags67, align 4
  call void @ncsi_stop_channel_monitor(ptr noundef %35) #4
  %lock75 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 3
  %call77 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock75) #4
  %42 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nc, align 4
  %link82 = getelementptr inbounds %struct.ncsi_channel, ptr %43, i32 0, i32 13
  %channel_queue = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 13, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %link82, ptr noundef %45, ptr noundef %channel_queue) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then66.list_add_tail_rcu.exit_crit_edge

if.then66.list_add_tail_rcu.exit_crit_edge:       ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %link82 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %channel_queue, ptr %link82, align 4
  %prev2.i.i = getelementptr inbounds %struct.ncsi_channel, ptr %43, i32 0, i32 13, i32 1
  %47 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %prev2.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !41
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %link82, ptr %45, align 4
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %link82, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.then66.list_add_tail_rcu.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock75, i32 noundef %call77) #4
  %call84 = call i32 @ncsi_process_next_channel(ptr noundef %ndp) #4
  br label %cleanup

if.end86:                                         ; preds = %land.lhs.true.if.end86_crit_edge, %if.end61.if.end86_crit_edge
  br i1 %tobool12.not, label %if.else101, label %if.then88

if.then88:                                        ; preds = %if.end86
  %50 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nc, align 4
  %call91 = call zeroext i1 @ncsi_channel_is_last(ptr noundef %ndp, ptr noundef %51) #4
  br i1 %call91, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #6
  %call94 = call i32 @ncsi_reset_dev(ptr noundef %ndp) #4
  br label %cleanup

if.else:                                          ; preds = %if.then88
  %enable = getelementptr %struct.ncsi_channel, ptr %51, i32 0, i32 7, i32 1, i32 1
  %52 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool95.not = icmp eq i32 %53, 0
  br i1 %tobool95.not, label %if.else.cleanup_crit_edge, label %if.then96

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then96:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nc, align 4
  %package97 = getelementptr inbounds %struct.ncsi_channel, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %package97 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %package97, align 8
  %call98 = call i32 @ncsi_update_tx_channel(ptr noundef %ndp, ptr noundef %57, ptr noundef %55, ptr noundef null) #4
  br label %cleanup

if.else101:                                       ; preds = %if.end86
  br i1 %tobool15.not, label %if.else101.cleanup_crit_edge, label %land.lhs.true104

if.else101.cleanup_crit_edge:                     ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true104:                                 ; preds = %if.else101
  %58 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %nc, align 4
  %package105 = getelementptr inbounds %struct.ncsi_channel, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %package105 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %package105, align 8
  %preferred_channel = getelementptr inbounds %struct.ncsi_package, ptr %61, i32 0, i32 9
  %62 = ptrtoint ptr %preferred_channel to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %preferred_channel, align 4
  %cmp106 = icmp eq ptr %63, %59
  br i1 %cmp106, label %if.then108, label %do.body114.critedge

if.then108:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #6
  %call110 = call i32 @ncsi_update_tx_channel(ptr noundef %ndp, ptr noundef %61, ptr noundef null, ptr noundef %59) #4
  br label %cleanup

do.body114.critedge:                              ; preds = %land.lhs.true104
  %call115 = call i32 @rcu_read_lock_any_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %land.lhs.true117, label %do.body114.critedge.do.end125_crit_edge

do.body114.critedge.do.end125_crit_edge:          ; preds = %do.body114.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end125

land.lhs.true117:                                 ; preds = %do.body114.critedge
  %call118 = call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %land.lhs.true117.do.end125_crit_edge, label %land.lhs.true120

land.lhs.true117.do.end125_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end125

land.lhs.true120:                                 ; preds = %land.lhs.true117
  %.b242 = load i1, ptr @ncsi_aen_handler_lsc.__warned, align 1
  br i1 %.b242, label %land.lhs.true120.do.end125_crit_edge, label %if.then122

land.lhs.true120.do.end125_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end125

if.then122:                                       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ncsi_aen_handler_lsc.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 118, ptr noundef nonnull @.str.10) #4
  br label %do.end125

do.end125:                                        ; preds = %if.then122, %land.lhs.true120.do.end125_crit_edge, %land.lhs.true117.do.end125_crit_edge, %do.body114.critedge.do.end125_crit_edge
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 6
  %64 = ptrtoint ptr %packages to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn250 = load volatile ptr, ptr %packages, align 4
  %cmp132.not251 = icmp eq ptr %.pn250, %packages
  br i1 %cmp132.not251, label %do.end125.cleanup_crit_edge, label %do.end125.do.body134_crit_edge

do.end125.do.body134_crit_edge:                   ; preds = %do.end125
  br label %do.body134

do.end125.cleanup_crit_edge:                      ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body134:                                       ; preds = %for.inc179.do.body134_crit_edge, %do.end125.do.body134_crit_edge
  %.pn252 = phi ptr [ %.pn, %for.inc179.do.body134_crit_edge ], [ %.pn250, %do.end125.do.body134_crit_edge ]
  %call135 = call i32 @rcu_read_lock_any_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %land.lhs.true137, label %do.body134.do.end145_crit_edge

do.body134.do.end145_crit_edge:                   ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end145

land.lhs.true137:                                 ; preds = %do.body134
  %call138 = call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %land.lhs.true137.do.end145_crit_edge, label %land.lhs.true140

land.lhs.true137.do.end145_crit_edge:             ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end145

land.lhs.true140:                                 ; preds = %land.lhs.true137
  %.b239241 = load i1, ptr @ncsi_aen_handler_lsc.__warned.11, align 1
  br i1 %.b239241, label %land.lhs.true140.do.end145_crit_edge, label %if.then142

land.lhs.true140.do.end145_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end145

if.then142:                                       ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ncsi_aen_handler_lsc.__warned.11, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 119, ptr noundef nonnull @.str.10) #4
  br label %do.end145

do.end145:                                        ; preds = %if.then142, %land.lhs.true140.do.end145_crit_edge, %land.lhs.true137.do.end145_crit_edge, %do.body134.do.end145_crit_edge
  %channels = getelementptr i8, ptr %.pn252, i32 -8
  %65 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn240245 = load volatile ptr, ptr %channels, align 4
  %cmp157.not247 = icmp eq ptr %.pn240245, %channels
  br i1 %cmp157.not247, label %do.end145.for.inc179_crit_edge, label %do.end145.for.body159_crit_edge

do.end145.for.body159_crit_edge:                  ; preds = %do.end145
  br label %for.body159

do.end145.for.inc179_crit_edge:                   ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc179

for.body159:                                      ; preds = %for.inc.for.body159_crit_edge, %do.end145.for.body159_crit_edge
  %.pn240248 = phi ptr [ %.pn240, %for.inc.for.body159_crit_edge ], [ %.pn240245, %do.end145.for.body159_crit_edge ]
  %enable162 = getelementptr i8, ptr %.pn240248, i32 -636
  %66 = ptrtoint ptr %enable162 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %enable162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool163.not = icmp eq i32 %67, 0
  br i1 %tobool163.not, label %for.body159.for.inc_crit_edge, label %land.lhs.true164

for.body159.for.inc_crit_edge:                    ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true164:                                 ; preds = %for.body159
  %tmp.0249 = getelementptr i8, ptr %.pn240248, i32 -828
  %call165 = call zeroext i1 @ncsi_channel_has_link(ptr noundef %tmp.0249) #4
  br i1 %call165, label %land.lhs.true164.for.inc_crit_edge, label %if.then166

land.lhs.true164.for.inc_crit_edge:               ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then166:                                       ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %nc, align 4
  %package167 = getelementptr inbounds %struct.ncsi_channel, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %package167 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %package167, align 8
  %call168 = call i32 @ncsi_update_tx_channel(ptr noundef %ndp, ptr noundef %71, ptr noundef %tmp.0249, ptr noundef %69) #4
  br label %for.inc179

for.inc:                                          ; preds = %land.lhs.true164.for.inc_crit_edge, %for.body159.for.inc_crit_edge
  %72 = ptrtoint ptr %.pn240248 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn240 = load volatile ptr, ptr %.pn240248, align 4
  %cmp157.not = icmp eq ptr %.pn240, %channels
  br i1 %cmp157.not, label %for.inc.for.inc179_crit_edge, label %for.inc.for.body159_crit_edge

for.inc.for.body159_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body159

for.inc.for.inc179_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc179

for.inc179:                                       ; preds = %for.inc.for.inc179_crit_edge, %if.then166, %do.end145.for.inc179_crit_edge
  %73 = ptrtoint ptr %.pn252 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn = load volatile ptr, ptr %.pn252, align 4
  %cmp132.not = icmp eq ptr %.pn, %packages
  br i1 %cmp132.not, label %for.inc179.cleanup_crit_edge, label %for.inc179.do.body134_crit_edge

for.inc179.do.body134_crit_edge:                  ; preds = %for.inc179
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body134

for.inc179.cleanup_crit_edge:                     ; preds = %for.inc179
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc179.cleanup_crit_edge, %do.end125.cleanup_crit_edge, %if.then108, %if.else101.cleanup_crit_edge, %if.then96, %if.else.cleanup_crit_edge, %if.then92, %list_add_tail_rcu.exit, %if.then64.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call94, %if.then92 ], [ %call84, %list_add_tail_rcu.exit ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ], [ 0, %if.then64.cleanup_crit_edge ], [ 0, %if.else101.cleanup_crit_edge ], [ 0, %if.then108 ], [ 0, %if.then96 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %do.end125.cleanup_crit_edge ], [ 0, %for.inc179.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_aen_handler_cr(ptr noundef %ndp, ptr nocapture noundef readonly %h) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #4
  %0 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !38
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %h, i32 0, i32 5
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %ndp, i8 noundef zeroext %2, ptr noundef null, ptr noundef nonnull %nc) #4
  %3 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.ncsi_channel, ptr %4, i32 0, i32 3
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %5 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nc, align 4
  %link = getelementptr inbounds %struct.ncsi_channel, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %link, align 4
  %cmp.i.not = icmp eq ptr %8, %link
  br i1 %cmp.i.not, label %lor.lhs.false, label %do.body1.if.then9_crit_edge

do.body1.if.then9_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

lor.lhs.false:                                    ; preds = %do.body1
  %state = getelementptr inbounds %struct.ncsi_channel, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp7.not = icmp eq i32 %10, 2
  br i1 %cmp7.not, label %if.end11, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %do.body1.if.then9_crit_edge
  %lock10 = getelementptr inbounds %struct.ncsi_channel, ptr %6, i32 0, i32 3
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock10, i32 noundef %call2) #4
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %lock12 = getelementptr inbounds %struct.ncsi_channel, ptr %6, i32 0, i32 3
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock12, i32 noundef %call2) #4
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  call void @ncsi_stop_channel_monitor(ptr noundef %12) #4
  %13 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nc, align 4
  %lock20 = getelementptr inbounds %struct.ncsi_channel, ptr %14, i32 0, i32 3
  %call22 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock20) #4
  %15 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nc, align 4
  %state27 = getelementptr inbounds %struct.ncsi_channel, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %state27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %state27, align 4
  %lock28 = getelementptr inbounds %struct.ncsi_channel, ptr %16, i32 0, i32 3
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock28, i32 noundef %call22) #4
  %lock36 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 3
  %call38 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock36) #4
  %18 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nc, align 4
  %state43 = getelementptr inbounds %struct.ncsi_channel, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %state43 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %state43, align 4
  %link44 = getelementptr inbounds %struct.ncsi_channel, ptr %19, i32 0, i32 13
  %channel_queue = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %link44, ptr noundef %22, ptr noundef %channel_queue) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_add_tail_rcu.exit_crit_edge

if.end11.list_add_tail_rcu.exit_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %link44 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %channel_queue, ptr %link44, align 4
  %prev2.i.i = getelementptr inbounds %struct.ncsi_channel, ptr %19, i32 0, i32 13, i32 1
  %24 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %prev2.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !41
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %link44, ptr %22, align 4
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %link44, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.end11.list_add_tail_rcu.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock36, i32 noundef %call38) #4
  %call46 = call i32 @ncsi_process_next_channel(ptr noundef %ndp) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail_rcu.exit, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then9 ], [ %call46, %list_add_tail_rcu.exit ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_aen_handler_hncdsc(ptr noundef %ndp, ptr nocapture noundef readonly %h) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #4
  %0 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !38
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %h, i32 0, i32 5
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %ndp, i8 noundef zeroext %2, ptr noundef null, ptr noundef nonnull %nc) #4
  %3 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr inbounds %struct.ncsi_channel, ptr %4, i32 0, i32 3
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %5 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nc, align 4
  %status = getelementptr inbounds %struct.ncsi_aen_hncdsc_pkt, ptr %h, i32 0, i32 1
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %arrayidx5 = getelementptr %struct.ncsi_channel, ptr %6, i32 0, i32 7, i32 2, i32 3, i32 3
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx5, align 4
  %10 = load ptr, ptr %nc, align 4
  %lock6 = getelementptr inbounds %struct.ncsi_channel, ptr %10, i32 0, i32 3
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock6, i32 noundef %call2) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_aen_handler_hncdsc.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_aen_handler_hncdsc, %if.then14)) #4
          to label %cleanup [label %if.then14], !srcloc !39

if.then14:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool17.not, ptr @.str.15, ptr @.str.14
  %15 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nc, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 8
  %conv18 = zext i8 %18 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_aen_handler_hncdsc.__UNIQUE_ID_ddebug462, ptr noundef %12, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond, i32 noundef %conv18) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %do.body1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ncsi_find_package_and_channel(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ncsi_stop_channel_monitor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_process_next_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ncsi_channel_is_last(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_reset_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_update_tx_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ncsi_channel_has_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_calculate_checksum(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !23, !25, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ncsi/ncsi-aen.c", i32 224, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ncsi/ncsi-aen.c", i32 232, i32 8}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ncsi/ncsi-aen.c", i32 240, i32 7}
!6 = !{ptr @ncsi_aen_handlers, !7, !"ncsi_aen_handlers", i1 false, i1 false}
!7 = !{!"../net/ncsi/ncsi-aen.c", i32 202, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ncsi/ncsi-aen.c", i32 77, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ncsi_aen_handler_lsc.__UNIQUE_ID_ddebug457, !9, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!14 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ncsi/ncsi-aen.c", i32 86, i32 8}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/ncsi/ncsi-aen.c", i32 118, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/ncsi/ncsi-aen.c", i32 119, i32 4}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/ncsi/ncsi-aen.c", i32 190, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ncsi_aen_handler_hncdsc.__UNIQUE_ID_ddebug462, !24, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!27 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{i64 2148957717, i64 2148957722, i64 2148957735, i64 2148957779, i64 2148957813, i64 2148957834}
!40 = !{i8 0, i8 2}
!41 = !{i64 2151801936}
