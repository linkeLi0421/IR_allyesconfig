; ModuleID = '/llk/IR_all_yes/drivers/media/common/tveeprom.c_pt.bc'
source_filename = "../drivers/media/common/tveeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tveeprom_hauppauge_analog\22, \22a\22\09"
module asm "\09.weak\09__crc_tveeprom_hauppauge_analog\09\09\09\09"
module asm "\09.long\09__crc_tveeprom_hauppauge_analog\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tveeprom_hauppauge_analog:\09\09\09\09\09"
module asm "\09.asciz \09\22tveeprom_hauppauge_analog\22\09\09\09\09\09"
module asm "__kstrtabns_tveeprom_hauppauge_analog:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tveeprom_read\22, \22a\22\09"
module asm "\09.weak\09__crc_tveeprom_read\09\09\09\09"
module asm "\09.long\09__crc_tveeprom_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tveeprom_read:\09\09\09\09\09"
module asm "\09.asciz \09\22tveeprom_read\22\09\09\09\09\09"
module asm "__kstrtabns_tveeprom_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon = type { i32, ptr }
%struct.anon.1 = type { i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }

@__UNIQUE_ID_description319 = internal constant [57 x i8] c"tveeprom.description=i2c Hauppauge eeprom decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author320 = internal constant [26 x i8] c"tveeprom.author=John Klar\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [44 x i8] c"tveeprom.file=drivers/media/common/tveeprom\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [21 x i8] c"tveeprom.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" none\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__const.tveeprom_hauppauge_analog.t_fmt_name2 = private unnamed_addr constant [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1], align 4
@tveeprom_hauppauge_analog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014tveeprom: Encountered bad packet header [%02x]. Corrupt or not a Hauppauge eeprom.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tveeprom_hauppauge_analog\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/common/tveeprom.c\00", [32 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr = internal global ptr @tveeprom_hauppauge_analog._entry, section ".printk_index", align 4
@tveeprom_hauppauge_analog.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tveeprom\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Tag [%02x] + %d bytes: %*ph\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tveeprom: Tag [%02x] + %d bytes: %*ph\0A\00", [57 x i8] zeroinitializer }, align 32
@audio_ic = internal constant { [53 x %struct.anon], [120 x i8] } { [53 x %struct.anon] [%struct.anon { i32 0, ptr @.str.63 }, %struct.anon { i32 3, ptr @.str.64 }, %struct.anon { i32 3, ptr @.str.65 }, %struct.anon { i32 3, ptr @.str.66 }, %struct.anon { i32 2, ptr @.str.67 }, %struct.anon { i32 2, ptr @.str.68 }, %struct.anon { i32 2, ptr @.str.69 }, %struct.anon { i32 2, ptr @.str.70 }, %struct.anon { i32 2, ptr @.str.71 }, %struct.anon { i32 3, ptr @.str.72 }, %struct.anon { i32 2, ptr @.str.73 }, %struct.anon { i32 2, ptr @.str.74 }, %struct.anon { i32 2, ptr @.str.75 }, %struct.anon { i32 2, ptr @.str.76 }, %struct.anon { i32 2, ptr @.str.77 }, %struct.anon { i32 2, ptr @.str.78 }, %struct.anon { i32 2, ptr @.str.79 }, %struct.anon { i32 2, ptr @.str.80 }, %struct.anon { i32 3, ptr @.str.81 }, %struct.anon { i32 3, ptr @.str.82 }, %struct.anon { i32 2, ptr @.str.83 }, %struct.anon { i32 2, ptr @.str.84 }, %struct.anon { i32 2, ptr @.str.85 }, %struct.anon { i32 2, ptr @.str.86 }, %struct.anon { i32 2, ptr @.str.87 }, %struct.anon { i32 2, ptr @.str.88 }, %struct.anon { i32 2, ptr @.str.89 }, %struct.anon { i32 2, ptr @.str.90 }, %struct.anon { i32 2, ptr @.str.91 }, %struct.anon { i32 2, ptr @.str.92 }, %struct.anon { i32 1, ptr @.str.93 }, %struct.anon { i32 1, ptr @.str.94 }, %struct.anon { i32 1, ptr @.str.95 }, %struct.anon { i32 1, ptr @.str.96 }, %struct.anon { i32 1, ptr @.str.97 }, %struct.anon { i32 1, ptr @.str.98 }, %struct.anon { i32 1, ptr @.str.99 }, %struct.anon { i32 1, ptr @.str.100 }, %struct.anon { i32 1, ptr @.str.101 }, %struct.anon { i32 1, ptr @.str.102 }, %struct.anon { i32 1, ptr @.str.103 }, %struct.anon { i32 1, ptr @.str.104 }, %struct.anon { i32 1, ptr @.str.105 }, %struct.anon { i32 1, ptr @.str.106 }, %struct.anon { i32 1, ptr @.str.107 }, %struct.anon { i32 1, ptr @.str.108 }, %struct.anon { i32 1, ptr @.str.109 }, %struct.anon { i32 1, ptr @.str.110 }, %struct.anon { i32 1, ptr @.str.111 }, %struct.anon { i32 3, ptr @.str.112 }, %struct.anon { i32 3, ptr @.str.113 }, %struct.anon { i32 3, ptr @.str.114 }, %struct.anon { i32 3, ptr @.str.115 }], [120 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Not sure what to do with tag [%02x]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"tveeprom: Not sure what to do with tag [%02x]\0A\00", [49 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014tveeprom: Ran out of data!\0A\00", [34 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr.12 = internal global ptr @tveeprom_hauppauge_analog._entry.10, section ".printk_index", align 4
@tveeprom_hauppauge_analog._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016tveeprom: The eeprom says no radio is present, but the tuner type\0A\00", [59 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr.15 = internal global ptr @tveeprom_hauppauge_analog._entry.13, section ".printk_index", align 4
@tveeprom_hauppauge_analog._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016tveeprom: indicates otherwise. I will assume that radio is present.\0A\00", [57 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr.18 = internal global ptr @tveeprom_hauppauge_analog._entry.16, section ".printk_index", align 4
@hauppauge_tuner = internal constant { [189 x %struct.anon.1], [376 x i8] } { [189 x %struct.anon.1] [%struct.anon.1 { i32 4, ptr @.str.63 }, %struct.anon.1 { i32 4, ptr @.str.116 }, %struct.anon.1 { i32 4, ptr @.str.117 }, %struct.anon.1 { i32 5, ptr @.str.118 }, %struct.anon.1 { i32 3, ptr @.str.119 }, %struct.anon.1 { i32 2, ptr @.str.120 }, %struct.anon.1 { i32 1, ptr @.str.121 }, %struct.anon.1 { i32 23, ptr @.str.122 }, %struct.anon.1 { i32 5, ptr @.str.123 }, %struct.anon.1 { i32 3, ptr @.str.124 }, %struct.anon.1 { i32 2, ptr @.str.125 }, %struct.anon.1 { i32 1, ptr @.str.126 }, %struct.anon.1 { i32 23, ptr @.str.127 }, %struct.anon.1 { i32 6, ptr @.str.128 }, %struct.anon.1 { i32 0, ptr @.str.129 }, %struct.anon.1 { i32 7, ptr @.str.130 }, %struct.anon.1 { i32 5, ptr @.str.131 }, %struct.anon.1 { i32 3, ptr @.str.132 }, %struct.anon.1 { i32 2, ptr @.str.133 }, %struct.anon.1 { i32 1, ptr @.str.134 }, %struct.anon.1 { i32 23, ptr @.str.135 }, %struct.anon.1 { i32 5, ptr @.str.136 }, %struct.anon.1 { i32 3, ptr @.str.137 }, %struct.anon.1 { i32 2, ptr @.str.138 }, %struct.anon.1 { i32 1, ptr @.str.139 }, %struct.anon.1 { i32 23, ptr @.str.140 }, %struct.anon.1 { i32 8, ptr @.str.141 }, %struct.anon.1 { i32 4, ptr @.str.142 }, %struct.anon.1 { i32 4, ptr @.str.143 }, %struct.anon.1 { i32 14, ptr @.str.144 }, %struct.anon.1 { i32 4, ptr @.str.145 }, %struct.anon.1 { i32 4, ptr @.str.146 }, %struct.anon.1 { i32 4, ptr @.str.147 }, %struct.anon.1 { i32 21, ptr @.str.148 }, %struct.anon.1 { i32 24, ptr @.str.149 }, %struct.anon.1 { i32 18, ptr @.str.150 }, %struct.anon.1 { i32 2, ptr @.str.151 }, %struct.anon.1 { i32 2, ptr @.str.152 }, %struct.anon.1 { i32 2, ptr @.str.153 }, %struct.anon.1 { i32 4, ptr @.str.154 }, %struct.anon.1 { i32 4, ptr @.str.155 }, %struct.anon.1 { i32 19, ptr @.str.156 }, %struct.anon.1 { i32 20, ptr @.str.157 }, %struct.anon.1 { i32 22, ptr @.str.158 }, %struct.anon.1 { i32 30, ptr @.str.159 }, %struct.anon.1 { i32 4, ptr @.str.160 }, %struct.anon.1 { i32 27, ptr @.str.161 }, %struct.anon.1 { i32 28, ptr @.str.162 }, %struct.anon.1 { i32 29, ptr @.str.163 }, %struct.anon.1 { i32 25, ptr @.str.164 }, %struct.anon.1 { i32 26, ptr @.str.165 }, %struct.anon.1 { i32 4, ptr @.str.166 }, %struct.anon.1 { i32 45, ptr @.str.167 }, %struct.anon.1 { i32 4, ptr @.str.168 }, %struct.anon.1 { i32 4, ptr @.str.169 }, %struct.anon.1 { i32 38, ptr @.str.170 }, %struct.anon.1 { i32 4, ptr @.str.171 }, %struct.anon.1 { i32 38, ptr @.str.172 }, %struct.anon.1 { i32 43, ptr @.str.173 }, %struct.anon.1 { i32 4, ptr @.str.174 }, %struct.anon.1 { i32 38, ptr @.str.175 }, %struct.anon.1 { i32 4, ptr @.str.176 }, %struct.anon.1 { i32 38, ptr @.str.177 }, %struct.anon.1 { i32 4, ptr @.str.178 }, %struct.anon.1 { i32 4, ptr @.str.179 }, %struct.anon.1 { i32 4, ptr @.str.180 }, %struct.anon.1 { i32 4, ptr @.str.181 }, %struct.anon.1 { i32 4, ptr @.str.182 }, %struct.anon.1 { i32 47, ptr @.str.183 }, %struct.anon.1 { i32 47, ptr @.str.184 }, %struct.anon.1 { i32 4, ptr @.str.185 }, %struct.anon.1 { i32 4, ptr @.str.186 }, %struct.anon.1 { i32 4, ptr @.str.187 }, %struct.anon.1 { i32 4, ptr @.str.188 }, %struct.anon.1 { i32 4, ptr @.str.189 }, %struct.anon.1 { i32 4, ptr @.str.190 }, %struct.anon.1 { i32 4, ptr @.str.191 }, %struct.anon.1 { i32 4, ptr @.str.192 }, %struct.anon.1 { i32 4, ptr @.str.193 }, %struct.anon.1 { i32 4, ptr @.str.194 }, %struct.anon.1 { i32 80, ptr @.str.195 }, %struct.anon.1 { i32 37, ptr @.str.196 }, %struct.anon.1 { i32 39, ptr @.str.197 }, %struct.anon.1 { i32 37, ptr @.str.198 }, %struct.anon.1 { i32 37, ptr @.str.199 }, %struct.anon.1 { i32 50, ptr @.str.200 }, %struct.anon.1 { i32 43, ptr @.str.201 }, %struct.anon.1 { i32 70, ptr @.str.202 }, %struct.anon.1 { i32 4, ptr @.str.203 }, %struct.anon.1 { i32 38, ptr @.str.204 }, %struct.anon.1 { i32 4, ptr @.str.205 }, %struct.anon.1 { i32 56, ptr @.str.206 }, %struct.anon.1 { i32 57, ptr @.str.207 }, %struct.anon.1 { i32 4, ptr @.str.208 }, %struct.anon.1 { i32 4, ptr @.str.209 }, %struct.anon.1 { i32 4, ptr @.str.210 }, %struct.anon.1 { i32 73, ptr @.str.211 }, %struct.anon.1 { i32 55, ptr @.str.212 }, %struct.anon.1 { i32 4, ptr @.str.213 }, %struct.anon.1 { i32 50, ptr @.str.214 }, %struct.anon.1 { i32 63, ptr @.str.215 }, %struct.anon.1 { i32 62, ptr @.str.216 }, %struct.anon.1 { i32 4, ptr @.str.217 }, %struct.anon.1 { i32 43, ptr @.str.218 }, %struct.anon.1 { i32 43, ptr @.str.219 }, %struct.anon.1 { i32 38, ptr @.str.220 }, %struct.anon.1 { i32 4, ptr @.str.221 }, %struct.anon.1 { i32 4, ptr @.str.222 }, %struct.anon.1 { i32 4, ptr @.str.223 }, %struct.anon.1 { i32 4, ptr @.str.224 }, %struct.anon.1 { i32 4, ptr @.str.225 }, %struct.anon.1 { i32 4, ptr @.str.226 }, %struct.anon.1 { i32 50, ptr @.str.227 }, %struct.anon.1 { i32 55, ptr @.str.228 }, %struct.anon.1 { i32 4, ptr @.str.229 }, %struct.anon.1 { i32 4, ptr @.str.230 }, %struct.anon.1 { i32 43, ptr @.str.231 }, %struct.anon.1 { i32 38, ptr @.str.232 }, %struct.anon.1 { i32 4, ptr @.str.233 }, %struct.anon.1 { i32 4, ptr @.str.234 }, %struct.anon.1 { i32 71, ptr @.str.235 }, %struct.anon.1 { i32 80, ptr @.str.236 }, %struct.anon.1 { i32 4, ptr @.str.237 }, %struct.anon.1 { i32 4, ptr @.str.238 }, %struct.anon.1 { i32 4, ptr @.str.239 }, %struct.anon.1 { i32 4, ptr @.str.240 }, %struct.anon.1 { i32 4, ptr @.str.241 }, %struct.anon.1 { i32 4, ptr @.str.242 }, %struct.anon.1 { i32 4, ptr @.str.243 }, %struct.anon.1 { i32 4, ptr @.str.244 }, %struct.anon.1 { i32 4, ptr @.str.245 }, %struct.anon.1 { i32 4, ptr @.str.246 }, %struct.anon.1 { i32 4, ptr @.str.247 }, %struct.anon.1 { i32 78, ptr @.str.248 }, %struct.anon.1 { i32 4, ptr @.str.249 }, %struct.anon.1 { i32 4, ptr @.str.250 }, %struct.anon.1 { i32 4, ptr @.str.251 }, %struct.anon.1 { i32 4, ptr @.str.252 }, %struct.anon.1 { i32 4, ptr @.str.253 }, %struct.anon.1 { i32 4, ptr @.str.254 }, %struct.anon.1 { i32 4, ptr @.str.255 }, %struct.anon.1 { i32 4, ptr @.str.256 }, %struct.anon.1 { i32 4, ptr @.str.257 }, %struct.anon.1 { i32 4, ptr @.str.258 }, %struct.anon.1 { i32 4, ptr @.str.259 }, %struct.anon.1 { i32 4, ptr @.str.260 }, %struct.anon.1 { i32 4, ptr @.str.261 }, %struct.anon.1 { i32 4, ptr @.str.262 }, %struct.anon.1 { i32 4, ptr @.str.263 }, %struct.anon.1 { i32 54, ptr @.str.264 }, %struct.anon.1 { i32 76, ptr @.str.265 }, %struct.anon.1 { i32 4, ptr @.str.266 }, %struct.anon.1 { i32 4, ptr @.str.267 }, %struct.anon.1 { i32 4, ptr @.str.268 }, %struct.anon.1 { i32 4, ptr @.str.269 }, %struct.anon.1 { i32 54, ptr @.str.270 }, %struct.anon.1 { i32 4, ptr @.str.271 }, %struct.anon.1 { i32 4, ptr @.str.272 }, %struct.anon.1 { i32 4, ptr @.str.273 }, %struct.anon.1 { i32 4, ptr @.str.274 }, %struct.anon.1 { i32 4, ptr @.str.275 }, %struct.anon.1 { i32 4, ptr @.str.276 }, %struct.anon.1 { i32 4, ptr @.str.277 }, %struct.anon.1 { i32 4, ptr @.str.278 }, %struct.anon.1 { i32 4, ptr @.str.279 }, %struct.anon.1 { i32 4, ptr @.str.280 }, %struct.anon.1 { i32 4, ptr @.str.281 }, %struct.anon.1 { i32 4, ptr @.str.282 }, %struct.anon.1 { i32 85, ptr @.str.283 }, %struct.anon.1 { i32 4, ptr @.str.284 }, %struct.anon.1 { i32 4, ptr @.str.285 }, %struct.anon.1 { i32 4, ptr @.str.286 }, %struct.anon.1 { i32 4, ptr @.str.287 }, %struct.anon.1 { i32 88, ptr @.str.288 }, %struct.anon.1 { i32 4, ptr @.str.289 }, %struct.anon.1 { i32 4, ptr @.str.290 }, %struct.anon.1 { i32 4, ptr @.str.291 }, %struct.anon.1 { i32 4, ptr @.str.292 }, %struct.anon.1 { i32 4, ptr @.str.293 }, %struct.anon.1 { i32 4, ptr @.str.294 }, %struct.anon.1 { i32 4, ptr @.str.295 }, %struct.anon.1 { i32 4, ptr @.str.296 }, %struct.anon.1 { i32 4, ptr @.str.297 }, %struct.anon.1 { i32 4, ptr @.str.298 }, %struct.anon.1 { i32 4, ptr @.str.299 }, %struct.anon.1 { i32 4, ptr @.str.300 }, %struct.anon.1 { i32 4, ptr @.str.301 }, %struct.anon.1 { i32 4, ptr @.str.302 }, %struct.anon.1 { i32 4, ptr @.str.303 }], [376 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016tveeprom: Hauppauge model %d, rev %s, serial# %u\0A\00", [44 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr.22 = internal global ptr @tveeprom_hauppauge_analog._entry.20, section ".printk_index", align 4
@tveeprom_hauppauge_analog._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016tveeprom: MAC address is %pM\0A\00", [32 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr.25 = internal global ptr @tveeprom_hauppauge_analog._entry.23, section ".printk_index", align 4
@tveeprom_hauppauge_analog._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016tveeprom: tuner model is %s (idx %d, type %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr.28 = internal global ptr @tveeprom_hauppauge_analog._entry.26, section ".printk_index", align 4
@tveeprom_hauppauge_analog._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016tveeprom: TV standards%s%s%s%s%s%s%s%s (eeprom 0x%02x)\0A\00", [38 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr.31 = internal global ptr @tveeprom_hauppauge_analog._entry.29, section ".printk_index", align 4
@tveeprom_hauppauge_analog._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016tveeprom: second tuner model is %s (idx %d, type %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr.34 = internal global ptr @tveeprom_hauppauge_analog._entry.32, section ".printk_index", align 4
@tveeprom_hauppauge_analog._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr.36 = internal global ptr @tveeprom_hauppauge_analog._entry.35, section ".printk_index", align 4
@tveeprom_hauppauge_analog._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016tveeprom: audio processor is unknown (no idx)\0A\00", [47 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr.39 = internal global ptr @tveeprom_hauppauge_analog._entry.37, section ".printk_index", align 4
@tveeprom_hauppauge_analog._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.3, ptr @.str.4, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016tveeprom: audio processor is %s (idx %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr.42 = internal global ptr @tveeprom_hauppauge_analog._entry.40, section ".printk_index", align 4
@tveeprom_hauppauge_analog._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.3, ptr @.str.4, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016tveeprom: audio processor is unknown (idx %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr.45 = internal global ptr @tveeprom_hauppauge_analog._entry.43, section ".printk_index", align 4
@tveeprom_hauppauge_analog._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.3, ptr @.str.4, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016tveeprom: decoder processor is %s (idx %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr.48 = internal global ptr @tveeprom_hauppauge_analog._entry.46, section ".printk_index", align 4
@decoderIC = internal constant { [54 x ptr], [40 x i8] } { [54 x ptr] [ptr @.str.63, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.331, ptr @.str.332, ptr @.str.96, ptr @.str.333, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.334, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.335, ptr @.str.105, ptr @.str.336, ptr @.str.337, ptr @.str.106, ptr @.str.338, ptr @.str.107, ptr @.str.339, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345], [40 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.3, ptr @.str.4, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016tveeprom: has %sradio, has %sIR receiver, has %sIR transmitter\0A\00", [62 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr.51 = internal global ptr @tveeprom_hauppauge_analog._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"no \00", [28 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.3, ptr @.str.4, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016tveeprom: has %sradio\0A\00", [39 x i8] zeroinitializer }, align 32
@tveeprom_hauppauge_analog._entry_ptr.55 = internal global ptr @tveeprom_hauppauge_analog._entry.53, section ".printk_index", align 4
@__kstrtab_tveeprom_hauppauge_analog = external dso_local constant [0 x i8], align 1
@__kstrtabns_tveeprom_hauppauge_analog = external dso_local constant [0 x i8], align 1
@__ksymtab_tveeprom_hauppauge_analog = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tveeprom_hauppauge_analog to i32), ptr @__kstrtab_tveeprom_hauppauge_analog, ptr @__kstrtabns_tveeprom_hauppauge_analog }, section "___ksymtab+tveeprom_hauppauge_analog", align 4
@tveeprom_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016tveeprom: Huh, no eeprom present (err=%d)?\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tveeprom_read\00", [18 x i8] zeroinitializer }, align 32
@tveeprom_read._entry_ptr = internal global ptr @tveeprom_read._entry, section ".printk_index", align 4
@tveeprom_read._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.4, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014tveeprom: i2c eeprom read error (err=%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@tveeprom_read._entry_ptr.60 = internal global ptr @tveeprom_read._entry.58, section ".printk_index", align 4
@tveeprom_read.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.57, ptr @.str.4, ptr @.str.61, i8 0, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"full 256-byte eeprom dump:\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_tveeprom_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_tveeprom_read = external dso_local constant [0 x i8], align 1
@__ksymtab_tveeprom_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tveeprom_read to i32), ptr @__kstrtab_tveeprom_read, ptr @__kstrtabns_tveeprom_read }, section "___ksymtab+tveeprom_read", align 4
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TEA6300\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TEA6320\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TDA9850\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MSP3400C\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MSP3410D\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP3415\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP3430\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP3438\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS5331\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP3435\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP3440\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP3445\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP3411\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP3416\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP3425\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP3451\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP3418\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Type 0x12\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OKI7716\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP4410\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP4420\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP4440\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP4450\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP4408\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP4418\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP4428\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP4448\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP4458\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Type 0x1d\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CX880\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CX881\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CX883\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CX882\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX25840\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX25841\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX25842\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX25843\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX23418\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX23885\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX23888\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SAA7131\00", [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX23887\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SAA7164\00", [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AU8522\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AVF4910B\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SAA7231\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX23102\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SAA7163\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AK4113\00", [25 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS5340\00", [25 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS8416\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20810\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"External\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Unspecified\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Philips FI1216\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Philips FI1216MF\00", [47 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Philips FI1236\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Philips FI1246\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Philips FI1256\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips FI1216 MK2\00", [45 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Philips FI1216MF MK2\00", [43 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips FI1236 MK2\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips FI1246 MK2\00", [45 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips FI1256 MK2\00", [45 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temic 4032FY5\00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temic 4002FH5\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temic 4062FY5\00", [18 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips FR1216 MK2\00", [45 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Philips FR1216MF MK2\00", [43 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips FR1236 MK2\00", [45 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips FR1246 MK2\00", [45 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips FR1256 MK2\00", [45 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Philips FM1216\00", [17 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Philips FM1216MF\00", [47 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Philips FM1236\00", [17 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Philips FM1246\00", [17 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Philips FM1256\00", [17 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temic 4036FY5\00", [18 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Samsung TCPN9082D\00", [46 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Samsung TCPM9092P\00", [46 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temic 4006FH5\00", [18 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Samsung TCPN9085D\00", [46 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Samsung TCPB9085P\00", [46 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Samsung TCPL9091P\00", [46 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temic 4039FR5\00", [18 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Philips FQ1216 ME\00", [46 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temic 4066FY5\00", [18 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Philips TD1536\00", [17 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Philips TD1536D\00", [16 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Philips FMR1236\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Philips FI1256MP\00", [47 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Samsung TCPQ9091P\00", [46 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temic 4006FN5\00", [18 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temic 4009FR5\00", [18 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temic 4046FM5\00", [18 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temic 4009FN5\00", [18 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Philips TD1536D FH 44\00", [42 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TP18NSR01F\00", [18 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TP18PSB01D\00", [18 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TP18PSB11D\00", [18 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TAPC-I001D\00", [18 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TAPC-I701D\00", [18 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temic 4042FI5\00", [18 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Microtune 4049 FM5\00", [45 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TPI8NSR11F\00", [18 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Microtune 4049 FM5 Alt I2C\00", [37 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Philips FQ1216ME MK3\00", [43 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips FI1236 MK3\00", [45 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Philips FM1216 ME MK3\00", [42 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips FM1236 MK3\00", [45 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Philips FM1216MP MK3\00", [43 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LG S001D MK3\00", [19 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LG M001D MK3\00", [19 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LG S701D MK3\00", [19 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LG M701D MK3\00", [19 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temic 4146FM5\00", [18 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temic 4136FY5\00", [18 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temic 4106FH5\00", [18 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Philips FQ1216LMP MK3\00", [42 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LG TAPE H001F MK3\00", [46 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LG TAPE H701F MK3\00", [46 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TALN H200T\00", [18 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TALN H250T\00", [18 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TALN M200T\00", [18 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TALN Z200T\00", [18 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TALN S200T\00", [18 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Thompson DTT7595\00", [47 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Thompson DTT7592\00", [47 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Silicon TDA8275C1 8290\00", [41 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Silicon TDA8275C1 8290 FM\00", [38 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Thompson DTT757\00", [16 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Philips FQ1216LME MK3\00", [42 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TAPC G701D\00", [18 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TAPC H791F\00", [18 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCL 2002MB 3\00", [19 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCL 2002MI 3\00", [19 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCL 2002N 6A\00", [19 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips FQ1236 MK3\00", [45 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Samsung TCPN 2121P30A\00", [42 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Samsung TCPE 4121P30A\00", [42 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCL MFPE05 2\00", [19 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TALN H202T\00", [18 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Philips FQ1216AME MK4\00", [42 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Philips FQ1236A MK4\00", [44 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Philips FQ1286A MK4\00", [44 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Philips FQ1216ME MK5\00", [43 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips FQ1236 MK5\00", [45 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Samsung TCPG 6121P30A\00", [42 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCL 2002MB_3H\00", [18 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCL 2002MI_3H\00", [18 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCL 2002N 5H\00", [19 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Philips FMD1216ME\00", [46 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Philips TEA5768HL FM Radio\00", [37 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Panasonic ENV57H12D5\00", [43 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCL MFNM05-4\00", [19 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCL MNM05-4\00", [20 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCL MPE05-2\00", [20 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCL MQNM05-4\00", [19 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TAPC-W701D\00", [18 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCL 9886P-WM\00", [19 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCL 1676NM-WM\00", [18 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Thompson DTT75105\00", [46 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Conexant_CX24109\00", [47 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCL M2523_5N_E\00", [17 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCL M2523_3DB_E\00", [16 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Philips 8275A\00", [18 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Microtune MT2060\00", [47 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips FM1236 MK5\00", [45 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Philips FM1216ME MK5\00", [43 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCL M2523_3DI_E\00", [16 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Samsung THPD5222FG30A\00", [42 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Xceive XC3028\00", [18 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Philips FQ1216LME MK5\00", [42 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips FQD1216LME\00", [45 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Conexant CX24118A\00", [46 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCL DMF11WIP\00", [19 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCL MFNM05_4H_E\00", [16 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCL MNM05_4H_E\00", [17 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCL MPE05_2H_E\00", [17 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCL MQNM05_4_U\00", [17 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCL M2523_5NH_E\00", [16 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCL M2523_3DBH_E\00", [47 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCL M2523_3DIH_E\00", [47 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCL MFPE05_2_U\00", [17 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips FMD1216MEX\00", [45 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Philips FRH2036B\00", [47 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Panasonic ENGF75_01GF\00", [42 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MaxLinear MXL5005\00", [46 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MaxLinear MXL5003\00", [46 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Xceive XC2028\00", [18 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Microtune MT2131\00", [47 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips 8275A_8295\00", [45 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCL MF02GIP_5N_E\00", [47 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TCL MF02GIP_3DB_E\00", [46 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TCL MF02GIP_3DI_E\00", [46 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Microtune MT2266\00", [47 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCL MF10WPP_4N_E\00", [47 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LG TAPQ_H702F\00", [18 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCL M09WPP_4N_E\00", [16 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MaxLinear MXL5005_v2\00", [43 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips 18271_8295\00", [45 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Xceive XC5000\00", [18 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Xceive XC3028L\00", [17 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NXP 18271C2_716x\00", [47 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Xceive XC4000\00", [18 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Dibcom 7070\00", [20 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NXP 18271C2\00", [20 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Siano SMS1010\00", [18 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Siano SMS1150\00", [18 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MaxLinear 5007\00", [17 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCL M09WPP_2P_E\00", [16 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Siano SMS1180\00", [18 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Maxim_MAX2165\00", [18 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Siano SMS1140\00", [18 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Siano SMS1150 B1\00", [47 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MaxLinear 111\00", [18 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Dibcom 7770\00", [20 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Siano SMS1180VNS\00", [47 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Siano SMS1184\00", [18 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCL M30WTP-4N-E\00", [16 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCL_M11WPP_2PN_E\00", [47 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MaxLinear 301\00", [18 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mirics MSi001\00", [18 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MaxLinear MxL241SF\00", [45 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Xceive XC5000C\00", [17 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Montage M68TS2020\00", [46 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Siano SMS1530\00", [18 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Dibcom 7090\00", [20 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Xceive XC5200C\00", [17 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NXP 18273\00", [22 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Montage M88TS2022\00", [46 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NXP 18272M\00", [21 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NXP 18272S\00", [21 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mirics MSi003\00", [18 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MaxLinear MxL256\00", [47 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SiLabs Si2158\00", [18 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SiLabs Si2178\00", [18 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SiLabs Si2157\00", [18 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SiLabs Si2177\00", [18 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ITE IT9137FN\00", [19 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" UNKNOWN\00", [23 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" FM\00", [28 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" PAL(B/G)\00", [22 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" NTSC(M)\00", [23 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" PAL(I)\00", [24 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" SECAM(L/L')\00", [19 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" PAL(D/D1/K)\00", [19 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" ATSC/DVB Digital\00", [46 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BT815\00", [26 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BT817\00", [26 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BT819\00", [26 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BT815A\00", [25 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BT817A\00", [25 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BT819A\00", [25 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BT827\00", [26 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BT829\00", [26 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BT848\00", [26 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BT848A\00", [25 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BT849A\00", [25 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BT829A\00", [25 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BT827A\00", [25 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BT878\00", [26 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BT879\00", [26 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BT880\00", [26 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VPX3226E\00", [23 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SAA7114\00", [24 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SAA7115\00", [24 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SAA7111\00", [24 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SAA7113\00", [24 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TVP5150A\00", [23 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NEC61153\00", [23 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX25837\00", [24 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CX23885A\00", [23 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CX23887A\00", [23 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CX23885B\00", [23 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADV7401\00", [24 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADV7441A\00", [23 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADV7181C\00", [23 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX25836\00", [24 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TDA9955\00", [24 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TDA19977\00", [23 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADV7842\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 8, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11, i64 14, i64 15]
@__sancov_gen_cov_switch_values.346 = internal global [33 x i64] [i64 31, i64 32, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 30, i64 31, i64 33, i64 38, i64 42, i64 44, i64 46, i64 47, i64 49, i64 52, i64 54, i64 57, i64 58, i64 59, i64 60, i64 61, i64 68, i64 78, i64 89, i64 92, i64 105]
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 445, i32 33 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 445, i32 42 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 489, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 494, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant [9 x i8] c"audio_ic\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 283, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 635, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 642, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 655, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 656, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant [16 x i8] c"hauppauge_tuner\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 66, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 664, i32 13 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 691, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 694, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 695, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 697, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 702, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 705, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 710, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 714, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 717, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 721, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant [10 x i8] c"decoderIC\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 351, i32 20 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 725, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 730, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 746, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 751, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 755, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 285, i32 28 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 286, i32 28 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 287, i32 28 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 288, i32 28 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 289, i32 28 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 291, i32 28 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 292, i32 28 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 293, i32 28 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 294, i32 28 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 295, i32 28 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 297, i32 28 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 298, i32 28 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 299, i32 28 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 300, i32 28 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 301, i32 28 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 303, i32 28 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 304, i32 28 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 305, i32 28 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 306, i32 28 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 307, i32 28 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 309, i32 28 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 310, i32 28 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 311, i32 28 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 312, i32 28 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 313, i32 28 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 315, i32 28 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 316, i32 28 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 317, i32 28 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 318, i32 28 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 319, i32 28 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 321, i32 31 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 322, i32 31 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 323, i32 31 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 324, i32 31 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 325, i32 31 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 327, i32 31 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 328, i32 31 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 329, i32 31 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 330, i32 31 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 331, i32 31 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 333, i32 31 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 334, i32 31 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 335, i32 31 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 336, i32 31 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 337, i32 31 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 339, i32 31 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 340, i32 31 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 341, i32 31 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 342, i32 31 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 343, i32 31 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 345, i32 31 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 346, i32 31 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 347, i32 31 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 69, i32 20 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 70, i32 20 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 71, i32 24 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 72, i32 26 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 73, i32 25 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 74, i32 26 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 75, i32 27 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 76, i32 24 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 77, i32 26 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 79, i32 25 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 80, i32 26 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 81, i32 27 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 82, i32 23 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 83, i32 22 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 84, i32 24 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 85, i32 24 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 86, i32 26 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 87, i32 25 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 88, i32 26 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 90, i32 27 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 91, i32 24 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 92, i32 26 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 93, i32 25 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 94, i32 26 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 95, i32 27 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 96, i32 30 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 97, i32 20 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 98, i32 20 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 99, i32 29 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 101, i32 20 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 102, i32 20 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 103, i32 20 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 104, i32 30 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 105, i32 28 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 106, i32 31 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 107, i32 25 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 108, i32 25 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 109, i32 25 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 110, i32 20 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 112, i32 20 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 113, i32 34 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 114, i32 29 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 115, i32 26 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 116, i32 38 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 117, i32 20 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 118, i32 23 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 119, i32 22 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 120, i32 19 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 121, i32 24 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 123, i32 21 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 124, i32 20 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 125, i32 29 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 126, i32 20 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 127, i32 20 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 128, i32 32 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 129, i32 20 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 130, i32 32 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 131, i32 30 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 132, i32 20 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 134, i32 32 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 135, i32 20 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 136, i32 32 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 137, i32 20 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 138, i32 20 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 139, i32 20 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 140, i32 20 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 141, i32 20 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 142, i32 25 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 143, i32 25 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 145, i32 20 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 146, i32 20 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 147, i32 20 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 148, i32 20 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 149, i32 20 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 150, i32 20 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 151, i32 20 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 152, i32 20 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 153, i32 20 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 154, i32 20 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 156, i32 33 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 157, i32 27 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 158, i32 28 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 159, i32 27 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 160, i32 27 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 161, i32 22 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 162, i32 30 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 163, i32 33 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 164, i32 20 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 165, i32 32 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 167, i32 20 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 168, i32 33 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 169, i32 31 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 170, i32 20 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 171, i32 20 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 172, i32 20 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 173, i32 33 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 174, i32 23 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 175, i32 20 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 176, i32 22 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 178, i32 33 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 179, i32 20 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 180, i32 20 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 181, i32 30 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 182, i32 30 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 183, i32 32 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 184, i32 20 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 185, i32 20 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 186, i32 20 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 187, i32 20 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 189, i32 20 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 190, i32 20 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 191, i32 22 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 192, i32 23 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 193, i32 20 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 194, i32 20 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 195, i32 30 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 196, i32 32 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 197, i32 20 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 198, i32 20 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 200, i32 20 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 201, i32 33 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 202, i32 20 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 203, i32 20 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 204, i32 20 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 205, i32 20 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 206, i32 20 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 207, i32 20 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 208, i32 20 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 209, i32 20 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 211, i32 20 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 212, i32 20 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 213, i32 20 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 214, i32 34 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 215, i32 20 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 216, i32 20 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 217, i32 20 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 218, i32 20 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 219, i32 20 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 220, i32 20 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 222, i32 20 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 223, i32 20 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 224, i32 20 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 225, i32 20 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 226, i32 20 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 227, i32 20 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 228, i32 20 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 229, i32 20 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 230, i32 20 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 231, i32 27 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 233, i32 34 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 234, i32 34 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 235, i32 34 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 236, i32 34 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 237, i32 34 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 238, i32 34 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 239, i32 34 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 240, i32 34 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 241, i32 34 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 242, i32 34 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 244, i32 34 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 245, i32 34 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 246, i32 34 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 247, i32 34 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 248, i32 34 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 249, i32 34 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 250, i32 34 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 251, i32 34 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 252, i32 30 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 253, i32 34 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 255, i32 34 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 256, i32 34 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 257, i32 34 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 258, i32 34 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 259, i32 34 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 260, i32 34 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 261, i32 34 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 262, i32 34 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 263, i32 34 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 264, i32 34 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 266, i32 34 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 267, i32 34 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 269, i32 34 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 270, i32 34 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 271, i32 34 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 272, i32 34 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 273, i32 34 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 274, i32 34 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 275, i32 34 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 49, i32 40 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 50, i32 40 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 51, i32 40 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 52, i32 40 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 53, i32 40 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 54, i32 40 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 55, i32 40 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 56, i32 40 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 353, i32 10 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 353, i32 19 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 353, i32 28 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 353, i32 37 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 355, i32 2 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 355, i32 12 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 355, i32 22 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 355, i32 31 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 355, i32 40 }
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 357, i32 2 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 357, i32 12 }
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 357, i32 22 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 357, i32 32 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 357, i32 42 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 359, i32 2 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 359, i32 11 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 359, i32 20 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 359, i32 32 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 359, i32 43 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 361, i32 29 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 361, i32 40 }
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 363, i32 11 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 365, i32 24 }
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 367, i32 13 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 367, i32 35 }
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 367, i32 47 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 369, i32 13 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 369, i32 35 }
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 371, i32 35 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 371, i32 47 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 373, i32 2 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 373, i32 13 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 373, i32 24 }
@___asan_gen_.1349 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1350 = private constant [35 x i8] c"../drivers/media/common/tveeprom.c\00", align 1
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1350, i32 373, i32 36 }
@llvm.compiler.used = appending global [359 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__ksymtab_tveeprom_hauppauge_analog, ptr @__ksymtab_tveeprom_read, ptr @tveeprom_hauppauge_analog._entry, ptr @tveeprom_hauppauge_analog._entry.10, ptr @tveeprom_hauppauge_analog._entry.13, ptr @tveeprom_hauppauge_analog._entry.16, ptr @tveeprom_hauppauge_analog._entry.20, ptr @tveeprom_hauppauge_analog._entry.23, ptr @tveeprom_hauppauge_analog._entry.26, ptr @tveeprom_hauppauge_analog._entry.29, ptr @tveeprom_hauppauge_analog._entry.32, ptr @tveeprom_hauppauge_analog._entry.35, ptr @tveeprom_hauppauge_analog._entry.37, ptr @tveeprom_hauppauge_analog._entry.40, ptr @tveeprom_hauppauge_analog._entry.43, ptr @tveeprom_hauppauge_analog._entry.46, ptr @tveeprom_hauppauge_analog._entry.49, ptr @tveeprom_hauppauge_analog._entry.53, ptr @tveeprom_hauppauge_analog._entry_ptr, ptr @tveeprom_hauppauge_analog._entry_ptr.12, ptr @tveeprom_hauppauge_analog._entry_ptr.15, ptr @tveeprom_hauppauge_analog._entry_ptr.18, ptr @tveeprom_hauppauge_analog._entry_ptr.22, ptr @tveeprom_hauppauge_analog._entry_ptr.25, ptr @tveeprom_hauppauge_analog._entry_ptr.28, ptr @tveeprom_hauppauge_analog._entry_ptr.31, ptr @tveeprom_hauppauge_analog._entry_ptr.34, ptr @tveeprom_hauppauge_analog._entry_ptr.36, ptr @tveeprom_hauppauge_analog._entry_ptr.39, ptr @tveeprom_hauppauge_analog._entry_ptr.42, ptr @tveeprom_hauppauge_analog._entry_ptr.45, ptr @tveeprom_hauppauge_analog._entry_ptr.48, ptr @tveeprom_hauppauge_analog._entry_ptr.51, ptr @tveeprom_hauppauge_analog._entry_ptr.55, ptr @tveeprom_read._entry, ptr @tveeprom_read._entry.58, ptr @tveeprom_read._entry_ptr, ptr @tveeprom_read._entry_ptr.60, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @audio_ic, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @hauppauge_tuner, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @decoderIC, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345], section "llvm.metadata"
@0 = internal global [335 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_ic to i32), i32 424, i32 544, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_tuner to i32), i32 1512, i32 1888, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decoderIC to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_hauppauge_analog._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tveeprom_read._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tveeprom_hauppauge_analog(ptr noundef %tvee, ptr noundef %eeprom_data) #0 align 64 {
entry:
  %t_fmt_name1 = alloca [8 x ptr], align 4
  %t_fmt_name2 = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t_fmt_name1) #4
  %0 = call ptr @memcpy(ptr %t_fmt_name1, ptr @__const.tveeprom_hauppauge_analog.t_fmt_name2, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t_fmt_name2) #4
  %1 = call ptr @memcpy(ptr %t_fmt_name2, ptr @__const.tveeprom_hauppauge_analog.t_fmt_name2, i32 32)
  %2 = call ptr @memset(ptr %tvee, i32 0, i32 68)
  %tuner_type = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 3
  %3 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %tuner_type, align 4
  %tuner2_type = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 6
  %4 = ptrtoint ptr %tuner2_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %tuner2_type, align 4
  %5 = ptrtoint ptr %eeprom_data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %eeprom_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %6)
  %cmp = icmp eq i8 %6, 26
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %eeprom_data, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -21, i8 %8)
  %cmp4 = icmp eq i8 %8, -21
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.if.else36_crit_edge

land.lhs.true.if.else36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else36

land.lhs.true6:                                   ; preds = %land.lhs.true
  %arrayidx7 = getelementptr i8, ptr %eeprom_data, i32 2
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 103, i8 %10)
  %cmp9 = icmp eq i8 %10, 103
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true6.if.else36_crit_edge

land.lhs.true6.if.else36_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else36

land.lhs.true11:                                  ; preds = %land.lhs.true6
  %arrayidx12 = getelementptr i8, ptr %eeprom_data, i32 3
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %12)
  %cmp14 = icmp eq i8 %12, -107
  br i1 %cmp14, label %land.lhs.true11.if.end59_crit_edge, label %land.lhs.true11.if.else36_crit_edge

land.lhs.true11.if.else36_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else36

land.lhs.true11.if.end59_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.else:                                          ; preds = %entry
  %13 = and i8 %6, -31
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp18 = icmp eq i8 %13, 1
  br i1 %cmp18, label %land.lhs.true20, label %if.else.if.else36_crit_edge

if.else.if.else36_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else36

land.lhs.true20:                                  ; preds = %if.else
  %arrayidx21 = getelementptr i8, ptr %eeprom_data, i32 1
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp23 = icmp eq i8 %15, 0
  br i1 %cmp23, label %land.lhs.true25, label %land.lhs.true20.if.else36_crit_edge

land.lhs.true20.if.else36_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else36

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %arrayidx26 = getelementptr i8, ptr %eeprom_data, i32 2
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp28 = icmp eq i8 %17, 0
  br i1 %cmp28, label %land.lhs.true30, label %land.lhs.true25.if.else36_crit_edge

land.lhs.true25.if.else36_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else36

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %arrayidx31 = getelementptr i8, ptr %eeprom_data, i32 8
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %19)
  %cmp33 = icmp eq i8 %19, -124
  br i1 %cmp33, label %land.lhs.true30.if.end59_crit_edge, label %land.lhs.true30.if.else36_crit_edge

land.lhs.true30.if.else36_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else36

land.lhs.true30.if.end59_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.else36:                                        ; preds = %land.lhs.true30.if.else36_crit_edge, %land.lhs.true25.if.else36_crit_edge, %land.lhs.true20.if.else36_crit_edge, %if.else.if.else36_crit_edge, %land.lhs.true11.if.else36_crit_edge, %land.lhs.true6.if.else36_crit_edge, %land.lhs.true.if.else36_crit_edge
  %arrayidx37 = getelementptr i8, ptr %eeprom_data, i32 1
  %20 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %21)
  %cmp39 = icmp eq i8 %21, 112
  br i1 %cmp39, label %land.lhs.true41, label %if.else36.if.else57_crit_edge

if.else36.if.else57_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else57

land.lhs.true41:                                  ; preds = %if.else36
  %arrayidx42 = getelementptr i8, ptr %eeprom_data, i32 2
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp44 = icmp eq i8 %23, 0
  br i1 %cmp44, label %land.lhs.true46, label %land.lhs.true41.if.else57_crit_edge

land.lhs.true41.if.else57_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else57

land.lhs.true46:                                  ; preds = %land.lhs.true41
  %arrayidx47 = getelementptr i8, ptr %eeprom_data, i32 4
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %25)
  %cmp49 = icmp eq i8 %25, 116
  br i1 %cmp49, label %land.lhs.true51, label %land.lhs.true46.if.else57_crit_edge

land.lhs.true46.if.else57_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else57

land.lhs.true51:                                  ; preds = %land.lhs.true46
  %arrayidx52 = getelementptr i8, ptr %eeprom_data, i32 8
  %26 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %27)
  %cmp54 = icmp eq i8 %27, -124
  br i1 %cmp54, label %land.lhs.true51.if.end59_crit_edge, label %land.lhs.true51.if.else57_crit_edge

land.lhs.true51.if.else57_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else57

land.lhs.true51.if.end59_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.else57:                                        ; preds = %land.lhs.true51.if.else57_crit_edge, %land.lhs.true46.if.else57_crit_edge, %land.lhs.true41.if.else57_crit_edge, %if.else36.if.else57_crit_edge
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %land.lhs.true51.if.end59_crit_edge, %land.lhs.true30.if.end59_crit_edge, %land.lhs.true11.if.end59_crit_edge
  %start.0 = phi i32 [ 0, %if.else57 ], [ 160, %land.lhs.true11.if.end59_crit_edge ], [ 8, %land.lhs.true30.if.end59_crit_edge ], [ 8, %land.lhs.true51.if.end59_crit_edge ]
  %has_ir296 = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 1
  %decoder_processor = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 10
  %model244 = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 11
  %revision258 = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 12
  %audio_processor223 = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 9
  %serial_number186 = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 13
  %MAC_address = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 15
  %arrayidx195 = getelementptr %struct.tveeprom, ptr %tvee, i32 0, i32 15, i32 1
  %arrayidx197 = getelementptr %struct.tveeprom, ptr %tvee, i32 0, i32 15, i32 2
  %arrayidx201 = getelementptr %struct.tveeprom, ptr %tvee, i32 0, i32 15, i32 3
  %arrayidx205 = getelementptr %struct.tveeprom, ptr %tvee, i32 0, i32 15, i32 4
  %arrayidx209 = getelementptr %struct.tveeprom, ptr %tvee, i32 0, i32 15, i32 5
  %has_MAC_address = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end59
  %i.0822 = phi i32 [ %start.0, %if.end59 ], [ %add313, %for.inc.for.body_crit_edge ]
  %beenhere.0821 = phi i32 [ 0, %if.end59 ], [ %beenhere.1, %for.inc.for.body_crit_edge ]
  %tuner1.0819 = phi i32 [ 0, %if.end59 ], [ %tuner1.1, %for.inc.for.body_crit_edge ]
  %t_format1.0817 = phi i32 [ 0, %if.end59 ], [ %t_format1.1, %for.inc.for.body_crit_edge ]
  %audioic.0815 = phi i32 [ -1, %if.end59 ], [ %audioic.1, %for.inc.for.body_crit_edge ]
  %tuner2.0813 = phi i32 [ 0, %if.end59 ], [ %tuner2.1, %for.inc.for.body_crit_edge ]
  %t_format2.0811 = phi i32 [ 0, %if.end59 ], [ %t_format2.1, %for.inc.for.body_crit_edge ]
  %arrayidx62 = getelementptr i8, ptr %eeprom_data, i32 %i.0822
  %28 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %29)
  %cmp64 = icmp eq i8 %29, -124
  br i1 %cmp64, label %if.then66, label %if.else74

if.then66:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %add = add nsw i32 %i.0822, 1
  %arrayidx67 = getelementptr i8, ptr %eeprom_data, i32 %add
  %30 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %31 to i32
  %add69 = add nsw i32 %i.0822, 2
  %arrayidx70 = getelementptr i8, ptr %eeprom_data, i32 %add69
  %32 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %33 to i32
  %shl = shl nuw nsw i32 %conv71, 8
  %add72 = or i32 %shl, %conv68
  br label %do.body95

if.else74:                                        ; preds = %for.body
  %and77 = and i32 %conv63, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %and77)
  %cmp78 = icmp eq i32 %and77, 112
  br i1 %cmp78, label %if.then80, label %do.end

if.then80:                                        ; preds = %if.else74
  %and83 = and i32 %conv63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end321

if.end86:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #6
  %and89 = and i32 %conv63, 7
  br label %do.body95

do.end:                                           ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #6
  %conv63.le = zext i8 %29 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv63.le) #7
  br label %cleanup

do.body95:                                        ; preds = %if.end86, %if.then66
  %.sink = phi i32 [ 3, %if.then66 ], [ 1, %if.end86 ]
  %len.0 = phi i32 [ %add72, %if.then66 ], [ %and89, %if.end86 ]
  %add73 = add nsw i32 %i.0822, %.sink
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tveeprom_hauppauge_analog.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tveeprom_hauppauge_analog, %if.then101)) #4
          to label %do.end107 [label %if.then101], !srcloc !688

if.then101:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx102 = getelementptr i8, ptr %eeprom_data, i32 %add73
  %34 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %35 to i32
  %sub = add nsw i32 %len.0, -1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tveeprom_hauppauge_analog.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.7, i32 noundef %conv103, i32 noundef %sub, i32 noundef %len.0, ptr noundef %arrayidx102) #4
  br label %do.end107

do.end107:                                        ; preds = %if.then101, %do.body95
  %arrayidx108 = getelementptr i8, ptr %eeprom_data, i32 %add73
  %36 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %37 to i32
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i8 %37, label %do.body297 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb141
    i8 2, label %sw.bb155
    i8 4, label %sw.bb167
    i8 5, label %sw.bb211
    i8 6, label %sw.bb225
    i8 7, label %do.end107.for.inc_crit_edge
    i8 9, label %sw.bb259
    i8 10, label %sw.bb263
    i8 11, label %do.end107.for.inc_crit_edge890
    i8 14, label %sw.bb286
    i8 15, label %sw.bb291
  ]

do.end107.for.inc_crit_edge890:                   ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end107.for.inc_crit_edge:                      ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

sw.bb:                                            ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #6
  %add110 = add nsw i32 %add73, 6
  %arrayidx111 = getelementptr i8, ptr %eeprom_data, i32 %add110
  %39 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %40 to i32
  %add113 = add nsw i32 %add73, 5
  %arrayidx114 = getelementptr i8, ptr %eeprom_data, i32 %add113
  %41 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %42 to i32
  %add116 = add nsw i32 %len.0, -1
  %sub117 = add i32 %add116, %add73
  %arrayidx118 = getelementptr i8, ptr %eeprom_data, i32 %sub117
  %43 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %44 to i32
  %45 = ptrtoint ptr %tvee to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv119, ptr %tvee, align 4
  %46 = ptrtoint ptr %has_ir296 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %has_ir296, align 4
  %add120 = add nsw i32 %add73, 8
  %arrayidx121 = getelementptr i8, ptr %eeprom_data, i32 %add120
  %47 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %48 to i32
  %add123 = add nsw i32 %add73, 9
  %arrayidx124 = getelementptr i8, ptr %eeprom_data, i32 %add123
  %49 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %50 to i32
  %shl126 = shl nuw nsw i32 %conv125, 8
  %add127 = or i32 %shl126, %conv122
  %51 = ptrtoint ptr %model244 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add127, ptr %model244, align 4
  %add128 = add nsw i32 %add73, 10
  %arrayidx129 = getelementptr i8, ptr %eeprom_data, i32 %add128
  %52 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx129, align 1
  %conv130 = zext i8 %53 to i32
  %add131 = add nsw i32 %add73, 11
  %arrayidx132 = getelementptr i8, ptr %eeprom_data, i32 %add131
  %54 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %55 to i32
  %shl134 = shl nuw nsw i32 %conv133, 8
  %add135 = or i32 %shl134, %conv130
  %add136 = add nsw i32 %add73, 12
  %arrayidx137 = getelementptr i8, ptr %eeprom_data, i32 %add136
  %56 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %57 to i32
  %shl139 = shl nuw nsw i32 %conv138, 16
  %add140 = or i32 %add135, %shl139
  %58 = ptrtoint ptr %revision258 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add140, ptr %revision258, align 4
  br label %for.inc

sw.bb141:                                         ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #6
  %add142 = add nsw i32 %add73, 6
  %arrayidx143 = getelementptr i8, ptr %eeprom_data, i32 %add142
  %59 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %60 to i32
  %add145 = add nsw i32 %add73, 7
  %arrayidx146 = getelementptr i8, ptr %eeprom_data, i32 %add145
  %61 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %62 to i32
  %shl148 = shl nuw nsw i32 %conv147, 8
  %add149 = or i32 %shl148, %conv144
  %add150 = add nsw i32 %add73, 8
  %arrayidx151 = getelementptr i8, ptr %eeprom_data, i32 %add150
  %63 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %64 to i32
  %shl153 = shl nuw nsw i32 %conv152, 16
  %add154 = or i32 %add149, %shl153
  %65 = ptrtoint ptr %serial_number186 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add154, ptr %serial_number186, align 4
  br label %for.inc

sw.bb155:                                         ; preds = %do.end107
  %add156 = add nsw i32 %add73, 2
  %arrayidx157 = getelementptr i8, ptr %eeprom_data, i32 %add156
  %66 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx157, align 1
  %68 = and i8 %67, 127
  %and159 = zext i8 %68 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 53, i8 %68)
  %cmp160 = icmp ult i8 %68, 53
  br i1 %cmp160, label %if.then162, label %if.else164

if.then162:                                       ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx163 = getelementptr [53 x %struct.anon], ptr @audio_ic, i32 0, i32 %and159
  %69 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx163, align 4
  %71 = ptrtoint ptr %audio_processor223 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %audio_processor223, align 4
  br label %for.inc

if.else164:                                       ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %audio_processor223 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 3, ptr %audio_processor223, align 4
  br label %for.inc

sw.bb167:                                         ; preds = %do.end107
  %add168 = add nsw i32 %add73, 5
  %arrayidx169 = getelementptr i8, ptr %eeprom_data, i32 %add168
  %73 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx169, align 1
  %conv170 = zext i8 %74 to i32
  %add171 = add nsw i32 %add73, 6
  %arrayidx172 = getelementptr i8, ptr %eeprom_data, i32 %add171
  %75 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx172, align 1
  %conv173 = zext i8 %76 to i32
  %shl174 = shl nuw nsw i32 %conv173, 8
  %add175 = or i32 %shl174, %conv170
  %add176 = add nsw i32 %add73, 7
  %arrayidx177 = getelementptr i8, ptr %eeprom_data, i32 %add176
  %77 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx177, align 1
  %conv178 = zext i8 %78 to i32
  %shl179 = shl nuw nsw i32 %conv178, 16
  %add180 = or i32 %add175, %shl179
  %add181 = add nsw i32 %add73, 8
  %arrayidx182 = getelementptr i8, ptr %eeprom_data, i32 %add181
  %79 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx182, align 1
  %conv183 = zext i8 %80 to i32
  %shl184 = shl nuw i32 %conv183, 24
  %add185 = or i32 %add180, %shl184
  %81 = ptrtoint ptr %serial_number186 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add185, ptr %serial_number186, align 4
  %82 = load i8, ptr %arrayidx182, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %82)
  %cmp190 = icmp eq i8 %82, -16
  br i1 %cmp190, label %if.then192, label %sw.bb167.for.inc_crit_edge

sw.bb167.for.inc_crit_edge:                       ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then192:                                       ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #6
  %83 = ptrtoint ptr %MAC_address to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %MAC_address, align 1
  %84 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 13, ptr %arrayidx195, align 1
  %85 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -2, ptr %arrayidx197, align 1
  %86 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx177, align 1
  %88 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx201, align 1
  %89 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx172, align 1
  %91 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx205, align 1
  %92 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx169, align 1
  %94 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx209, align 1
  %95 = ptrtoint ptr %has_MAC_address to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %has_MAC_address, align 4
  br label %for.inc

sw.bb211:                                         ; preds = %do.end107
  %add212 = add nsw i32 %add73, 1
  %arrayidx213 = getelementptr i8, ptr %eeprom_data, i32 %add212
  %96 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx213, align 1
  %98 = and i8 %97, 127
  %and215 = zext i8 %98 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 53, i8 %98)
  %cmp216 = icmp ult i8 %98, 53
  br i1 %cmp216, label %if.then218, label %if.else222

if.then218:                                       ; preds = %sw.bb211
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx219 = getelementptr [53 x %struct.anon], ptr @audio_ic, i32 0, i32 %and215
  %99 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx219, align 4
  %101 = ptrtoint ptr %audio_processor223 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %audio_processor223, align 4
  br label %for.inc

if.else222:                                       ; preds = %sw.bb211
  call void @__sanitizer_cov_trace_pc() #6
  %102 = ptrtoint ptr %audio_processor223 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 3, ptr %audio_processor223, align 4
  br label %for.inc

sw.bb225:                                         ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #6
  %add226 = add nsw i32 %add73, 1
  %arrayidx227 = getelementptr i8, ptr %eeprom_data, i32 %add226
  %103 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx227, align 1
  %conv228 = zext i8 %104 to i32
  %add229 = add nsw i32 %add73, 2
  %arrayidx230 = getelementptr i8, ptr %eeprom_data, i32 %add229
  %105 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx230, align 1
  %conv231 = zext i8 %106 to i32
  %shl232 = shl nuw nsw i32 %conv231, 8
  %add233 = or i32 %shl232, %conv228
  %add234 = add nsw i32 %add73, 3
  %arrayidx235 = getelementptr i8, ptr %eeprom_data, i32 %add234
  %107 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx235, align 1
  %conv236 = zext i8 %108 to i32
  %shl237 = shl nuw nsw i32 %conv236, 16
  %add238 = or i32 %add233, %shl237
  %add239 = add nsw i32 %add73, 4
  %arrayidx240 = getelementptr i8, ptr %eeprom_data, i32 %add239
  %109 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx240, align 1
  %conv241 = zext i8 %110 to i32
  %shl242 = shl nuw i32 %conv241, 24
  %add243 = or i32 %add238, %shl242
  %111 = ptrtoint ptr %model244 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %add243, ptr %model244, align 4
  %add245 = add nsw i32 %add73, 5
  %arrayidx246 = getelementptr i8, ptr %eeprom_data, i32 %add245
  %112 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx246, align 1
  %conv247 = zext i8 %113 to i32
  %add248 = add nsw i32 %add73, 6
  %arrayidx249 = getelementptr i8, ptr %eeprom_data, i32 %add248
  %114 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx249, align 1
  %conv250 = zext i8 %115 to i32
  %shl251 = shl nuw nsw i32 %conv250, 8
  %add252 = or i32 %shl251, %conv247
  %add253 = add nsw i32 %add73, 7
  %arrayidx254 = getelementptr i8, ptr %eeprom_data, i32 %add253
  %116 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx254, align 1
  %conv255 = zext i8 %117 to i32
  %shl256 = shl nuw nsw i32 %conv255, 16
  %add257 = or i32 %add252, %shl256
  %118 = ptrtoint ptr %revision258 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %add257, ptr %revision258, align 4
  br label %for.inc

sw.bb259:                                         ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #6
  %add260 = add nsw i32 %add73, 1
  %arrayidx261 = getelementptr i8, ptr %eeprom_data, i32 %add260
  %119 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx261, align 1
  %conv262 = zext i8 %120 to i32
  %121 = ptrtoint ptr %decoder_processor to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %conv262, ptr %decoder_processor, align 4
  br label %for.inc

sw.bb263:                                         ; preds = %do.end107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %beenhere.0821)
  %cmp264 = icmp eq i32 %beenhere.0821, 0
  %add267 = add nsw i32 %add73, 2
  %arrayidx268 = getelementptr i8, ptr %eeprom_data, i32 %add267
  %122 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx268, align 1
  %conv269 = zext i8 %123 to i32
  %add270 = add nsw i32 %add73, 1
  %arrayidx271 = getelementptr i8, ptr %eeprom_data, i32 %add270
  %124 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx271, align 1
  %conv272 = zext i8 %125 to i32
  br i1 %cmp264, label %sw.bb263.for.inc_crit_edge, label %if.else273

sw.bb263.for.inc_crit_edge:                       ; preds = %sw.bb263
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.else273:                                       ; preds = %sw.bb263
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp280 = icmp eq i8 %125, 0
  br i1 %cmp280, label %if.then282, label %if.else273.for.inc_crit_edge

if.else273.for.inc_crit_edge:                     ; preds = %if.else273
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then282:                                       ; preds = %if.else273
  call void @__sanitizer_cov_trace_pc() #6
  %126 = ptrtoint ptr %tvee to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %tvee, align 4
  br label %for.inc

sw.bb286:                                         ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #6
  %add287 = add nsw i32 %add73, 1
  %arrayidx288 = getelementptr i8, ptr %eeprom_data, i32 %add287
  %127 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx288, align 1
  %conv289 = zext i8 %128 to i32
  %129 = ptrtoint ptr %tvee to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %conv289, ptr %tvee, align 4
  br label %for.inc

sw.bb291:                                         ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #6
  %add292 = add nsw i32 %add73, 1
  %arrayidx293 = getelementptr i8, ptr %eeprom_data, i32 %add292
  %130 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx293, align 1
  %conv294 = zext i8 %131 to i32
  %shl295 = shl nuw nsw i32 %conv294, 1
  %or = or i32 %shl295, 1
  %132 = ptrtoint ptr %has_ir296 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or, ptr %has_ir296, align 4
  br label %for.inc

do.body297:                                       ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tveeprom_hauppauge_analog.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tveeprom_hauppauge_analog, %if.then309)) #4
          to label %for.inc [label %if.then309], !srcloc !688

if.then309:                                       ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tveeprom_hauppauge_analog.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.9, i32 noundef %conv109) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then309, %do.body297, %sw.bb291, %sw.bb286, %if.then282, %if.else273.for.inc_crit_edge, %sw.bb263.for.inc_crit_edge, %sw.bb259, %sw.bb225, %if.else222, %if.then218, %if.then192, %sw.bb167.for.inc_crit_edge, %if.else164, %if.then162, %sw.bb141, %sw.bb, %do.end107.for.inc_crit_edge, %do.end107.for.inc_crit_edge890
  %t_format2.1 = phi i32 [ %t_format2.0811, %if.then309 ], [ %t_format2.0811, %sw.bb291 ], [ %t_format2.0811, %sw.bb286 ], [ 0, %if.then282 ], [ %conv272, %if.else273.for.inc_crit_edge ], [ %t_format2.0811, %sw.bb259 ], [ %t_format2.0811, %do.end107.for.inc_crit_edge ], [ %t_format2.0811, %do.end107.for.inc_crit_edge890 ], [ %t_format2.0811, %sw.bb225 ], [ %t_format2.0811, %if.then218 ], [ %t_format2.0811, %if.else222 ], [ %t_format2.0811, %if.then192 ], [ %t_format2.0811, %sw.bb167.for.inc_crit_edge ], [ %t_format2.0811, %if.then162 ], [ %t_format2.0811, %if.else164 ], [ %t_format2.0811, %sw.bb141 ], [ %t_format2.0811, %sw.bb ], [ %t_format2.0811, %do.body297 ], [ %t_format2.0811, %sw.bb263.for.inc_crit_edge ]
  %tuner2.1 = phi i32 [ %tuner2.0813, %if.then309 ], [ %tuner2.0813, %sw.bb291 ], [ %tuner2.0813, %sw.bb286 ], [ %conv269, %if.then282 ], [ %conv269, %if.else273.for.inc_crit_edge ], [ %tuner2.0813, %sw.bb259 ], [ %tuner2.0813, %do.end107.for.inc_crit_edge ], [ %tuner2.0813, %do.end107.for.inc_crit_edge890 ], [ %tuner2.0813, %sw.bb225 ], [ %tuner2.0813, %if.then218 ], [ %tuner2.0813, %if.else222 ], [ %tuner2.0813, %if.then192 ], [ %tuner2.0813, %sw.bb167.for.inc_crit_edge ], [ %tuner2.0813, %if.then162 ], [ %tuner2.0813, %if.else164 ], [ %tuner2.0813, %sw.bb141 ], [ %tuner2.0813, %sw.bb ], [ %tuner2.0813, %do.body297 ], [ %tuner2.0813, %sw.bb263.for.inc_crit_edge ]
  %audioic.1 = phi i32 [ %audioic.0815, %if.then309 ], [ %audioic.0815, %sw.bb291 ], [ %audioic.0815, %sw.bb286 ], [ %audioic.0815, %if.then282 ], [ %audioic.0815, %if.else273.for.inc_crit_edge ], [ %audioic.0815, %sw.bb259 ], [ %audioic.0815, %do.end107.for.inc_crit_edge ], [ %audioic.0815, %do.end107.for.inc_crit_edge890 ], [ %audioic.0815, %sw.bb225 ], [ %and215, %if.then218 ], [ %and215, %if.else222 ], [ %audioic.0815, %if.then192 ], [ %audioic.0815, %sw.bb167.for.inc_crit_edge ], [ %and159, %if.then162 ], [ %and159, %if.else164 ], [ %audioic.0815, %sw.bb141 ], [ %audioic.0815, %sw.bb ], [ %audioic.0815, %do.body297 ], [ %audioic.0815, %sw.bb263.for.inc_crit_edge ]
  %t_format1.1 = phi i32 [ %t_format1.0817, %if.then309 ], [ %t_format1.0817, %sw.bb291 ], [ %t_format1.0817, %sw.bb286 ], [ %t_format1.0817, %if.then282 ], [ %t_format1.0817, %if.else273.for.inc_crit_edge ], [ %t_format1.0817, %sw.bb259 ], [ %t_format1.0817, %do.end107.for.inc_crit_edge ], [ %t_format1.0817, %do.end107.for.inc_crit_edge890 ], [ %t_format1.0817, %sw.bb225 ], [ %t_format1.0817, %if.then218 ], [ %t_format1.0817, %if.else222 ], [ %t_format1.0817, %if.then192 ], [ %t_format1.0817, %sw.bb167.for.inc_crit_edge ], [ %t_format1.0817, %if.then162 ], [ %t_format1.0817, %if.else164 ], [ %t_format1.0817, %sw.bb141 ], [ %conv115, %sw.bb ], [ %t_format1.0817, %do.body297 ], [ %conv272, %sw.bb263.for.inc_crit_edge ]
  %tuner1.1 = phi i32 [ %tuner1.0819, %if.then309 ], [ %tuner1.0819, %sw.bb291 ], [ %tuner1.0819, %sw.bb286 ], [ %tuner1.0819, %if.then282 ], [ %tuner1.0819, %if.else273.for.inc_crit_edge ], [ %tuner1.0819, %sw.bb259 ], [ %tuner1.0819, %do.end107.for.inc_crit_edge ], [ %tuner1.0819, %do.end107.for.inc_crit_edge890 ], [ %tuner1.0819, %sw.bb225 ], [ %tuner1.0819, %if.then218 ], [ %tuner1.0819, %if.else222 ], [ %tuner1.0819, %if.then192 ], [ %tuner1.0819, %sw.bb167.for.inc_crit_edge ], [ %tuner1.0819, %if.then162 ], [ %tuner1.0819, %if.else164 ], [ %tuner1.0819, %sw.bb141 ], [ %conv112, %sw.bb ], [ %tuner1.0819, %do.body297 ], [ %conv269, %sw.bb263.for.inc_crit_edge ]
  %beenhere.1 = phi i32 [ %beenhere.0821, %if.then309 ], [ %beenhere.0821, %sw.bb291 ], [ %beenhere.0821, %sw.bb286 ], [ 1, %if.then282 ], [ 1, %if.else273.for.inc_crit_edge ], [ %beenhere.0821, %sw.bb259 ], [ %beenhere.0821, %do.end107.for.inc_crit_edge ], [ %beenhere.0821, %do.end107.for.inc_crit_edge890 ], [ %beenhere.0821, %sw.bb225 ], [ %beenhere.0821, %if.then218 ], [ %beenhere.0821, %if.else222 ], [ %beenhere.0821, %if.then192 ], [ %beenhere.0821, %sw.bb167.for.inc_crit_edge ], [ %beenhere.0821, %if.then162 ], [ %beenhere.0821, %if.else164 ], [ %beenhere.0821, %sw.bb141 ], [ %beenhere.0821, %sw.bb ], [ %beenhere.0821, %do.body297 ], [ 1, %sw.bb263.for.inc_crit_edge ]
  %add313 = add i32 %add73, %len.0
  %cmp60 = icmp slt i32 %add313, 256
  br i1 %cmp60, label %for.inc.for.body_crit_edge, label %do.end318.critedge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end318.critedge:                               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %call320 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end321:                                        ; preds = %if.then80
  %133 = ptrtoint ptr %revision258 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %revision258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp323.not = icmp eq i32 %134, 0
  br i1 %cmp323.not, label %if.end321.if.end353_crit_edge, label %if.then325

if.end321.if.end353_crit_edge:                    ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end353

if.then325:                                       ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #6
  %shr = lshr i32 %134, 18
  %135 = trunc i32 %shr to i8
  %136 = and i8 %135, 63
  %conv329 = add nuw nsw i8 %136, 32
  %rev_str = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 14
  %137 = ptrtoint ptr %rev_str to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv329, ptr %rev_str, align 4
  %shr332 = lshr i32 %134, 12
  %138 = trunc i32 %shr332 to i8
  %139 = and i8 %138, 63
  %conv335 = add nuw nsw i8 %139, 32
  %arrayidx337 = getelementptr %struct.tveeprom, ptr %tvee, i32 0, i32 14, i32 1
  %140 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv335, ptr %arrayidx337, align 1
  %shr339 = lshr i32 %134, 6
  %141 = trunc i32 %shr339 to i8
  %142 = and i8 %141, 63
  %conv342 = add nuw nsw i8 %142, 32
  %arrayidx344 = getelementptr %struct.tveeprom, ptr %tvee, i32 0, i32 14, i32 2
  %143 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv342, ptr %arrayidx344, align 2
  %144 = trunc i32 %134 to i8
  %145 = and i8 %144, 63
  %conv348 = add nuw nsw i8 %145, 32
  %arrayidx350 = getelementptr %struct.tveeprom, ptr %tvee, i32 0, i32 14, i32 3
  %146 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv348, ptr %arrayidx350, align 1
  %arrayidx352 = getelementptr %struct.tveeprom, ptr %tvee, i32 0, i32 14, i32 4
  %147 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %arrayidx352, align 4
  br label %if.end353

if.end353:                                        ; preds = %if.then325, %if.end321.if.end353_crit_edge
  %148 = zext i32 %tuner1.0819 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.346)
  switch i32 %tuner1.0819, label %if.end371 [
    i32 18, label %if.end353.land.lhs.true356_crit_edge
    i32 23, label %if.end353.land.lhs.true356_crit_edge891
    i32 38, label %if.end353.land.lhs.true356_crit_edge892
    i32 16, label %if.end353.land.lhs.true356_crit_edge893
    i32 19, label %if.end353.land.lhs.true356_crit_edge894
    i32 21, label %if.end353.land.lhs.true356_crit_edge895
    i32 24, label %if.end353.land.lhs.true356_crit_edge896
    i32 17, label %if.end353.land.lhs.true356_crit_edge897
    i32 22, label %if.end353.land.lhs.true356_crit_edge898
    i32 20, label %if.end353.land.lhs.true356_crit_edge899
    i32 25, label %if.end353.land.lhs.true356_crit_edge900
    i32 33, label %if.end353.land.lhs.true356_crit_edge901
    i32 42, label %if.end353.land.lhs.true356_crit_edge902
    i32 52, label %if.end353.land.lhs.true356_crit_edge903
    i32 54, label %if.end353.land.lhs.true356_crit_edge904
    i32 44, label %if.end353.land.lhs.true356_crit_edge905
    i32 31, label %if.end353.land.lhs.true356_crit_edge906
    i32 30, label %if.end353.land.lhs.true356_crit_edge907
    i32 46, label %if.end353.land.lhs.true356_crit_edge908
    i32 47, label %if.end353.land.lhs.true356_crit_edge909
    i32 49, label %if.end353.land.lhs.true356_crit_edge910
    i32 60, label %if.end353.land.lhs.true356_crit_edge911
    i32 57, label %if.end353.land.lhs.true356_crit_edge912
    i32 59, label %if.end353.land.lhs.true356_crit_edge913
    i32 58, label %if.end353.land.lhs.true356_crit_edge914
    i32 68, label %if.end353.land.lhs.true356_crit_edge915
    i32 61, label %if.end353.land.lhs.true356_crit_edge916
    i32 78, label %if.end353.land.lhs.true356_crit_edge917
    i32 89, label %if.end353.land.lhs.true356_crit_edge918
    i32 92, label %if.end353.land.lhs.true356_crit_edge919
    i32 105, label %if.end353.land.lhs.true356_crit_edge920
  ]

if.end353.land.lhs.true356_crit_edge920:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge919:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge918:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge917:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge916:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge915:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge914:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge913:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge912:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge911:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge910:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge909:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge908:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge907:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge906:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge905:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge904:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge903:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge902:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge901:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge900:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge899:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge898:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge897:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge896:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge895:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge894:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge893:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge892:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge891:          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

if.end353.land.lhs.true356_crit_edge:             ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true356

land.lhs.true356:                                 ; preds = %if.end353.land.lhs.true356_crit_edge, %if.end353.land.lhs.true356_crit_edge891, %if.end353.land.lhs.true356_crit_edge892, %if.end353.land.lhs.true356_crit_edge893, %if.end353.land.lhs.true356_crit_edge894, %if.end353.land.lhs.true356_crit_edge895, %if.end353.land.lhs.true356_crit_edge896, %if.end353.land.lhs.true356_crit_edge897, %if.end353.land.lhs.true356_crit_edge898, %if.end353.land.lhs.true356_crit_edge899, %if.end353.land.lhs.true356_crit_edge900, %if.end353.land.lhs.true356_crit_edge901, %if.end353.land.lhs.true356_crit_edge902, %if.end353.land.lhs.true356_crit_edge903, %if.end353.land.lhs.true356_crit_edge904, %if.end353.land.lhs.true356_crit_edge905, %if.end353.land.lhs.true356_crit_edge906, %if.end353.land.lhs.true356_crit_edge907, %if.end353.land.lhs.true356_crit_edge908, %if.end353.land.lhs.true356_crit_edge909, %if.end353.land.lhs.true356_crit_edge910, %if.end353.land.lhs.true356_crit_edge911, %if.end353.land.lhs.true356_crit_edge912, %if.end353.land.lhs.true356_crit_edge913, %if.end353.land.lhs.true356_crit_edge914, %if.end353.land.lhs.true356_crit_edge915, %if.end353.land.lhs.true356_crit_edge916, %if.end353.land.lhs.true356_crit_edge917, %if.end353.land.lhs.true356_crit_edge918, %if.end353.land.lhs.true356_crit_edge919, %if.end353.land.lhs.true356_crit_edge920
  %149 = ptrtoint ptr %tvee to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %tvee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool358.not = icmp eq i32 %150, 0
  br i1 %tobool358.not, label %do.end362, label %land.lhs.true356.if.then374_crit_edge

land.lhs.true356.if.then374_crit_edge:            ; preds = %land.lhs.true356
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then374

do.end362:                                        ; preds = %land.lhs.true356
  call void @__sanitizer_cov_trace_pc() #6
  %call364 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #7
  %call369 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #7
  %151 = ptrtoint ptr %tvee to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 1, ptr %tvee, align 4
  br label %if.then374

if.end371:                                        ; preds = %if.end353
  call void @__sanitizer_cov_trace_const_cmp4(i32 189, i32 %tuner1.0819)
  %cmp372 = icmp ult i32 %tuner1.0819, 189
  br i1 %cmp372, label %if.end371.if.then374_crit_edge, label %if.end371.if.end380_crit_edge

if.end371.if.end380_crit_edge:                    ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end380

if.end371.if.then374_crit_edge:                   ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then374

if.then374:                                       ; preds = %if.end371.if.then374_crit_edge, %do.end362, %land.lhs.true356.if.then374_crit_edge
  %arrayidx375 = getelementptr [189 x %struct.anon.1], ptr @hauppauge_tuner, i32 0, i32 %tuner1.0819
  %152 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx375, align 4
  %154 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %tuner_type, align 4
  %name = getelementptr [189 x %struct.anon.1], ptr @hauppauge_tuner, i32 0, i32 %tuner1.0819, i32 1
  %155 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %name, align 4
  br label %if.end380

if.end380:                                        ; preds = %if.then374, %if.end371.if.end380_crit_edge
  %t_name1.0 = phi ptr [ %156, %if.then374 ], [ @.str.19, %if.end371.if.end380_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 189, i32 %tuner2.0813)
  %cmp381 = icmp ult i32 %tuner2.0813, 189
  br i1 %cmp381, label %if.then383, label %if.end380.if.end390_crit_edge

if.end380.if.end390_crit_edge:                    ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end390

if.then383:                                       ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx384 = getelementptr [189 x %struct.anon.1], ptr @hauppauge_tuner, i32 0, i32 %tuner2.0813
  %157 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx384, align 4
  %159 = ptrtoint ptr %tuner2_type to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %tuner2_type, align 4
  %name388 = getelementptr [189 x %struct.anon.1], ptr @hauppauge_tuner, i32 0, i32 %tuner2.0813, i32 1
  %160 = ptrtoint ptr %name388 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %name388, align 4
  br label %if.end390

if.end390:                                        ; preds = %if.then383, %if.end380.if.end390_crit_edge
  %t_name2.0 = phi ptr [ %161, %if.then383 ], [ @.str.19, %if.end380.if.end390_crit_edge ]
  %tuner_hauppauge_model = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 5
  %162 = ptrtoint ptr %tuner_hauppauge_model to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %tuner1.0819, ptr %tuner_hauppauge_model, align 4
  %tuner2_hauppauge_model = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 8
  %163 = ptrtoint ptr %tuner2_hauppauge_model to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %tuner2.0813, ptr %tuner2_hauppauge_model, align 4
  %tuner_formats = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 4
  %164 = ptrtoint ptr %tuner_formats to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %tuner_formats, align 4
  %tuner2_formats = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 7
  %165 = ptrtoint ptr %tuner2_formats to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %tuner2_formats, align 4
  %and396 = and i32 %t_format1.0817, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and396)
  %tobool397.not = icmp eq i32 %and396, 0
  br i1 %tobool397.not, label %if.end390.for.inc408_crit_edge, label %if.then398

if.end390.for.inc408_crit_edge:                   ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc408

if.then398:                                       ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #6
  %166 = ptrtoint ptr %t_fmt_name1 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @.str.304, ptr %t_fmt_name1, align 4
  br label %for.inc408

for.inc408:                                       ; preds = %if.then398, %if.end390.for.inc408_crit_edge
  %j.1 = phi i32 [ 1, %if.then398 ], [ 0, %if.end390.for.inc408_crit_edge ]
  %and396.1 = and i32 %t_format1.0817, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and396.1)
  %tobool397.not.1 = icmp eq i32 %and396.1, 0
  br i1 %tobool397.not.1, label %for.inc408.for.inc408.1_crit_edge, label %if.then398.1

for.inc408.for.inc408.1_crit_edge:                ; preds = %for.inc408
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc408.1

if.then398.1:                                     ; preds = %for.inc408
  call void @__sanitizer_cov_trace_pc() #6
  %inc405.1 = add nuw nsw i32 %j.1, 1
  %arrayidx406.1 = getelementptr [8 x ptr], ptr %t_fmt_name1, i32 0, i32 %j.1
  %167 = ptrtoint ptr %arrayidx406.1 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @.str.305, ptr %arrayidx406.1, align 4
  br label %for.inc408.1

for.inc408.1:                                     ; preds = %if.then398.1, %for.inc408.for.inc408.1_crit_edge
  %j.1.1 = phi i32 [ %inc405.1, %if.then398.1 ], [ %j.1, %for.inc408.for.inc408.1_crit_edge ]
  %and396.2 = and i32 %t_format1.0817, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and396.2)
  %tobool397.not.2 = icmp eq i32 %and396.2, 0
  br i1 %tobool397.not.2, label %for.inc408.1.for.inc408.2_crit_edge, label %if.then398.2

for.inc408.1.for.inc408.2_crit_edge:              ; preds = %for.inc408.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc408.2

if.then398.2:                                     ; preds = %for.inc408.1
  call void @__sanitizer_cov_trace_pc() #6
  %168 = ptrtoint ptr %tuner_formats to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tuner_formats, align 4
  %or402.2 = or i32 %169, 851983
  store i32 %or402.2, ptr %tuner_formats, align 4
  %inc405.2 = add nuw nsw i32 %j.1.1, 1
  %arrayidx406.2 = getelementptr [8 x ptr], ptr %t_fmt_name1, i32 0, i32 %j.1.1
  %170 = ptrtoint ptr %arrayidx406.2 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @.str.306, ptr %arrayidx406.2, align 4
  br label %for.inc408.2

for.inc408.2:                                     ; preds = %if.then398.2, %for.inc408.1.for.inc408.2_crit_edge
  %j.1.2 = phi i32 [ %inc405.2, %if.then398.2 ], [ %j.1.1, %for.inc408.1.for.inc408.2_crit_edge ]
  %and396.3 = and i32 %t_format1.0817, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and396.3)
  %tobool397.not.3 = icmp eq i32 %and396.3, 0
  br i1 %tobool397.not.3, label %for.inc408.2.for.inc408.3_crit_edge, label %if.then398.3

for.inc408.2.for.inc408.3_crit_edge:              ; preds = %for.inc408.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc408.3

if.then398.3:                                     ; preds = %for.inc408.2
  call void @__sanitizer_cov_trace_pc() #6
  %171 = ptrtoint ptr %tuner_formats to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %tuner_formats, align 4
  %or402.3 = or i32 %172, 46848
  store i32 %or402.3, ptr %tuner_formats, align 4
  %inc405.3 = add nuw nsw i32 %j.1.2, 1
  %arrayidx406.3 = getelementptr [8 x ptr], ptr %t_fmt_name1, i32 0, i32 %j.1.2
  %173 = ptrtoint ptr %arrayidx406.3 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @.str.307, ptr %arrayidx406.3, align 4
  br label %for.inc408.3

for.inc408.3:                                     ; preds = %if.then398.3, %for.inc408.2.for.inc408.3_crit_edge
  %j.1.3 = phi i32 [ %inc405.3, %if.then398.3 ], [ %j.1.2, %for.inc408.2.for.inc408.3_crit_edge ]
  %and396.4 = and i32 %t_format1.0817, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and396.4)
  %tobool397.not.4 = icmp eq i32 %and396.4, 0
  br i1 %tobool397.not.4, label %for.inc408.3.for.inc408.4_crit_edge, label %if.then398.4

for.inc408.3.for.inc408.4_crit_edge:              ; preds = %for.inc408.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc408.4

if.then398.4:                                     ; preds = %for.inc408.3
  call void @__sanitizer_cov_trace_pc() #6
  %174 = ptrtoint ptr %tuner_formats to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %tuner_formats, align 4
  %or402.4 = or i32 %175, 16
  store i32 %or402.4, ptr %tuner_formats, align 4
  %inc405.4 = add nuw nsw i32 %j.1.3, 1
  %arrayidx406.4 = getelementptr [8 x ptr], ptr %t_fmt_name1, i32 0, i32 %j.1.3
  %176 = ptrtoint ptr %arrayidx406.4 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @.str.308, ptr %arrayidx406.4, align 4
  br label %for.inc408.4

for.inc408.4:                                     ; preds = %if.then398.4, %for.inc408.3.for.inc408.4_crit_edge
  %j.1.4 = phi i32 [ %inc405.4, %if.then398.4 ], [ %j.1.3, %for.inc408.3.for.inc408.4_crit_edge ]
  %and396.5 = and i32 %t_format1.0817, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and396.5)
  %tobool397.not.5 = icmp eq i32 %and396.5, 0
  br i1 %tobool397.not.5, label %for.inc408.4.for.inc408.5_crit_edge, label %if.then398.5

for.inc408.4.for.inc408.5_crit_edge:              ; preds = %for.inc408.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc408.5

if.then398.5:                                     ; preds = %for.inc408.4
  call void @__sanitizer_cov_trace_pc() #6
  %177 = ptrtoint ptr %tuner_formats to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %tuner_formats, align 4
  %or402.5 = or i32 %178, 12582912
  store i32 %or402.5, ptr %tuner_formats, align 4
  %inc405.5 = add nuw nsw i32 %j.1.4, 1
  %arrayidx406.5 = getelementptr [8 x ptr], ptr %t_fmt_name1, i32 0, i32 %j.1.4
  %179 = ptrtoint ptr %arrayidx406.5 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @.str.309, ptr %arrayidx406.5, align 4
  br label %for.inc408.5

for.inc408.5:                                     ; preds = %if.then398.5, %for.inc408.4.for.inc408.5_crit_edge
  %j.1.5 = phi i32 [ %inc405.5, %if.then398.5 ], [ %j.1.4, %for.inc408.4.for.inc408.5_crit_edge ]
  %and396.6 = and i32 %t_format1.0817, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and396.6)
  %tobool397.not.6 = icmp eq i32 %and396.6, 0
  br i1 %tobool397.not.6, label %for.inc408.5.for.inc408.6_crit_edge, label %if.then398.6

for.inc408.5.for.inc408.6_crit_edge:              ; preds = %for.inc408.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc408.6

if.then398.6:                                     ; preds = %for.inc408.5
  call void @__sanitizer_cov_trace_pc() #6
  %180 = ptrtoint ptr %tuner_formats to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %tuner_formats, align 4
  %or402.6 = or i32 %181, 3277024
  store i32 %or402.6, ptr %tuner_formats, align 4
  %inc405.6 = add nuw nsw i32 %j.1.5, 1
  %arrayidx406.6 = getelementptr [8 x ptr], ptr %t_fmt_name1, i32 0, i32 %j.1.5
  %182 = ptrtoint ptr %arrayidx406.6 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr @.str.310, ptr %arrayidx406.6, align 4
  br label %for.inc408.6

for.inc408.6:                                     ; preds = %if.then398.6, %for.inc408.5.for.inc408.6_crit_edge
  %j.1.6 = phi i32 [ %inc405.6, %if.then398.6 ], [ %j.1.5, %for.inc408.5.for.inc408.6_crit_edge ]
  %and396.7 = and i32 %t_format1.0817, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and396.7)
  %tobool397.not.7 = icmp eq i32 %and396.7, 0
  br i1 %tobool397.not.7, label %for.inc408.6.for.inc408.7_crit_edge, label %if.then398.7

for.inc408.6.for.inc408.7_crit_edge:              ; preds = %for.inc408.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc408.7

if.then398.7:                                     ; preds = %for.inc408.6
  call void @__sanitizer_cov_trace_pc() #6
  %183 = ptrtoint ptr %tuner_formats to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %tuner_formats, align 4
  %or402.7 = or i32 %184, 50331648
  store i32 %or402.7, ptr %tuner_formats, align 4
  %arrayidx406.7 = getelementptr [8 x ptr], ptr %t_fmt_name1, i32 0, i32 %j.1.6
  %185 = ptrtoint ptr %arrayidx406.7 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @.str.311, ptr %arrayidx406.7, align 4
  br label %for.inc408.7

for.inc408.7:                                     ; preds = %if.then398.7, %for.inc408.6.for.inc408.7_crit_edge
  %and416 = and i32 %t_format2.0811, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416)
  %tobool417.not = icmp eq i32 %and416, 0
  br i1 %tobool417.not, label %for.inc408.7.for.inc428_crit_edge, label %if.then418

for.inc408.7.for.inc428_crit_edge:                ; preds = %for.inc408.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc428

if.then418:                                       ; preds = %for.inc408.7
  call void @__sanitizer_cov_trace_pc() #6
  %186 = ptrtoint ptr %t_fmt_name2 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @.str.304, ptr %t_fmt_name2, align 4
  br label %for.inc428

for.inc428:                                       ; preds = %if.then418, %for.inc408.7.for.inc428_crit_edge
  %j.3 = phi i32 [ 1, %if.then418 ], [ 0, %for.inc408.7.for.inc428_crit_edge ]
  %and416.1 = and i32 %t_format2.0811, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416.1)
  %tobool417.not.1 = icmp eq i32 %and416.1, 0
  br i1 %tobool417.not.1, label %for.inc428.for.inc428.1_crit_edge, label %if.then418.1

for.inc428.for.inc428.1_crit_edge:                ; preds = %for.inc428
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc428.1

if.then418.1:                                     ; preds = %for.inc428
  call void @__sanitizer_cov_trace_pc() #6
  %inc425.1 = add nuw nsw i32 %j.3, 1
  %arrayidx426.1 = getelementptr [8 x ptr], ptr %t_fmt_name2, i32 0, i32 %j.3
  %187 = ptrtoint ptr %arrayidx426.1 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @.str.305, ptr %arrayidx426.1, align 4
  br label %for.inc428.1

for.inc428.1:                                     ; preds = %if.then418.1, %for.inc428.for.inc428.1_crit_edge
  %j.3.1 = phi i32 [ %inc425.1, %if.then418.1 ], [ %j.3, %for.inc428.for.inc428.1_crit_edge ]
  %and416.2 = and i32 %t_format2.0811, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416.2)
  %tobool417.not.2 = icmp eq i32 %and416.2, 0
  br i1 %tobool417.not.2, label %for.inc428.1.for.inc428.2_crit_edge, label %if.then418.2

for.inc428.1.for.inc428.2_crit_edge:              ; preds = %for.inc428.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc428.2

if.then418.2:                                     ; preds = %for.inc428.1
  call void @__sanitizer_cov_trace_pc() #6
  %188 = ptrtoint ptr %tuner2_formats to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %tuner2_formats, align 4
  %or422.2 = or i32 %189, 851983
  store i32 %or422.2, ptr %tuner2_formats, align 4
  %inc425.2 = add nuw nsw i32 %j.3.1, 1
  %arrayidx426.2 = getelementptr [8 x ptr], ptr %t_fmt_name2, i32 0, i32 %j.3.1
  %190 = ptrtoint ptr %arrayidx426.2 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @.str.306, ptr %arrayidx426.2, align 4
  br label %for.inc428.2

for.inc428.2:                                     ; preds = %if.then418.2, %for.inc428.1.for.inc428.2_crit_edge
  %j.3.2 = phi i32 [ %inc425.2, %if.then418.2 ], [ %j.3.1, %for.inc428.1.for.inc428.2_crit_edge ]
  %and416.3 = and i32 %t_format2.0811, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416.3)
  %tobool417.not.3 = icmp eq i32 %and416.3, 0
  br i1 %tobool417.not.3, label %for.inc428.2.for.inc428.3_crit_edge, label %if.then418.3

for.inc428.2.for.inc428.3_crit_edge:              ; preds = %for.inc428.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc428.3

if.then418.3:                                     ; preds = %for.inc428.2
  call void @__sanitizer_cov_trace_pc() #6
  %191 = ptrtoint ptr %tuner2_formats to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %tuner2_formats, align 4
  %or422.3 = or i32 %192, 46848
  store i32 %or422.3, ptr %tuner2_formats, align 4
  %inc425.3 = add nuw nsw i32 %j.3.2, 1
  %arrayidx426.3 = getelementptr [8 x ptr], ptr %t_fmt_name2, i32 0, i32 %j.3.2
  %193 = ptrtoint ptr %arrayidx426.3 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @.str.307, ptr %arrayidx426.3, align 4
  br label %for.inc428.3

for.inc428.3:                                     ; preds = %if.then418.3, %for.inc428.2.for.inc428.3_crit_edge
  %j.3.3 = phi i32 [ %inc425.3, %if.then418.3 ], [ %j.3.2, %for.inc428.2.for.inc428.3_crit_edge ]
  %and416.4 = and i32 %t_format2.0811, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416.4)
  %tobool417.not.4 = icmp eq i32 %and416.4, 0
  br i1 %tobool417.not.4, label %for.inc428.3.for.inc428.4_crit_edge, label %if.then418.4

for.inc428.3.for.inc428.4_crit_edge:              ; preds = %for.inc428.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc428.4

if.then418.4:                                     ; preds = %for.inc428.3
  call void @__sanitizer_cov_trace_pc() #6
  %194 = ptrtoint ptr %tuner2_formats to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %tuner2_formats, align 4
  %or422.4 = or i32 %195, 16
  store i32 %or422.4, ptr %tuner2_formats, align 4
  %inc425.4 = add nuw nsw i32 %j.3.3, 1
  %arrayidx426.4 = getelementptr [8 x ptr], ptr %t_fmt_name2, i32 0, i32 %j.3.3
  %196 = ptrtoint ptr %arrayidx426.4 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @.str.308, ptr %arrayidx426.4, align 4
  br label %for.inc428.4

for.inc428.4:                                     ; preds = %if.then418.4, %for.inc428.3.for.inc428.4_crit_edge
  %j.3.4 = phi i32 [ %inc425.4, %if.then418.4 ], [ %j.3.3, %for.inc428.3.for.inc428.4_crit_edge ]
  %and416.5 = and i32 %t_format2.0811, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416.5)
  %tobool417.not.5 = icmp eq i32 %and416.5, 0
  br i1 %tobool417.not.5, label %for.inc428.4.for.inc428.5_crit_edge, label %if.then418.5

for.inc428.4.for.inc428.5_crit_edge:              ; preds = %for.inc428.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc428.5

if.then418.5:                                     ; preds = %for.inc428.4
  call void @__sanitizer_cov_trace_pc() #6
  %197 = ptrtoint ptr %tuner2_formats to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %tuner2_formats, align 4
  %or422.5 = or i32 %198, 12582912
  store i32 %or422.5, ptr %tuner2_formats, align 4
  %inc425.5 = add nuw nsw i32 %j.3.4, 1
  %arrayidx426.5 = getelementptr [8 x ptr], ptr %t_fmt_name2, i32 0, i32 %j.3.4
  %199 = ptrtoint ptr %arrayidx426.5 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @.str.309, ptr %arrayidx426.5, align 4
  br label %for.inc428.5

for.inc428.5:                                     ; preds = %if.then418.5, %for.inc428.4.for.inc428.5_crit_edge
  %j.3.5 = phi i32 [ %inc425.5, %if.then418.5 ], [ %j.3.4, %for.inc428.4.for.inc428.5_crit_edge ]
  %and416.6 = and i32 %t_format2.0811, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416.6)
  %tobool417.not.6 = icmp eq i32 %and416.6, 0
  br i1 %tobool417.not.6, label %for.inc428.5.for.inc428.6_crit_edge, label %if.then418.6

for.inc428.5.for.inc428.6_crit_edge:              ; preds = %for.inc428.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc428.6

if.then418.6:                                     ; preds = %for.inc428.5
  call void @__sanitizer_cov_trace_pc() #6
  %200 = ptrtoint ptr %tuner2_formats to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %tuner2_formats, align 4
  %or422.6 = or i32 %201, 3277024
  store i32 %or422.6, ptr %tuner2_formats, align 4
  %inc425.6 = add nuw nsw i32 %j.3.5, 1
  %arrayidx426.6 = getelementptr [8 x ptr], ptr %t_fmt_name2, i32 0, i32 %j.3.5
  %202 = ptrtoint ptr %arrayidx426.6 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @.str.310, ptr %arrayidx426.6, align 4
  br label %for.inc428.6

for.inc428.6:                                     ; preds = %if.then418.6, %for.inc428.5.for.inc428.6_crit_edge
  %j.3.6 = phi i32 [ %inc425.6, %if.then418.6 ], [ %j.3.5, %for.inc428.5.for.inc428.6_crit_edge ]
  %and416.7 = and i32 %t_format2.0811, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416.7)
  %tobool417.not.7 = icmp eq i32 %and416.7, 0
  br i1 %tobool417.not.7, label %for.inc428.6.for.inc428.7_crit_edge, label %if.then418.7

for.inc428.6.for.inc428.7_crit_edge:              ; preds = %for.inc428.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc428.7

if.then418.7:                                     ; preds = %for.inc428.6
  call void @__sanitizer_cov_trace_pc() #6
  %203 = ptrtoint ptr %tuner2_formats to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %tuner2_formats, align 4
  %or422.7 = or i32 %204, 50331648
  store i32 %or422.7, ptr %tuner2_formats, align 4
  %arrayidx426.7 = getelementptr [8 x ptr], ptr %t_fmt_name2, i32 0, i32 %j.3.6
  %205 = ptrtoint ptr %arrayidx426.7 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr @.str.311, ptr %arrayidx426.7, align 4
  br label %for.inc428.7

for.inc428.7:                                     ; preds = %if.then418.7, %for.inc428.6.for.inc428.7_crit_edge
  %206 = ptrtoint ptr %model244 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %model244, align 4
  %rev_str436 = getelementptr inbounds %struct.tveeprom, ptr %tvee, i32 0, i32 14
  %208 = ptrtoint ptr %serial_number186 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %serial_number186, align 4
  %call438 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %207, ptr noundef %rev_str436, i32 noundef %209) #7
  %210 = ptrtoint ptr %has_MAC_address to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %has_MAC_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %211)
  %cmp440 = icmp eq i32 %211, 1
  br i1 %cmp440, label %do.end445, label %for.inc428.7.do.end453_crit_edge

for.inc428.7.do.end453_crit_edge:                 ; preds = %for.inc428.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end453

do.end445:                                        ; preds = %for.inc428.7
  call void @__sanitizer_cov_trace_pc() #6
  %call449 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %MAC_address) #7
  br label %do.end453

do.end453:                                        ; preds = %do.end445, %for.inc428.7.do.end453_crit_edge
  %212 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %tuner_type, align 4
  %call456 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %t_name1.0, i32 noundef %tuner1.0819, i32 noundef %213) #7
  %214 = ptrtoint ptr %t_fmt_name1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %t_fmt_name1, align 4
  %arrayidx462 = getelementptr inbounds [8 x ptr], ptr %t_fmt_name1, i32 0, i32 1
  %216 = ptrtoint ptr %arrayidx462 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx462, align 4
  %arrayidx463 = getelementptr inbounds [8 x ptr], ptr %t_fmt_name1, i32 0, i32 2
  %218 = ptrtoint ptr %arrayidx463 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx463, align 4
  %arrayidx464 = getelementptr inbounds [8 x ptr], ptr %t_fmt_name1, i32 0, i32 3
  %220 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %arrayidx464, align 4
  %arrayidx465 = getelementptr inbounds [8 x ptr], ptr %t_fmt_name1, i32 0, i32 4
  %222 = ptrtoint ptr %arrayidx465 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx465, align 4
  %arrayidx466 = getelementptr inbounds [8 x ptr], ptr %t_fmt_name1, i32 0, i32 5
  %224 = ptrtoint ptr %arrayidx466 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %arrayidx466, align 4
  %arrayidx467 = getelementptr inbounds [8 x ptr], ptr %t_fmt_name1, i32 0, i32 6
  %226 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %arrayidx467, align 4
  %arrayidx468 = getelementptr inbounds [8 x ptr], ptr %t_fmt_name1, i32 0, i32 7
  %228 = ptrtoint ptr %arrayidx468 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx468, align 4
  %call469 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %215, ptr noundef %217, ptr noundef %219, ptr noundef %221, ptr noundef %223, ptr noundef %225, ptr noundef %227, ptr noundef %229, i32 noundef %t_format1.0817) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tuner2.0813)
  %tobool470.not = icmp eq i32 %tuner2.0813, 0
  br i1 %tobool470.not, label %do.end453.if.end478_crit_edge, label %do.end474

do.end453.if.end478_crit_edge:                    ; preds = %do.end453
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end478

do.end474:                                        ; preds = %do.end453
  call void @__sanitizer_cov_trace_pc() #6
  %230 = ptrtoint ptr %tuner2_type to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %tuner2_type, align 4
  %call477 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %t_name2.0, i32 noundef %tuner2.0813, i32 noundef %231) #7
  br label %if.end478

if.end478:                                        ; preds = %do.end474, %do.end453.if.end478_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t_format2.0811)
  %tobool479.not = icmp eq i32 %t_format2.0811, 0
  br i1 %tobool479.not, label %if.end478.if.end494_crit_edge, label %do.end483

if.end478.if.end494_crit_edge:                    ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end494

do.end483:                                        ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #6
  %232 = ptrtoint ptr %t_fmt_name2 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %t_fmt_name2, align 4
  %arrayidx486 = getelementptr inbounds [8 x ptr], ptr %t_fmt_name2, i32 0, i32 1
  %234 = ptrtoint ptr %arrayidx486 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx486, align 4
  %arrayidx487 = getelementptr inbounds [8 x ptr], ptr %t_fmt_name2, i32 0, i32 2
  %236 = ptrtoint ptr %arrayidx487 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx487, align 4
  %arrayidx488 = getelementptr inbounds [8 x ptr], ptr %t_fmt_name2, i32 0, i32 3
  %238 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx488, align 4
  %arrayidx489 = getelementptr inbounds [8 x ptr], ptr %t_fmt_name2, i32 0, i32 4
  %240 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %arrayidx489, align 4
  %arrayidx490 = getelementptr inbounds [8 x ptr], ptr %t_fmt_name2, i32 0, i32 5
  %242 = ptrtoint ptr %arrayidx490 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %arrayidx490, align 4
  %arrayidx491 = getelementptr inbounds [8 x ptr], ptr %t_fmt_name2, i32 0, i32 6
  %244 = ptrtoint ptr %arrayidx491 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %arrayidx491, align 4
  %arrayidx492 = getelementptr inbounds [8 x ptr], ptr %t_fmt_name2, i32 0, i32 7
  %246 = ptrtoint ptr %arrayidx492 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx492, align 4
  %call493 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %233, ptr noundef %235, ptr noundef %237, ptr noundef %239, ptr noundef %241, ptr noundef %243, ptr noundef %245, ptr noundef %247, i32 noundef %t_format2.0811) #7
  br label %if.end494

if.end494:                                        ; preds = %do.end483, %if.end478.if.end494_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %audioic.0815)
  %cmp495 = icmp slt i32 %audioic.0815, 0
  br i1 %cmp495, label %do.end500, label %if.else504

do.end500:                                        ; preds = %if.end494
  call void @__sanitizer_cov_trace_pc() #6
  %call502 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #7
  %248 = ptrtoint ptr %audio_processor223 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 3, ptr %audio_processor223, align 4
  br label %if.end522

if.else504:                                       ; preds = %if.end494
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %audioic.0815)
  %cmp505 = icmp ult i32 %audioic.0815, 53
  br i1 %cmp505, label %do.end510, label %do.end518

do.end510:                                        ; preds = %if.else504
  call void @__sanitizer_cov_trace_pc() #6
  %name513 = getelementptr [53 x %struct.anon], ptr @audio_ic, i32 0, i32 %audioic.0815, i32 1
  %249 = ptrtoint ptr %name513 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %name513, align 4
  %call514 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %250, i32 noundef %audioic.0815) #7
  br label %if.end522

do.end518:                                        ; preds = %if.else504
  call void @__sanitizer_cov_trace_pc() #6
  %call520 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %audioic.0815) #7
  br label %if.end522

if.end522:                                        ; preds = %do.end518, %do.end510, %do.end500
  %251 = ptrtoint ptr %decoder_processor to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %decoder_processor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool524.not = icmp eq i32 %252, 0
  br i1 %tobool524.not, label %if.end522.if.end537_crit_edge, label %do.end528

if.end522.if.end537_crit_edge:                    ; preds = %if.end522
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end537

do.end528:                                        ; preds = %if.end522
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %252)
  %cmp531 = icmp ult i32 %252, 54
  br i1 %cmp531, label %cond.true, label %do.end528.cond.end_crit_edge

do.end528.cond.end_crit_edge:                     ; preds = %do.end528
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %do.end528
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx534 = getelementptr [54 x ptr], ptr @decoderIC, i32 0, i32 %252
  %253 = ptrtoint ptr %arrayidx534 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %arrayidx534, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end528.cond.end_crit_edge
  %cond = phi ptr [ %254, %cond.true ], [ @.str.19, %do.end528.cond.end_crit_edge ]
  %call536 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %cond, i32 noundef %252) #7
  br label %if.end537

if.end537:                                        ; preds = %cond.end, %if.end522.if.end537_crit_edge
  %255 = ptrtoint ptr %has_ir296 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %has_ir296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool539.not = icmp eq i32 %256, 0
  %257 = ptrtoint ptr %tvee to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %tvee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool563.not = icmp eq i32 %258, 0
  %cond564 = select i1 %tobool563.not, ptr @.str.52, ptr @.str.1
  br i1 %tobool539.not, label %do.end560, label %do.end543

do.end543:                                        ; preds = %if.end537
  call void @__sanitizer_cov_trace_pc() #6
  %and549 = and i32 %256, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and549)
  %tobool550.not = icmp eq i32 %and549, 0
  %cond551 = select i1 %tobool550.not, ptr @.str.52, ptr @.str.1
  %and553 = and i32 %256, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and553)
  %tobool554.not = icmp eq i32 %and553, 0
  %cond555 = select i1 %tobool554.not, ptr @.str.52, ptr @.str.1
  %call556 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull %cond564, ptr noundef nonnull %cond551, ptr noundef nonnull %cond555) #7
  br label %cleanup

do.end560:                                        ; preds = %if.end537
  call void @__sanitizer_cov_trace_pc() #6
  %call565 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull %cond564) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end560, %do.end543, %do.end318.critedge, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t_fmt_name2) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t_fmt_name1) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tveeprom_read(ptr noundef %c, ptr noundef %eedata, i32 noundef %len) #0 align 64 {
entry:
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #4
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %buf, align 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %c, ptr noundef nonnull %buf, i32 noundef 1, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i28 = call i32 @i2c_transfer_buffer_flags(ptr noundef %c, ptr noundef %eedata, i32 noundef %len, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i28, i32 %len)
  %cmp3.not = icmp eq i32 %call.i28, %len
  br i1 %cmp3.not, label %do.body11, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %call.i28) #7
  br label %cleanup

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tveeprom_read.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tveeprom_read, %if.then16)) #4
          to label %cleanup [label %if.then16], !srcloc !688

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  call void @print_hex_dump(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %eedata, i32 noundef %len, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body11, %do.end7, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end7 ], [ 0, %if.then16 ], [ 0, %do.body11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 335)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 335)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677}
!llvm.module.flags = !{!679, !680, !681, !682, !683, !684, !685, !686}
!llvm.ident = !{!687}

!0 = !{ptr @__UNIQUE_ID_description319, !1, !"__UNIQUE_ID_description319", i1 false, i1 false}
!1 = !{!"../drivers/media/common/tveeprom.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_author320, !3, !"__UNIQUE_ID_author320", i1 false, i1 false}
!3 = !{!"../drivers/media/common/tveeprom.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_file321, !5, !"__UNIQUE_ID_file321", i1 false, i1 false}
!5 = !{!"../drivers/media/common/tveeprom.c", i32 35, i32 1}
!6 = !{ptr @__UNIQUE_ID_license322, !5, !"__UNIQUE_ID_license322", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/common/tveeprom.c", i32 445, i32 33}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/common/tveeprom.c", i32 445, i32 42}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/common/tveeprom.c", i32 489, i32 4}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @tveeprom_hauppauge_analog._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @tveeprom_hauppauge_analog._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/common/tveeprom.c", i32 494, i32 3}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tveeprom_hauppauge_analog.__UNIQUE_ID_ddebug323, !18, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!21 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/common/tveeprom.c", i32 635, i32 4}
!24 = !{ptr @tveeprom_hauppauge_analog.__UNIQUE_ID_ddebug324, !23, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!25 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/common/tveeprom.c", i32 642, i32 3}
!28 = !{ptr @tveeprom_hauppauge_analog._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tveeprom_hauppauge_analog._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/common/tveeprom.c", i32 655, i32 3}
!32 = !{ptr @tveeprom_hauppauge_analog._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tveeprom_hauppauge_analog._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/common/tveeprom.c", i32 656, i32 3}
!36 = !{ptr @tveeprom_hauppauge_analog._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tveeprom_hauppauge_analog._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/common/tveeprom.c", i32 664, i32 13}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/common/tveeprom.c", i32 691, i32 2}
!42 = !{ptr @tveeprom_hauppauge_analog._entry.20, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tveeprom_hauppauge_analog._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/common/tveeprom.c", i32 694, i32 3}
!46 = !{ptr @tveeprom_hauppauge_analog._entry.23, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tveeprom_hauppauge_analog._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/common/tveeprom.c", i32 695, i32 2}
!50 = !{ptr @tveeprom_hauppauge_analog._entry.26, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @tveeprom_hauppauge_analog._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/common/tveeprom.c", i32 697, i32 2}
!54 = !{ptr @tveeprom_hauppauge_analog._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @tveeprom_hauppauge_analog._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/common/tveeprom.c", i32 702, i32 3}
!58 = !{ptr @tveeprom_hauppauge_analog._entry.32, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tveeprom_hauppauge_analog._entry_ptr.34, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @tveeprom_hauppauge_analog._entry.35, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/media/common/tveeprom.c", i32 705, i32 3}
!62 = !{ptr @tveeprom_hauppauge_analog._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/common/tveeprom.c", i32 710, i32 3}
!65 = !{ptr @tveeprom_hauppauge_analog._entry.37, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @tveeprom_hauppauge_analog._entry_ptr.39, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/common/tveeprom.c", i32 714, i32 4}
!69 = !{ptr @tveeprom_hauppauge_analog._entry.40, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @tveeprom_hauppauge_analog._entry_ptr.42, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.44, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/common/tveeprom.c", i32 717, i32 4}
!73 = !{ptr @tveeprom_hauppauge_analog._entry.43, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @tveeprom_hauppauge_analog._entry_ptr.45, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.47, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/common/tveeprom.c", i32 721, i32 3}
!77 = !{ptr @tveeprom_hauppauge_analog._entry.46, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @tveeprom_hauppauge_analog._entry_ptr.48, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.50, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/common/tveeprom.c", i32 725, i32 3}
!81 = !{ptr @tveeprom_hauppauge_analog._entry.49, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @tveeprom_hauppauge_analog._entry_ptr.51, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.52, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.54, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/common/tveeprom.c", i32 730, i32 3}
!86 = !{ptr @tveeprom_hauppauge_analog._entry.53, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @tveeprom_hauppauge_analog._entry_ptr.55, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @__ksymtab_tveeprom_hauppauge_analog, !89, !"__ksymtab_tveeprom_hauppauge_analog", i1 false, i1 false}
!89 = !{!"../drivers/media/common/tveeprom.c", i32 733, i32 1}
!90 = !{ptr @.str.56, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/common/tveeprom.c", i32 746, i32 3}
!92 = !{ptr @.str.57, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @tveeprom_read._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @tveeprom_read._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.59, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/common/tveeprom.c", i32 751, i32 3}
!97 = !{ptr @tveeprom_read._entry.58, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @tveeprom_read._entry_ptr.60, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.61, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/common/tveeprom.c", i32 755, i32 2}
!101 = !{ptr @tveeprom_read.__UNIQUE_ID_ddebug325, !100, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!102 = !{ptr @.str.62, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @__ksymtab_tveeprom_read, !104, !"__ksymtab_tveeprom_read", i1 false, i1 false}
!104 = !{!"../drivers/media/common/tveeprom.c", i32 759, i32 1}
!105 = !{ptr @.str.63, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/common/tveeprom.c", i32 285, i32 28}
!107 = !{ptr @.str.64, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/common/tveeprom.c", i32 286, i32 28}
!109 = !{ptr @.str.65, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/common/tveeprom.c", i32 287, i32 28}
!111 = !{ptr @.str.66, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/common/tveeprom.c", i32 288, i32 28}
!113 = !{ptr @.str.67, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/common/tveeprom.c", i32 289, i32 28}
!115 = !{ptr @.str.68, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/common/tveeprom.c", i32 291, i32 28}
!117 = !{ptr @.str.69, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/common/tveeprom.c", i32 292, i32 28}
!119 = !{ptr @.str.70, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/common/tveeprom.c", i32 293, i32 28}
!121 = !{ptr @.str.71, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/common/tveeprom.c", i32 294, i32 28}
!123 = !{ptr @.str.72, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/common/tveeprom.c", i32 295, i32 28}
!125 = !{ptr @.str.73, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/common/tveeprom.c", i32 297, i32 28}
!127 = !{ptr @.str.74, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/common/tveeprom.c", i32 298, i32 28}
!129 = !{ptr @.str.75, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/common/tveeprom.c", i32 299, i32 28}
!131 = !{ptr @.str.76, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/common/tveeprom.c", i32 300, i32 28}
!133 = !{ptr @.str.77, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/common/tveeprom.c", i32 301, i32 28}
!135 = !{ptr @.str.78, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/common/tveeprom.c", i32 303, i32 28}
!137 = !{ptr @.str.79, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/common/tveeprom.c", i32 304, i32 28}
!139 = !{ptr @.str.80, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/common/tveeprom.c", i32 305, i32 28}
!141 = !{ptr @.str.81, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/common/tveeprom.c", i32 306, i32 28}
!143 = !{ptr @.str.82, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/common/tveeprom.c", i32 307, i32 28}
!145 = !{ptr @.str.83, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/common/tveeprom.c", i32 309, i32 28}
!147 = !{ptr @.str.84, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/common/tveeprom.c", i32 310, i32 28}
!149 = !{ptr @.str.85, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/common/tveeprom.c", i32 311, i32 28}
!151 = !{ptr @.str.86, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/common/tveeprom.c", i32 312, i32 28}
!153 = !{ptr @.str.87, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/common/tveeprom.c", i32 313, i32 28}
!155 = !{ptr @.str.88, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/common/tveeprom.c", i32 315, i32 28}
!157 = !{ptr @.str.89, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/common/tveeprom.c", i32 316, i32 28}
!159 = !{ptr @.str.90, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/common/tveeprom.c", i32 317, i32 28}
!161 = !{ptr @.str.91, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/common/tveeprom.c", i32 318, i32 28}
!163 = !{ptr @.str.92, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/common/tveeprom.c", i32 319, i32 28}
!165 = !{ptr @.str.93, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/common/tveeprom.c", i32 321, i32 31}
!167 = !{ptr @.str.94, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/common/tveeprom.c", i32 322, i32 31}
!169 = !{ptr @.str.95, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/common/tveeprom.c", i32 323, i32 31}
!171 = !{ptr @.str.96, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/common/tveeprom.c", i32 324, i32 31}
!173 = !{ptr @.str.97, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/common/tveeprom.c", i32 325, i32 31}
!175 = !{ptr @.str.98, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/common/tveeprom.c", i32 327, i32 31}
!177 = !{ptr @.str.99, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/common/tveeprom.c", i32 328, i32 31}
!179 = !{ptr @.str.100, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/common/tveeprom.c", i32 329, i32 31}
!181 = !{ptr @.str.101, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/common/tveeprom.c", i32 330, i32 31}
!183 = !{ptr @.str.102, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/common/tveeprom.c", i32 331, i32 31}
!185 = !{ptr @.str.103, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/common/tveeprom.c", i32 333, i32 31}
!187 = !{ptr @.str.104, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/common/tveeprom.c", i32 334, i32 31}
!189 = !{ptr @.str.105, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/common/tveeprom.c", i32 335, i32 31}
!191 = !{ptr @.str.106, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/common/tveeprom.c", i32 336, i32 31}
!193 = !{ptr @.str.107, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/common/tveeprom.c", i32 337, i32 31}
!195 = !{ptr @.str.108, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/common/tveeprom.c", i32 339, i32 31}
!197 = !{ptr @.str.109, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/common/tveeprom.c", i32 340, i32 31}
!199 = !{ptr @.str.110, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/common/tveeprom.c", i32 341, i32 31}
!201 = !{ptr @.str.111, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/common/tveeprom.c", i32 342, i32 31}
!203 = !{ptr @.str.112, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/common/tveeprom.c", i32 343, i32 31}
!205 = !{ptr @.str.113, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/common/tveeprom.c", i32 345, i32 31}
!207 = !{ptr @.str.114, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/common/tveeprom.c", i32 346, i32 31}
!209 = !{ptr @.str.115, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/common/tveeprom.c", i32 347, i32 31}
!211 = !{ptr @audio_ic, !212, !"audio_ic", i1 false, i1 false}
!212 = !{!"../drivers/media/common/tveeprom.c", i32 283, i32 3}
!213 = !{ptr @.str.116, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/common/tveeprom.c", i32 69, i32 20}
!215 = !{ptr @.str.117, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/common/tveeprom.c", i32 70, i32 20}
!217 = !{ptr @.str.118, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/common/tveeprom.c", i32 71, i32 24}
!219 = !{ptr @.str.119, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/common/tveeprom.c", i32 72, i32 26}
!221 = !{ptr @.str.120, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/common/tveeprom.c", i32 73, i32 25}
!223 = !{ptr @.str.121, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/common/tveeprom.c", i32 74, i32 26}
!225 = !{ptr @.str.122, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/common/tveeprom.c", i32 75, i32 27}
!227 = !{ptr @.str.123, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/common/tveeprom.c", i32 76, i32 24}
!229 = !{ptr @.str.124, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/common/tveeprom.c", i32 77, i32 26}
!231 = !{ptr @.str.125, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/common/tveeprom.c", i32 79, i32 25}
!233 = !{ptr @.str.126, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/common/tveeprom.c", i32 80, i32 26}
!235 = !{ptr @.str.127, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/common/tveeprom.c", i32 81, i32 27}
!237 = !{ptr @.str.128, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/common/tveeprom.c", i32 82, i32 23}
!239 = !{ptr @.str.129, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/common/tveeprom.c", i32 83, i32 22}
!241 = !{ptr @.str.130, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/common/tveeprom.c", i32 84, i32 24}
!243 = !{ptr @.str.131, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/common/tveeprom.c", i32 85, i32 24}
!245 = !{ptr @.str.132, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/common/tveeprom.c", i32 86, i32 26}
!247 = !{ptr @.str.133, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/common/tveeprom.c", i32 87, i32 25}
!249 = !{ptr @.str.134, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/common/tveeprom.c", i32 88, i32 26}
!251 = !{ptr @.str.135, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/common/tveeprom.c", i32 90, i32 27}
!253 = !{ptr @.str.136, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/common/tveeprom.c", i32 91, i32 24}
!255 = !{ptr @.str.137, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/common/tveeprom.c", i32 92, i32 26}
!257 = !{ptr @.str.138, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/common/tveeprom.c", i32 93, i32 25}
!259 = !{ptr @.str.139, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/common/tveeprom.c", i32 94, i32 26}
!261 = !{ptr @.str.140, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/common/tveeprom.c", i32 95, i32 27}
!263 = !{ptr @.str.141, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/common/tveeprom.c", i32 96, i32 30}
!265 = !{ptr @.str.142, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/common/tveeprom.c", i32 97, i32 20}
!267 = !{ptr @.str.143, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/common/tveeprom.c", i32 98, i32 20}
!269 = !{ptr @.str.144, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/common/tveeprom.c", i32 99, i32 29}
!271 = !{ptr @.str.145, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/common/tveeprom.c", i32 101, i32 20}
!273 = !{ptr @.str.146, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/common/tveeprom.c", i32 102, i32 20}
!275 = !{ptr @.str.147, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/common/tveeprom.c", i32 103, i32 20}
!277 = !{ptr @.str.148, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/common/tveeprom.c", i32 104, i32 30}
!279 = !{ptr @.str.149, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/common/tveeprom.c", i32 105, i32 28}
!281 = !{ptr @.str.150, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/common/tveeprom.c", i32 106, i32 31}
!283 = !{ptr @.str.151, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/common/tveeprom.c", i32 107, i32 25}
!285 = !{ptr @.str.152, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/common/tveeprom.c", i32 108, i32 25}
!287 = !{ptr @.str.153, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/common/tveeprom.c", i32 109, i32 25}
!289 = !{ptr @.str.154, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/common/tveeprom.c", i32 110, i32 20}
!291 = !{ptr @.str.155, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/common/tveeprom.c", i32 112, i32 20}
!293 = !{ptr @.str.156, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/common/tveeprom.c", i32 113, i32 34}
!295 = !{ptr @.str.157, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/common/tveeprom.c", i32 114, i32 29}
!297 = !{ptr @.str.158, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/common/tveeprom.c", i32 115, i32 26}
!299 = !{ptr @.str.159, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/common/tveeprom.c", i32 116, i32 38}
!301 = !{ptr @.str.160, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/media/common/tveeprom.c", i32 117, i32 20}
!303 = !{ptr @.str.161, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/common/tveeprom.c", i32 118, i32 23}
!305 = !{ptr @.str.162, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/media/common/tveeprom.c", i32 119, i32 22}
!307 = !{ptr @.str.163, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/common/tveeprom.c", i32 120, i32 19}
!309 = !{ptr @.str.164, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/media/common/tveeprom.c", i32 121, i32 24}
!311 = !{ptr @.str.165, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/common/tveeprom.c", i32 123, i32 21}
!313 = !{ptr @.str.166, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/media/common/tveeprom.c", i32 124, i32 20}
!315 = !{ptr @.str.167, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/common/tveeprom.c", i32 125, i32 29}
!317 = !{ptr @.str.168, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/common/tveeprom.c", i32 126, i32 20}
!319 = !{ptr @.str.169, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/common/tveeprom.c", i32 127, i32 20}
!321 = !{ptr @.str.170, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/common/tveeprom.c", i32 128, i32 32}
!323 = !{ptr @.str.171, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/common/tveeprom.c", i32 129, i32 20}
!325 = !{ptr @.str.172, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/media/common/tveeprom.c", i32 130, i32 32}
!327 = !{ptr @.str.173, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/common/tveeprom.c", i32 131, i32 30}
!329 = !{ptr @.str.174, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/common/tveeprom.c", i32 132, i32 20}
!331 = !{ptr @.str.175, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/common/tveeprom.c", i32 134, i32 32}
!333 = !{ptr @.str.176, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/media/common/tveeprom.c", i32 135, i32 20}
!335 = !{ptr @.str.177, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/common/tveeprom.c", i32 136, i32 32}
!337 = !{ptr @.str.178, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/common/tveeprom.c", i32 137, i32 20}
!339 = !{ptr @.str.179, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/media/common/tveeprom.c", i32 138, i32 20}
!341 = !{ptr @.str.180, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/common/tveeprom.c", i32 139, i32 20}
!343 = !{ptr @.str.181, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/common/tveeprom.c", i32 140, i32 20}
!345 = !{ptr @.str.182, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/common/tveeprom.c", i32 141, i32 20}
!347 = !{ptr @.str.183, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/common/tveeprom.c", i32 142, i32 25}
!349 = !{ptr @.str.184, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/common/tveeprom.c", i32 143, i32 25}
!351 = !{ptr @.str.185, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/common/tveeprom.c", i32 145, i32 20}
!353 = !{ptr @.str.186, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/common/tveeprom.c", i32 146, i32 20}
!355 = !{ptr @.str.187, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/media/common/tveeprom.c", i32 147, i32 20}
!357 = !{ptr @.str.188, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/common/tveeprom.c", i32 148, i32 20}
!359 = !{ptr @.str.189, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/common/tveeprom.c", i32 149, i32 20}
!361 = !{ptr @.str.190, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/common/tveeprom.c", i32 150, i32 20}
!363 = !{ptr @.str.191, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/common/tveeprom.c", i32 151, i32 20}
!365 = !{ptr @.str.192, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/media/common/tveeprom.c", i32 152, i32 20}
!367 = !{ptr @.str.193, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/media/common/tveeprom.c", i32 153, i32 20}
!369 = !{ptr @.str.194, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/media/common/tveeprom.c", i32 154, i32 20}
!371 = !{ptr @.str.195, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/media/common/tveeprom.c", i32 156, i32 33}
!373 = !{ptr @.str.196, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/media/common/tveeprom.c", i32 157, i32 27}
!375 = !{ptr @.str.197, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/media/common/tveeprom.c", i32 158, i32 28}
!377 = !{ptr @.str.198, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/media/common/tveeprom.c", i32 159, i32 27}
!379 = !{ptr @.str.199, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/media/common/tveeprom.c", i32 160, i32 27}
!381 = !{ptr @.str.200, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/common/tveeprom.c", i32 161, i32 22}
!383 = !{ptr @.str.201, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/media/common/tveeprom.c", i32 162, i32 30}
!385 = !{ptr @.str.202, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/common/tveeprom.c", i32 163, i32 33}
!387 = !{ptr @.str.203, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/media/common/tveeprom.c", i32 164, i32 20}
!389 = !{ptr @.str.204, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/media/common/tveeprom.c", i32 165, i32 32}
!391 = !{ptr @.str.205, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/media/common/tveeprom.c", i32 167, i32 20}
!393 = !{ptr @.str.206, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/media/common/tveeprom.c", i32 168, i32 33}
!395 = !{ptr @.str.207, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/media/common/tveeprom.c", i32 169, i32 31}
!397 = !{ptr @.str.208, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/media/common/tveeprom.c", i32 170, i32 20}
!399 = !{ptr @.str.209, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/media/common/tveeprom.c", i32 171, i32 20}
!401 = !{ptr @.str.210, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/media/common/tveeprom.c", i32 172, i32 20}
!403 = !{ptr @.str.211, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/media/common/tveeprom.c", i32 173, i32 33}
!405 = !{ptr @.str.212, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/media/common/tveeprom.c", i32 174, i32 23}
!407 = !{ptr @.str.213, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/media/common/tveeprom.c", i32 175, i32 20}
!409 = !{ptr @.str.214, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/media/common/tveeprom.c", i32 176, i32 22}
!411 = !{ptr @.str.215, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/media/common/tveeprom.c", i32 178, i32 33}
!413 = !{ptr @.str.216, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/media/common/tveeprom.c", i32 179, i32 20}
!415 = !{ptr @.str.217, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/media/common/tveeprom.c", i32 180, i32 20}
!417 = !{ptr @.str.218, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/media/common/tveeprom.c", i32 181, i32 30}
!419 = !{ptr @.str.219, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/media/common/tveeprom.c", i32 182, i32 30}
!421 = !{ptr @.str.220, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/media/common/tveeprom.c", i32 183, i32 32}
!423 = !{ptr @.str.221, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/media/common/tveeprom.c", i32 184, i32 20}
!425 = !{ptr @.str.222, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/media/common/tveeprom.c", i32 185, i32 20}
!427 = !{ptr @.str.223, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/media/common/tveeprom.c", i32 186, i32 20}
!429 = !{ptr @.str.224, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/media/common/tveeprom.c", i32 187, i32 20}
!431 = !{ptr @.str.225, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/media/common/tveeprom.c", i32 189, i32 20}
!433 = !{ptr @.str.226, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/media/common/tveeprom.c", i32 190, i32 20}
!435 = !{ptr @.str.227, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/media/common/tveeprom.c", i32 191, i32 22}
!437 = !{ptr @.str.228, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/media/common/tveeprom.c", i32 192, i32 23}
!439 = !{ptr @.str.229, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/media/common/tveeprom.c", i32 193, i32 20}
!441 = !{ptr @.str.230, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/media/common/tveeprom.c", i32 194, i32 20}
!443 = !{ptr @.str.231, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/media/common/tveeprom.c", i32 195, i32 30}
!445 = !{ptr @.str.232, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/media/common/tveeprom.c", i32 196, i32 32}
!447 = !{ptr @.str.233, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/media/common/tveeprom.c", i32 197, i32 20}
!449 = !{ptr @.str.234, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/media/common/tveeprom.c", i32 198, i32 20}
!451 = !{ptr @.str.235, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/media/common/tveeprom.c", i32 200, i32 20}
!453 = !{ptr @.str.236, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/media/common/tveeprom.c", i32 201, i32 33}
!455 = !{ptr @.str.237, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/media/common/tveeprom.c", i32 202, i32 20}
!457 = !{ptr @.str.238, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/media/common/tveeprom.c", i32 203, i32 20}
!459 = !{ptr @.str.239, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/media/common/tveeprom.c", i32 204, i32 20}
!461 = !{ptr @.str.240, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/media/common/tveeprom.c", i32 205, i32 20}
!463 = !{ptr @.str.241, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/media/common/tveeprom.c", i32 206, i32 20}
!465 = !{ptr @.str.242, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/media/common/tveeprom.c", i32 207, i32 20}
!467 = !{ptr @.str.243, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/media/common/tveeprom.c", i32 208, i32 20}
!469 = !{ptr @.str.244, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/media/common/tveeprom.c", i32 209, i32 20}
!471 = !{ptr @.str.245, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/media/common/tveeprom.c", i32 211, i32 20}
!473 = !{ptr @.str.246, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/media/common/tveeprom.c", i32 212, i32 20}
!475 = !{ptr @.str.247, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/media/common/tveeprom.c", i32 213, i32 20}
!477 = !{ptr @.str.248, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/media/common/tveeprom.c", i32 214, i32 34}
!479 = !{ptr @.str.249, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/media/common/tveeprom.c", i32 215, i32 20}
!481 = !{ptr @.str.250, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/media/common/tveeprom.c", i32 216, i32 20}
!483 = !{ptr @.str.251, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/media/common/tveeprom.c", i32 217, i32 20}
!485 = !{ptr @.str.252, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/media/common/tveeprom.c", i32 218, i32 20}
!487 = !{ptr @.str.253, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/media/common/tveeprom.c", i32 219, i32 20}
!489 = !{ptr @.str.254, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/media/common/tveeprom.c", i32 220, i32 20}
!491 = !{ptr @.str.255, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/media/common/tveeprom.c", i32 222, i32 20}
!493 = !{ptr @.str.256, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/media/common/tveeprom.c", i32 223, i32 20}
!495 = !{ptr @.str.257, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/media/common/tveeprom.c", i32 224, i32 20}
!497 = !{ptr @.str.258, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/media/common/tveeprom.c", i32 225, i32 20}
!499 = !{ptr @.str.259, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/media/common/tveeprom.c", i32 226, i32 20}
!501 = !{ptr @.str.260, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/media/common/tveeprom.c", i32 227, i32 20}
!503 = !{ptr @.str.261, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/media/common/tveeprom.c", i32 228, i32 20}
!505 = !{ptr @.str.262, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/media/common/tveeprom.c", i32 229, i32 20}
!507 = !{ptr @.str.263, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/media/common/tveeprom.c", i32 230, i32 20}
!509 = !{ptr @.str.264, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/media/common/tveeprom.c", i32 231, i32 27}
!511 = !{ptr @.str.265, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/media/common/tveeprom.c", i32 233, i32 34}
!513 = !{ptr @.str.266, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/media/common/tveeprom.c", i32 234, i32 34}
!515 = !{ptr @.str.267, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/media/common/tveeprom.c", i32 235, i32 34}
!517 = !{ptr @.str.268, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/media/common/tveeprom.c", i32 236, i32 34}
!519 = !{ptr @.str.269, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/media/common/tveeprom.c", i32 237, i32 34}
!521 = !{ptr @.str.270, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/media/common/tveeprom.c", i32 238, i32 34}
!523 = !{ptr @.str.271, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/media/common/tveeprom.c", i32 239, i32 34}
!525 = !{ptr @.str.272, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/media/common/tveeprom.c", i32 240, i32 34}
!527 = !{ptr @.str.273, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/media/common/tveeprom.c", i32 241, i32 34}
!529 = !{ptr @.str.274, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/media/common/tveeprom.c", i32 242, i32 34}
!531 = !{ptr @.str.275, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/media/common/tveeprom.c", i32 244, i32 34}
!533 = !{ptr @.str.276, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/media/common/tveeprom.c", i32 245, i32 34}
!535 = !{ptr @.str.277, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/media/common/tveeprom.c", i32 246, i32 34}
!537 = !{ptr @.str.278, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/media/common/tveeprom.c", i32 247, i32 34}
!539 = !{ptr @.str.279, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/media/common/tveeprom.c", i32 248, i32 34}
!541 = !{ptr @.str.280, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/media/common/tveeprom.c", i32 249, i32 34}
!543 = !{ptr @.str.281, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/media/common/tveeprom.c", i32 250, i32 34}
!545 = !{ptr @.str.282, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/media/common/tveeprom.c", i32 251, i32 34}
!547 = !{ptr @.str.283, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/media/common/tveeprom.c", i32 252, i32 30}
!549 = !{ptr @.str.284, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/media/common/tveeprom.c", i32 253, i32 34}
!551 = !{ptr @.str.285, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/media/common/tveeprom.c", i32 255, i32 34}
!553 = !{ptr @.str.286, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/media/common/tveeprom.c", i32 256, i32 34}
!555 = !{ptr @.str.287, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/media/common/tveeprom.c", i32 257, i32 34}
!557 = !{ptr @.str.288, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/media/common/tveeprom.c", i32 258, i32 34}
!559 = !{ptr @.str.289, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/media/common/tveeprom.c", i32 259, i32 34}
!561 = !{ptr @.str.290, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/media/common/tveeprom.c", i32 260, i32 34}
!563 = !{ptr @.str.291, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/media/common/tveeprom.c", i32 261, i32 34}
!565 = !{ptr @.str.292, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/media/common/tveeprom.c", i32 262, i32 34}
!567 = !{ptr @.str.293, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/media/common/tveeprom.c", i32 263, i32 34}
!569 = !{ptr @.str.294, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/media/common/tveeprom.c", i32 264, i32 34}
!571 = !{ptr @.str.295, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/media/common/tveeprom.c", i32 266, i32 34}
!573 = !{ptr @.str.296, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/media/common/tveeprom.c", i32 267, i32 34}
!575 = !{ptr @.str.297, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/media/common/tveeprom.c", i32 269, i32 34}
!577 = !{ptr @.str.298, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/media/common/tveeprom.c", i32 270, i32 34}
!579 = !{ptr @.str.299, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/media/common/tveeprom.c", i32 271, i32 34}
!581 = !{ptr @.str.300, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/media/common/tveeprom.c", i32 272, i32 34}
!583 = !{ptr @.str.301, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/media/common/tveeprom.c", i32 273, i32 34}
!585 = !{ptr @.str.302, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/media/common/tveeprom.c", i32 274, i32 34}
!587 = !{ptr @.str.303, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/media/common/tveeprom.c", i32 275, i32 34}
!589 = !{ptr @hauppauge_tuner, !590, !"hauppauge_tuner", i1 false, i1 false}
!590 = !{!"../drivers/media/common/tveeprom.c", i32 66, i32 3}
!591 = !{ptr @.str.304, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/media/common/tveeprom.c", i32 49, i32 40}
!593 = !{ptr @.str.305, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/media/common/tveeprom.c", i32 50, i32 40}
!595 = !{ptr @.str.306, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/media/common/tveeprom.c", i32 51, i32 40}
!597 = !{ptr @.str.307, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/media/common/tveeprom.c", i32 52, i32 40}
!599 = !{ptr @.str.308, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/media/common/tveeprom.c", i32 53, i32 40}
!601 = !{ptr @.str.309, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/media/common/tveeprom.c", i32 54, i32 40}
!603 = !{ptr @.str.310, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/media/common/tveeprom.c", i32 55, i32 40}
!605 = !{ptr @.str.311, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/media/common/tveeprom.c", i32 56, i32 40}
!607 = distinct !{null, !608, !"hauppauge_tuner_fmt", i1 false, i1 false}
!608 = !{!"../drivers/media/common/tveeprom.c", i32 48, i32 3}
!609 = !{ptr @.str.312, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/media/common/tveeprom.c", i32 353, i32 10}
!611 = !{ptr @.str.313, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/media/common/tveeprom.c", i32 353, i32 19}
!613 = !{ptr @.str.314, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/media/common/tveeprom.c", i32 353, i32 28}
!615 = !{ptr @.str.315, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/media/common/tveeprom.c", i32 353, i32 37}
!617 = !{ptr @.str.316, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/media/common/tveeprom.c", i32 355, i32 2}
!619 = !{ptr @.str.317, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/media/common/tveeprom.c", i32 355, i32 12}
!621 = !{ptr @.str.318, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/media/common/tveeprom.c", i32 355, i32 22}
!623 = !{ptr @.str.319, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/media/common/tveeprom.c", i32 355, i32 31}
!625 = !{ptr @.str.320, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/media/common/tveeprom.c", i32 355, i32 40}
!627 = !{ptr @.str.321, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/media/common/tveeprom.c", i32 357, i32 2}
!629 = !{ptr @.str.322, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/media/common/tveeprom.c", i32 357, i32 12}
!631 = !{ptr @.str.323, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/media/common/tveeprom.c", i32 357, i32 22}
!633 = !{ptr @.str.324, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/media/common/tveeprom.c", i32 357, i32 32}
!635 = !{ptr @.str.325, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/media/common/tveeprom.c", i32 357, i32 42}
!637 = !{ptr @.str.326, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/media/common/tveeprom.c", i32 359, i32 2}
!639 = !{ptr @.str.327, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/media/common/tveeprom.c", i32 359, i32 11}
!641 = !{ptr @.str.328, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/media/common/tveeprom.c", i32 359, i32 20}
!643 = !{ptr @.str.329, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/media/common/tveeprom.c", i32 359, i32 32}
!645 = !{ptr @.str.330, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/media/common/tveeprom.c", i32 359, i32 43}
!647 = !{ptr @.str.331, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/media/common/tveeprom.c", i32 361, i32 29}
!649 = !{ptr @.str.332, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/media/common/tveeprom.c", i32 361, i32 40}
!651 = !{ptr @.str.333, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/media/common/tveeprom.c", i32 363, i32 11}
!653 = !{ptr @.str.334, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../drivers/media/common/tveeprom.c", i32 365, i32 24}
!655 = !{ptr @.str.335, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/media/common/tveeprom.c", i32 367, i32 13}
!657 = !{ptr @.str.336, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/media/common/tveeprom.c", i32 367, i32 35}
!659 = !{ptr @.str.337, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/media/common/tveeprom.c", i32 367, i32 47}
!661 = !{ptr @.str.338, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/media/common/tveeprom.c", i32 369, i32 13}
!663 = !{ptr @.str.339, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/media/common/tveeprom.c", i32 369, i32 35}
!665 = !{ptr @.str.340, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/media/common/tveeprom.c", i32 371, i32 35}
!667 = !{ptr @.str.341, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/media/common/tveeprom.c", i32 371, i32 47}
!669 = !{ptr @.str.342, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/media/common/tveeprom.c", i32 373, i32 2}
!671 = !{ptr @.str.343, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/media/common/tveeprom.c", i32 373, i32 13}
!673 = !{ptr @.str.344, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/media/common/tveeprom.c", i32 373, i32 24}
!675 = !{ptr @.str.345, !676, !"<string literal>", i1 false, i1 false}
!676 = !{!"../drivers/media/common/tveeprom.c", i32 373, i32 36}
!677 = !{ptr @decoderIC, !678, !"decoderIC", i1 false, i1 false}
!678 = !{!"../drivers/media/common/tveeprom.c", i32 351, i32 20}
!679 = !{i32 1, !"wchar_size", i32 2}
!680 = !{i32 1, !"min_enum_size", i32 4}
!681 = !{i32 8, !"branch-target-enforcement", i32 0}
!682 = !{i32 8, !"sign-return-address", i32 0}
!683 = !{i32 8, !"sign-return-address-all", i32 0}
!684 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!685 = !{i32 7, !"uwtable", i32 1}
!686 = !{i32 7, !"frame-pointer", i32 2}
!687 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!688 = !{i64 2148976780, i64 2148976785, i64 2148976798, i64 2148976842, i64 2148976876, i64 2148976897}
