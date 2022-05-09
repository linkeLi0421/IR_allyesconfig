; ModuleID = '/llk/IR_all_yes/drivers/isdn/capi/capiutil.c_pt.bc'
source_filename = "../drivers/isdn/capi/capiutil.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct._cdef = type { i32, i32 }
%struct._cdebbuf = type { ptr, ptr, i32, i32 }
%struct._cmsg = type { i16, i8, i8, i16, %union.anon, i32, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i16, i32, ptr, ptr, i32, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, i16, ptr, i32, i16, ptr, ptr, ptr, i32, ptr, i16, i16, i16, ptr, i32, i32, ptr, ptr, [180 x i8] }
%union.anon = type { i32 }
%struct.__va_list = type { ptr }

@mnames = internal constant { [79 x ptr], [68 x i8] } { [79 x ptr] [ptr null, ptr @.str.2, ptr @.str.3, ptr null, ptr @.str.4, ptr @.str.5, ptr null, ptr null, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr null, ptr @.str.10, ptr null, ptr @.str.11, ptr @.str.12, ptr null, ptr null, ptr @.str.13, ptr @.str.14, ptr null, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr null, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr null, ptr @.str.22, ptr null, ptr @.str.23, ptr @.str.24, ptr null, ptr null, ptr null, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr null, ptr @.str.28, ptr null, ptr @.str.29, ptr @.str.30, ptr null, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr null, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr null, ptr null, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr null, ptr @.str.40, ptr null, ptr @.str.41, ptr @.str.42, ptr null, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr null, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.49], [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INVALID_COMMAND\00", [16 x i8] zeroinitializer }, align 32
@g_debbuf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@g_debbuf_lock = internal global { i32, [28 x i8] } zeroinitializer, align 32
@g_cmsg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%-26s ID=%03d #0x%04x LEN=%04d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ALERT_REQ\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CONNECT_REQ\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DISCONNECT_REQ\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LISTEN_REQ\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INFO_REQ\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FACILITY_REQ\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SELECT_B_PROTOCOL_REQ\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CONNECT_B3_REQ\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DISCONNECT_B3_REQ\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DATA_B3_REQ\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RESET_B3_REQ\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALERT_CONF\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CONNECT_CONF\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DISCONNECT_CONF\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LISTEN_CONF\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MANUFACTURER_REQ\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INFO_CONF\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FACILITY_CONF\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SELECT_B_PROTOCOL_CONF\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CONNECT_B3_CONF\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DISCONNECT_B3_CONF\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DATA_B3_CONF\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RESET_B3_CONF\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CONNECT_IND\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CONNECT_ACTIVE_IND\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DISCONNECT_IND\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MANUFACTURER_CONF\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INFO_IND\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FACILITY_IND\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CONNECT_B3_IND\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CONNECT_B3_ACTIVE_IND\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DISCONNECT_B3_IND\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DATA_B3_IND\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RESET_B3_IND\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CONNECT_B3_T90_ACTIVE_IND\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CONNECT_RESP\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CONNECT_ACTIVE_RESP\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DISCONNECT_RESP\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MANUFACTURER_IND\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INFO_RESP\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FACILITY_RESP\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CONNECT_B3_RESP\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CONNECT_B3_ACTIVE_RESP\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DISCONNECT_B3_RESP\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DATA_B3_RESP\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RESET_B3_RESP\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CONNECT_B3_T90_ACTIVE_RESP\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MANUFACTURER_RESP\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cpars = internal constant { [79 x ptr], [68 x i8] } { [79 x ptr] [ptr null, ptr @.str.50, ptr @.str.51, ptr null, ptr @.str.50, ptr @.str.52, ptr null, ptr null, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr null, ptr @.str.56, ptr null, ptr @.str.57, ptr @.str.56, ptr null, ptr null, ptr @.str.58, ptr @.str.58, ptr null, ptr @.str.58, ptr @.str.58, ptr @.str.59, ptr null, ptr @.str.58, ptr @.str.60, ptr @.str.58, ptr @.str.58, ptr null, ptr @.str.58, ptr null, ptr @.str.61, ptr @.str.58, ptr null, ptr null, ptr null, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr null, ptr @.str.59, ptr null, ptr @.str.65, ptr @.str.66, ptr null, ptr @.str.56, ptr @.str.56, ptr @.str.67, ptr null, ptr @.str.57, ptr @.str.56, ptr @.str.56, ptr null, ptr null, ptr @.str.68, ptr @.str.69, ptr @.str.69, ptr null, ptr @.str.59, ptr null, ptr @.str.69, ptr @.str.70, ptr null, ptr @.str.71, ptr @.str.69, ptr @.str.69, ptr null, ptr @.str.72, ptr @.str.69, ptr @.str.69, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.59], [68 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\03\04\0C'/\1C\01\01\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\03\14\0E\10\0F\11\0D\06\08\0A\05\07\09\01\0B(\22\04\0C'/\1C\01\01\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\03%\12\13\10\11\01\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\03\0E\04\0C'/\1C\01\01\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\03\1F\1E\01\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\03\0D\06\08\0A\05\07\09\01\01\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03+\01\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\03\18\1A\19 \01\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03#\01\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\03*\15!)\01\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\03#\1F\1B\01\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\03\19#\01\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\03\14\0E\10\0F\11\0B(\22\04\0C'/\1C\01\01\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\03\16\17(\01\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03,\01\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\03&$\01\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\03\1F\1D\01\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\03-+\01\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\03.\0D\06\08\0A\05\07\09\01\16\17(\04\0C'/\1C\01\01\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\03\01\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\1F\01\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\03.+\01\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\19\01\00", [28 x i8] zeroinitializer }, align 32
@cdef = internal constant { [48 x %struct._cdef], [96 x i8] } { [48 x %struct._cdef] [%struct._cdef { i32 6, i32 0 }, %struct._cdef { i32 6, i32 0 }, %struct._cdef { i32 6, i32 0 }, %struct._cdef { i32 3, i32 8 }, %struct._cdef { i32 5, i32 12 }, %struct._cdef { i32 4, i32 16 }, %struct._cdef { i32 2, i32 20 }, %struct._cdef { i32 4, i32 24 }, %struct._cdef { i32 2, i32 28 }, %struct._cdef { i32 4, i32 32 }, %struct._cdef { i32 2, i32 36 }, %struct._cdef { i32 4, i32 40 }, %struct._cdef { i32 4, i32 44 }, %struct._cdef { i32 5, i32 48 }, %struct._cdef { i32 4, i32 52 }, %struct._cdef { i32 4, i32 56 }, %struct._cdef { i32 4, i32 60 }, %struct._cdef { i32 4, i32 64 }, %struct._cdef { i32 3, i32 68 }, %struct._cdef { i32 3, i32 72 }, %struct._cdef { i32 2, i32 76 }, %struct._cdef { i32 3, i32 80 }, %struct._cdef { i32 4, i32 84 }, %struct._cdef { i32 4, i32 88 }, %struct._cdef { i32 3, i32 92 }, %struct._cdef { i32 2, i32 96 }, %struct._cdef { i32 2, i32 98 }, %struct._cdef { i32 4, i32 100 }, %struct._cdef { i32 4, i32 104 }, %struct._cdef { i32 4, i32 108 }, %struct._cdef { i32 4, i32 112 }, %struct._cdef { i32 2, i32 116 }, %struct._cdef { i32 2, i32 118 }, %struct._cdef { i32 3, i32 120 }, %struct._cdef { i32 4, i32 124 }, %struct._cdef { i32 2, i32 128 }, %struct._cdef { i32 4, i32 132 }, %struct._cdef { i32 3, i32 136 }, %struct._cdef { i32 2, i32 140 }, %struct._cdef { i32 4, i32 144 }, %struct._cdef { i32 4, i32 148 }, %struct._cdef { i32 4, i32 152 }, %struct._cdef { i32 3, i32 156 }, %struct._cdef { i32 4, i32 160 }, %struct._cdef { i32 2, i32 164 }, %struct._cdef { i32 2, i32 166 }, %struct._cdef { i32 2, i32 168 }, %struct._cdef { i32 4, i32 172 }], [96 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"  \00", [29 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%-*s = 0x%x\0A\00", [19 x i8] zeroinitializer }, align 32
@pnames = internal constant { [48 x ptr], [32 x i8] } { [48 x ptr] [ptr null, ptr null, ptr null, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%-*s = 0x%lx\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%-*s = \00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%-*s = default\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%-*s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Controller/PLCI/NCCI\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AdditionalInfo\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"B1configuration\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"B1protocol\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"B2configuration\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"B2protocol\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"B3configuration\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"B3protocol\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BC\00", [29 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BChannelinformation\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BProtocol\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CalledPartyNumber\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CalledPartySubaddress\00", [42 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CallingPartyNumber\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CallingPartySubaddress\00", [41 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CIPmask\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CIPmask2\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CIPValue\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Class\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ConnectedNumber\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ConnectedSubaddress\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Data32\00", [25 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DataHandle\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DataLength\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FacilityConfirmationParameter\00", [34 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Facilitydataarray\00", [46 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FacilityIndicationParameter\00", [36 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FacilityRequestParameter\00", [39 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FacilitySelector\00", [47 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Flags\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Function\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HLC\00", [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Info\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"InfoElement\00", [20 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"InfoMask\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"InfoNumber\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Keypadfacility\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LLC\00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ManuData\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ManuID\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NCPI\00", [27 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Reason\00", [25 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Reason_B3\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Reject\00", [25 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Useruserdata\00", [19 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.127 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c">\00", [30 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%c\00", [29 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"<%02x\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"mnames\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 253, i32 14 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 319, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant [9 x i8] c"g_debbuf\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 529, i32 18 }
@___asan_gen_.142 = private unnamed_addr constant [14 x i8] c"g_debbuf_lock\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 530, i32 15 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"g_cmsg\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 531, i32 15 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 607, i32 22 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 255, i32 11 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 256, i32 11 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 257, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 258, i32 11 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 259, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 260, i32 11 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 261, i32 11 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 262, i32 11 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 263, i32 11 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 264, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 265, i32 11 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 266, i32 11 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 267, i32 11 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 268, i32 11 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 269, i32 11 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 270, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 271, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 272, i32 11 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 273, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 274, i32 11 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 275, i32 11 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 276, i32 11 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 277, i32 11 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 278, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 279, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 280, i32 11 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 281, i32 11 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 282, i32 11 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 283, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 284, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 285, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 286, i32 11 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 287, i32 11 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 288, i32 11 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 289, i32 11 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 290, i32 11 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 291, i32 11 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 292, i32 11 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 293, i32 11 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 294, i32 11 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 295, i32 11 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 296, i32 11 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 297, i32 11 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 298, i32 11 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 299, i32 11 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 300, i32 11 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 301, i32 11 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 302, i32 11 }
@___asan_gen_.295 = private unnamed_addr constant [6 x i8] c"cpars\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 139, i32 23 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 141, i32 27 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 142, i32 29 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 144, i32 28 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 145, i32 26 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 146, i32 30 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 147, i32 39 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 148, i32 32 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 150, i32 29 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 152, i32 28 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 156, i32 34 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 158, i32 31 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 162, i32 30 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 164, i32 29 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 165, i32 36 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 166, i32 32 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 168, i32 26 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 169, i32 30 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 172, i32 35 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 176, i32 30 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 177, i32 37 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 181, i32 31 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 182, i32 33 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 185, i32 30 }
@___asan_gen_.367 = private unnamed_addr constant [5 x i8] c"cdef\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 39, i32 14 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 477, i32 23 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 479, i32 24 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 483, i32 24 }
@___asan_gen_.379 = private unnamed_addr constant [7 x i8] c"pnames\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 330, i32 14 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 491, i32 24 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 495, i32 24 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 497, i32 25 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 500, i32 24 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 511, i32 25 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 517, i32 25 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 335, i32 10 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 336, i32 10 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 337, i32 10 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 338, i32 10 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 339, i32 10 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 340, i32 10 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 341, i32 10 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 342, i32 10 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 343, i32 10 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 344, i32 10 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 345, i32 10 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 346, i32 10 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 347, i32 10 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 348, i32 10 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 349, i32 10 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 350, i32 10 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 351, i32 10 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 352, i32 10 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 353, i32 10 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 354, i32 10 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 355, i32 10 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 356, i32 10 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 357, i32 10 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 358, i32 10 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 359, i32 10 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 360, i32 10 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 361, i32 10 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 362, i32 10 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 363, i32 10 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 364, i32 10 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 365, i32 10 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 366, i32 10 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 367, i32 10 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 368, i32 10 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 369, i32 10 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 370, i32 10 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 371, i32 10 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 372, i32 10 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 373, i32 10 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 374, i32 10 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 375, i32 10 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 376, i32 10 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 377, i32 10 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 378, i32 10 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 379, i32 10 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 433, i32 25 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 434, i32 24 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 438, i32 25 }
@___asan_gen_.544 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.545 = private constant [32 x i8] c"../drivers/isdn/capi/capiutil.c\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 440, i32 25 }
@llvm.compiler.used = appending global [138 x ptr] [ptr @mnames, ptr @.str, ptr @g_debbuf, ptr @g_debbuf_lock, ptr @g_cmsg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @cpars, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @cdef, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @pnames, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], section "llvm.metadata"
@0 = internal global [138 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnames to i32), i32 316, i32 384, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_debbuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_debbuf_lock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_cmsg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpars to i32), i32 316, i32 384, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdef to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnames to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @capi_cmd2str(i8 noundef zeroext %cmd, i8 noundef zeroext %subcmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and2.i = and i8 %cmd, 15
  %add.i = add nuw nsw i8 %and2.i, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %cmd)
  %cmp.i = icmp eq i8 %cmd, 65
  %spec.store.select.i = select i1 %cmp.i, i8 10, i8 %cmd
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cmd)
  %tobool.not22.i = icmp slt i8 %cmd, 0
  %c.addr.0.i = select i1 %tobool.not22.i, i8 %add.i, i8 %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %c.addr.0.i)
  %cmp9.i = icmp ugt i8 %c.addr.0.i, 24
  %spec.store.select17.i = select i1 %cmp9.i, i8 0, i8 %c.addr.0.i
  %0 = and i8 %subcmd, 3
  %narrow.i = mul nuw nsw i8 %0, 18
  %mul.i = zext i8 %narrow.i to i32
  %conv15.i = zext i8 %spec.store.select17.i to i32
  %add16.i = add nuw nsw i32 %conv15.i, %mul.i
  %arrayidx = getelementptr [79 x ptr], ptr @mnames, i32 0, i32 %add16.i
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %2, null
  %spec.store.select = select i1 %cmp, ptr @.str, ptr %2
  ret ptr %spec.store.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdebbuf_free(ptr noundef %cdb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @g_debbuf, align 4
  %cmp = icmp eq ptr %0, %cdb
  br i1 %cmp, label %if.then, label %if.end, !prof !285

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef nonnull @g_debbuf_lock) #9
  br label %return

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %cdb, null
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %if.then9, !prof !286

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %cdb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cdb, align 4
  tail call void @kfree(ptr noundef %2) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  tail call void @kfree(ptr noundef %cdb) #9
  br label %return

return:                                           ; preds = %if.end10, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @capi_message2str(ptr noundef %msg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef nonnull @g_debbuf_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cdebbuf_alloc.exit, label %if.else.i, !prof !285

if.else.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 16) #12
  %tobool5.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not.i, label %if.else.i.cleanup_crit_edge, label %if.end7.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i24.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 1024) #12
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i24.i, ptr %call7.i.i, align 8
  %tobool10.not.i = icmp eq ptr %call7.i24.i, null
  br i1 %tobool10.not.i, label %if.then11.i, label %cdebbuf_alloc.exit.thread88

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cdebbuf_alloc.exit.thread88:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %size.i = getelementptr inbounds %struct._cdebbuf, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1024, ptr %size.i, align 8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call7.i.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %5, align 1
  %7 = load ptr, ptr %call7.i.i, align 8
  %p.i90 = getelementptr inbounds %struct._cdebbuf, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %p.i90 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %p.i90, align 4
  %pos.i91 = getelementptr inbounds %struct._cdebbuf, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pos.i91 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pos.i91, align 4
  br label %if.end

cdebbuf_alloc.exit:                               ; preds = %entry
  %10 = load ptr, ptr @g_debbuf, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %12, align 1
  %14 = load ptr, ptr %10, align 4
  %p.i = getelementptr inbounds %struct._cdebbuf, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %p.i, align 4
  %pos.i = getelementptr inbounds %struct._cdebbuf, ptr %10, i32 0, i32 3
  %16 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pos.i, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %cdebbuf_alloc.exit.cleanup_crit_edge, label %cdebbuf_alloc.exit.if.end_crit_edge, !prof !286

cdebbuf_alloc.exit.if.end_crit_edge:              ; preds = %cdebbuf_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cdebbuf_alloc.exit.cleanup_crit_edge:             ; preds = %cdebbuf_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cdebbuf_alloc.exit.if.end_crit_edge, %cdebbuf_alloc.exit.thread88
  %cdb.0.i93 = phi ptr [ %call7.i.i, %cdebbuf_alloc.exit.thread88 ], [ %10, %cdebbuf_alloc.exit.if.end_crit_edge ]
  %17 = load ptr, ptr @g_debbuf, align 4
  %cmp = icmp eq ptr %cdb.0.i93, %17
  br i1 %cmp, label %if.then10, label %if.else, !prof !285

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = load ptr, ptr @g_cmsg, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 2592, i32 noundef 372) #12
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  %cmsg.0 = phi ptr [ %18, %if.then10 ], [ %call7.i, %if.else ]
  %tobool13.not = icmp eq ptr %cmsg.0, null
  br i1 %tobool13.not, label %if.then22, label %if.end23, !prof !286

if.then22:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cdebbuf_free(ptr noundef nonnull %cdb.0.i93)
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %m = getelementptr inbounds %struct._cmsg, ptr %cmsg.0, i32 0, i32 52
  %20 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg, ptr %m, align 4
  %l = getelementptr inbounds %struct._cmsg, ptr %cmsg.0, i32 0, i32 49
  %21 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %l, align 4
  %p = getelementptr inbounds %struct._cmsg, ptr %cmsg.0, i32 0, i32 50
  %22 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %msg, i32 4
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr, align 1
  %Command = getelementptr inbounds %struct._cmsg, ptr %cmsg.0, i32 0, i32 1
  %25 = ptrtoint ptr %Command to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %Command, align 2
  %add.ptr26 = getelementptr i8, ptr %msg, i32 5
  %26 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr26, align 1
  %Subcommand = getelementptr inbounds %struct._cmsg, ptr %cmsg.0, i32 0, i32 2
  %28 = ptrtoint ptr %Subcommand to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %Subcommand, align 1
  %and2.i.i = and i8 %24, 15
  %add.i.i = add nuw nsw i8 %and2.i.i, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %24)
  %cmp.i.i = icmp eq i8 %24, 65
  %spec.store.select.i.i = select i1 %cmp.i.i, i8 10, i8 %24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not22.i.i = icmp slt i8 %24, 0
  %c.addr.0.i.i = select i1 %tobool.not22.i.i, i8 %add.i.i, i8 %spec.store.select.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %c.addr.0.i.i)
  %cmp9.i.i = icmp ugt i8 %c.addr.0.i.i, 24
  %spec.store.select17.i.i = select i1 %cmp9.i.i, i8 0, i8 %c.addr.0.i.i
  %29 = and i8 %27, 3
  %narrow.i.i = mul nuw nsw i8 %29, 18
  %mul.i.i = zext i8 %narrow.i.i to i32
  %conv15.i.i = zext i8 %spec.store.select17.i.i to i32
  %add16.i.i = add nuw nsw i32 %conv15.i.i, %mul.i.i
  %arrayidx.i = getelementptr [79 x ptr], ptr @cpars, i32 0, i32 %add16.i.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %par = getelementptr inbounds %struct._cmsg, ptr %cmsg.0, i32 0, i32 51
  %32 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %par, align 4
  %arrayidx.i85 = getelementptr [79 x ptr], ptr @mnames, i32 0, i32 %add16.i.i
  %33 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i85, align 4
  %cmp.i = icmp eq ptr %34, null
  %spec.store.select.i = select i1 %cmp.i, ptr @.str, ptr %34
  %arrayidx = getelementptr i16, ptr %msg, i32 1
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %36 to i32
  %arrayidx33 = getelementptr i16, ptr %msg, i32 3
  %37 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx33, align 2
  %conv34 = zext i16 %38 to i32
  %39 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %msg, align 2
  %conv36 = zext i16 %40 to i32
  %call37 = tail call ptr (ptr, ptr, ...) @bufprint(ptr noundef nonnull %cdb.0.i93, ptr noundef nonnull @.str.1, ptr noundef %spec.store.select.i, i32 noundef %conv, i32 noundef %conv34, i32 noundef %conv36)
  %call38 = tail call fastcc ptr @protocol_message_2_pars(ptr noundef %call37, ptr noundef nonnull %cmsg.0, i32 noundef 1)
  %41 = load ptr, ptr @g_cmsg, align 4
  %cmp39.not = icmp eq ptr %cmsg.0, %41
  br i1 %cmp39.not, label %if.end23.cleanup_crit_edge, label %if.then47, !prof !285

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %cmsg.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end23.cleanup_crit_edge, %if.then22, %cdebbuf_alloc.exit.cleanup_crit_edge, %if.then11.i, %if.else.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then22 ], [ null, %cdebbuf_alloc.exit.cleanup_crit_edge ], [ %call38, %if.then47 ], [ %call38, %if.end23.cleanup_crit_edge ], [ null, %if.then11.i ], [ null, %if.else.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bufprint(ptr noundef %cdb, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #2 align 64 {
entry:
  %f = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #9
  %0 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %f, align 4, !annotation !287
  %tobool.not = icmp eq ptr %cdb, null
  br i1 %tobool.not, label %entry.cleanup30_crit_edge, label %if.end

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

if.end:                                           ; preds = %entry
  call void @llvm.va_start(ptr nonnull %f)
  %size = getelementptr inbounds %struct._cdebbuf, ptr %cdb, i32 0, i32 2
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  %pos = getelementptr inbounds %struct._cdebbuf, ptr %cdb, i32 0, i32 3
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pos, align 4
  %sub = sub i32 %2, %4
  %p = getelementptr inbounds %struct._cdebbuf, ptr %cdb, i32 0, i32 1
  %5 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p, align 4
  %7 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %7)
  %.fca.0.load = load i32, ptr %f, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %6, i32 noundef %sub, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %f)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %sub)
  %cmp.not = icmp ult i32 %call, %sub
  br i1 %cmp.not, label %if.end.if.end26_crit_edge, label %if.then1

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then1:                                         ; preds = %if.end
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pos, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then1
  %ns.0.in = phi i32 [ %9, %if.then1 ], [ %ns.0, %while.cond.while.cond_crit_edge ]
  %ns.0 = shl i32 %ns.0.in, 1
  %sub4 = sub i32 %ns.0, %11
  %cmp5.not = icmp ugt i32 %sub4, %call
  br i1 %cmp5.not, label %if.end8.i, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.end8.i:                                        ; preds = %while.cond
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %ns.0, i32 noundef 2592) #13
  %tobool8.not = icmp eq ptr %call9.i, null
  br i1 %tobool8.not, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end8.i
  %12 = load ptr, ptr @g_debbuf, align 4
  %cmp.i69 = icmp eq ptr %12, %cdb
  br i1 %cmp.i69, label %if.then.i70, label %if.end10.i, !prof !285

if.then.i70:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef nonnull @g_debbuf_lock) #9
  br label %cleanup30

if.end10.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %cdb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cdb, align 4
  call void @kfree(ptr noundef %14) #9
  call void @kfree(ptr noundef nonnull %cdb) #9
  br label %cleanup30

cleanup:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %cdb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cdb, align 4
  %17 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pos, align 4
  %19 = call ptr @memcpy(ptr %call9.i, ptr %16, i32 %18)
  call void @kfree(ptr noundef %16) #9
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pos, align 4
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx, align 1
  %23 = ptrtoint ptr %cdb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i, ptr %cdb, align 4
  %24 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx, ptr %p, align 4
  %25 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %ns.0, ptr %size, align 4
  call void @llvm.va_start(ptr nonnull %f)
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %28 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pos, align 4
  %sub21 = sub i32 %27, %29
  %30 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p, align 4
  %32 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %32)
  %.fca.0.load45 = load i32, ptr %f, align 4
  %.fca.0.insert46 = insertvalue [1 x i32] poison, i32 %.fca.0.load45, 0
  %call24 = call i32 @vsnprintf(ptr noundef %31, i32 noundef %sub21, ptr noundef %fmt, [1 x i32] %.fca.0.insert46)
  call void @llvm.va_end(ptr nonnull %f)
  br label %if.end26

if.end26:                                         ; preds = %cleanup, %if.end.if.end26_crit_edge
  %n.1 = phi i32 [ %call24, %cleanup ], [ %call, %if.end.if.end26_crit_edge ]
  %33 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p, align 4
  %add.ptr28 = getelementptr i8, ptr %34, i32 %n.1
  store ptr %add.ptr28, ptr %p, align 4
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pos, align 4
  %add = add i32 %36, %n.1
  store i32 %add, ptr %pos, align 4
  br label %cleanup30

cleanup30:                                        ; preds = %if.end26, %if.end10.i, %if.then.i70, %entry.cleanup30_crit_edge
  %retval.1 = phi ptr [ %cdb, %if.end26 ], [ null, %entry.cleanup30_crit_edge ], [ null, %if.then.i70 ], [ null, %if.end10.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #9
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @protocol_message_2_pars(ptr noundef %cdb, ptr nocapture noundef %cmsg, i32 noundef %level) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct._cmsg, ptr %cmsg, i32 0, i32 51
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %for.cond.preheader

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

for.cond.preheader:                               ; preds = %entry
  %sub = sub i32 32, %level
  %p = getelementptr inbounds %struct._cmsg, ptr %cmsg, i32 0, i32 50
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p, align 4
  %arrayidx214 = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx214, align 1
  %idxprom215 = zext i8 %7 to i32
  %arrayidx2216 = getelementptr [48 x %struct._cdef], ptr @cdef, i32 0, i32 %idxprom215
  %8 = ptrtoint ptr %arrayidx2216 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp.not217 = icmp eq i32 %9, 6
  br i1 %cmp.not217, label %for.cond.preheader.return_crit_edge, label %for.body.lr.ph

for.cond.preheader.return_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub7 = add i32 %level, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7)
  %cmp8211 = icmp sgt i32 %sub7, 0
  %m95 = getelementptr inbounds %struct._cmsg, ptr %cmsg, i32 0, i32 52
  %l96 = getelementptr inbounds %struct._cmsg, ptr %cmsg, i32 0, i32 49
  %add131 = add i32 %level, 1
  br label %for.body

for.body:                                         ; preds = %for.inc135.for.body_crit_edge, %for.body.lr.ph
  %cdb.addr.0218 = phi ptr [ %cdb, %for.body.lr.ph ], [ %cdb.addr.4, %for.inc135.for.body_crit_edge ]
  %tobool3.not = icmp eq ptr %cdb.addr.0218, null
  br i1 %tobool3.not, label %for.body.return_crit_edge, label %if.end5

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end5:                                          ; preds = %for.body
  %call = tail call ptr (ptr, ptr, ...) @bufprint(ptr noundef nonnull %cdb.addr.0218, ptr noundef nonnull @.str.73)
  br i1 %cmp8211, label %if.end5.for.body9_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end5.for.body9_crit_edge:                      ; preds = %if.end5
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %if.end5.for.body9_crit_edge
  %cdb.addr.1213 = phi ptr [ %call10, %for.body9.for.body9_crit_edge ], [ %call, %if.end5.for.body9_crit_edge ]
  %i.0212 = phi i32 [ %inc, %for.body9.for.body9_crit_edge ], [ 0, %if.end5.for.body9_crit_edge ]
  %call10 = tail call ptr (ptr, ptr, ...) @bufprint(ptr noundef %cdb.addr.1213, ptr noundef nonnull @.str.74)
  %inc = add nuw nsw i32 %i.0212, 1
  %exitcond.not = icmp eq i32 %inc, %sub7
  br i1 %exitcond.not, label %for.body9.for.end_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9

for.body9.for.end_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body9.for.end_crit_edge, %if.end5.for.end_crit_edge
  %cdb.addr.1.lcssa = phi ptr [ %call, %if.end5.for.end_crit_edge ], [ %call10, %for.body9.for.end_crit_edge ]
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 4
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p, align 4
  %arrayidx13 = getelementptr i8, ptr %11, i32 %13
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx13, align 1
  %idxprom14 = zext i8 %15 to i32
  %arrayidx15 = getelementptr [48 x %struct._cdef], ptr @cdef, i32 0, i32 %idxprom14
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %for.end.for.inc135_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb25
    i32 3, label %sw.bb37
    i32 4, label %sw.bb49
    i32 5, label %sw.bb94
  ]

for.end.for.inc135_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc135

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx21 = getelementptr [48 x ptr], ptr @pnames, i32 0, i32 %idxprom14
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx21, align 4
  %21 = ptrtoint ptr %m95 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m95, align 4
  %23 = ptrtoint ptr %l96 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %l96, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 %24
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %26 to i32
  %call22 = tail call ptr (ptr, ptr, ...) @bufprint(ptr noundef %cdb.addr.1.lcssa, ptr noundef nonnull @.str.75, i32 noundef %sub, ptr noundef %20, i32 noundef %conv)
  %27 = ptrtoint ptr %l96 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %l96, align 4
  %inc24 = add i32 %28, 1
  store i32 %inc24, ptr %l96, align 4
  br label %for.inc135

sw.bb25:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx30 = getelementptr [48 x ptr], ptr @pnames, i32 0, i32 %idxprom14
  %29 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx30, align 4
  %31 = ptrtoint ptr %m95 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %m95, align 4
  %33 = ptrtoint ptr %l96 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %l96, align 4
  %add.ptr33 = getelementptr i8, ptr %32, i32 %34
  %35 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr33, align 2
  %conv34 = zext i16 %36 to i32
  %call35 = tail call ptr (ptr, ptr, ...) @bufprint(ptr noundef %cdb.addr.1.lcssa, ptr noundef nonnull @.str.75, i32 noundef %sub, ptr noundef %30, i32 noundef %conv34)
  %37 = ptrtoint ptr %l96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %l96, align 4
  %add = add i32 %38, 2
  store i32 %add, ptr %l96, align 4
  br label %for.inc135

sw.bb37:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx42 = getelementptr [48 x ptr], ptr @pnames, i32 0, i32 %idxprom14
  %39 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx42, align 4
  %41 = ptrtoint ptr %m95 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %m95, align 4
  %43 = ptrtoint ptr %l96 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %l96, align 4
  %add.ptr45 = getelementptr i8, ptr %42, i32 %44
  %45 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr45, align 4
  %call46 = tail call ptr (ptr, ptr, ...) @bufprint(ptr noundef %cdb.addr.1.lcssa, ptr noundef nonnull @.str.76, i32 noundef %sub, ptr noundef %40, i32 noundef %46)
  %47 = ptrtoint ptr %l96 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %l96, align 4
  %add48 = add i32 %48, 4
  store i32 %add48, ptr %l96, align 4
  br label %for.inc135

sw.bb49:                                          ; preds = %for.end
  %arrayidx54 = getelementptr [48 x ptr], ptr @pnames, i32 0, i32 %idxprom14
  %49 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx54, align 4
  %call55 = tail call ptr (ptr, ptr, ...) @bufprint(ptr noundef %cdb.addr.1.lcssa, ptr noundef nonnull @.str.77, i32 noundef %sub, ptr noundef %50)
  %51 = ptrtoint ptr %m95 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %m95, align 4
  %53 = ptrtoint ptr %l96 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %l96, align 4
  %arrayidx58 = getelementptr i8, ptr %52, i32 %54
  %55 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx58, align 1
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %56, label %if.then.i [
    i8 0, label %if.then62
    i8 -1, label %if.else.i
  ]

if.then62:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  %call63 = tail call ptr (ptr, ptr, ...) @bufprint(ptr noundef %call55, ptr noundef nonnull @.str.78)
  br label %if.end68

if.then.i:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %56 to i32
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i = getelementptr i8, ptr %arrayidx58, i32 1
  %58 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr4.i, align 2
  %conv6.i = zext i16 %59 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 3, %if.else.i ], [ 1, %if.then.i ]
  %len.0.i = phi i32 [ %conv6.i, %if.else.i ], [ %conv.i, %if.then.i ]
  %tobool.not.i.i = icmp eq ptr %call55, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end68_crit_edge, label %for.cond.preheader.i.i

if.end.i.if.end68_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

for.cond.preheader.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %tobool1.not40.i.i = icmp eq i32 %len.0.i, 0
  br i1 %tobool1.not40.i.i, label %for.cond.preheader.i.i.if.end68_crit_edge, label %for.body.i.i.preheader

for.cond.preheader.i.i.if.end68_crit_edge:        ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

for.body.i.i.preheader:                           ; preds = %for.cond.preheader.i.i
  %add.ptr7.i = getelementptr i8, ptr %arrayidx58, i32 %.sink.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.backedge.i, %for.body.i.i.preheader
  %tobool8.not.i.i = phi i1 [ %or.cond.i.i, %for.body.i.backedge.i ], [ true, %for.body.i.i.preheader ]
  %len.addr.043.i.i = phi i32 [ %len.addr.043.i.be.i, %for.body.i.backedge.i ], [ %len.0.i, %for.body.i.i.preheader ]
  %m.addr.042.i.i = phi ptr [ %m.addr.042.i.be.i, %for.body.i.backedge.i ], [ %add.ptr7.i, %for.body.i.i.preheader ]
  %cdb.addr.041.i.i = phi ptr [ %cdb.addr.041.i.be.i, %for.body.i.backedge.i ], [ %call55, %for.body.i.i.preheader ]
  %60 = ptrtoint ptr %m.addr.042.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %m.addr.042.i.i, align 1
  %conv.i.i = zext i8 %61 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.i, align 1
  %64 = and i8 %63, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp.not.i.i = icmp ne i8 %64, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %61)
  %cmp5.i.i = icmp eq i8 %61, 32
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 true, i1 %cmp5.i.i
  br i1 %or.cond.i.i, label %if.then7.i.i, label %if.else.i.i

if.then7.i.i:                                     ; preds = %for.body.i.i
  br i1 %tobool8.not.i.i, label %if.then7.i.i.for.inc.i.thread.i_crit_edge, label %if.then9.i.i

if.then7.i.i.for.inc.i.thread.i_crit_edge:        ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.thread.i

if.then9.i.i:                                     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr (ptr, ptr, ...) @bufprint(ptr noundef %cdb.addr.041.i.i, ptr noundef nonnull @.str.127) #9
  br label %for.inc.i.thread.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %.str.129..str.130.i = select i1 %tobool8.not.i.i, ptr @.str.129, ptr @.str.130
  %call19.i.i = tail call ptr (ptr, ptr, ...) @bufprint(ptr noundef %cdb.addr.041.i.i, ptr noundef nonnull %.str.129..str.130.i, i32 noundef %conv.i.i) #9
  %dec.i.i = add i32 %len.addr.043.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool1.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then23.i.critedge.i, label %if.else.i.i.for.body.i.backedge.i_crit_edge

if.else.i.i.for.body.i.backedge.i_crit_edge:      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.backedge.i

for.body.i.backedge.i:                            ; preds = %for.inc.i.thread.i.for.body.i.backedge.i_crit_edge, %if.else.i.i.for.body.i.backedge.i_crit_edge
  %len.addr.043.i.be.i = phi i32 [ %dec.i16.i, %for.inc.i.thread.i.for.body.i.backedge.i_crit_edge ], [ %dec.i.i, %if.else.i.i.for.body.i.backedge.i_crit_edge ]
  %cdb.addr.041.i.be.i = phi ptr [ %call12.i.i, %for.inc.i.thread.i.for.body.i.backedge.i_crit_edge ], [ %call19.i.i, %if.else.i.i.for.body.i.backedge.i_crit_edge ]
  %m.addr.042.i.be.i = getelementptr i8, ptr %m.addr.042.i.i, i32 1
  br label %for.body.i.i

for.inc.i.thread.i:                               ; preds = %if.then9.i.i, %if.then7.i.i.for.inc.i.thread.i_crit_edge
  %cdb.addr.1.i.i = phi ptr [ %call.i.i, %if.then9.i.i ], [ %cdb.addr.041.i.i, %if.then7.i.i.for.inc.i.thread.i_crit_edge ]
  %65 = ptrtoint ptr %m.addr.042.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %m.addr.042.i.i, align 1
  %conv11.i.i = zext i8 %66 to i32
  %call12.i.i = tail call ptr (ptr, ptr, ...) @bufprint(ptr noundef %cdb.addr.1.i.i, ptr noundef nonnull @.str.128, i32 noundef %conv11.i.i) #9
  %dec.i16.i = add i32 %len.addr.043.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i16.i)
  %tobool1.not.i18.i = icmp eq i32 %dec.i16.i, 0
  br i1 %tobool1.not.i18.i, label %for.inc.i.thread.i.if.end68_crit_edge, label %for.inc.i.thread.i.for.body.i.backedge.i_crit_edge

for.inc.i.thread.i.for.body.i.backedge.i_crit_edge: ; preds = %for.inc.i.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.backedge.i

for.inc.i.thread.i.if.end68_crit_edge:            ; preds = %for.inc.i.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then23.i.critedge.i:                           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call24.i.i = tail call ptr (ptr, ptr, ...) @bufprint(ptr noundef %call19.i.i, ptr noundef nonnull @.str.127) #9
  br label %if.end68

if.end68:                                         ; preds = %if.then23.i.critedge.i, %for.inc.i.thread.i.if.end68_crit_edge, %for.cond.preheader.i.i.if.end68_crit_edge, %if.end.i.if.end68_crit_edge, %if.then62
  %cdb.addr.2 = phi ptr [ %call63, %if.then62 ], [ null, %if.end.i.if.end68_crit_edge ], [ %call24.i.i, %if.then23.i.critedge.i ], [ %call55, %for.cond.preheader.i.i.if.end68_crit_edge ], [ %call12.i.i, %for.inc.i.thread.i.if.end68_crit_edge ]
  %call69 = tail call ptr (ptr, ptr, ...) @bufprint(ptr noundef %cdb.addr.2, ptr noundef nonnull @.str.79)
  %67 = ptrtoint ptr %m95 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %m95, align 4
  %69 = ptrtoint ptr %l96 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %l96, align 4
  %arrayidx72 = getelementptr i8, ptr %68, i32 %70
  %71 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %72)
  %cmp74.not = icmp eq i8 %72, -1
  br i1 %cmp74.not, label %if.else84, label %if.then76

if.then76:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %conv73 = zext i8 %72 to i32
  %add81 = add i32 %70, 1
  %add83 = add i32 %add81, %conv73
  %73 = ptrtoint ptr %l96 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add83, ptr %l96, align 4
  br label %for.inc135

if.else84:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr88 = getelementptr i8, ptr %arrayidx72, i32 1
  %74 = ptrtoint ptr %add.ptr88 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr88, align 2
  %conv89 = zext i16 %75 to i32
  %add90 = add i32 %70, 3
  %add92 = add i32 %add90, %conv89
  %76 = ptrtoint ptr %l96 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add92, ptr %l96, align 4
  br label %for.inc135

sw.bb94:                                          ; preds = %for.end
  %77 = ptrtoint ptr %m95 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %m95, align 4
  %79 = ptrtoint ptr %l96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %l96, align 4
  %arrayidx97 = getelementptr i8, ptr %78, i32 %80
  %81 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx97, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp99 = icmp eq i8 %82, 0
  %arrayidx106 = getelementptr [48 x ptr], ptr @pnames, i32 0, i32 %idxprom14
  %83 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx106, align 4
  br i1 %cmp99, label %if.then101, label %if.else110

if.then101:                                       ; preds = %sw.bb94
  %call107 = tail call ptr (ptr, ptr, ...) @bufprint(ptr noundef %cdb.addr.1.lcssa, ptr noundef nonnull @.str.80, i32 noundef %sub, ptr noundef %84)
  %85 = ptrtoint ptr %l96 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %l96, align 4
  %inc109 = add i32 %86, 1
  store i32 %inc109, ptr %l96, align 4
  %87 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %p, align 4
  %inc.i = add i32 %88, 1
  store i32 %inc.i, ptr %p, align 4
  %89 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %par, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %if.then101
  %layer.012.i = phi i32 [ 1, %if.then101 ], [ %layer.1.i, %sw.epilog.i.for.body.i_crit_edge ]
  %91 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %p, align 4
  %inc2.i = add i32 %92, 1
  store i32 %inc2.i, ptr %p, align 4
  %arrayidx.i = getelementptr i8, ptr %90, i32 %inc2.i
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %94 to i32
  %arrayidx4.i = getelementptr [48 x %struct._cdef], ptr @cdef, i32 0, i32 %idxprom.i
  %95 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx4.i, align 4
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %96, label %for.body.i.sw.epilog.i_crit_edge [
    i32 5, label %sw.bb.i
    i32 6, label %sw.bb6.i
  ]

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc5.i = add i32 %layer.012.i, 1
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add i32 %layer.012.i, -1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb6.i, %sw.bb.i, %for.body.i.sw.epilog.i_crit_edge
  %layer.1.i = phi i32 [ %layer.012.i, %for.body.i.sw.epilog.i_crit_edge ], [ %dec.i, %sw.bb6.i ], [ %inc5.i, %sw.bb.i ]
  %tobool.not.i = icmp eq i32 %layer.1.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.for.inc135_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

sw.epilog.i.for.inc135_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc135

if.else110:                                       ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #11
  %call117 = tail call ptr (ptr, ptr, ...) @bufprint(ptr noundef %cdb.addr.1.lcssa, ptr noundef nonnull @.str.81, i32 noundef %sub, ptr noundef %84)
  %98 = ptrtoint ptr %m95 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %m95, align 4
  %add.ptr119 = getelementptr i8, ptr %99, i32 %80
  %100 = ptrtoint ptr %add.ptr119 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %add.ptr119, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %101)
  %cmp122 = icmp eq i8 %101, -1
  %102 = ptrtoint ptr %l96 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %l96, align 4
  %. = select i1 %cmp122, i32 3, i32 1
  %add127 = add i32 %103, %.
  store i32 %add127, ptr %l96, align 4
  %104 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %p, align 4
  %inc130 = add i32 %105, 1
  store i32 %inc130, ptr %p, align 4
  %call132 = tail call fastcc ptr @protocol_message_2_pars(ptr noundef %call117, ptr noundef %cmsg, i32 noundef %add131)
  br label %for.inc135

for.inc135:                                       ; preds = %if.else110, %sw.epilog.i.for.inc135_crit_edge, %if.else84, %if.then76, %sw.bb37, %sw.bb25, %sw.bb, %for.end.for.inc135_crit_edge
  %cdb.addr.4 = phi ptr [ %cdb.addr.1.lcssa, %for.end.for.inc135_crit_edge ], [ %call132, %if.else110 ], [ %call69, %if.then76 ], [ %call69, %if.else84 ], [ %call46, %sw.bb37 ], [ %call35, %sw.bb25 ], [ %call22, %sw.bb ], [ %call107, %sw.epilog.i.for.inc135_crit_edge ]
  %106 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %p, align 4
  %inc137 = add i32 %107, 1
  store i32 %inc137, ptr %p, align 4
  %108 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %par, align 4
  %arrayidx = getelementptr i8, ptr %109, i32 %inc137
  %110 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %111 to i32
  %arrayidx2 = getelementptr [48 x %struct._cdef], ptr @cdef, i32 0, i32 %idxprom
  %112 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx2, align 4
  %cmp.not = icmp eq i32 %113, 6
  br i1 %cmp.not, label %for.inc135.return_crit_edge, label %for.inc135.for.body_crit_edge

for.inc135.for.body_crit_edge:                    ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc135.return_crit_edge:                      ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %for.inc135.return_crit_edge, %for.body.return_crit_edge, %for.cond.preheader.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi ptr [ null, %entry.return_crit_edge ], [ %cdb, %for.cond.preheader.return_crit_edge ], [ null, %for.body.return_crit_edge ], [ %cdb.addr.4, %for.inc135.return_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdebug_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 372) #12
  store ptr %call7.i, ptr @g_cmsg, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 16) #12
  store ptr %call7.i12, ptr @g_debbuf, align 4
  %tobool2.not = icmp eq ptr %call7.i12, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load ptr, ptr @g_cmsg, align 4
  tail call void @kfree(ptr noundef %2) #9
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 4096) #12
  %4 = load ptr, ptr @g_debbuf, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i13, ptr %4, align 4
  %tobool7.not = icmp eq ptr %call7.i13, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %6 = load ptr, ptr @g_cmsg, align 4
  tail call void @kfree(ptr noundef %6) #9
  %7 = load ptr, ptr @g_debbuf, align 4
  tail call void @kfree(ptr noundef %7) #9
  br label %return

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr inbounds %struct._cdebbuf, ptr %4, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4096, ptr %size, align 4
  %9 = ptrtoint ptr %call7.i13 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %call7.i13, align 8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 4
  %p = getelementptr inbounds %struct._cdebbuf, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %p, align 4
  %pos = getelementptr inbounds %struct._cdebbuf, ptr %4, i32 0, i32 3
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %pos, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then3, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -12, %if.then8 ], [ -12, %if.then3 ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdebug_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @g_debbuf, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = load ptr, ptr @g_debbuf, align 4
  tail call void @kfree(ptr noundef %3) #9
  %4 = load ptr, ptr @g_cmsg, align 4
  tail call void @kfree(ptr noundef %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274}
!llvm.module.flags = !{!276, !277, !278, !279, !280, !281, !282, !283}
!llvm.ident = !{!284}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/isdn/capi/capiutil.c", i32 319, i32 12}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/isdn/capi/capiutil.c", i32 607, i32 22}
!4 = !{ptr @g_debbuf, !5, !"g_debbuf", i1 false, i1 false}
!5 = !{!"../drivers/isdn/capi/capiutil.c", i32 529, i32 18}
!6 = !{ptr @g_debbuf_lock, !7, !"g_debbuf_lock", i1 false, i1 false}
!7 = !{!"../drivers/isdn/capi/capiutil.c", i32 530, i32 15}
!8 = !{ptr @g_cmsg, !9, !"g_cmsg", i1 false, i1 false}
!9 = !{!"../drivers/isdn/capi/capiutil.c", i32 531, i32 15}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/isdn/capi/capiutil.c", i32 255, i32 11}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/isdn/capi/capiutil.c", i32 256, i32 11}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/isdn/capi/capiutil.c", i32 257, i32 11}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/isdn/capi/capiutil.c", i32 258, i32 11}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/isdn/capi/capiutil.c", i32 259, i32 11}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/isdn/capi/capiutil.c", i32 260, i32 11}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/isdn/capi/capiutil.c", i32 261, i32 11}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/isdn/capi/capiutil.c", i32 262, i32 11}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/isdn/capi/capiutil.c", i32 263, i32 11}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/isdn/capi/capiutil.c", i32 264, i32 11}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/isdn/capi/capiutil.c", i32 265, i32 11}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/isdn/capi/capiutil.c", i32 266, i32 11}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/isdn/capi/capiutil.c", i32 267, i32 11}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/isdn/capi/capiutil.c", i32 268, i32 11}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/isdn/capi/capiutil.c", i32 269, i32 11}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/isdn/capi/capiutil.c", i32 270, i32 11}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/isdn/capi/capiutil.c", i32 271, i32 11}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/isdn/capi/capiutil.c", i32 272, i32 11}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/isdn/capi/capiutil.c", i32 273, i32 11}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/isdn/capi/capiutil.c", i32 274, i32 11}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/isdn/capi/capiutil.c", i32 275, i32 11}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/isdn/capi/capiutil.c", i32 276, i32 11}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/isdn/capi/capiutil.c", i32 277, i32 11}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/isdn/capi/capiutil.c", i32 278, i32 11}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/isdn/capi/capiutil.c", i32 279, i32 11}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/isdn/capi/capiutil.c", i32 280, i32 11}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/isdn/capi/capiutil.c", i32 281, i32 11}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/isdn/capi/capiutil.c", i32 282, i32 11}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/isdn/capi/capiutil.c", i32 283, i32 11}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/isdn/capi/capiutil.c", i32 284, i32 11}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/isdn/capi/capiutil.c", i32 285, i32 11}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/isdn/capi/capiutil.c", i32 286, i32 11}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/isdn/capi/capiutil.c", i32 287, i32 11}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/isdn/capi/capiutil.c", i32 288, i32 11}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/isdn/capi/capiutil.c", i32 289, i32 11}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/isdn/capi/capiutil.c", i32 290, i32 11}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/isdn/capi/capiutil.c", i32 291, i32 11}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/isdn/capi/capiutil.c", i32 292, i32 11}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/isdn/capi/capiutil.c", i32 293, i32 11}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/isdn/capi/capiutil.c", i32 294, i32 11}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/isdn/capi/capiutil.c", i32 295, i32 11}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/isdn/capi/capiutil.c", i32 296, i32 11}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/isdn/capi/capiutil.c", i32 297, i32 11}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/isdn/capi/capiutil.c", i32 298, i32 11}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/isdn/capi/capiutil.c", i32 299, i32 11}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/isdn/capi/capiutil.c", i32 300, i32 11}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/isdn/capi/capiutil.c", i32 301, i32 11}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/isdn/capi/capiutil.c", i32 302, i32 11}
!106 = !{ptr @mnames, !107, !"mnames", i1 false, i1 false}
!107 = !{!"../drivers/isdn/capi/capiutil.c", i32 253, i32 14}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/isdn/capi/capiutil.c", i32 141, i32 27}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/isdn/capi/capiutil.c", i32 142, i32 29}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/isdn/capi/capiutil.c", i32 144, i32 28}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/isdn/capi/capiutil.c", i32 145, i32 26}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/isdn/capi/capiutil.c", i32 146, i32 30}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/isdn/capi/capiutil.c", i32 147, i32 39}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/isdn/capi/capiutil.c", i32 148, i32 32}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/isdn/capi/capiutil.c", i32 150, i32 29}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/isdn/capi/capiutil.c", i32 152, i32 28}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/isdn/capi/capiutil.c", i32 156, i32 34}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/isdn/capi/capiutil.c", i32 158, i32 31}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/isdn/capi/capiutil.c", i32 162, i32 30}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/isdn/capi/capiutil.c", i32 164, i32 29}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/isdn/capi/capiutil.c", i32 165, i32 36}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/isdn/capi/capiutil.c", i32 166, i32 32}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/isdn/capi/capiutil.c", i32 168, i32 26}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/isdn/capi/capiutil.c", i32 169, i32 30}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/isdn/capi/capiutil.c", i32 172, i32 35}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/isdn/capi/capiutil.c", i32 176, i32 30}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/isdn/capi/capiutil.c", i32 177, i32 37}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/isdn/capi/capiutil.c", i32 181, i32 31}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/isdn/capi/capiutil.c", i32 182, i32 33}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/isdn/capi/capiutil.c", i32 185, i32 30}
!154 = !{ptr @cpars, !155, !"cpars", i1 false, i1 false}
!155 = !{!"../drivers/isdn/capi/capiutil.c", i32 139, i32 23}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/isdn/capi/capiutil.c", i32 477, i32 23}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/isdn/capi/capiutil.c", i32 479, i32 24}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/isdn/capi/capiutil.c", i32 483, i32 24}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/isdn/capi/capiutil.c", i32 491, i32 24}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/isdn/capi/capiutil.c", i32 495, i32 24}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/isdn/capi/capiutil.c", i32 497, i32 25}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/isdn/capi/capiutil.c", i32 500, i32 24}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/isdn/capi/capiutil.c", i32 511, i32 25}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/isdn/capi/capiutil.c", i32 517, i32 25}
!174 = !{ptr @cdef, !175, !"cdef", i1 false, i1 false}
!175 = !{!"../drivers/isdn/capi/capiutil.c", i32 39, i32 14}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/isdn/capi/capiutil.c", i32 335, i32 10}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/isdn/capi/capiutil.c", i32 336, i32 10}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/isdn/capi/capiutil.c", i32 337, i32 10}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/isdn/capi/capiutil.c", i32 338, i32 10}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/isdn/capi/capiutil.c", i32 339, i32 10}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/isdn/capi/capiutil.c", i32 340, i32 10}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/isdn/capi/capiutil.c", i32 341, i32 10}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/isdn/capi/capiutil.c", i32 342, i32 10}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/isdn/capi/capiutil.c", i32 343, i32 10}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/isdn/capi/capiutil.c", i32 344, i32 10}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/isdn/capi/capiutil.c", i32 345, i32 10}
!198 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/isdn/capi/capiutil.c", i32 346, i32 10}
!200 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/isdn/capi/capiutil.c", i32 347, i32 10}
!202 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/isdn/capi/capiutil.c", i32 348, i32 10}
!204 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/isdn/capi/capiutil.c", i32 349, i32 10}
!206 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/isdn/capi/capiutil.c", i32 350, i32 10}
!208 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/isdn/capi/capiutil.c", i32 351, i32 10}
!210 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/isdn/capi/capiutil.c", i32 352, i32 10}
!212 = !{ptr @.str.100, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/isdn/capi/capiutil.c", i32 353, i32 10}
!214 = !{ptr @.str.101, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/isdn/capi/capiutil.c", i32 354, i32 10}
!216 = !{ptr @.str.102, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/isdn/capi/capiutil.c", i32 355, i32 10}
!218 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/isdn/capi/capiutil.c", i32 356, i32 10}
!220 = !{ptr @.str.104, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/isdn/capi/capiutil.c", i32 357, i32 10}
!222 = !{ptr @.str.105, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/isdn/capi/capiutil.c", i32 358, i32 10}
!224 = !{ptr @.str.106, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/isdn/capi/capiutil.c", i32 359, i32 10}
!226 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/isdn/capi/capiutil.c", i32 360, i32 10}
!228 = !{ptr @.str.108, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/isdn/capi/capiutil.c", i32 361, i32 10}
!230 = !{ptr @.str.109, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/isdn/capi/capiutil.c", i32 362, i32 10}
!232 = !{ptr @.str.110, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/isdn/capi/capiutil.c", i32 363, i32 10}
!234 = !{ptr @.str.111, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/isdn/capi/capiutil.c", i32 364, i32 10}
!236 = !{ptr @.str.112, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/isdn/capi/capiutil.c", i32 365, i32 10}
!238 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/isdn/capi/capiutil.c", i32 366, i32 10}
!240 = !{ptr @.str.114, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/isdn/capi/capiutil.c", i32 367, i32 10}
!242 = !{ptr @.str.115, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/isdn/capi/capiutil.c", i32 368, i32 10}
!244 = !{ptr @.str.116, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/isdn/capi/capiutil.c", i32 369, i32 10}
!246 = !{ptr @.str.117, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/isdn/capi/capiutil.c", i32 370, i32 10}
!248 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/isdn/capi/capiutil.c", i32 371, i32 10}
!250 = !{ptr @.str.119, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/isdn/capi/capiutil.c", i32 372, i32 10}
!252 = !{ptr @.str.120, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/isdn/capi/capiutil.c", i32 373, i32 10}
!254 = !{ptr @.str.121, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/isdn/capi/capiutil.c", i32 374, i32 10}
!256 = !{ptr @.str.122, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/isdn/capi/capiutil.c", i32 375, i32 10}
!258 = !{ptr @.str.123, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/isdn/capi/capiutil.c", i32 376, i32 10}
!260 = !{ptr @.str.124, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/isdn/capi/capiutil.c", i32 377, i32 10}
!262 = !{ptr @.str.125, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/isdn/capi/capiutil.c", i32 378, i32 10}
!264 = !{ptr @.str.126, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/isdn/capi/capiutil.c", i32 379, i32 10}
!266 = !{ptr @pnames, !267, !"pnames", i1 false, i1 false}
!267 = !{!"../drivers/isdn/capi/capiutil.c", i32 330, i32 14}
!268 = !{ptr @.str.127, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/isdn/capi/capiutil.c", i32 433, i32 25}
!270 = !{ptr @.str.128, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/isdn/capi/capiutil.c", i32 434, i32 24}
!272 = !{ptr @.str.129, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/isdn/capi/capiutil.c", i32 438, i32 25}
!274 = !{ptr @.str.130, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/isdn/capi/capiutil.c", i32 440, i32 25}
!276 = !{i32 1, !"wchar_size", i32 2}
!277 = !{i32 1, !"min_enum_size", i32 4}
!278 = !{i32 8, !"branch-target-enforcement", i32 0}
!279 = !{i32 8, !"sign-return-address", i32 0}
!280 = !{i32 8, !"sign-return-address-all", i32 0}
!281 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!282 = !{i32 7, !"uwtable", i32 1}
!283 = !{i32 7, !"frame-pointer", i32 2}
!284 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!285 = !{!"branch_weights", i32 2000, i32 1}
!286 = !{!"branch_weights", i32 1, i32 2000}
!287 = !{!"auto-init"}
